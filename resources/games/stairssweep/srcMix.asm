
stairssweep.ino.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
       0:	0c 94 6f 07 	jmp	0xede	; 0xede <__ctors_end>
       4:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
       8:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
       c:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
      10:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
      14:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
      18:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
      1c:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
      20:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
      24:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
      28:	0c 94 33 27 	jmp	0x4e66	; 0x4e66 <__vector_10>
      2c:	0c 94 a2 27 	jmp	0x4f44	; 0x4f44 <__vector_11>
      30:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
      34:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
      38:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
      3c:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
      40:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
      44:	0c 94 76 2a 	jmp	0x54ec	; 0x54ec <__vector_17>
      48:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
      4c:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
      50:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
      54:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
      58:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
      5c:	0c 94 d4 29 	jmp	0x53a8	; 0x53a8 <__vector_23>
      60:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
      64:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
      68:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
      6c:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
      70:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
      74:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
      78:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
      7c:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
      80:	0c 94 1e 2a 	jmp	0x543c	; 0x543c <__vector_32>
      84:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
      88:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
      8c:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
      90:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
      94:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
      98:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
      9c:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
      a0:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
      a4:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>
      a8:	0c 94 97 07 	jmp	0xf2e	; 0xf2e <__bad_interrupt>

000000ac <__trampolines_end>:
      ac:	00 00       	nop
      ae:	00 00       	nop
      b0:	00 70       	andi	r16, 0x00	; 0
      b2:	01 00       	.word	0x0001	; ????
      b4:	c0 00       	.word	0x00c0	; ????
      b6:	0c 00       	.word	0x000c	; ????
      b8:	ca a7       	std	Y+42, r28	; 0x2a
      ba:	7c 0a       	sbc	r7, r28
      bc:	42 f5       	brpl	.+80     	; 0x10e <__trampolines_end+0x62>
      be:	55 08       	sbc	r5, r5
      c0:	53 42       	sbci	r21, 0x23	; 35
      c2:	48 19       	sub	r20, r8
      c4:	5e f5       	brtc	.+86     	; 0x11c <__trampolines_end+0x70>
      c6:	51 12       	cpse	r5, r17
      c8:	00 30       	cpi	r16, 0x00	; 0
      ca:	00 00       	nop
      cc:	00 27       	eor	r16, r16
      ce:	45 00       	.word	0x0045	; ????
      d0:	40 94       	com	r4
      d2:	1c 00       	.word	0x001c	; ????
      d4:	14 f3       	brlt	.-60     	; 0x9a <__SREG__+0x5b>
      d6:	19 05       	cpc	r17, r9
      d8:	04 f1       	brlt	.+64     	; 0x11a <__trampolines_end+0x6e>
      da:	11 04       	cpc	r1, r1
      dc:	20 04       	cpc	r2, r0
      de:	00 00       	nop
      e0:	04 41       	sbci	r16, 0x14	; 20
      e2:	10 04       	cpc	r1, r0
      e4:	00 04       	cpc	r0, r0
      e6:	00 00       	nop
      e8:	10 42       	sbci	r17, 0x20	; 32
      ea:	08 01       	movw	r0, r16
      ec:	5e 14       	cp	r5, r14
      ee:	45 0f       	add	r20, r21
      f0:	40 f0       	brcs	.+16     	; 0x102 <__trampolines_end+0x56>
      f2:	01 00       	.word	0x0001	; ????
      f4:	59 55       	subi	r21, 0x59	; 89
      f6:	55 13       	cpse	r21, r21
      f8:	51 55       	subi	r21, 0x51	; 81
      fa:	5d 0d       	add	r21, r13
      fc:	8c 92       	st	X, r8
      fe:	7c 08       	sbc	r7, r12
     100:	57 55       	subi	r21, 0x57	; 87
     102:	55 0d       	add	r21, r5
     104:	5e 55       	subi	r21, 0x5E	; 94
     106:	55 0d       	add	r21, r5
     108:	51 52       	subi	r21, 0x21	; 33
     10a:	0c 01       	movw	r0, r24
     10c:	5e 55       	subi	r21, 0x5E	; 94
     10e:	55 0f       	add	r21, r21
     110:	56 55       	subi	r21, 0x56	; 86
     112:	55 0f       	add	r21, r21
     114:	00 a0       	ldd	r0, Z+32	; 0x20
     116:	00 00       	nop
     118:	00 a4       	ldd	r0, Z+40	; 0x28
     11a:	00 00       	nop
     11c:	00 c2       	rjmp	.+1024   	; 0x51e <_ZZ9initTitlevE3__c_4+0x4>
     11e:	28 00       	.word	0x0028	; ????
     120:	80 a2       	std	Z+32, r8	; 0x20
     122:	28 00       	.word	0x0028	; ????
     124:	80 62       	ori	r24, 0x20	; 32
     126:	08 00       	.word	0x0008	; ????
     128:	40 50       	subi	r20, 0x00	; 0
     12a:	0d 00       	.word	0x000d	; ????
     12c:	00 e3       	ldi	r16, 0x30	; 48
     12e:	18 00       	.word	0x0018	; ????
     130:	9c 92       	st	X, r9
     132:	24 1f       	adc	r18, r20
     134:	5f 55       	subi	r21, 0x5F	; 95
     136:	5d 0d       	add	r21, r13
     138:	9c 14       	cp	r9, r12
     13a:	45 11       	cpse	r20, r5
     13c:	5f 14       	cp	r5, r15
     13e:	25 07       	cpc	r18, r21
     140:	5f 55       	subi	r21, 0x5F	; 95
     142:	55 11       	cpse	r21, r5
     144:	5f 51       	subi	r21, 0x1F	; 31
     146:	14 01       	movw	r2, r8
     148:	5e 54       	subi	r21, 0x4E	; 78
     14a:	55 1d       	adc	r21, r5
     14c:	1f 41       	sbci	r17, 0x1F	; 31
     14e:	10 1f       	adc	r17, r16
     150:	40 f4       	brcc	.+16     	; 0x162 <__trampolines_end+0xb6>
     152:	45 00       	.word	0x0045	; ????
     154:	10 04       	cpc	r1, r0
     156:	21 07       	cpc	r18, r17
     158:	1f 41       	sbci	r17, 0x1F	; 31
     15a:	18 1d       	adc	r17, r8
     15c:	1f 04       	cpc	r1, r15
     15e:	41 10       	cpse	r4, r1
     160:	5e f0       	brts	.+22     	; 0x178 <__trampolines_end+0xcc>
     162:	04 1f       	adc	r16, r20
     164:	9c 10       	cpse	r9, r12
     166:	04 1f       	adc	r16, r20
     168:	5e 54       	subi	r21, 0x4E	; 78
     16a:	45 0f       	add	r20, r21
     16c:	5f 92       	push	r5
     16e:	14 03       	mulsu	r17, r20
     170:	5e d4       	rcall	.+2236   	; 0xa2e <_ZL4font+0x245>
     172:	45 1f       	adc	r20, r21
     174:	5f 92       	push	r5
     176:	34 1b       	sub	r19, r20
     178:	56 55       	subi	r21, 0x56	; 86
     17a:	55 0d       	add	r21, r5
     17c:	41 f0       	breq	.+16     	; 0x18e <__trampolines_end+0xe2>
     17e:	05 01       	movw	r0, r10
     180:	1f 04       	cpc	r1, r15
     182:	21 07       	cpc	r18, r17
     184:	1f 42       	sbci	r17, 0x2F	; 47
     186:	08 01       	movw	r0, r16
     188:	1f e4       	ldi	r17, 0x4F	; 79
     18a:	41 0f       	add	r20, r17
     18c:	17 43       	sbci	r17, 0x37	; 55
     18e:	18 1d       	adc	r17, r8
     190:	07 c1       	rjmp	.+526    	; 0x3a0 <_ZL9imgObject+0x2d>
     192:	09 01       	movw	r0, r18
     194:	51 56       	subi	r21, 0x61	; 97
     196:	4d 11       	cpse	r20, r13
     198:	00 f0       	brcs	.+0      	; 0x19a <__trampolines_end+0xee>
     19a:	45 00       	.word	0x0045	; ????
     19c:	00 f0       	brcs	.+0      	; 0x19e <__trampolines_end+0xf2>
     19e:	01 00       	.word	0x0001	; ????
     1a0:	40 f4       	brcc	.+16     	; 0x1b2 <_ZL10soundStart>
     1a2:	01 00       	.word	0x0001	; ????
     1a4:	80 10       	cpse	r8, r0
     1a6:	0c 00       	.word	0x000c	; ????
     1a8:	10 04       	cpc	r1, r0
     1aa:	41 10       	cpse	r4, r1

000001ac <_ZL10soundClick>:
     1ac:	90 4a 00 14 80 f0                                   .J....

000001b2 <_ZL10soundStart>:
     1b2:	90 48 00 64 90 4a 00 64 90 4c 00 64 90 4d 00 64     .H.d.J.d.L.d.M.d
     1c2:	90 4f 00 c8 80 f0                                   .O....

000001c8 <_ZZ10updateGamevE3__c_1>:
     1c8:	51 55 49 54 00                                      QUIT.

000001cd <_ZZ10updateGamevE3__c_0>:
     1cd:	52 45 53 54 41 52 54 00                             RESTART.

000001d5 <_ZZ10updateGamevE3__c>:
     1d5:	43 4f 4e 54 49 4e 55 45 00                          CONTINUE.

000001de <_ZL16forwardGameFuncs>:
     1de:	02 1f e5 14 61 25 48 14 e9 12 c5 11                 ....a%H.....

000001ea <_ZL13imgLabelScore>:
     1ea:	ee a8 ce a8 ae 66 8a 8a 8a ec 06 08 0e 02 0c        .....f.........

000001f9 <_ZZL10drawStatusbE3__c>:
     1f9:	4e 45 57 20 52 45 43 4f 52 44 00                    NEW RECORD.

00000204 <_ZL12imgGameOver2>:
     204:	3f 3f 33 33 33 33 3f 3f 03 3f 3f                    ??3333??.??

0000020f <_ZL12imgGameOver1>:
     20f:	fc fc c0 c0 c0 c0 c0 c0 7e 7e 66 7e 7e 60 7e 7e     ........~~f~~`~~
     21f:	b3 b3 b3 b3 b3 b7 be bc 9f 9f 99 99 99 19 9f 9f     ................
     22f:	df df d9 df df d8 df df ff ff cc cc cc cc cc cc     ................
     23f:	7e 7e 06 7e 7e 66 7e 7e                             ~~.~~f~~

00000247 <_ZL8imgReady>:
     247:	00 00 00 98 98 98 98 98 98 f8 f8 18 f8 f8 0c 0c     ................
     257:	0c fd fd cd cd cd cd fd fd 00 01 01 00 00 00 7e     ...............~
     267:	7e 06 7e 7e 66 7e 7e 00 00 00 00 00 00 bf bf 33     ~.~~f~~........3
     277:	3f 3f 30 3f 3f 00 00 00 00 00 00 1f 1f 18 18 18     ??0??...........
     287:	18 18 18 00 00 00                                   ......

0000028d <_ZL16drawGameSubFuncs>:
     28d:	82 21 ce 21 05 21 ef 1d b1 20 fd 1f                 .!.!.!... ..

00000299 <_ZL11soundRotate>:
     299:	90 58 00 0a 90 56 00 0a 90 54 00 0a 90 52 00 0a     .X...V...T...R..
     2a9:	90 50 00 0a 80 f0                                   .P....

000002af <_ZL9soundOver>:
     2af:	90 37 00 78 90 36 00 8c 90 35 00 a0 90 34 00 b4     .7.x.6...5...4..
     2bf:	90 33 00 c8 90 32 00 dc 90 31 00 f0 90 30 00 ff     .3...2...1...0..
     2cf:	80 f0                                               ..

000002d1 <_ZL13soundLevel1Up>:
     2d1:	90 68 00 14 80 00 14 90 68 00 14 80 f0              .h......h....

000002de <_ZL13soundLevel5Up>:
     2de:	90 49 00 50 90 4d 00 78 80 00 50 90 49 00 50 90     .I.P.M.x..P.I.P.
     2ee:	4d 00 78 80 00 50 90 49 00 50 90 4d 00 78 80 00     M.x..P.I.P.M.x..
     2fe:	50 80 f0                                            P..

00000301 <_ZL10soundErase>:
     301:	90 74 00 14 90 68 00 18 90 5c 00 1c 90 50 00 20     .t...h...\...P. 
     311:	90 44 00 24 90 38 00 28 80 f0                       .D.$.8.(..

0000031b <_ZL9soundFall>:
     31b:	90 37 00 0c 90 34 00 0c 90 30 00 0c 90 38 00 08     .7...4...0...8..
     32b:	90 35 00 08 90 31 00 08 80 f0                       .5...1....

00000335 <_ZL9soundKill>:
     335:	90 43 00 0a 90 4f 00 0a 90 4c 00 0a 80 f0           .C...O...L....

00000343 <_ZL9soundStar>:
     343:	90 60 00 1e 90 61 00 1e 90 62 00 1e 90 63 00 1e     .`...a...b...c..
     353:	90 64 00 1e 90 65 00 1e 90 66 00 1e 90 67 00 1e     .d...e...f...g..
     363:	80 f0                                               ..

00000365 <_ZL15soundStarCancel>:
     365:	90 44 00 3c 90 47 00 3c 90 49 00 3c 80 f0           .D.<.G.<.I.<..

00000373 <_ZL9imgObject>:
	...
     37b:	ff ff aa d5 aa d5 aa 80 3c 7e ff ff ff ff 7e 3c     ........<~....~<
     38b:	3c 76 e7 c7 e7 f7 7e 3c 3c 6e e7 e3 e7 ef 7e 3c     <v....~<<n....~<
     39b:	18 18 ff 7e 3c 3c 7e 66 18 18 e7 42 24 24 5a 66     ...~<<~f...B$$Zf
     3ab:	24 5a 66 81 81 42 99 e7 00 00 3c 76 a1 4a 9d ef     $Zf..B....<v.J..
     3bb:	00 00 00 00 20 76 5a ef 00 00 00 00 00 00 30 7c     .... vZ.......0|

000003cb <_ZZ8drawLogovE3__c_0>:
     3cb:	56 45 52 20 30 2e 31 30 00                          VER 0.10.

000003d4 <_ZZ8drawLogovE3__c>:
     3d4:	4f 42 4e 2d 59 30 39 00                             OBN-Y09.

000003dc <_ZL7imgSoft>:
     3dc:	7f 7f 1c 1c 1c 1c 1c 1c 7f 7f 70 7e 7e 70 70 70     ..........p~~ppp
     3ec:	3e 7f f7 e7 e7 ef fe 7c 3f 7f 78 3c 1e 0e fe fc     >......|?.x<....

000003fc <_ZL6imgOBN>:
	...
     404:	80 60 10 08 04 04 02 02 02 ff ff a9 51 aa 52 a4     .`..........Q.R.
     414:	48 10 60 80 00 00 00 00 00 00 00 3c ff e4 54 a4     H.`........<..T.
     424:	54 a4 54 a4 54 a7 57 aa 55 aa 55 aa 55 aa c0 3f     T.T.T.W.U.U.U..?
	...
     43c:	00 01 03 06 0d 0e 1d 1a 1d 1a 1d 1a 1d 0a 0d 06     ................
     44c:	03 01 00 00 00 00 00 00 00 00 00 00 80 60 10 08     .............`..
     45c:	04 04 02 02 02 ff ff a9 51 aa 52 a4 48 10 60 80     ........Q.R.H.`.
     46c:	00 fc fc a4 54 a4 54 a4 57 a4 54 a4 54 a4 54 a4     ....T.T.W.T.T.T.
     47c:	54 a7 57 aa 55 aa 55 aa 55 aa c0 3f 00 1f 1f 1a     T.W.U.U.U..?....
     48c:	1d 1a 1d 1a 1d 1a 1d 1a 1d 1a 1d 1a 1d 1a 1d 1a     ................
     49c:	1d 0a 0d 06 03 01 00 00 00 00 00 00 00 00 00 00     ................
     4ac:	80 60 10 08 04 04 02 02 02 ff ff a9 55 a9 55 a9     .`..........U.U.
     4bc:	55 a9 01 ff 00 00 00 00 00 00 00 3c ff e4 54 a4     U..........<..T.
     4cc:	54 a4 54 a4 54 a7 57 a6 57 a6 57 a6 57 a6 04 ff     T.T.T.W.W.W.W...
	...
     4e4:	00 01 03 06 0d 0e 1d 1a 1d 1a 1d 1a 1d 1a 1d 1a     ................
     4f4:	1d 1a 10 1f                                         ....

000004f8 <_ZL9soundTick>:
     4f8:	90 45 00 0a 80 f0                                   .E....

000004fe <_ZL8imgSound>:
     4fe:	02 06 6e 6e 6e 06 02 3e 71 6d 5d 41 5d 3e           ..nnn..>qm]A]>

0000050c <_ZL13imgSoundOffOn>:
     50c:	00 00 14 08 14 00 00 02 09 25 15 25 09 02           .........%.%..

0000051a <_ZZ9initTitlevE3__c_4>:
     51a:	43 52 45 44 49 54 00                                CREDIT.

00000521 <_ZZ9initTitlevE3__c_3>:
     521:	52 45 43 4f 52 44 00                                RECORD.

00000528 <_ZZ9initTitlevE3__c_2>:
     528:	56 45 54 45 52 41 4e 00                             VETERAN.

00000530 <_ZZ9initTitlevE3__c_1>:
     530:	53 54 41 4e 44 41 52 44 00                          STANDARD.

00000539 <_ZZ9initTitlevE3__c_0>:
     539:	4e 4f 56 49 43 45 00                                NOVICE.

00000540 <_ZZ9initTitlevE3__c>:
     540:	42 45 47 49 4e 4e 45 52 00                          BEGINNER.

00000549 <_ZL8imgTitle>:
	...
     569:	00 00 80 c0 e0 f0 f8 7c b8 d0 e0 c0 80 00 00 00     .......|........
	...
     59d:	80 c0 e0 c0 80 00 80 c0 e0 f0 f8 7c 3a 17 0f 1f     ...........|:...
     5ad:	3f 7d be df ef f7 fb 7f 3f 1f 0e 04 80 c0 e0 f0     ?}......?.......
     5bd:	f8 7c f8 f0 e0 c0 80 00 00 00 00 00 00 00 00 00     .|..............
	...
     5d9:	00 00 80 c0 e0 f1 fb f5 ee df be 7d fb f7 ef df     ...........}....
     5e9:	be 7c f8 70 20 00 00 01 83 c1 e0 f0 f8 7c fa f7     .|.p ........|..
     5f9:	ef df bf 7d f8 f0 e0 f1 fb 7f 3f 1f 0e 04 00 00     ...}......?.....
     609:	00 00 00 00 00 00 20 70 f8 f0 e0 c0 e0 f0 f8 74     ...... p.......t
     619:	2e 1f 2f 77 fb fd fe df ef f7 ff 7f 3e 1d 0b 07     ../w........>...
     629:	83 c1 e0 f0 f8 7c fa f7 ef df bf 7d fe ff ef f7     .....|.....}....
     639:	fb 7d 3e 1f 0e 05 03 07 0f 1f 3e 1c 08 00 00 00     .}>.......>.....
     649:	00 00 80 c0 e0 f0 f8 7c be dd eb f7 ef df be 7c     .......|.......|
     659:	f8 f0 f8 7c 3e 1d 0b 07 83 01 00 10 38 7c fa f7     ...|>.......8|..
     669:	ef df bf 7d fe ff ef f7 fb 7d 3e 1f 0e 05 03 01     ...}.....}>.....
	...
     689:	00 01 03 07 0f 1f 3e 5f ef f7 fb 7d 3f 1f 0f 07     ......>_...}?...
     699:	82 41 e0 f0 e0 c0 82 07 0f 1f 3e 7c f8 f0 e0 f1     .A........>|....
     6a9:	fb 7f 3f 1f 0e 05 03 01 00 00 00 00 00 00 00 00     ..?.............
	...
     6d1:	00 41 e0 f0 f8 fc be df ef f7 fa 7d fb f7 ef df     .A.........}....
     6e1:	be 7c 3e 1f 0f 07 03 01 00 00 00 00 00 00 00 00     .|>.............
	...
     711:	00 00 00 01 03 07 0f 17 3b 7d 3e 1f 0f 07 03 01     ........;}>.....
	...

00000749 <_ZL13imgLabelLevel>:
     749:	e8 88 e8 88 ee ea 8a ea 8a e4 08 08 08 08 0e        ...............

00000758 <_ZZL10drawRecordvE3__c_3>:
     758:	50 4c 41 59 20 54 49 4d 45 00                       PLAY TIME.

00000762 <_ZZL10drawRecordvE3__c_2>:
     762:	50 4c 41 59 20 43 4f 55 4e 54 00                    PLAY COUNT.

0000076d <_ZZL10drawRecordvE3__c_1>:
     76d:	5b 20 5d 00                                         [ ].

00000771 <_ZZL10drawRecordvE3__c_0>:
     771:	53 43 4f 52 45 53 00                                SCORES.

00000778 <_ZZL10drawRecordvE3__c>:
     778:	42 45 53 54 20 35 00                                BEST 5.

0000077f <_ZL10creditText>:
     77f:	53 54 41 49 52 53 20 20 00 20 20 20 53 57 45 45     STAIRS  .   SWEE
     78f:	50 00 20 00 4f 43 54 4f 42 45 52 00 32 30 31 39     P. .OCTOBER.2019
     79f:	00 00 50 52 4f 47 52 41 4d 4d 45 44 00 42 59 20     ..PROGRAMMED.BY 
     7af:	4f 42 4f 4e 4f 00 00 54 48 49 53 00 50 52 4f 47     OBONO..THIS.PROG
     7bf:	52 41 4d 20 49 53 00 52 45 4c 45 41 53 45 44 00     RAM IS.RELEASED.
     7cf:	55 4e 44 45 52 20 54 48 45 00 4d 49 54 00 20 4c     UNDER THE.MIT. L
     7df:	49 43 45 4e 53 45 2e 00 1b 00                       ICENSE....

000007e9 <_ZL4font>:
     7e9:	00 00 00 00 00 3e 5b 4f 5b 3e 3e 6b 4f 6b 3e 1c     .....>[O[>>kOk>.
     7f9:	3e 7c 3e 1c 18 3c 7e 3c 18 1c 57 7d 57 1c 1c 5e     >|>..<~<..W}W..^
     809:	7f 5e 1c 00 18 3c 18 00 ff e7 c3 e7 ff 00 18 24     .^...<.........$
     819:	18 00 ff e7 db e7 ff 30 48 3a 06 0e 26 29 79 29     .......0H:..&)y)
     829:	26 40 7f 05 05 07 40 7f 05 25 3f 5a 3c e7 3c 5a     &@....@..%?Z<.<Z
     839:	7f 3e 1c 1c 08 08 1c 1c 3e 7f 14 22 7f 22 14 5f     .>......>.."."._
     849:	5f 00 5f 5f 06 09 7f 01 7f 00 66 89 95 6a 60 60     _.__......f..j``
     859:	60 60 60 94 a2 ff a2 94 08 04 7e 04 08 10 20 7e     ```.......~... ~
     869:	20 10 08 08 2a 1c 08 08 1c 2a 08 08 1e 10 10 10      ...*....*......
     879:	10 0c 1e 0c 1e 0c 30 38 3e 38 30 06 0e 3e 0e 06     ......08>80..>..
     889:	00 00 00 00 00 00 00 5f 00 00 00 07 00 07 00 14     ......._........
     899:	7f 14 7f 14 24 2a 7f 2a 12 23 13 08 64 62 36 49     ....$*.*.#..db6I
     8a9:	56 20 50 00 08 07 03 00 00 1c 22 41 00 00 41 22     V P......."A..A"
     8b9:	1c 00 2a 1c 7f 1c 2a 08 08 3e 08 08 00 80 70 30     ..*...*..>....p0
     8c9:	00 08 08 08 08 08 00 00 60 60 00 20 10 08 04 02     ........``. ....
     8d9:	3e 51 49 45 3e 00 42 7f 40 00 72 49 49 49 46 21     >QIE>.B.@.rIIIF!
     8e9:	41 49 4d 33 18 14 12 7f 10 27 45 45 45 39 3c 4a     AIM3.....'EEE9<J
     8f9:	49 49 31 41 21 11 09 07 36 49 49 49 36 46 49 49     II1A!...6III6FII
     909:	29 1e 00 00 14 00 00 00 40 34 00 00 00 08 14 22     ).......@4....."
     919:	41 14 14 14 14 14 00 41 22 14 08 02 01 59 09 06     A......A"....Y..
     929:	3e 41 5d 59 4e 7c 12 11 12 7c 7f 49 49 49 36 3e     >A]YN|...|.III6>
     939:	41 41 41 22 7f 41 41 41 3e 7f 49 49 49 41 7f 09     AAA".AAA>.IIIA..
     949:	09 09 01 3e 41 41 51 73 7f 08 08 08 7f 00 41 7f     ...>AAQs......A.
     959:	41 00 20 40 41 3f 01 7f 08 14 22 41 7f 40 40 40     A. @A?...."A.@@@
     969:	40 7f 02 1c 02 7f 7f 04 08 10 7f 3e 41 41 41 3e     @..........>AAA>
     979:	7f 09 09 09 06 3e 41 51 21 5e 7f 09 19 29 46 26     .....>AQ!^...)F&
     989:	49 49 49 32 03 01 7f 01 03 3f 40 40 40 3f 1f 20     III2.....?@@@?. 
     999:	40 20 1f 3f 40 38 40 3f 63 14 08 14 63 03 04 78     @ .?@8@?c...c..x
     9a9:	04 03 61 59 49 4d 43 00 7f 41 41 41 02 04 08 10     ..aYIMC..AAA....
     9b9:	20 00 41 41 41 7f 04 02 01 02 04 40 40 40 40 40      .AAA......@@@@@
     9c9:	00 03 07 08 00 20 54 54 78 40 7f 28 44 44 38 38     ..... TTx@.(DD88
     9d9:	44 44 44 28 38 44 44 28 7f 38 54 54 54 18 00 08     DDD(8DD(.8TTT...
     9e9:	7e 09 02 18 a4 a4 9c 78 7f 08 04 04 78 00 44 7d     ~......x....x.D}
     9f9:	40 00 20 40 40 3d 00 7f 10 28 44 00 00 41 7f 40     @. @@=...(D..A.@
     a09:	00 7c 04 78 04 78 7c 08 04 04 78 38 44 44 44 38     .|.x.x|...x8DDD8
     a19:	fc 18 24 24 18 18 24 24 18 fc 7c 08 04 04 08 48     ..$$..$$..|....H
     a29:	54 54 54 24 04 04 3f 44 24 3c 40 40 20 7c 1c 20     TTT$..?D$<@@ |. 
     a39:	40 20 1c 3c 40 30 40 3c 44 28 10 28 44 4c 90 90     @ .<@0@<D(.(DL..
     a49:	90 7c 44 64 54 4c 44 00 08 36 41 00 00 00 77 00     .|DdTLD..6A...w.
     a59:	00 00 41 36 08 00 02 01 02 04 02 3c 26 23 26 3c     ..A6.......<&#&<
     a69:	1e a1 a1 61 12 3a 40 40 20 7a 38 54 54 55 59 21     ...a.:@@ z8TTUY!
     a79:	55 55 79 41 21 54 54 78 41 21 55 54 78 40 20 54     UUyA!TTxA!UTx@ T
     a89:	55 79 40 0c 1e 52 72 12 39 55 55 55 59 39 54 54     Uy@..Rr.9UUUY9TT
     a99:	54 59 39 55 54 54 58 00 00 45 7c 41 00 02 45 7d     TY9UTTX..E|A..E}
     aa9:	42 00 01 45 7c 40 f0 29 24 29 f0 f0 28 25 28 f0     B..E|@.)$)..(%(.
     ab9:	7c 54 55 45 00 20 54 54 7c 54 7c 0a 09 7f 49 32     |TUE. TT|T|...I2
     ac9:	49 49 49 32 32 48 48 48 32 32 4a 48 48 30 3a 41     III22HHH22JHH0:A
     ad9:	41 21 7a 3a 42 40 20 78 00 9d a0 a0 7d 39 44 44     A!z:B@ x....}9DD
     ae9:	44 39 3d 40 40 40 3d 3c 24 ff 24 24 48 7e 49 43     D9=@@@=<$.$$H~IC
     af9:	66 2b 2f fc 2f 2b ff 09 29 f6 20 c0 88 7e 09 03     f+/./+..). ..~..
     b09:	20 54 54 79 41 00 00 44 7d 41 30 48 48 4a 32 38      TTyA..D}A0HHJ28
     b19:	40 40 22 7a 00 7a 0a 0a 72 7d 0d 19 31 7d 26 29     @@"z.z..r}..1}&)
     b29:	29 2f 28 26 29 29 29 26 30 48 4d 40 20 38 08 08     )/(&)))&0HM@ 8..
     b39:	08 08 08 08 08 08 38 2f 10 c8 ac ba 2f 10 28 34     ......8/..../.(4
     b49:	fa 00 00 7b 00 00 08 14 2a 14 22 22 14 2a 14 08     ...{....*."".*..
     b59:	95 00 22 00 95 aa 00 55 00 aa aa 55 aa 55 aa 00     .."....U...U.U..
     b69:	00 00 ff 00 10 10 10 ff 00 14 14 14 ff 00 10 10     ................
     b79:	ff 00 ff 10 10 f0 10 f0 14 14 14 fc 00 14 14 f7     ................
     b89:	00 ff 00 00 ff 00 ff 14 14 f4 04 fc 14 14 17 10     ................
     b99:	1f 10 10 1f 10 1f 14 14 14 1f 00 10 10 10 f0 00     ................
     ba9:	00 00 00 1f 10 10 10 10 1f 10 10 10 10 f0 10 00     ................
     bb9:	00 00 ff 10 10 10 10 10 10 10 10 10 ff 10 00 00     ................
     bc9:	00 ff 14 00 00 ff 00 ff 00 00 1f 10 17 00 00 fc     ................
     bd9:	04 f4 14 14 17 10 17 14 14 f4 04 f4 00 00 ff 00     ................
     be9:	f7 14 14 14 14 14 14 14 f7 00 f7 14 14 14 17 14     ................
     bf9:	10 10 1f 10 1f 14 14 14 f4 14 10 10 f0 10 f0 00     ................
     c09:	00 1f 10 1f 00 00 00 1f 14 00 00 00 fc 14 00 00     ................
     c19:	f0 10 f0 10 10 ff 10 ff 14 14 14 ff 14 10 10 10     ................
     c29:	1f 00 00 00 00 f0 10 ff ff ff ff ff f0 f0 f0 f0     ................
     c39:	f0 ff ff ff 00 00 00 00 00 ff ff 0f 0f 0f 0f 0f     ................
     c49:	38 44 44 38 44 7c 2a 2a 3e 14 7e 02 02 06 06 02     8DD8D|**>.~.....
     c59:	7e 02 7e 02 63 55 49 41 63 38 44 44 3c 04 40 7e     ~.~.cUIAc8DD<.@~
     c69:	20 1e 20 06 02 7e 02 02 99 a5 e7 a5 99 1c 2a 49      . ..~........*I
     c79:	2a 1c 4c 72 01 72 4c 30 4a 4d 4d 30 30 48 78 48     *.Lr.rL0JMM00HxH
     c89:	30 bc 62 5a 46 3d 3e 49 49 49 00 7e 01 01 01 7e     0.bZF=>III.~...~
     c99:	2a 2a 2a 2a 2a 44 44 5f 44 44 40 51 4a 44 40 40     *****DD_DD@QJD@@
     ca9:	44 4a 51 40 00 00 ff 01 03 e0 80 ff 00 00 08 08     DJQ@............
     cb9:	6b 6b 08 36 12 36 24 36 06 0f 09 0f 06 00 00 18     kk.6.6$6........
     cc9:	18 00 00 00 10 10 00 30 40 ff 01 01 00 1f 01 01     .......0@.......
     cd9:	1e 00 19 1d 17 12 00 3c 3c 3c 3c 00 00 00 00 00     .......<<<<.....

00000ce9 <_ZL27_midi_word_note_frequencies>:
     ce9:	06 01 15 01 26 01 37 01 4a 01 5d 01 72 01 88 01     ....&.7.J.].r...
     cf9:	9f 01 b8 01 d2 01 ee 01 0b 02 2a 02 4b 02 6e 02     ..........*.K.n.
     d09:	93 02 ba 02 e4 02 10 03 3f 03 70 03 a4 03 dc 03     ........?.p.....
     d19:	17 04 55 04 97 04 dd 04 27 05 75 05 c8 05 20 06     ..U.....'.u... .
     d29:	7d 06 e0 06 49 07 b8 07 2d 08 a9 08 2d 09 b9 09     }...I...-...-...
     d39:	4d 0a ea 0a 90 0b 40 0c fa 0c c0 0d 91 0e 6f 0f     M.....@.......o.
     d49:	5a 10 53 11 5b 12 72 13 9a 14 d4 15 20 17 80 18     Z.S.[.r..... ...
     d59:	f5 19 80 1b 23 1d de 1e b4 20 a6 22 b5 24 e4 26     ....#.... .".$.&
     d69:	34 29 a7 2b 40 2e 00 31 ea 33 00 37 45 3a bc 3d     4).+@..1.3.7E:.=
     d79:	68 41 4c 45 6b 49 c8 4d 68 52 4f 57 80 5c 00 62     hALEkI.MhROW.\.b

00000d89 <_ZL27_midi_byte_note_frequencies>:
     d89:	10 11 12 13 15 16 17 18 1a 1c 1d 1f 21 23 25 27     ............!#%'
     d99:	29 2c 2e 31 34 37 3a 3e 41 45 49 4e 52 57 5c 62     ),.147:>AEINRW\b
     da9:	68 6e 75 7b 83 8b 93 9c a5 af b9 c4 d0 dc e9 f7     hnu{............

00000db9 <digital_pin_to_timer_PGM>:
     db9:	00 00 00 02 00 09 0f 00 00 03 04 01 00 0c 00 00     ................
	...

00000dd8 <_ZL21tune_pin_to_timer_PGM>:
     dd8:	03 01                                               ..

00000dda <port_to_mode_PGM>:
     dda:	00 00 00 00 24 00 27 00 2a 00 2d 00 30 00           ....$.'.*.-.0.

00000de8 <_ZL14lcdBootProgram>:
     de8:	d5 f0 8d 14 a1 c8 81 cf d9 f1 af 20 00              ........... .

00000df5 <digital_pin_to_bit_mask_PGM>:
     df5:	04 08 02 01 10 40 80 40 10 20 40 80 40 80 08 02     .....@.@. @.@...
     e05:	04 01 80 40 20 10 02 01 10 80 10 20 40 40 20        ...@ ...... @@ 

00000e14 <port_to_output_PGM>:
     e14:	00 00 00 00 25 00 28 00 2b 00 2e 00 31 00           ....%.(.+...1.

00000e22 <digital_pin_to_port_PGM>:
     e22:	04 04 04 04 04 03 04 05 02 02 02 02 04 03 02 02     ................
     e32:	02 02 06 06 06 06 06 06 04 04 02 02 02 04 04        ...............

00000e41 <_ZL14pinBootProgram>:
     e41:	14 02 13 02 12 02 15 02 07 02 08 02 04 01 0c 01     ................
     e51:	06 01 00                                            ...

00000e54 <_ZL11moduleTable>:
     e54:	58 11 2b 11 a1 18 07 1d bc 1c 24 1b 39 1f 60 24     X.+.......$.9.`$
     e64:	ef 21                                               .!

00000e66 <_cdcInterface>:
     e66:	08 0b 00 02 02 02 00 00 09 04 00 00 01 02 02 00     ................
     e76:	00 05 24 00 10 01 05 24 01 01 01 04 24 02 06 05     ..$....$....$...
     e86:	24 06 00 01 07 05 81 03 10 00 40 09 04 01 00 02     $.........@.....
     e96:	0a 00 00 00 07 05 02 02 40 00 00 07 05 83 02 40     ........@......@
	...

00000ea8 <STRING_LANGUAGE>:
     ea8:	04 03 09 04                                         ....

00000eac <USB_DeviceDescriptorIAD>:
     eac:	12 01 00 02 ef 02 01 40 41 23 36 80 00 01 01 02     .......@A#6.....
     ebc:	03 01                                               ..

00000ebe <STRING_MANUFACTURER>:
     ebe:	41 72 64 75 69 6e 6f 20 4c 4c 43 00                 Arduino LLC.

00000eca <STRING_PRODUCT>:
     eca:	41 72 64 75 69 6e 6f 20 4c 65 6f 6e 61 72 64 6f     Arduino Leonardo
	...

00000edc <__ctors_start>:
     edc:	e1 2a       	or	r14, r17

00000ede <__ctors_end>:
     ede:	11 24       	eor	r1, r1
     ee0:	1f be       	out	0x3f, r1	; 63
     ee2:	cf ef       	ldi	r28, 0xFF	; 255
     ee4:	da e0       	ldi	r29, 0x0A	; 10
     ee6:	de bf       	out	0x3e, r29	; 62
     ee8:	cd bf       	out	0x3d, r28	; 61

00000eea <__do_copy_data>:
     eea:	11 e0       	ldi	r17, 0x01	; 1
     eec:	a0 e0       	ldi	r26, 0x00	; 0
     eee:	b1 e0       	ldi	r27, 0x01	; 1
     ef0:	ea ea       	ldi	r30, 0xAA	; 170
     ef2:	ff e5       	ldi	r31, 0x5F	; 95
     ef4:	02 c0       	rjmp	.+4      	; 0xefa <__do_copy_data+0x10>
     ef6:	05 90       	lpm	r0, Z+
     ef8:	0d 92       	st	X+, r0
     efa:	aa 33       	cpi	r26, 0x3A	; 58
     efc:	b1 07       	cpc	r27, r17
     efe:	d9 f7       	brne	.-10     	; 0xef6 <__do_copy_data+0xc>

00000f00 <__do_clear_bss>:
     f00:	27 e0       	ldi	r18, 0x07	; 7
     f02:	aa e3       	ldi	r26, 0x3A	; 58
     f04:	b1 e0       	ldi	r27, 0x01	; 1
     f06:	01 c0       	rjmp	.+2      	; 0xf0a <.do_clear_bss_start>

00000f08 <.do_clear_bss_loop>:
     f08:	1d 92       	st	X+, r1

00000f0a <.do_clear_bss_start>:
     f0a:	aa 32       	cpi	r26, 0x2A	; 42
     f0c:	b2 07       	cpc	r27, r18
     f0e:	e1 f7       	brne	.-8      	; 0xf08 <.do_clear_bss_loop>

00000f10 <__do_global_ctors>:
     f10:	17 e0       	ldi	r17, 0x07	; 7
     f12:	cf e6       	ldi	r28, 0x6F	; 111
     f14:	d7 e0       	ldi	r29, 0x07	; 7
     f16:	04 c0       	rjmp	.+8      	; 0xf20 <__do_global_ctors+0x10>
     f18:	21 97       	sbiw	r28, 0x01	; 1
     f1a:	fe 01       	movw	r30, r28
     f1c:	0e 94 ad 2f 	call	0x5f5a	; 0x5f5a <__tablejump2__>
     f20:	ce 36       	cpi	r28, 0x6E	; 110
     f22:	d1 07       	cpc	r29, r17
     f24:	c9 f7       	brne	.-14     	; 0xf18 <__do_global_ctors+0x8>
     f26:	0e 94 18 2b 	call	0x5630	; 0x5630 <main>
     f2a:	0c 94 d3 2f 	jmp	0x5fa6	; 0x5fa6 <_exit>

00000f2e <__bad_interrupt>:
     f2e:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

00000f32 <_ZN10MyArduboyV14drawFastVLine2Eiiah.constprop.47>:
     f32:	0f 93       	push	r16
     f34:	1f 93       	push	r17
     f36:	cf 93       	push	r28
     f38:	df 93       	push	r29
     f3a:	dc 01       	movw	r26, r24
     f3c:	77 ff       	sbrs	r23, 7
     f3e:	15 c0       	rjmp	.+42     	; 0xf6a <_ZN10MyArduboyV14drawFastVLine2Eiiah.constprop.47+0x38>
     f40:	ee 27       	eor	r30, r30
     f42:	ff 27       	eor	r31, r31
     f44:	e6 1b       	sub	r30, r22
     f46:	f7 0b       	sbc	r31, r23
     f48:	84 2f       	mov	r24, r20
     f4a:	04 2e       	mov	r0, r20
     f4c:	00 0c       	add	r0, r0
     f4e:	99 0b       	sbc	r25, r25
     f50:	e8 17       	cp	r30, r24
     f52:	f9 07       	cpc	r31, r25
     f54:	2c f4       	brge	.+10     	; 0xf60 <_ZN10MyArduboyV14drawFastVLine2Eiiah.constprop.47+0x2e>
     f56:	46 0f       	add	r20, r22
     f58:	70 e0       	ldi	r23, 0x00	; 0
     f5a:	60 e0       	ldi	r22, 0x00	; 0
     f5c:	14 16       	cp	r1, r20
     f5e:	54 f0       	brlt	.+20     	; 0xf74 <_ZN10MyArduboyV14drawFastVLine2Eiiah.constprop.47+0x42>
     f60:	df 91       	pop	r29
     f62:	cf 91       	pop	r28
     f64:	1f 91       	pop	r17
     f66:	0f 91       	pop	r16
     f68:	08 95       	ret
     f6a:	14 16       	cp	r1, r20
     f6c:	cc f7       	brge	.-14     	; 0xf60 <_ZN10MyArduboyV14drawFastVLine2Eiiah.constprop.47+0x2e>
     f6e:	60 34       	cpi	r22, 0x40	; 64
     f70:	71 05       	cpc	r23, r1
     f72:	b4 f7       	brge	.-20     	; 0xf60 <_ZN10MyArduboyV14drawFastVLine2Eiiah.constprop.47+0x2e>
     f74:	a0 38       	cpi	r26, 0x80	; 128
     f76:	b1 05       	cpc	r27, r1
     f78:	98 f7       	brcc	.-26     	; 0xf60 <_ZN10MyArduboyV14drawFastVLine2Eiiah.constprop.47+0x2e>
     f7a:	36 2f       	mov	r19, r22
     f7c:	cb 01       	movw	r24, r22
     f7e:	84 0f       	add	r24, r20
     f80:	91 1d       	adc	r25, r1
     f82:	47 fd       	sbrc	r20, 7
     f84:	9a 95       	dec	r25
     f86:	81 34       	cpi	r24, 0x41	; 65
     f88:	91 05       	cpc	r25, r1
     f8a:	14 f0       	brlt	.+4      	; 0xf90 <_ZN10MyArduboyV14drawFastVLine2Eiiah.constprop.47+0x5e>
     f8c:	40 e4       	ldi	r20, 0x40	; 64
     f8e:	46 1b       	sub	r20, r22
     f90:	37 70       	andi	r19, 0x07	; 7
     f92:	9f ef       	ldi	r25, 0xFF	; 255
     f94:	03 2e       	mov	r0, r19
     f96:	01 c0       	rjmp	.+2      	; 0xf9a <_ZN10MyArduboyV14drawFastVLine2Eiiah.constprop.47+0x68>
     f98:	99 0f       	add	r25, r25
     f9a:	0a 94       	dec	r0
     f9c:	ea f7       	brpl	.-6      	; 0xf98 <_ZN10MyArduboyV14drawFastVLine2Eiiah.constprop.47+0x66>
     f9e:	43 0f       	add	r20, r19
     fa0:	63 1b       	sub	r22, r19
     fa2:	71 09       	sbc	r23, r1
     fa4:	77 ff       	sbrs	r23, 7
     fa6:	02 c0       	rjmp	.+4      	; 0xfac <_ZN10MyArduboyV14drawFastVLine2Eiiah.constprop.47+0x7a>
     fa8:	69 5f       	subi	r22, 0xF9	; 249
     faa:	7f 4f       	sbci	r23, 0xFF	; 255
     fac:	83 e0       	ldi	r24, 0x03	; 3
     fae:	75 95       	asr	r23
     fb0:	67 95       	ror	r22
     fb2:	8a 95       	dec	r24
     fb4:	e1 f7       	brne	.-8      	; 0xfae <_ZN10MyArduboyV14drawFastVLine2Eiiah.constprop.47+0x7c>
     fb6:	fb 01       	movw	r30, r22
     fb8:	f6 95       	lsr	r31
     fba:	fe 2f       	mov	r31, r30
     fbc:	ee 27       	eor	r30, r30
     fbe:	f7 95       	ror	r31
     fc0:	e7 95       	ror	r30
     fc2:	ea 0f       	add	r30, r26
     fc4:	fb 1f       	adc	r31, r27
     fc6:	e2 5e       	subi	r30, 0xE2	; 226
     fc8:	fc 4f       	sbci	r31, 0xFC	; 252
     fca:	68 e0       	ldi	r22, 0x08	; 8
     fcc:	70 e0       	ldi	r23, 0x00	; 0
     fce:	af ef       	ldi	r26, 0xFF	; 255
     fd0:	b0 e0       	ldi	r27, 0x00	; 0
     fd2:	14 16       	cp	r1, r20
     fd4:	2c f6       	brge	.-118    	; 0xf60 <_ZN10MyArduboyV14drawFastVLine2Eiiah.constprop.47+0x2e>
     fd6:	48 30       	cpi	r20, 0x08	; 8
     fd8:	64 f4       	brge	.+24     	; 0xff2 <_ZN10MyArduboyV14drawFastVLine2Eiiah.constprop.47+0xc0>
     fda:	eb 01       	movw	r28, r22
     fdc:	c4 1b       	sub	r28, r20
     fde:	d1 09       	sbc	r29, r1
     fe0:	47 fd       	sbrc	r20, 7
     fe2:	d3 95       	inc	r29
     fe4:	8d 01       	movw	r16, r26
     fe6:	02 c0       	rjmp	.+4      	; 0xfec <_ZN10MyArduboyV14drawFastVLine2Eiiah.constprop.47+0xba>
     fe8:	15 95       	asr	r17
     fea:	07 95       	ror	r16
     fec:	ca 95       	dec	r28
     fee:	e2 f7       	brpl	.-8      	; 0xfe8 <_ZN10MyArduboyV14drawFastVLine2Eiiah.constprop.47+0xb6>
     ff0:	90 23       	and	r25, r16
     ff2:	80 81       	ld	r24, Z
     ff4:	21 11       	cpse	r18, r1
     ff6:	08 c0       	rjmp	.+16     	; 0x1008 <_ZN10MyArduboyV14drawFastVLine2Eiiah.constprop.47+0xd6>
     ff8:	90 95       	com	r25
     ffa:	98 23       	and	r25, r24
     ffc:	90 83       	st	Z, r25
     ffe:	48 50       	subi	r20, 0x08	; 8
    1000:	e0 58       	subi	r30, 0x80	; 128
    1002:	ff 4f       	sbci	r31, 0xFF	; 255
    1004:	9f ef       	ldi	r25, 0xFF	; 255
    1006:	e5 cf       	rjmp	.-54     	; 0xfd2 <_ZN10MyArduboyV14drawFastVLine2Eiiah.constprop.47+0xa0>
    1008:	98 2b       	or	r25, r24
    100a:	f8 cf       	rjmp	.-16     	; 0xffc <_ZN10MyArduboyV14drawFastVLine2Eiiah.constprop.47+0xca>

0000100c <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42>:
    100c:	0f 93       	push	r16
    100e:	cf 93       	push	r28
    1010:	df 93       	push	r29
    1012:	97 ff       	sbrs	r25, 7
    1014:	0c c0       	rjmp	.+24     	; 0x102e <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42+0x22>
    1016:	ee 27       	eor	r30, r30
    1018:	ff 27       	eor	r31, r31
    101a:	e8 1b       	sub	r30, r24
    101c:	f9 0b       	sbc	r31, r25
    101e:	4e 17       	cp	r20, r30
    1020:	1f 06       	cpc	r1, r31
    1022:	09 f0       	breq	.+2      	; 0x1026 <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42+0x1a>
    1024:	0c f4       	brge	.+2      	; 0x1028 <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42+0x1c>
    1026:	7c c0       	rjmp	.+248    	; 0x1120 <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42+0x114>
    1028:	48 0f       	add	r20, r24
    102a:	90 e0       	ldi	r25, 0x00	; 0
    102c:	80 e0       	ldi	r24, 0x00	; 0
    102e:	77 ff       	sbrs	r23, 7
    1030:	0f c0       	rjmp	.+30     	; 0x1050 <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42+0x44>
    1032:	aa 27       	eor	r26, r26
    1034:	bb 27       	eor	r27, r27
    1036:	a6 1b       	sub	r26, r22
    1038:	b7 0b       	sbc	r27, r23
    103a:	e2 2f       	mov	r30, r18
    103c:	02 2e       	mov	r0, r18
    103e:	00 0c       	add	r0, r0
    1040:	ff 0b       	sbc	r31, r31
    1042:	ae 17       	cp	r26, r30
    1044:	bf 07       	cpc	r27, r31
    1046:	0c f0       	brlt	.+2      	; 0x104a <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42+0x3e>
    1048:	6b c0       	rjmp	.+214    	; 0x1120 <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42+0x114>
    104a:	26 0f       	add	r18, r22
    104c:	70 e0       	ldi	r23, 0x00	; 0
    104e:	60 e0       	ldi	r22, 0x00	; 0
    1050:	44 23       	and	r20, r20
    1052:	09 f4       	brne	.+2      	; 0x1056 <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42+0x4a>
    1054:	65 c0       	rjmp	.+202    	; 0x1120 <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42+0x114>
    1056:	80 38       	cpi	r24, 0x80	; 128
    1058:	91 05       	cpc	r25, r1
    105a:	0c f0       	brlt	.+2      	; 0x105e <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42+0x52>
    105c:	61 c0       	rjmp	.+194    	; 0x1120 <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42+0x114>
    105e:	12 16       	cp	r1, r18
    1060:	0c f0       	brlt	.+2      	; 0x1064 <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42+0x58>
    1062:	5e c0       	rjmp	.+188    	; 0x1120 <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42+0x114>
    1064:	60 34       	cpi	r22, 0x40	; 64
    1066:	71 05       	cpc	r23, r1
    1068:	0c f0       	brlt	.+2      	; 0x106c <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42+0x60>
    106a:	5a c0       	rjmp	.+180    	; 0x1120 <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42+0x114>
    106c:	fc 01       	movw	r30, r24
    106e:	e4 0f       	add	r30, r20
    1070:	f1 1d       	adc	r31, r1
    1072:	e1 38       	cpi	r30, 0x81	; 129
    1074:	f1 05       	cpc	r31, r1
    1076:	14 f0       	brlt	.+4      	; 0x107c <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42+0x70>
    1078:	40 e8       	ldi	r20, 0x80	; 128
    107a:	48 1b       	sub	r20, r24
    107c:	56 2f       	mov	r21, r22
    107e:	fb 01       	movw	r30, r22
    1080:	e2 0f       	add	r30, r18
    1082:	f1 1d       	adc	r31, r1
    1084:	27 fd       	sbrc	r18, 7
    1086:	fa 95       	dec	r31
    1088:	e1 34       	cpi	r30, 0x41	; 65
    108a:	f1 05       	cpc	r31, r1
    108c:	14 f0       	brlt	.+4      	; 0x1092 <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42+0x86>
    108e:	20 e4       	ldi	r18, 0x40	; 64
    1090:	26 1b       	sub	r18, r22
    1092:	57 70       	andi	r21, 0x07	; 7
    1094:	3f ef       	ldi	r19, 0xFF	; 255
    1096:	05 2e       	mov	r0, r21
    1098:	01 c0       	rjmp	.+2      	; 0x109c <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42+0x90>
    109a:	33 0f       	add	r19, r19
    109c:	0a 94       	dec	r0
    109e:	ea f7       	brpl	.-6      	; 0x109a <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42+0x8e>
    10a0:	25 0f       	add	r18, r21
    10a2:	65 1b       	sub	r22, r21
    10a4:	71 09       	sbc	r23, r1
    10a6:	77 ff       	sbrs	r23, 7
    10a8:	02 c0       	rjmp	.+4      	; 0x10ae <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42+0xa2>
    10aa:	69 5f       	subi	r22, 0xF9	; 249
    10ac:	7f 4f       	sbci	r23, 0xFF	; 255
    10ae:	53 e0       	ldi	r21, 0x03	; 3
    10b0:	75 95       	asr	r23
    10b2:	67 95       	ror	r22
    10b4:	5a 95       	dec	r21
    10b6:	e1 f7       	brne	.-8      	; 0x10b0 <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42+0xa4>
    10b8:	76 95       	lsr	r23
    10ba:	76 2f       	mov	r23, r22
    10bc:	66 27       	eor	r22, r22
    10be:	77 95       	ror	r23
    10c0:	67 95       	ror	r22
    10c2:	86 0f       	add	r24, r22
    10c4:	97 1f       	adc	r25, r23
    10c6:	82 5e       	subi	r24, 0xE2	; 226
    10c8:	9c 4f       	sbci	r25, 0xFC	; 252
    10ca:	a8 e0       	ldi	r26, 0x08	; 8
    10cc:	b0 e0       	ldi	r27, 0x00	; 0
    10ce:	cf ef       	ldi	r28, 0xFF	; 255
    10d0:	d0 e0       	ldi	r29, 0x00	; 0
    10d2:	12 16       	cp	r1, r18
    10d4:	2c f5       	brge	.+74     	; 0x1120 <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42+0x114>
    10d6:	28 30       	cpi	r18, 0x08	; 8
    10d8:	64 f4       	brge	.+24     	; 0x10f2 <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42+0xe6>
    10da:	bd 01       	movw	r22, r26
    10dc:	62 1b       	sub	r22, r18
    10de:	71 09       	sbc	r23, r1
    10e0:	27 fd       	sbrc	r18, 7
    10e2:	73 95       	inc	r23
    10e4:	fe 01       	movw	r30, r28
    10e6:	02 c0       	rjmp	.+4      	; 0x10ec <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42+0xe0>
    10e8:	f5 95       	asr	r31
    10ea:	e7 95       	ror	r30
    10ec:	6a 95       	dec	r22
    10ee:	e2 f7       	brpl	.-8      	; 0x10e8 <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42+0xdc>
    10f0:	3e 23       	and	r19, r30
    10f2:	01 11       	cpse	r16, r1
    10f4:	0d c0       	rjmp	.+26     	; 0x1110 <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42+0x104>
    10f6:	30 95       	com	r19
    10f8:	fc 01       	movw	r30, r24
    10fa:	54 2f       	mov	r21, r20
    10fc:	60 81       	ld	r22, Z
    10fe:	63 23       	and	r22, r19
    1100:	61 93       	st	Z+, r22
    1102:	51 50       	subi	r21, 0x01	; 1
    1104:	d9 f7       	brne	.-10     	; 0x10fc <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42+0xf0>
    1106:	28 50       	subi	r18, 0x08	; 8
    1108:	80 58       	subi	r24, 0x80	; 128
    110a:	9f 4f       	sbci	r25, 0xFF	; 255
    110c:	3f ef       	ldi	r19, 0xFF	; 255
    110e:	e1 cf       	rjmp	.-62     	; 0x10d2 <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42+0xc6>
    1110:	fc 01       	movw	r30, r24
    1112:	54 2f       	mov	r21, r20
    1114:	60 81       	ld	r22, Z
    1116:	63 2b       	or	r22, r19
    1118:	61 93       	st	Z+, r22
    111a:	51 50       	subi	r21, 0x01	; 1
    111c:	d9 f7       	brne	.-10     	; 0x1114 <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42+0x108>
    111e:	f3 cf       	rjmp	.-26     	; 0x1106 <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42+0xfa>
    1120:	df 91       	pop	r29
    1122:	cf 91       	pop	r28
    1124:	0f 91       	pop	r16
    1126:	08 95       	ret

00001128 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25>:

    drawFastHLine(a, y, b-a+1, color);
  }
}

void Arduboy::drawBitmap
    1128:	2f 92       	push	r2
    112a:	3f 92       	push	r3
    112c:	4f 92       	push	r4
    112e:	5f 92       	push	r5
    1130:	6f 92       	push	r6
    1132:	7f 92       	push	r7
    1134:	8f 92       	push	r8
    1136:	9f 92       	push	r9
    1138:	af 92       	push	r10
    113a:	bf 92       	push	r11
    113c:	cf 92       	push	r12
    113e:	df 92       	push	r13
    1140:	ef 92       	push	r14
    1142:	ff 92       	push	r15
    1144:	0f 93       	push	r16
    1146:	1f 93       	push	r17
    1148:	cf 93       	push	r28
    114a:	df 93       	push	r29
    114c:	cd b7       	in	r28, 0x3d	; 61
    114e:	de b7       	in	r29, 0x3e	; 62
    1150:	2b 97       	sbiw	r28, 0x0b	; 11
    1152:	0f b6       	in	r0, 0x3f	; 63
    1154:	f8 94       	cli
    1156:	de bf       	out	0x3e, r29	; 62
    1158:	0f be       	out	0x3f, r0	; 63
    115a:	cd bf       	out	0x3d, r28	; 61
(int16_t x, int16_t y, const uint8_t *bitmap, uint8_t w, uint8_t h, 
 uint8_t color)
{
  // no need to dar at all of we're offscreen
  if (x+w < 0 || x > WIDTH-1 || y+h < 0 || y > HEIGHT-1)
    115c:	10 e0       	ldi	r17, 0x00	; 0
    115e:	f8 01       	movw	r30, r16
    1160:	e6 0f       	add	r30, r22
    1162:	f7 1f       	adc	r31, r23
    1164:	f7 fd       	sbrc	r31, 7
    1166:	c2 c0       	rjmp	.+388    	; 0x12ec <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25+0x1c4>
    1168:	60 38       	cpi	r22, 0x80	; 128
    116a:	71 05       	cpc	r23, r1
    116c:	0c f0       	brlt	.+2      	; 0x1170 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25+0x48>
    116e:	be c0       	rjmp	.+380    	; 0x12ec <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25+0x1c4>
    1170:	fa 01       	movw	r30, r20
    1172:	ee 0d       	add	r30, r14
    1174:	f1 1d       	adc	r31, r1
    1176:	f7 fd       	sbrc	r31, 7
    1178:	b9 c0       	rjmp	.+370    	; 0x12ec <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25+0x1c4>
    117a:	40 34       	cpi	r20, 0x40	; 64
    117c:	51 05       	cpc	r21, r1
    117e:	0c f0       	brlt	.+2      	; 0x1182 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25+0x5a>
    1180:	b5 c0       	rjmp	.+362    	; 0x12ec <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25+0x1c4>
    return;

  int yOffset = abs(y) % 8;
    1182:	da 01       	movw	r26, r20
    1184:	57 ff       	sbrs	r21, 7
    1186:	04 c0       	rjmp	.+8      	; 0x1190 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25+0x68>
    1188:	aa 27       	eor	r26, r26
    118a:	bb 27       	eor	r27, r27
    118c:	a4 1b       	sub	r26, r20
    118e:	b5 0b       	sbc	r27, r21
    1190:	a7 70       	andi	r26, 0x07	; 7
    1192:	bb 27       	eor	r27, r27
  int sRow = y / 8;
    1194:	fa 01       	movw	r30, r20
    1196:	57 fd       	sbrc	r21, 7
    1198:	37 96       	adiw	r30, 0x07	; 7
    119a:	f5 95       	asr	r31
    119c:	e7 95       	ror	r30
    119e:	f5 95       	asr	r31
    11a0:	e7 95       	ror	r30
    11a2:	f5 95       	asr	r31
    11a4:	e7 95       	ror	r30
  if (y < 0) {
    11a6:	57 ff       	sbrs	r21, 7
    11a8:	07 c0       	rjmp	.+14     	; 0x11b8 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25+0x90>
    sRow--;
    11aa:	31 97       	sbiw	r30, 0x01	; 1
    yOffset = 8 - yOffset;
    11ac:	48 e0       	ldi	r20, 0x08	; 8
    11ae:	50 e0       	ldi	r21, 0x00	; 0
    11b0:	4a 01       	movw	r8, r20
    11b2:	8a 1a       	sub	r8, r26
    11b4:	9b 0a       	sbc	r9, r27
    11b6:	d4 01       	movw	r26, r8
  }
  int rows = h/8;
    11b8:	4e 2c       	mov	r4, r14
    11ba:	46 94       	lsr	r4
    11bc:	46 94       	lsr	r4
    11be:	46 94       	lsr	r4
    11c0:	51 2c       	mov	r5, r1
  if (h%8!=0) rows++;
    11c2:	4e 2d       	mov	r20, r14
    11c4:	47 70       	andi	r20, 0x07	; 7
    11c6:	19 f0       	breq	.+6      	; 0x11ce <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25+0xa6>
    11c8:	4f ef       	ldi	r20, 0xFF	; 255
    11ca:	44 1a       	sub	r4, r20
    11cc:	54 0a       	sbc	r5, r20
    11ce:	af 01       	movw	r20, r30
    11d0:	26 1b       	sub	r18, r22
    11d2:	37 0b       	sbc	r19, r23
    11d4:	4e 0e       	add	r4, r30
    11d6:	5f 1e       	adc	r5, r31
    11d8:	3f 01       	movw	r6, r30
    11da:	76 94       	lsr	r7
    11dc:	76 2c       	mov	r7, r6
    11de:	66 24       	eor	r6, r6
    11e0:	77 94       	ror	r7
    11e2:	67 94       	ror	r6
    11e4:	5b 01       	movw	r10, r22
    11e6:	a6 0c       	add	r10, r6
    11e8:	b7 1c       	adc	r11, r7
    11ea:	86 0f       	add	r24, r22
    11ec:	97 1f       	adc	r25, r23
    11ee:	68 0e       	add	r6, r24
    11f0:	79 1e       	adc	r7, r25

    drawFastHLine(a, y, b-a+1, color);
  }
}

void Arduboy::drawBitmap
    11f2:	f1 2c       	mov	r15, r1
    11f4:	e1 2c       	mov	r14, r1
    11f6:	c5 01       	movw	r24, r10
    11f8:	80 58       	subi	r24, 0x80	; 128
    11fa:	9f 4f       	sbci	r25, 0xFF	; 255
    11fc:	9b 87       	std	Y+11, r25	; 0x0b
    11fe:	8a 87       	std	Y+10, r24	; 0x0a
            if      (color == WHITE) this->sBuffer[ (bRow*WIDTH) + x + iCol ] |= pgm_read_byte(bitmap+(a*w)+iCol) << yOffset;
            else if (color == BLACK) this->sBuffer[ (bRow*WIDTH) + x + iCol ] &= ~(pgm_read_byte(bitmap+(a*w)+iCol) << yOffset);
            else                     this->sBuffer[ (bRow*WIDTH) + x + iCol ] ^= pgm_read_byte(bitmap+(a*w)+iCol) << yOffset;
          }
          if (yOffset && bRow<(HEIGHT/8)-1 && bRow > -2) {
            if      (color == WHITE) this->sBuffer[ ((bRow+1)*WIDTH) + x + iCol ] |= pgm_read_byte(bitmap+(a*w)+iCol) >> (8-yOffset);
    1200:	88 e0       	ldi	r24, 0x08	; 8
    1202:	90 e0       	ldi	r25, 0x00	; 0
    1204:	4c 01       	movw	r8, r24
    1206:	8a 1a       	sub	r8, r26
    1208:	9b 0a       	sbc	r9, r27
    120a:	9c 82       	std	Y+4, r9	; 0x04
    120c:	8b 82       	std	Y+3, r8	; 0x03
    sRow--;
    yOffset = 8 - yOffset;
  }
  int rows = h/8;
  if (h%8!=0) rows++;
  for (int a = 0; a < rows; a++) {
    120e:	44 16       	cp	r4, r20
    1210:	55 06       	cpc	r5, r21
    1212:	09 f4       	brne	.+2      	; 0x1216 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25+0xee>
    1214:	6b c0       	rjmp	.+214    	; 0x12ec <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25+0x1c4>
    int bRow = sRow + a;
    if (bRow > (HEIGHT/8)-1) break;
    1216:	48 30       	cpi	r20, 0x08	; 8
    1218:	51 05       	cpc	r21, r1
    121a:	09 f4       	brne	.+2      	; 0x121e <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25+0xf6>
    121c:	67 c0       	rjmp	.+206    	; 0x12ec <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25+0x1c4>
    if (bRow > -2) {
    121e:	4f 3f       	cpi	r20, 0xFF	; 255
    1220:	8f ef       	ldi	r24, 0xFF	; 255
    1222:	58 07       	cpc	r21, r24
    1224:	0c f4       	brge	.+2      	; 0x1228 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25+0x100>
    1226:	57 c0       	rjmp	.+174    	; 0x12d6 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25+0x1ae>
    1228:	47 01       	movw	r8, r14
    122a:	8a 0c       	add	r8, r10
    122c:	9b 1c       	adc	r9, r11
    122e:	9a 82       	std	Y+2, r9	; 0x02
    1230:	89 82       	std	Y+1, r8	; 0x01
    1232:	2a 84       	ldd	r2, Y+10	; 0x0a
    1234:	3b 84       	ldd	r3, Y+11	; 0x0b
    1236:	2e 0c       	add	r2, r14
    1238:	3f 1c       	adc	r3, r15
    123a:	67 01       	movw	r12, r14
    123c:	c6 0c       	add	r12, r6
    123e:	d7 1c       	adc	r13, r7
    1240:	de 82       	std	Y+6, r13	; 0x06
    1242:	cd 82       	std	Y+5, r12	; 0x05
    1244:	cb 01       	movw	r24, r22
      for (int iCol = 0; iCol<w; iCol++) {
        if (iCol + x > (WIDTH-1)) break;
        if (iCol + x >= 0) {
    1246:	97 fd       	sbrc	r25, 7
    1248:	36 c0       	rjmp	.+108    	; 0x12b6 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25+0x18e>
          if (bRow >= 0) {
    124a:	4f 3f       	cpi	r20, 0xFF	; 255
    124c:	54 07       	cpc	r21, r20
    124e:	09 f4       	brne	.+2      	; 0x1252 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25+0x12a>
    1250:	4a c0       	rjmp	.+148    	; 0x12e6 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25+0x1be>
            if      (color == WHITE) this->sBuffer[ (bRow*WIDTH) + x + iCol ] |= pgm_read_byte(bitmap+(a*w)+iCol) << yOffset;
    1252:	fc 01       	movw	r30, r24
    1254:	e2 0f       	add	r30, r18
    1256:	f3 1f       	adc	r31, r19
    1258:	e4 91       	lpm	r30, Z
    125a:	f0 e0       	ldi	r31, 0x00	; 0
    125c:	6f 01       	movw	r12, r30
    125e:	0a 2e       	mov	r0, r26
    1260:	01 c0       	rjmp	.+2      	; 0x1264 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25+0x13c>
    1262:	cc 0c       	add	r12, r12
    1264:	0a 94       	dec	r0
    1266:	ea f7       	brpl	.-6      	; 0x1262 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25+0x13a>
    1268:	ed 81       	ldd	r30, Y+5	; 0x05
    126a:	fe 81       	ldd	r31, Y+6	; 0x06
    126c:	d4 88       	ldd	r13, Z+20	; 0x14
    126e:	cd 28       	or	r12, r13
    1270:	c4 8a       	std	Z+20, r12	; 0x14
            else if (color == BLACK) this->sBuffer[ (bRow*WIDTH) + x + iCol ] &= ~(pgm_read_byte(bitmap+(a*w)+iCol) << yOffset);
            else                     this->sBuffer[ (bRow*WIDTH) + x + iCol ] ^= pgm_read_byte(bitmap+(a*w)+iCol) << yOffset;
          }
          if (yOffset && bRow<(HEIGHT/8)-1 && bRow > -2) {
    1272:	10 97       	sbiw	r26, 0x00	; 0
    1274:	01 f1       	breq	.+64     	; 0x12b6 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25+0x18e>
    1276:	47 30       	cpi	r20, 0x07	; 7
    1278:	51 05       	cpc	r21, r1
    127a:	e9 f0       	breq	.+58     	; 0x12b6 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25+0x18e>
            if      (color == WHITE) this->sBuffer[ ((bRow+1)*WIDTH) + x + iCol ] |= pgm_read_byte(bitmap+(a*w)+iCol) >> (8-yOffset);
    127c:	fc 01       	movw	r30, r24
    127e:	e2 0f       	add	r30, r18
    1280:	f3 1f       	adc	r31, r19
    1282:	84 90       	lpm	r8, Z
    1284:	cd 80       	ldd	r12, Y+5	; 0x05
    1286:	de 80       	ldd	r13, Y+6	; 0x06
    1288:	e9 81       	ldd	r30, Y+1	; 0x01
    128a:	fa 81       	ldd	r31, Y+2	; 0x02
    128c:	ce 1a       	sub	r12, r30
    128e:	df 0a       	sbc	r13, r31
    1290:	c2 0c       	add	r12, r2
    1292:	d3 1c       	adc	r13, r3
    1294:	e8 2d       	mov	r30, r8
    1296:	f0 e0       	ldi	r31, 0x00	; 0
    1298:	4f 01       	movw	r8, r30
    129a:	0b 80       	ldd	r0, Y+3	; 0x03
    129c:	02 c0       	rjmp	.+4      	; 0x12a2 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25+0x17a>
    129e:	95 94       	asr	r9
    12a0:	87 94       	ror	r8
    12a2:	0a 94       	dec	r0
    12a4:	e2 f7       	brpl	.-8      	; 0x129e <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25+0x176>
    12a6:	99 86       	std	Y+9, r9	; 0x09
    12a8:	88 86       	std	Y+8, r8	; 0x08
    12aa:	f6 01       	movw	r30, r12
    12ac:	84 88       	ldd	r8, Z+20	; 0x14
    12ae:	f8 85       	ldd	r31, Y+8	; 0x08
    12b0:	8f 2a       	or	r8, r31
    12b2:	f6 01       	movw	r30, r12
    12b4:	84 8a       	std	Z+20, r8	; 0x14
    12b6:	01 96       	adiw	r24, 0x01	; 1
    12b8:	ed 81       	ldd	r30, Y+5	; 0x05
    12ba:	fe 81       	ldd	r31, Y+6	; 0x06
    12bc:	31 96       	adiw	r30, 0x01	; 1
    12be:	fe 83       	std	Y+6, r31	; 0x06
    12c0:	ed 83       	std	Y+5, r30	; 0x05
  if (h%8!=0) rows++;
  for (int a = 0; a < rows; a++) {
    int bRow = sRow + a;
    if (bRow > (HEIGHT/8)-1) break;
    if (bRow > -2) {
      for (int iCol = 0; iCol<w; iCol++) {
    12c2:	fc 01       	movw	r30, r24
    12c4:	e6 1b       	sub	r30, r22
    12c6:	f7 0b       	sbc	r31, r23
    12c8:	e0 17       	cp	r30, r16
    12ca:	f1 07       	cpc	r31, r17
    12cc:	24 f4       	brge	.+8      	; 0x12d6 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25+0x1ae>
        if (iCol + x > (WIDTH-1)) break;
    12ce:	80 38       	cpi	r24, 0x80	; 128
    12d0:	91 05       	cpc	r25, r1
    12d2:	09 f0       	breq	.+2      	; 0x12d6 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25+0x1ae>
    12d4:	b8 cf       	rjmp	.-144    	; 0x1246 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25+0x11e>
    12d6:	4f 5f       	subi	r20, 0xFF	; 255
    12d8:	5f 4f       	sbci	r21, 0xFF	; 255
    12da:	20 0f       	add	r18, r16
    12dc:	31 1f       	adc	r19, r17
    12de:	f0 e8       	ldi	r31, 0x80	; 128
    12e0:	ef 0e       	add	r14, r31
    12e2:	f1 1c       	adc	r15, r1
    12e4:	94 cf       	rjmp	.-216    	; 0x120e <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25+0xe6>
          if (bRow >= 0) {
            if      (color == WHITE) this->sBuffer[ (bRow*WIDTH) + x + iCol ] |= pgm_read_byte(bitmap+(a*w)+iCol) << yOffset;
            else if (color == BLACK) this->sBuffer[ (bRow*WIDTH) + x + iCol ] &= ~(pgm_read_byte(bitmap+(a*w)+iCol) << yOffset);
            else                     this->sBuffer[ (bRow*WIDTH) + x + iCol ] ^= pgm_read_byte(bitmap+(a*w)+iCol) << yOffset;
          }
          if (yOffset && bRow<(HEIGHT/8)-1 && bRow > -2) {
    12e6:	10 97       	sbiw	r26, 0x00	; 0
    12e8:	49 f6       	brne	.-110    	; 0x127c <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25+0x154>
    12ea:	e5 cf       	rjmp	.-54     	; 0x12b6 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25+0x18e>
          }
        }
      }
    }
  }
}
    12ec:	2b 96       	adiw	r28, 0x0b	; 11
    12ee:	0f b6       	in	r0, 0x3f	; 63
    12f0:	f8 94       	cli
    12f2:	de bf       	out	0x3e, r29	; 62
    12f4:	0f be       	out	0x3f, r0	; 63
    12f6:	cd bf       	out	0x3d, r28	; 61
    12f8:	df 91       	pop	r29
    12fa:	cf 91       	pop	r28
    12fc:	1f 91       	pop	r17
    12fe:	0f 91       	pop	r16
    1300:	ff 90       	pop	r15
    1302:	ef 90       	pop	r14
    1304:	df 90       	pop	r13
    1306:	cf 90       	pop	r12
    1308:	bf 90       	pop	r11
    130a:	af 90       	pop	r10
    130c:	9f 90       	pop	r9
    130e:	8f 90       	pop	r8
    1310:	7f 90       	pop	r7
    1312:	6f 90       	pop	r6
    1314:	5f 90       	pop	r5
    1316:	4f 90       	pop	r4
    1318:	3f 90       	pop	r3
    131a:	2f 90       	pop	r2
    131c:	08 95       	ret

0000131e <_ZN7Arduboy10fillScreenEh.constprop.19>:
    // input: sBuffer, color
    // modified: Z (r30, r31), r27
    :
    : "r" (sBuffer), "r" (color)
    : "r30", "r31", "r27"
  );
    131e:	8e e1       	ldi	r24, 0x1E	; 30
    1320:	93 e0       	ldi	r25, 0x03	; 3
    1322:	20 e0       	ldi	r18, 0x00	; 0
    1324:	b2 2f       	mov	r27, r18
    1326:	b1 11       	cpse	r27, r1
    1328:	bf ef       	ldi	r27, 0xFF	; 255
    132a:	fc 01       	movw	r30, r24
    132c:	00 24       	eor	r0, r0

0000132e <loopto>:
    132e:	b1 93       	st	Z+, r27
    1330:	b1 93       	st	Z+, r27
    1332:	b1 93       	st	Z+, r27
    1334:	b1 93       	st	Z+, r27
    1336:	03 94       	inc	r0
    1338:	d1 f7       	brne	.-12     	; 0x132e <loopto>
}
    133a:	08 95       	ret

0000133c <_Z8USB_RecvhPvi.constprop.5>:
	return FifoByteCount();
}

//	Non Blocking receive
//	Return number of bytes read
int USB_Recv(u8 ep, void* d, int len)
    133c:	fc 01       	movw	r30, r24
{
	if (!_usbConfiguration || len < 0)
    133e:	80 91 b2 02 	lds	r24, 0x02B2	; 0x8002b2 <_usbConfiguration>
    1342:	88 23       	and	r24, r24
    1344:	11 f1       	breq	.+68     	; 0x138a <_Z8USB_RecvhPvi.constprop.5+0x4e>
#define USB_RECV_TIMEOUT
class LockEP
{
	u8 _sreg;
public:
	LockEP(u8 ep) : _sreg(SREG)
    1346:	3f b7       	in	r19, 0x3f	; 63
	{
		cli();
    1348:	f8 94       	cli
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    134a:	82 e0       	ldi	r24, 0x02	; 2
    134c:	80 93 e9 00 	sts	0x00E9, r24	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
}

static inline u8 FifoByteCount()
{
	return UEBCLX;
    1350:	20 91 f2 00 	lds	r18, 0x00F2	; 0x8000f2 <__DATA_REGION_ORIGIN__+0x92>
	if (!_usbConfiguration || len < 0)
		return -1;
	
	LockEP lock(ep);
	u8 n = FifoByteCount();
	len = min(n,len);
    1354:	82 2f       	mov	r24, r18
    1356:	90 e0       	ldi	r25, 0x00	; 0
    1358:	18 16       	cp	r1, r24
    135a:	19 06       	cpc	r1, r25
    135c:	14 f4       	brge	.+4      	; 0x1362 <_Z8USB_RecvhPvi.constprop.5+0x26>
    135e:	81 e0       	ldi	r24, 0x01	; 1
    1360:	90 e0       	ldi	r25, 0x00	; 0
	n = len;
	u8* dst = (u8*)d;
	while (n--)
    1362:	88 23       	and	r24, r24
    1364:	39 f0       	breq	.+14     	; 0x1374 <_Z8USB_RecvhPvi.constprop.5+0x38>
	RxLEDPulse = TX_RX_LED_PULSE_MS;	
}

static inline u8 Recv8()
{
	RXLED1;					// light the RX LED
    1366:	28 98       	cbi	0x05, 0	; 5
	RxLEDPulse = TX_RX_LED_PULSE_MS;
    1368:	44 e6       	ldi	r20, 0x64	; 100
    136a:	40 93 b1 02 	sts	0x02B1, r20	; 0x8002b1 <RxLEDPulse>

	return UEDATX;	
    136e:	40 91 f1 00 	lds	r20, 0x00F1	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
	u8 n = FifoByteCount();
	len = min(n,len);
	n = len;
	u8* dst = (u8*)d;
	while (n--)
		*dst++ = Recv8();
    1372:	40 83       	st	Z, r20
	if (len && !FifoByteCount())	// release empty buffer
    1374:	22 23       	and	r18, r18
    1376:	39 f0       	breq	.+14     	; 0x1386 <_Z8USB_RecvhPvi.constprop.5+0x4a>
	UENUM = ep;
}

static inline u8 FifoByteCount()
{
	return UEBCLX;
    1378:	20 91 f2 00 	lds	r18, 0x00F2	; 0x8000f2 <__DATA_REGION_ORIGIN__+0x92>
	len = min(n,len);
	n = len;
	u8* dst = (u8*)d;
	while (n--)
		*dst++ = Recv8();
	if (len && !FifoByteCount())	// release empty buffer
    137c:	21 11       	cpse	r18, r1
    137e:	03 c0       	rjmp	.+6      	; 0x1386 <_Z8USB_RecvhPvi.constprop.5+0x4a>
	return UEINTX & (1<<FIFOCON);
}

static inline void ReleaseRX()
{
	UEINTX = 0x6B;	// FIFOCON=0 NAKINI=1 RWAL=1 NAKOUTI=0 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=1
    1380:	2b e6       	ldi	r18, 0x6B	; 107
    1382:	20 93 e8 00 	sts	0x00E8, r18	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
		cli();
		SetEP(ep & 7);
	}
	~LockEP()
	{
		SREG = _sreg;
    1386:	3f bf       	out	0x3f, r19	; 63
    1388:	08 95       	ret
//	Non Blocking receive
//	Return number of bytes read
int USB_Recv(u8 ep, void* d, int len)
{
	if (!_usbConfiguration || len < 0)
		return -1;
    138a:	8f ef       	ldi	r24, 0xFF	; 255
    138c:	9f ef       	ldi	r25, 0xFF	; 255
		*dst++ = Recv8();
	if (len && !FifoByteCount())	// release empty buffer
		ReleaseRX();
	
	return len;
}
    138e:	08 95       	ret

00001390 <_Z13USB_SendSpaceh.constprop.3>:
#define USB_RECV_TIMEOUT
class LockEP
{
	u8 _sreg;
public:
	LockEP(u8 ep) : _sreg(SREG)
    1390:	2f b7       	in	r18, 0x3f	; 63
	{
		cli();
    1392:	f8 94       	cli
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    1394:	83 e0       	ldi	r24, 0x03	; 3
    1396:	80 93 e9 00 	sts	0x00E9, r24	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
	UECONX = (1<<STALLRQ) | (1<<EPEN);
}

static inline u8 ReadWriteAllowed()
{
	return UEINTX & (1<<RWAL);
    139a:	90 91 e8 00 	lds	r25, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>

//	Space in send EP
u8 USB_SendSpace(u8 ep)
{
	LockEP lock(ep);
	if (!ReadWriteAllowed())
    139e:	89 2f       	mov	r24, r25
    13a0:	80 72       	andi	r24, 0x20	; 32
    13a2:	95 ff       	sbrs	r25, 5
    13a4:	04 c0       	rjmp	.+8      	; 0x13ae <_Z13USB_SendSpaceh.constprop.3+0x1e>
	UENUM = ep;
}

static inline u8 FifoByteCount()
{
	return UEBCLX;
    13a6:	90 91 f2 00 	lds	r25, 0x00F2	; 0x8000f2 <__DATA_REGION_ORIGIN__+0x92>
u8 USB_SendSpace(u8 ep)
{
	LockEP lock(ep);
	if (!ReadWriteAllowed())
		return 0;
	return USB_EP_SIZE - FifoByteCount();
    13aa:	80 e4       	ldi	r24, 0x40	; 64
    13ac:	89 1b       	sub	r24, r25
		cli();
		SetEP(ep & 7);
	}
	~LockEP()
	{
		SREG = _sreg;
    13ae:	2f bf       	out	0x3f, r18	; 63
{
	LockEP lock(ep);
	if (!ReadWriteAllowed())
		return 0;
	return USB_EP_SIZE - FifoByteCount();
}
    13b0:	08 95       	ret

000013b2 <_Z12PluggableUSBv>:
	// restart USB layer???
}

PluggableUSB_& PluggableUSB()
{
	static PluggableUSB_ obj;
    13b2:	80 91 a9 02 	lds	r24, 0x02A9	; 0x8002a9 <_ZGVZ12PluggableUSBvE3obj>
    13b6:	81 11       	cpse	r24, r1
    13b8:	0d c0       	rjmp	.+26     	; 0x13d4 <_Z12PluggableUSBv+0x22>
	return obj;
}

PluggableUSB_::PluggableUSB_() : lastIf(CDC_ACM_INTERFACE + CDC_INTERFACE_COUNT),
                                 lastEp(CDC_FIRST_ENDPOINT + CDC_ENPOINT_COUNT),
                                 rootNode(NULL)
    13ba:	82 e0       	ldi	r24, 0x02	; 2
    13bc:	80 93 a5 02 	sts	0x02A5, r24	; 0x8002a5 <_ZZ12PluggableUSBvE3obj>
    13c0:	84 e0       	ldi	r24, 0x04	; 4
    13c2:	80 93 a6 02 	sts	0x02A6, r24	; 0x8002a6 <_ZZ12PluggableUSBvE3obj+0x1>
    13c6:	10 92 a8 02 	sts	0x02A8, r1	; 0x8002a8 <_ZZ12PluggableUSBvE3obj+0x3>
    13ca:	10 92 a7 02 	sts	0x02A7, r1	; 0x8002a7 <_ZZ12PluggableUSBvE3obj+0x2>
	// restart USB layer???
}

PluggableUSB_& PluggableUSB()
{
	static PluggableUSB_ obj;
    13ce:	81 e0       	ldi	r24, 0x01	; 1
    13d0:	80 93 a9 02 	sts	0x02A9, r24	; 0x8002a9 <_ZGVZ12PluggableUSBvE3obj>
	return obj;
}
    13d4:	85 ea       	ldi	r24, 0xA5	; 165
    13d6:	92 e0       	ldi	r25, 0x02	; 2
    13d8:	08 95       	ret

000013da <_ZN7Serial_5writeEh>:
{
	USB_Flush(CDC_TX);
}

size_t Serial_::write(uint8_t c)
{
    13da:	cf 93       	push	r28
    13dc:	df 93       	push	r29
    13de:	1f 92       	push	r1
    13e0:	cd b7       	in	r28, 0x3d	; 61
    13e2:	de b7       	in	r29, 0x3e	; 62
    13e4:	69 83       	std	Y+1, r22	; 0x01
	return write(&c, 1);
    13e6:	dc 01       	movw	r26, r24
    13e8:	ed 91       	ld	r30, X+
    13ea:	fc 91       	ld	r31, X
    13ec:	02 80       	ldd	r0, Z+2	; 0x02
    13ee:	f3 81       	ldd	r31, Z+3	; 0x03
    13f0:	e0 2d       	mov	r30, r0
    13f2:	41 e0       	ldi	r20, 0x01	; 1
    13f4:	50 e0       	ldi	r21, 0x00	; 0
    13f6:	be 01       	movw	r22, r28
    13f8:	6f 5f       	subi	r22, 0xFF	; 255
    13fa:	7f 4f       	sbci	r23, 0xFF	; 255
    13fc:	09 95       	icall
}
    13fe:	0f 90       	pop	r0
    1400:	df 91       	pop	r29
    1402:	cf 91       	pop	r28
    1404:	08 95       	ret

00001406 <_ZN7Serial_5flushEv>:
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    1406:	83 e0       	ldi	r24, 0x03	; 3
    1408:	80 93 e9 00 	sts	0x00E9, r24	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
}

static inline u8 FifoByteCount()
{
	return UEBCLX;
    140c:	80 91 f2 00 	lds	r24, 0x00F2	; 0x8000f2 <__DATA_REGION_ORIGIN__+0x92>
}

void USB_Flush(u8 ep)
{
	SetEP(ep);
	if (FifoByteCount())
    1410:	88 23       	and	r24, r24
    1412:	19 f0       	breq	.+6      	; 0x141a <_ZN7Serial_5flushEv+0x14>
	UEINTX = 0x6B;	// FIFOCON=0 NAKINI=1 RWAL=1 NAKOUTI=0 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=1
}

static inline void ReleaseTX()
{
	UEINTX = 0x3A;	// FIFOCON=0 NAKINI=0 RWAL=1 NAKOUTI=1 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=0
    1414:	8a e3       	ldi	r24, 0x3A	; 58
    1416:	80 93 e8 00 	sts	0x00E8, r24	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
}

void Serial_::flush(void)
{
	USB_Flush(CDC_TX);
}
    141a:	08 95       	ret

0000141c <_ZN7Serial_17availableForWriteEv>:
	return USB_Recv(CDC_RX);
}

int Serial_::availableForWrite(void)
{
	return USB_SendSpace(CDC_TX);
    141c:	0e 94 c8 09 	call	0x1390	; 0x1390 <_Z13USB_SendSpaceh.constprop.3>
}
    1420:	90 e0       	ldi	r25, 0x00	; 0
    1422:	08 95       	ret

00001424 <_ZN7Serial_4readEv>:
		peek_buffer = USB_Recv(CDC_RX);
	return peek_buffer;
}

int Serial_::read(void)
{
    1424:	cf 93       	push	r28
    1426:	df 93       	push	r29
    1428:	1f 92       	push	r1
    142a:	cd b7       	in	r28, 0x3d	; 61
    142c:	de b7       	in	r29, 0x3e	; 62
    142e:	fc 01       	movw	r30, r24
	if (peek_buffer >= 0) {
    1430:	84 85       	ldd	r24, Z+12	; 0x0c
    1432:	95 85       	ldd	r25, Z+13	; 0x0d
    1434:	97 fd       	sbrc	r25, 7
    1436:	08 c0       	rjmp	.+16     	; 0x1448 <_ZN7Serial_4readEv+0x24>
		int c = peek_buffer;
		peek_buffer = -1;
    1438:	2f ef       	ldi	r18, 0xFF	; 255
    143a:	3f ef       	ldi	r19, 0xFF	; 255
    143c:	35 87       	std	Z+13, r19	; 0x0d
    143e:	24 87       	std	Z+12, r18	; 0x0c
		return c;
	}
	return USB_Recv(CDC_RX);
}
    1440:	0f 90       	pop	r0
    1442:	df 91       	pop	r29
    1444:	cf 91       	pop	r28
    1446:	08 95       	ret

//	Recv 1 byte if ready
int USB_Recv(u8 ep)
{
	u8 c;
	if (USB_Recv(ep,&c,1) != 1)
    1448:	ce 01       	movw	r24, r28
    144a:	01 96       	adiw	r24, 0x01	; 1
    144c:	0e 94 9e 09 	call	0x133c	; 0x133c <_Z8USB_RecvhPvi.constprop.5>
    1450:	01 97       	sbiw	r24, 0x01	; 1
    1452:	19 f4       	brne	.+6      	; 0x145a <_ZN7Serial_4readEv+0x36>
		return -1;
	return c;
    1454:	89 81       	ldd	r24, Y+1	; 0x01
    1456:	90 e0       	ldi	r25, 0x00	; 0
    1458:	f3 cf       	rjmp	.-26     	; 0x1440 <_ZN7Serial_4readEv+0x1c>
//	Recv 1 byte if ready
int USB_Recv(u8 ep)
{
	u8 c;
	if (USB_Recv(ep,&c,1) != 1)
		return -1;
    145a:	8f ef       	ldi	r24, 0xFF	; 255
    145c:	9f ef       	ldi	r25, 0xFF	; 255
    145e:	f0 cf       	rjmp	.-32     	; 0x1440 <_ZN7Serial_4readEv+0x1c>

00001460 <_ZN7Serial_4peekEv>:
	}
	return USB_Available(CDC_RX);
}

int Serial_::peek(void)
{
    1460:	0f 93       	push	r16
    1462:	1f 93       	push	r17
    1464:	cf 93       	push	r28
    1466:	df 93       	push	r29
    1468:	1f 92       	push	r1
    146a:	cd b7       	in	r28, 0x3d	; 61
    146c:	de b7       	in	r29, 0x3e	; 62
    146e:	8c 01       	movw	r16, r24
	if (peek_buffer < 0)
    1470:	fc 01       	movw	r30, r24
    1472:	84 85       	ldd	r24, Z+12	; 0x0c
    1474:	95 85       	ldd	r25, Z+13	; 0x0d
    1476:	97 ff       	sbrs	r25, 7
    1478:	0b c0       	rjmp	.+22     	; 0x1490 <_ZN7Serial_4peekEv+0x30>

//	Recv 1 byte if ready
int USB_Recv(u8 ep)
{
	u8 c;
	if (USB_Recv(ep,&c,1) != 1)
    147a:	ce 01       	movw	r24, r28
    147c:	01 96       	adiw	r24, 0x01	; 1
    147e:	0e 94 9e 09 	call	0x133c	; 0x133c <_Z8USB_RecvhPvi.constprop.5>
    1482:	01 97       	sbiw	r24, 0x01	; 1
    1484:	71 f4       	brne	.+28     	; 0x14a2 <_ZN7Serial_4peekEv+0x42>
		return -1;
	return c;
    1486:	89 81       	ldd	r24, Y+1	; 0x01
    1488:	90 e0       	ldi	r25, 0x00	; 0
		peek_buffer = USB_Recv(CDC_RX);
    148a:	f8 01       	movw	r30, r16
    148c:	95 87       	std	Z+13, r25	; 0x0d
    148e:	84 87       	std	Z+12, r24	; 0x0c
	return peek_buffer;
}
    1490:	f8 01       	movw	r30, r16
    1492:	84 85       	ldd	r24, Z+12	; 0x0c
    1494:	95 85       	ldd	r25, Z+13	; 0x0d
    1496:	0f 90       	pop	r0
    1498:	df 91       	pop	r29
    149a:	cf 91       	pop	r28
    149c:	1f 91       	pop	r17
    149e:	0f 91       	pop	r16
    14a0:	08 95       	ret
//	Recv 1 byte if ready
int USB_Recv(u8 ep)
{
	u8 c;
	if (USB_Recv(ep,&c,1) != 1)
		return -1;
    14a2:	8f ef       	ldi	r24, 0xFF	; 255
    14a4:	9f ef       	ldi	r25, 0xFF	; 255
    14a6:	f1 cf       	rjmp	.-30     	; 0x148a <_ZN7Serial_4peekEv+0x2a>

000014a8 <_ZN7Serial_9availableEv>:
{
}

int Serial_::available(void)
{
	if (peek_buffer >= 0) {
    14a8:	fc 01       	movw	r30, r24
    14aa:	84 85       	ldd	r24, Z+12	; 0x0c
    14ac:	95 85       	ldd	r25, Z+13	; 0x0d
    14ae:	97 fd       	sbrc	r25, 7
    14b0:	0b c0       	rjmp	.+22     	; 0x14c8 <_ZN7Serial_9availableEv+0x20>
#define USB_RECV_TIMEOUT
class LockEP
{
	u8 _sreg;
public:
	LockEP(u8 ep) : _sreg(SREG)
    14b2:	9f b7       	in	r25, 0x3f	; 63
	{
		cli();
    14b4:	f8 94       	cli
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    14b6:	82 e0       	ldi	r24, 0x02	; 2
    14b8:	80 93 e9 00 	sts	0x00E9, r24	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
}

static inline u8 FifoByteCount()
{
	return UEBCLX;
    14bc:	80 91 f2 00 	lds	r24, 0x00F2	; 0x8000f2 <__DATA_REGION_ORIGIN__+0x92>
		cli();
		SetEP(ep & 7);
	}
	~LockEP()
	{
		SREG = _sreg;
    14c0:	9f bf       	out	0x3f, r25	; 63
		return 1 + USB_Available(CDC_RX);
    14c2:	90 e0       	ldi	r25, 0x00	; 0
    14c4:	01 96       	adiw	r24, 0x01	; 1
    14c6:	08 95       	ret
#define USB_RECV_TIMEOUT
class LockEP
{
	u8 _sreg;
public:
	LockEP(u8 ep) : _sreg(SREG)
    14c8:	9f b7       	in	r25, 0x3f	; 63
	{
		cli();
    14ca:	f8 94       	cli
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    14cc:	82 e0       	ldi	r24, 0x02	; 2
    14ce:	80 93 e9 00 	sts	0x00E9, r24	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
}

static inline u8 FifoByteCount()
{
	return UEBCLX;
    14d2:	80 91 f2 00 	lds	r24, 0x00F2	; 0x8000f2 <__DATA_REGION_ORIGIN__+0x92>
		cli();
		SetEP(ep & 7);
	}
	~LockEP()
	{
		SREG = _sreg;
    14d6:	9f bf       	out	0x3f, r25	; 63
	}
	return USB_Available(CDC_RX);
    14d8:	90 e0       	ldi	r25, 0x00	; 0
}
    14da:	08 95       	ret

000014dc <_ZL11SendControlh>:
}

static
bool SendControl(u8 d)
{
	if (_cmark < _cend)
    14dc:	40 91 9f 02 	lds	r20, 0x029F	; 0x80029f <_ZL6_cmark>
    14e0:	50 91 a0 02 	lds	r21, 0x02A0	; 0x8002a0 <_ZL6_cmark+0x1>
    14e4:	20 91 9d 02 	lds	r18, 0x029D	; 0x80029d <_ZL5_cend>
    14e8:	30 91 9e 02 	lds	r19, 0x029E	; 0x80029e <_ZL5_cend+0x1>
    14ec:	42 17       	cp	r20, r18
    14ee:	53 07       	cpc	r21, r19
    14f0:	b4 f4       	brge	.+44     	; 0x151e <_ZL11SendControlh+0x42>
		;
}

static inline u8 WaitForINOrOUT()
{
	while (!(UEINTX & ((1<<TXINI)|(1<<RXOUTI))))
    14f2:	90 91 e8 00 	lds	r25, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
    14f6:	95 70       	andi	r25, 0x05	; 5
    14f8:	e1 f3       	breq	.-8      	; 0x14f2 <_ZL11SendControlh+0x16>
		;
	return (UEINTX & (1<<RXOUTI)) == 0;
    14fa:	90 91 e8 00 	lds	r25, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
static
bool SendControl(u8 d)
{
	if (_cmark < _cend)
	{
		if (!WaitForINOrOUT())
    14fe:	92 fd       	sbrc	r25, 2
    1500:	19 c0       	rjmp	.+50     	; 0x1534 <_ZL11SendControlh+0x58>
	return UEDATX;	
}

static inline void Send8(u8 d)
{
	UEDATX = d;
    1502:	80 93 f1 00 	sts	0x00F1, r24	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
	if (_cmark < _cend)
	{
		if (!WaitForINOrOUT())
			return false;
		Send8(d);
		if (!((_cmark + 1) & 0x3F))
    1506:	80 91 9f 02 	lds	r24, 0x029F	; 0x80029f <_ZL6_cmark>
    150a:	90 91 a0 02 	lds	r25, 0x02A0	; 0x8002a0 <_ZL6_cmark+0x1>
    150e:	01 96       	adiw	r24, 0x01	; 1
    1510:	8f 73       	andi	r24, 0x3F	; 63
    1512:	99 27       	eor	r25, r25
    1514:	89 2b       	or	r24, r25
    1516:	19 f4       	brne	.+6      	; 0x151e <_ZL11SendControlh+0x42>
		;
}

static inline void ClearIN(void)
{
	UEINTX = ~(1<<TXINI);
    1518:	8e ef       	ldi	r24, 0xFE	; 254
    151a:	80 93 e8 00 	sts	0x00E8, r24	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
			return false;
		Send8(d);
		if (!((_cmark + 1) & 0x3F))
			ClearIN();	// Fifo is full, release this packet
	}
	_cmark++;
    151e:	80 91 9f 02 	lds	r24, 0x029F	; 0x80029f <_ZL6_cmark>
    1522:	90 91 a0 02 	lds	r25, 0x02A0	; 0x8002a0 <_ZL6_cmark+0x1>
    1526:	01 96       	adiw	r24, 0x01	; 1
    1528:	90 93 a0 02 	sts	0x02A0, r25	; 0x8002a0 <_ZL6_cmark+0x1>
    152c:	80 93 9f 02 	sts	0x029F, r24	; 0x80029f <_ZL6_cmark>
	return true;
    1530:	81 e0       	ldi	r24, 0x01	; 1
    1532:	08 95       	ret
bool SendControl(u8 d)
{
	if (_cmark < _cend)
	{
		if (!WaitForINOrOUT())
			return false;
    1534:	80 e0       	ldi	r24, 0x00	; 0
		if (!((_cmark + 1) & 0x3F))
			ClearIN();	// Fifo is full, release this packet
	}
	_cmark++;
	return true;
}
    1536:	08 95       	ret

00001538 <_ZL24USB_SendStringDescriptorPKhhh>:
}

// Send a USB descriptor string. The string is stored in PROGMEM as a
// plain ASCII string but is sent out as UTF-16 with the correct 2-byte
// prefix
static bool USB_SendStringDescriptor(const u8*string_P, u8 string_len, uint8_t flags) {
    1538:	ef 92       	push	r14
    153a:	ff 92       	push	r15
    153c:	0f 93       	push	r16
    153e:	1f 93       	push	r17
    1540:	cf 93       	push	r28
    1542:	df 93       	push	r29
    1544:	f8 2e       	mov	r15, r24
    1546:	19 2f       	mov	r17, r25
    1548:	e6 2e       	mov	r14, r22
    154a:	04 2f       	mov	r16, r20
        SendControl(2 + string_len * 2);
    154c:	81 e0       	ldi	r24, 0x01	; 1
    154e:	86 0f       	add	r24, r22
    1550:	88 0f       	add	r24, r24
    1552:	0e 94 6e 0a 	call	0x14dc	; 0x14dc <_ZL11SendControlh>
        SendControl(3);
    1556:	83 e0       	ldi	r24, 0x03	; 3
    1558:	0e 94 6e 0a 	call	0x14dc	; 0x14dc <_ZL11SendControlh>
    155c:	cf 2d       	mov	r28, r15
    155e:	d1 2f       	mov	r29, r17
    1560:	ec 0e       	add	r14, r28
    1562:	fd 2e       	mov	r15, r29
    1564:	f1 1c       	adc	r15, r1
        bool pgm = flags & TRANSFER_PGM;
        for(u8 i = 0; i < string_len; i++) {
    1566:	ce 15       	cp	r28, r14
    1568:	df 05       	cpc	r29, r15
    156a:	b9 f0       	breq	.+46     	; 0x159a <_ZL24USB_SendStringDescriptorPKhhh+0x62>
                bool r = SendControl(pgm ? pgm_read_byte(&string_P[i]) : string_P[i]);
    156c:	07 ff       	sbrs	r16, 7
    156e:	13 c0       	rjmp	.+38     	; 0x1596 <_ZL24USB_SendStringDescriptorPKhhh+0x5e>
    1570:	fe 01       	movw	r30, r28
    1572:	84 91       	lpm	r24, Z
    1574:	0e 94 6e 0a 	call	0x14dc	; 0x14dc <_ZL11SendControlh>
    1578:	18 2f       	mov	r17, r24
                r &= SendControl(0); // high byte
    157a:	80 e0       	ldi	r24, 0x00	; 0
    157c:	0e 94 6e 0a 	call	0x14dc	; 0x14dc <_ZL11SendControlh>
    1580:	81 23       	and	r24, r17
    1582:	21 96       	adiw	r28, 0x01	; 1
                if(!r) {
    1584:	81 11       	cpse	r24, r1
    1586:	ef cf       	rjmp	.-34     	; 0x1566 <_ZL24USB_SendStringDescriptorPKhhh+0x2e>
                        return false;
                }
        }
        return true;
}
    1588:	df 91       	pop	r29
    158a:	cf 91       	pop	r28
    158c:	1f 91       	pop	r17
    158e:	0f 91       	pop	r16
    1590:	ff 90       	pop	r15
    1592:	ef 90       	pop	r14
    1594:	08 95       	ret
static bool USB_SendStringDescriptor(const u8*string_P, u8 string_len, uint8_t flags) {
        SendControl(2 + string_len * 2);
        SendControl(3);
        bool pgm = flags & TRANSFER_PGM;
        for(u8 i = 0; i < string_len; i++) {
                bool r = SendControl(pgm ? pgm_read_byte(&string_P[i]) : string_P[i]);
    1596:	88 81       	ld	r24, Y
    1598:	ed cf       	rjmp	.-38     	; 0x1574 <_ZL24USB_SendStringDescriptorPKhhh+0x3c>
                r &= SendControl(0); // high byte
                if(!r) {
                        return false;
                }
        }
        return true;
    159a:	81 e0       	ldi	r24, 0x01	; 1
    159c:	f5 cf       	rjmp	.-22     	; 0x1588 <_ZL24USB_SendStringDescriptorPKhhh+0x50>

0000159e <_Z15USB_SendControlhPKvi>:
	return true;
}

//	Clipped by _cmark/_cend
int USB_SendControl(u8 flags, const void* d, int len)
{
    159e:	df 92       	push	r13
    15a0:	ef 92       	push	r14
    15a2:	ff 92       	push	r15
    15a4:	0f 93       	push	r16
    15a6:	1f 93       	push	r17
    15a8:	cf 93       	push	r28
    15aa:	df 93       	push	r29
    15ac:	d8 2e       	mov	r13, r24
    15ae:	8a 01       	movw	r16, r20
    15b0:	eb 01       	movw	r28, r22
    15b2:	7b 01       	movw	r14, r22
    15b4:	e4 0e       	add	r14, r20
    15b6:	f5 1e       	adc	r15, r21
	int sent = len;
	const u8* data = (const u8*)d;
	bool pgm = flags & TRANSFER_PGM;
	while (len--)
    15b8:	ce 15       	cp	r28, r14
    15ba:	df 05       	cpc	r29, r15
    15bc:	59 f0       	breq	.+22     	; 0x15d4 <_Z15USB_SendControlhPKvi+0x36>
	{
		u8 c = pgm ? pgm_read_byte(data++) : *data++;
    15be:	d7 fe       	sbrs	r13, 7
    15c0:	12 c0       	rjmp	.+36     	; 0x15e6 <_Z15USB_SendControlhPKvi+0x48>
    15c2:	fe 01       	movw	r30, r28
    15c4:	84 91       	lpm	r24, Z
		if (!SendControl(c))
    15c6:	0e 94 6e 0a 	call	0x14dc	; 0x14dc <_ZL11SendControlh>
    15ca:	21 96       	adiw	r28, 0x01	; 1
    15cc:	81 11       	cpse	r24, r1
    15ce:	f4 cf       	rjmp	.-24     	; 0x15b8 <_Z15USB_SendControlhPKvi+0x1a>
			return -1;
    15d0:	0f ef       	ldi	r16, 0xFF	; 255
    15d2:	1f ef       	ldi	r17, 0xFF	; 255
	}
	return sent;
}
    15d4:	c8 01       	movw	r24, r16
    15d6:	df 91       	pop	r29
    15d8:	cf 91       	pop	r28
    15da:	1f 91       	pop	r17
    15dc:	0f 91       	pop	r16
    15de:	ff 90       	pop	r15
    15e0:	ef 90       	pop	r14
    15e2:	df 90       	pop	r13
    15e4:	08 95       	ret
	int sent = len;
	const u8* data = (const u8*)d;
	bool pgm = flags & TRANSFER_PGM;
	while (len--)
	{
		u8 c = pgm ? pgm_read_byte(data++) : *data++;
    15e6:	88 81       	ld	r24, Y
    15e8:	ee cf       	rjmp	.-36     	; 0x15c6 <_Z15USB_SendControlhPKvi+0x28>

000015ea <_ZL14SendInterfacesv>:
	}
	return len;
}

static u8 SendInterfaces()
{
    15ea:	0f 93       	push	r16
    15ec:	1f 93       	push	r17
    15ee:	cf 93       	push	r28
    15f0:	df 93       	push	r29
    15f2:	1f 92       	push	r1
    15f4:	cd b7       	in	r28, 0x3d	; 61
    15f6:	de b7       	in	r29, 0x3e	; 62
	return pgm_read_word(FLASHEND - 1) == NEW_LUFA_SIGNATURE;
}

int CDC_GetInterface(u8* interfaceNum)
{
	interfaceNum[0] += 2;	// uses 2
    15f8:	82 e0       	ldi	r24, 0x02	; 2
    15fa:	89 83       	std	Y+1, r24	; 0x01
	return USB_SendControl(TRANSFER_PGM,&_cdcInterface,sizeof(_cdcInterface));
    15fc:	42 e4       	ldi	r20, 0x42	; 66
    15fe:	50 e0       	ldi	r21, 0x00	; 0
    1600:	66 e6       	ldi	r22, 0x66	; 102
    1602:	7e e0       	ldi	r23, 0x0E	; 14
    1604:	80 e8       	ldi	r24, 0x80	; 128
    1606:	0e 94 cf 0a 	call	0x159e	; 0x159e <_Z15USB_SendControlhPKvi>
	u8 interfaces = 0;

	CDC_GetInterface(&interfaces);

#ifdef PLUGGABLE_USB_ENABLED
	PluggableUSB().getInterface(&interfaces);
    160a:	0e 94 d9 09 	call	0x13b2	; 0x13b2 <_Z12PluggableUSBv>

int PluggableUSB_::getInterface(uint8_t* interfaceCount)
{
	int sent = 0;
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
    160e:	dc 01       	movw	r26, r24
    1610:	12 96       	adiw	r26, 0x02	; 2
    1612:	0d 91       	ld	r16, X+
    1614:	1c 91       	ld	r17, X
    1616:	01 15       	cp	r16, r1
    1618:	11 05       	cpc	r17, r1
    161a:	89 f0       	breq	.+34     	; 0x163e <_ZL14SendInterfacesv+0x54>
		int res = node->getInterface(interfaceCount);
    161c:	d8 01       	movw	r26, r16
    161e:	ed 91       	ld	r30, X+
    1620:	fc 91       	ld	r31, X
    1622:	02 80       	ldd	r0, Z+2	; 0x02
    1624:	f3 81       	ldd	r31, Z+3	; 0x03
    1626:	e0 2d       	mov	r30, r0
    1628:	be 01       	movw	r22, r28
    162a:	6f 5f       	subi	r22, 0xFF	; 255
    162c:	7f 4f       	sbci	r23, 0xFF	; 255
    162e:	c8 01       	movw	r24, r16
    1630:	09 95       	icall
		if (res < 0)
    1632:	97 fd       	sbrc	r25, 7
    1634:	04 c0       	rjmp	.+8      	; 0x163e <_ZL14SendInterfacesv+0x54>

int PluggableUSB_::getInterface(uint8_t* interfaceCount)
{
	int sent = 0;
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
    1636:	f8 01       	movw	r30, r16
    1638:	00 85       	ldd	r16, Z+8	; 0x08
    163a:	11 85       	ldd	r17, Z+9	; 0x09
    163c:	ec cf       	rjmp	.-40     	; 0x1616 <_ZL14SendInterfacesv+0x2c>
#endif

	return interfaces;
}
    163e:	89 81       	ldd	r24, Y+1	; 0x01
    1640:	0f 90       	pop	r0
    1642:	df 91       	pop	r29
    1644:	cf 91       	pop	r28
    1646:	1f 91       	pop	r17
    1648:	0f 91       	pop	r16
    164a:	08 95       	ret

0000164c <_ZL4RecvPVhh>:
	UEINTX = ~(1<<RXOUTI);
}

static inline void Recv(volatile u8* data, u8 count)
{
	while (count--)
    164c:	61 50       	subi	r22, 0x01	; 1
    164e:	30 f0       	brcs	.+12     	; 0x165c <_ZL4RecvPVhh+0x10>
		*data++ = UEDATX;
    1650:	20 91 f1 00 	lds	r18, 0x00F1	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
    1654:	fc 01       	movw	r30, r24
    1656:	20 83       	st	Z, r18
    1658:	01 96       	adiw	r24, 0x01	; 1
    165a:	f8 cf       	rjmp	.-16     	; 0x164c <_ZL4RecvPVhh>
	
	RXLED1;					// light the RX LED
    165c:	28 98       	cbi	0x05, 0	; 5
	RxLEDPulse = TX_RX_LED_PULSE_MS;	
    165e:	84 e6       	ldi	r24, 0x64	; 100
    1660:	80 93 b1 02 	sts	0x02B1, r24	; 0x8002b1 <RxLEDPulse>
}
    1664:	08 95       	ret

00001666 <_ZN5Print5writeEPKhj>:

// Public Methods //////////////////////////////////////////////////////////////

/* default implementation: may be overridden */
size_t Print::write(const uint8_t *buffer, size_t size)
{
    1666:	af 92       	push	r10
    1668:	bf 92       	push	r11
    166a:	cf 92       	push	r12
    166c:	df 92       	push	r13
    166e:	ef 92       	push	r14
    1670:	ff 92       	push	r15
    1672:	0f 93       	push	r16
    1674:	1f 93       	push	r17
    1676:	cf 93       	push	r28
    1678:	df 93       	push	r29
    167a:	6c 01       	movw	r12, r24
    167c:	7b 01       	movw	r14, r22
    167e:	8b 01       	movw	r16, r22
    1680:	04 0f       	add	r16, r20
    1682:	15 1f       	adc	r17, r21
    1684:	eb 01       	movw	r28, r22
    1686:	5e 01       	movw	r10, r28
    1688:	ae 18       	sub	r10, r14
    168a:	bf 08       	sbc	r11, r15
  size_t n = 0;
  while (size--) {
    168c:	c0 17       	cp	r28, r16
    168e:	d1 07       	cpc	r29, r17
    1690:	59 f0       	breq	.+22     	; 0x16a8 <_ZN5Print5writeEPKhj+0x42>
    if (write(*buffer++)) n++;
    1692:	69 91       	ld	r22, Y+
    1694:	d6 01       	movw	r26, r12
    1696:	ed 91       	ld	r30, X+
    1698:	fc 91       	ld	r31, X
    169a:	01 90       	ld	r0, Z+
    169c:	f0 81       	ld	r31, Z
    169e:	e0 2d       	mov	r30, r0
    16a0:	c6 01       	movw	r24, r12
    16a2:	09 95       	icall
    16a4:	89 2b       	or	r24, r25
    16a6:	79 f7       	brne	.-34     	; 0x1686 <_ZN5Print5writeEPKhj+0x20>
    else break;
  }
  return n;
}
    16a8:	c5 01       	movw	r24, r10
    16aa:	df 91       	pop	r29
    16ac:	cf 91       	pop	r28
    16ae:	1f 91       	pop	r17
    16b0:	0f 91       	pop	r16
    16b2:	ff 90       	pop	r15
    16b4:	ef 90       	pop	r14
    16b6:	df 90       	pop	r13
    16b8:	cf 90       	pop	r12
    16ba:	bf 90       	pop	r11
    16bc:	af 90       	pop	r10
    16be:	08 95       	ret

000016c0 <digitalWrite>:
	}
}

void digitalWrite(uint8_t pin, uint8_t val)
{
	uint8_t timer = digitalPinToTimer(pin);
    16c0:	28 2f       	mov	r18, r24
    16c2:	30 e0       	ldi	r19, 0x00	; 0
    16c4:	f9 01       	movw	r30, r18
    16c6:	e7 54       	subi	r30, 0x47	; 71
    16c8:	f2 4f       	sbci	r31, 0xF2	; 242
    16ca:	94 91       	lpm	r25, Z
	uint8_t bit = digitalPinToBitMask(pin);
    16cc:	f9 01       	movw	r30, r18
    16ce:	eb 50       	subi	r30, 0x0B	; 11
    16d0:	f2 4f       	sbci	r31, 0xF2	; 242
    16d2:	84 91       	lpm	r24, Z
	uint8_t port = digitalPinToPort(pin);
    16d4:	2e 5d       	subi	r18, 0xDE	; 222
    16d6:	31 4f       	sbci	r19, 0xF1	; 241
    16d8:	f9 01       	movw	r30, r18
    16da:	24 91       	lpm	r18, Z
	volatile uint8_t *out;

	if (port == NOT_A_PIN) return;
    16dc:	22 23       	and	r18, r18
    16de:	09 f4       	brne	.+2      	; 0x16e2 <digitalWrite+0x22>
    16e0:	30 c0       	rjmp	.+96     	; 0x1742 <digitalWrite+0x82>

	// If the pin that support PWM output, we need to turn it off
	// before doing a digital write.
	if (timer != NOT_ON_TIMER) turnOffPWM(timer);
    16e2:	99 23       	and	r25, r25
    16e4:	e9 f0       	breq	.+58     	; 0x1720 <digitalWrite+0x60>
//
//static inline void turnOffPWM(uint8_t timer) __attribute__ ((always_inline));
//static inline void turnOffPWM(uint8_t timer)
static void turnOffPWM(uint8_t timer)
{
	switch (timer)
    16e6:	91 50       	subi	r25, 0x01	; 1
    16e8:	9f 30       	cpi	r25, 0x0F	; 15
    16ea:	d0 f4       	brcc	.+52     	; 0x1720 <digitalWrite+0x60>
    16ec:	e9 2f       	mov	r30, r25
    16ee:	f0 e0       	ldi	r31, 0x00	; 0
    16f0:	e4 58       	subi	r30, 0x84	; 132
    16f2:	f4 4f       	sbci	r31, 0xF4	; 244
    16f4:	0c 94 ad 2f 	jmp	0x5f5a	; 0x5f5a <__tablejump2__>
    16f8:	aa 0b       	sbc	r26, r26
    16fa:	ae 0b       	sbc	r26, r30
    16fc:	8b 0b       	sbc	r24, r27
    16fe:	a2 0b       	sbc	r26, r18
    1700:	a6 0b       	sbc	r26, r22
    1702:	90 0b       	sbc	r25, r16
    1704:	90 0b       	sbc	r25, r16
    1706:	90 0b       	sbc	r25, r16
    1708:	b1 0b       	sbc	r27, r17
    170a:	b7 0b       	sbc	r27, r23
    170c:	bb 0b       	sbc	r27, r27
    170e:	bf 0b       	sbc	r27, r31
    1710:	c5 0b       	sbc	r28, r21
    1712:	90 0b       	sbc	r25, r16
    1714:	c9 0b       	sbc	r28, r25
	{
		#if defined(TCCR1A) && defined(COM1A1)
		case TIMER1A:   cbi(TCCR1A, COM1A1);    break;
    1716:	90 91 80 00 	lds	r25, 0x0080	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
    171a:	9f 77       	andi	r25, 0x7F	; 127
		#endif
		#if defined(TCCR1A) && defined(COM1B1)
		case TIMER1B:   cbi(TCCR1A, COM1B1);    break;
		#endif
		#if defined(TCCR1A) && defined(COM1C1)
		case TIMER1C:   cbi(TCCR1A, COM1C1);    break;
    171c:	90 93 80 00 	sts	0x0080, r25	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>

	// If the pin that support PWM output, we need to turn it off
	// before doing a digital write.
	if (timer != NOT_ON_TIMER) turnOffPWM(timer);

	out = portOutputRegister(port);
    1720:	e2 2f       	mov	r30, r18
    1722:	f0 e0       	ldi	r31, 0x00	; 0
    1724:	ee 0f       	add	r30, r30
    1726:	ff 1f       	adc	r31, r31
    1728:	ec 5e       	subi	r30, 0xEC	; 236
    172a:	f1 4f       	sbci	r31, 0xF1	; 241
    172c:	a5 91       	lpm	r26, Z+
    172e:	b4 91       	lpm	r27, Z

	uint8_t oldSREG = SREG;
    1730:	9f b7       	in	r25, 0x3f	; 63
	cli();
    1732:	f8 94       	cli

	if (val == LOW) {
		*out &= ~bit;
    1734:	ec 91       	ld	r30, X
	out = portOutputRegister(port);

	uint8_t oldSREG = SREG;
	cli();

	if (val == LOW) {
    1736:	61 11       	cpse	r22, r1
    1738:	32 c0       	rjmp	.+100    	; 0x179e <digitalWrite+0xde>
		*out &= ~bit;
    173a:	80 95       	com	r24
    173c:	8e 23       	and	r24, r30
	} else {
		*out |= bit;
    173e:	8c 93       	st	X, r24
	}

	SREG = oldSREG;
    1740:	9f bf       	out	0x3f, r25	; 63
}
    1742:	08 95       	ret
	{
		#if defined(TCCR1A) && defined(COM1A1)
		case TIMER1A:   cbi(TCCR1A, COM1A1);    break;
		#endif
		#if defined(TCCR1A) && defined(COM1B1)
		case TIMER1B:   cbi(TCCR1A, COM1B1);    break;
    1744:	90 91 80 00 	lds	r25, 0x0080	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
    1748:	9f 7d       	andi	r25, 0xDF	; 223
    174a:	e8 cf       	rjmp	.-48     	; 0x171c <digitalWrite+0x5c>
		#endif
		#if defined(TCCR1A) && defined(COM1C1)
		case TIMER1C:   cbi(TCCR1A, COM1C1);    break;
    174c:	90 91 80 00 	lds	r25, 0x0080	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
    1750:	97 7f       	andi	r25, 0xF7	; 247
    1752:	e4 cf       	rjmp	.-56     	; 0x171c <digitalWrite+0x5c>
		#if defined(TCCR2) && defined(COM21)
		case  TIMER2:   cbi(TCCR2, COM21);      break;
		#endif
		
		#if defined(TCCR0A) && defined(COM0A1)
		case  TIMER0A:  cbi(TCCR0A, COM0A1);    break;
    1754:	94 b5       	in	r25, 0x24	; 36
    1756:	9f 77       	andi	r25, 0x7F	; 127
		#endif
		
		#if defined(TCCR0A) && defined(COM0B1)
		case  TIMER0B:  cbi(TCCR0A, COM0B1);    break;
    1758:	94 bd       	out	0x24, r25	; 36
    175a:	e2 cf       	rjmp	.-60     	; 0x1720 <digitalWrite+0x60>
    175c:	94 b5       	in	r25, 0x24	; 36
    175e:	9f 7d       	andi	r25, 0xDF	; 223
    1760:	fb cf       	rjmp	.-10     	; 0x1758 <digitalWrite+0x98>
		#if defined(TCCR2A) && defined(COM2B1)
		case  TIMER2B:  cbi(TCCR2A, COM2B1);    break;
		#endif
		
		#if defined(TCCR3A) && defined(COM3A1)
		case  TIMER3A:  cbi(TCCR3A, COM3A1);    break;
    1762:	90 91 90 00 	lds	r25, 0x0090	; 0x800090 <__DATA_REGION_ORIGIN__+0x30>
    1766:	9f 77       	andi	r25, 0x7F	; 127
		#endif
		#if defined(TCCR3A) && defined(COM3B1)
		case  TIMER3B:  cbi(TCCR3A, COM3B1);    break;
		#endif
		#if defined(TCCR3A) && defined(COM3C1)
		case  TIMER3C:  cbi(TCCR3A, COM3C1);    break;
    1768:	90 93 90 00 	sts	0x0090, r25	; 0x800090 <__DATA_REGION_ORIGIN__+0x30>
    176c:	d9 cf       	rjmp	.-78     	; 0x1720 <digitalWrite+0x60>
		
		#if defined(TCCR3A) && defined(COM3A1)
		case  TIMER3A:  cbi(TCCR3A, COM3A1);    break;
		#endif
		#if defined(TCCR3A) && defined(COM3B1)
		case  TIMER3B:  cbi(TCCR3A, COM3B1);    break;
    176e:	90 91 90 00 	lds	r25, 0x0090	; 0x800090 <__DATA_REGION_ORIGIN__+0x30>
    1772:	9f 7d       	andi	r25, 0xDF	; 223
    1774:	f9 cf       	rjmp	.-14     	; 0x1768 <digitalWrite+0xa8>
		#endif
		#if defined(TCCR3A) && defined(COM3C1)
		case  TIMER3C:  cbi(TCCR3A, COM3C1);    break;
    1776:	90 91 90 00 	lds	r25, 0x0090	; 0x800090 <__DATA_REGION_ORIGIN__+0x30>
    177a:	97 7f       	andi	r25, 0xF7	; 247
    177c:	f5 cf       	rjmp	.-22     	; 0x1768 <digitalWrite+0xa8>
		#endif

		#if defined(TCCR4A) && defined(COM4A1)
		case  TIMER4A:  cbi(TCCR4A, COM4A1);    break;
    177e:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__DATA_REGION_ORIGIN__+0x60>
    1782:	9f 77       	andi	r25, 0x7F	; 127
		#endif					
		#if defined(TCCR4A) && defined(COM4B1)
		case  TIMER4B:  cbi(TCCR4A, COM4B1);    break;
    1784:	90 93 c0 00 	sts	0x00C0, r25	; 0x8000c0 <__DATA_REGION_ORIGIN__+0x60>
    1788:	cb cf       	rjmp	.-106    	; 0x1720 <digitalWrite+0x60>
    178a:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__DATA_REGION_ORIGIN__+0x60>
    178e:	9f 7d       	andi	r25, 0xDF	; 223
    1790:	f9 cf       	rjmp	.-14     	; 0x1784 <digitalWrite+0xc4>
		#endif
		#if defined(TCCR4A) && defined(COM4C1)
		case  TIMER4C:  cbi(TCCR4A, COM4C1);    break;
		#endif			
		#if defined(TCCR4C) && defined(COM4D1)
		case TIMER4D:	cbi(TCCR4C, COM4D1);	break;
    1792:	90 91 c2 00 	lds	r25, 0x00C2	; 0x8000c2 <__DATA_REGION_ORIGIN__+0x62>
    1796:	97 7f       	andi	r25, 0xF7	; 247
    1798:	90 93 c2 00 	sts	0x00C2, r25	; 0x8000c2 <__DATA_REGION_ORIGIN__+0x62>
    179c:	c1 cf       	rjmp	.-126    	; 0x1720 <digitalWrite+0x60>
	cli();

	if (val == LOW) {
		*out &= ~bit;
	} else {
		*out |= bit;
    179e:	8e 2b       	or	r24, r30
    17a0:	ce cf       	rjmp	.-100    	; 0x173e <digitalWrite+0x7e>

000017a2 <pinMode>:
#define ARDUINO_MAIN
#include "wiring_private.h"
#include "pins_arduino.h"

void pinMode(uint8_t pin, uint8_t mode)
{
    17a2:	cf 93       	push	r28
    17a4:	df 93       	push	r29
	uint8_t bit = digitalPinToBitMask(pin);
    17a6:	90 e0       	ldi	r25, 0x00	; 0
    17a8:	fc 01       	movw	r30, r24
    17aa:	eb 50       	subi	r30, 0x0B	; 11
    17ac:	f2 4f       	sbci	r31, 0xF2	; 242
    17ae:	24 91       	lpm	r18, Z
	uint8_t port = digitalPinToPort(pin);
    17b0:	8e 5d       	subi	r24, 0xDE	; 222
    17b2:	91 4f       	sbci	r25, 0xF1	; 241
    17b4:	fc 01       	movw	r30, r24
    17b6:	84 91       	lpm	r24, Z
	volatile uint8_t *reg, *out;

	if (port == NOT_A_PIN) return;
    17b8:	88 23       	and	r24, r24
    17ba:	c9 f0       	breq	.+50     	; 0x17ee <pinMode+0x4c>

	// JWS: can I let the optimizer do this?
	reg = portModeRegister(port);
    17bc:	90 e0       	ldi	r25, 0x00	; 0
    17be:	88 0f       	add	r24, r24
    17c0:	99 1f       	adc	r25, r25
    17c2:	fc 01       	movw	r30, r24
    17c4:	e6 52       	subi	r30, 0x26	; 38
    17c6:	f2 4f       	sbci	r31, 0xF2	; 242
    17c8:	a5 91       	lpm	r26, Z+
    17ca:	b4 91       	lpm	r27, Z
	out = portOutputRegister(port);
    17cc:	fc 01       	movw	r30, r24
    17ce:	ec 5e       	subi	r30, 0xEC	; 236
    17d0:	f1 4f       	sbci	r31, 0xF1	; 241
    17d2:	c5 91       	lpm	r28, Z+
    17d4:	d4 91       	lpm	r29, Z

	if (mode == INPUT) { 
    17d6:	61 11       	cpse	r22, r1
    17d8:	0d c0       	rjmp	.+26     	; 0x17f4 <pinMode+0x52>
		uint8_t oldSREG = SREG;
    17da:	9f b7       	in	r25, 0x3f	; 63
                cli();
    17dc:	f8 94       	cli
		*reg &= ~bit;
    17de:	8c 91       	ld	r24, X
    17e0:	20 95       	com	r18
    17e2:	82 23       	and	r24, r18
    17e4:	8c 93       	st	X, r24
		*out &= ~bit;
    17e6:	88 81       	ld	r24, Y
    17e8:	28 23       	and	r18, r24
		SREG = oldSREG;
	} else if (mode == INPUT_PULLUP) {
		uint8_t oldSREG = SREG;
                cli();
		*reg &= ~bit;
		*out |= bit;
    17ea:	28 83       	st	Y, r18
		SREG = oldSREG;
    17ec:	9f bf       	out	0x3f, r25	; 63
		uint8_t oldSREG = SREG;
                cli();
		*reg |= bit;
		SREG = oldSREG;
	}
}
    17ee:	df 91       	pop	r29
    17f0:	cf 91       	pop	r28
    17f2:	08 95       	ret
		uint8_t oldSREG = SREG;
                cli();
		*reg &= ~bit;
		*out &= ~bit;
		SREG = oldSREG;
	} else if (mode == INPUT_PULLUP) {
    17f4:	62 30       	cpi	r22, 0x02	; 2
    17f6:	51 f4       	brne	.+20     	; 0x180c <pinMode+0x6a>
		uint8_t oldSREG = SREG;
    17f8:	9f b7       	in	r25, 0x3f	; 63
                cli();
    17fa:	f8 94       	cli
		*reg &= ~bit;
    17fc:	3c 91       	ld	r19, X
    17fe:	82 2f       	mov	r24, r18
    1800:	80 95       	com	r24
    1802:	83 23       	and	r24, r19
    1804:	8c 93       	st	X, r24
		*out |= bit;
    1806:	e8 81       	ld	r30, Y
    1808:	2e 2b       	or	r18, r30
    180a:	ef cf       	rjmp	.-34     	; 0x17ea <pinMode+0x48>
		SREG = oldSREG;
	} else {
		uint8_t oldSREG = SREG;
    180c:	8f b7       	in	r24, 0x3f	; 63
                cli();
    180e:	f8 94       	cli
		*reg |= bit;
    1810:	ec 91       	ld	r30, X
    1812:	2e 2b       	or	r18, r30
    1814:	2c 93       	st	X, r18
		SREG = oldSREG;
    1816:	8f bf       	out	0x3f, r24	; 63
    1818:	ea cf       	rjmp	.-44     	; 0x17ee <pinMode+0x4c>

0000181a <analogWrite>:
// Right now, PWM output only works on the pins with
// hardware support.  These are defined in the appropriate
// pins_*.c file.  For the rest of the pins, we default
// to digital output.
void analogWrite(uint8_t pin, int val)
{
    181a:	1f 93       	push	r17
    181c:	cf 93       	push	r28
    181e:	df 93       	push	r29
    1820:	18 2f       	mov	r17, r24
    1822:	eb 01       	movw	r28, r22
	// We need to make sure the PWM output is enabled for those pins
	// that support it, as we turn it off when digitally reading or
	// writing with them.  Also, make sure the pin is in output mode
	// for consistenty with Wiring, which doesn't require a pinMode
	// call for the analog output pins.
	pinMode(pin, OUTPUT);
    1824:	61 e0       	ldi	r22, 0x01	; 1
    1826:	0e 94 d1 0b 	call	0x17a2	; 0x17a2 <pinMode>
	if (val == 0)
    182a:	20 97       	sbiw	r28, 0x00	; 0
    182c:	39 f4       	brne	.+14     	; 0x183c <analogWrite+0x22>
	{
		digitalWrite(pin, LOW);
    182e:	60 e0       	ldi	r22, 0x00	; 0
	}
	else if (val == 255)
	{
		digitalWrite(pin, HIGH);
    1830:	81 2f       	mov	r24, r17
				} else {
					digitalWrite(pin, HIGH);
				}
		}
	}
}
    1832:	df 91       	pop	r29
    1834:	cf 91       	pop	r28
    1836:	1f 91       	pop	r17
	{
		digitalWrite(pin, LOW);
	}
	else if (val == 255)
	{
		digitalWrite(pin, HIGH);
    1838:	0c 94 60 0b 	jmp	0x16c0	; 0x16c0 <digitalWrite>
	pinMode(pin, OUTPUT);
	if (val == 0)
	{
		digitalWrite(pin, LOW);
	}
	else if (val == 255)
    183c:	cf 3f       	cpi	r28, 0xFF	; 255
    183e:	d1 05       	cpc	r29, r1
    1840:	11 f4       	brne	.+4      	; 0x1846 <analogWrite+0x2c>
	{
		digitalWrite(pin, HIGH);
    1842:	61 e0       	ldi	r22, 0x01	; 1
    1844:	f5 cf       	rjmp	.-22     	; 0x1830 <analogWrite+0x16>
	}
	else
	{
		switch(digitalPinToTimer(pin))
    1846:	e1 2f       	mov	r30, r17
    1848:	f0 e0       	ldi	r31, 0x00	; 0
    184a:	e7 54       	subi	r30, 0x47	; 71
    184c:	f2 4f       	sbci	r31, 0xF2	; 242
    184e:	e4 91       	lpm	r30, Z
    1850:	e1 50       	subi	r30, 0x01	; 1
    1852:	ef 30       	cpi	r30, 0x0F	; 15
    1854:	08 f0       	brcs	.+2      	; 0x1858 <analogWrite+0x3e>
    1856:	7f c0       	rjmp	.+254    	; 0x1956 <analogWrite+0x13c>
    1858:	f0 e0       	ldi	r31, 0x00	; 0
    185a:	ef 5c       	subi	r30, 0xCF	; 207
    185c:	f3 4f       	sbci	r31, 0xF3	; 243
    185e:	0c 94 ad 2f 	jmp	0x5f5a	; 0x5f5a <__tablejump2__>
    1862:	40 0c       	add	r4, r0
    1864:	48 0c       	add	r4, r8
    1866:	4d 0c       	add	r4, r13
    1868:	57 0c       	add	r5, r7
    186a:	61 0c       	add	r6, r1
    186c:	ab 0c       	add	r10, r11
    186e:	ab 0c       	add	r10, r11
    1870:	ab 0c       	add	r10, r11
    1872:	6b 0c       	add	r6, r11
    1874:	75 0c       	add	r7, r5
    1876:	7f 0c       	add	r7, r15
    1878:	89 0c       	add	r8, r9
    187a:	96 0c       	add	r9, r6
    187c:	ab 0c       	add	r10, r11
    187e:	9e 0c       	add	r9, r14
			#endif

			#if defined(TCCR0A) && defined(COM0A1)
			case TIMER0A:
				// connect pwm to pin on timer 0, channel A
				sbi(TCCR0A, COM0A1);
    1880:	84 b5       	in	r24, 0x24	; 36
    1882:	80 68       	ori	r24, 0x80	; 128
    1884:	84 bd       	out	0x24, r24	; 36
				OCR0A = val; // set pwm duty
    1886:	c7 bd       	out	0x27, r28	; 39
				} else {
					digitalWrite(pin, HIGH);
				}
		}
	}
}
    1888:	df 91       	pop	r29
    188a:	cf 91       	pop	r28
    188c:	1f 91       	pop	r17
    188e:	08 95       	ret
			#endif

			#if defined(TCCR0A) && defined(COM0B1)
			case TIMER0B:
				// connect pwm to pin on timer 0, channel B
				sbi(TCCR0A, COM0B1);
    1890:	84 b5       	in	r24, 0x24	; 36
    1892:	80 62       	ori	r24, 0x20	; 32
    1894:	84 bd       	out	0x24, r24	; 36
				OCR0B = val; // set pwm duty
    1896:	c8 bd       	out	0x28, r28	; 40
    1898:	f7 cf       	rjmp	.-18     	; 0x1888 <analogWrite+0x6e>
			#endif

			#if defined(TCCR1A) && defined(COM1A1)
			case TIMER1A:
				// connect pwm to pin on timer 1, channel A
				sbi(TCCR1A, COM1A1);
    189a:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
    189e:	80 68       	ori	r24, 0x80	; 128
    18a0:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
				OCR1A = val; // set pwm duty
    18a4:	d0 93 89 00 	sts	0x0089, r29	; 0x800089 <__DATA_REGION_ORIGIN__+0x29>
    18a8:	c0 93 88 00 	sts	0x0088, r28	; 0x800088 <__DATA_REGION_ORIGIN__+0x28>
    18ac:	ed cf       	rjmp	.-38     	; 0x1888 <analogWrite+0x6e>
			#endif

			#if defined(TCCR1A) && defined(COM1B1)
			case TIMER1B:
				// connect pwm to pin on timer 1, channel B
				sbi(TCCR1A, COM1B1);
    18ae:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
    18b2:	80 62       	ori	r24, 0x20	; 32
    18b4:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
				OCR1B = val; // set pwm duty
    18b8:	d0 93 8b 00 	sts	0x008B, r29	; 0x80008b <__DATA_REGION_ORIGIN__+0x2b>
    18bc:	c0 93 8a 00 	sts	0x008A, r28	; 0x80008a <__DATA_REGION_ORIGIN__+0x2a>
    18c0:	e3 cf       	rjmp	.-58     	; 0x1888 <analogWrite+0x6e>
			#endif

			#if defined(TCCR1A) && defined(COM1C1)
			case TIMER1C:
				// connect pwm to pin on timer 1, channel C
				sbi(TCCR1A, COM1C1);
    18c2:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
    18c6:	88 60       	ori	r24, 0x08	; 8
    18c8:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
				OCR1C = val; // set pwm duty
    18cc:	d0 93 8d 00 	sts	0x008D, r29	; 0x80008d <__DATA_REGION_ORIGIN__+0x2d>
    18d0:	c0 93 8c 00 	sts	0x008C, r28	; 0x80008c <__DATA_REGION_ORIGIN__+0x2c>
    18d4:	d9 cf       	rjmp	.-78     	; 0x1888 <analogWrite+0x6e>
			#endif

			#if defined(TCCR3A) && defined(COM3A1)
			case TIMER3A:
				// connect pwm to pin on timer 3, channel A
				sbi(TCCR3A, COM3A1);
    18d6:	80 91 90 00 	lds	r24, 0x0090	; 0x800090 <__DATA_REGION_ORIGIN__+0x30>
    18da:	80 68       	ori	r24, 0x80	; 128
    18dc:	80 93 90 00 	sts	0x0090, r24	; 0x800090 <__DATA_REGION_ORIGIN__+0x30>
				OCR3A = val; // set pwm duty
    18e0:	d0 93 99 00 	sts	0x0099, r29	; 0x800099 <__DATA_REGION_ORIGIN__+0x39>
    18e4:	c0 93 98 00 	sts	0x0098, r28	; 0x800098 <__DATA_REGION_ORIGIN__+0x38>
    18e8:	cf cf       	rjmp	.-98     	; 0x1888 <analogWrite+0x6e>
			#endif

			#if defined(TCCR3A) && defined(COM3B1)
			case TIMER3B:
				// connect pwm to pin on timer 3, channel B
				sbi(TCCR3A, COM3B1);
    18ea:	80 91 90 00 	lds	r24, 0x0090	; 0x800090 <__DATA_REGION_ORIGIN__+0x30>
    18ee:	80 62       	ori	r24, 0x20	; 32
    18f0:	80 93 90 00 	sts	0x0090, r24	; 0x800090 <__DATA_REGION_ORIGIN__+0x30>
				OCR3B = val; // set pwm duty
    18f4:	d0 93 9b 00 	sts	0x009B, r29	; 0x80009b <__DATA_REGION_ORIGIN__+0x3b>
    18f8:	c0 93 9a 00 	sts	0x009A, r28	; 0x80009a <__DATA_REGION_ORIGIN__+0x3a>
    18fc:	c5 cf       	rjmp	.-118    	; 0x1888 <analogWrite+0x6e>
			#endif

			#if defined(TCCR3A) && defined(COM3C1)
			case TIMER3C:
				// connect pwm to pin on timer 3, channel C
				sbi(TCCR3A, COM3C1);
    18fe:	80 91 90 00 	lds	r24, 0x0090	; 0x800090 <__DATA_REGION_ORIGIN__+0x30>
    1902:	88 60       	ori	r24, 0x08	; 8
    1904:	80 93 90 00 	sts	0x0090, r24	; 0x800090 <__DATA_REGION_ORIGIN__+0x30>
				OCR3C = val; // set pwm duty
    1908:	d0 93 9d 00 	sts	0x009D, r29	; 0x80009d <__DATA_REGION_ORIGIN__+0x3d>
    190c:	c0 93 9c 00 	sts	0x009C, r28	; 0x80009c <__DATA_REGION_ORIGIN__+0x3c>
    1910:	bb cf       	rjmp	.-138    	; 0x1888 <analogWrite+0x6e>
			#endif

			#if defined(TCCR4A)
			case TIMER4A:
				//connect pwm to pin on timer 4, channel A
				sbi(TCCR4A, COM4A1);
    1912:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__DATA_REGION_ORIGIN__+0x60>
    1916:	80 68       	ori	r24, 0x80	; 128
    1918:	80 93 c0 00 	sts	0x00C0, r24	; 0x8000c0 <__DATA_REGION_ORIGIN__+0x60>
				#if defined(COM4A0)		// only used on 32U4
				cbi(TCCR4A, COM4A0);
    191c:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__DATA_REGION_ORIGIN__+0x60>
    1920:	8f 7b       	andi	r24, 0xBF	; 191
    1922:	80 93 c0 00 	sts	0x00C0, r24	; 0x8000c0 <__DATA_REGION_ORIGIN__+0x60>
				#endif
				OCR4A = val;	// set pwm duty
    1926:	c0 93 cf 00 	sts	0x00CF, r28	; 0x8000cf <__DATA_REGION_ORIGIN__+0x6f>
    192a:	ae cf       	rjmp	.-164    	; 0x1888 <analogWrite+0x6e>
			#endif
			
			#if defined(TCCR4A) && defined(COM4B1)
			case TIMER4B:
				// connect pwm to pin on timer 4, channel B
				sbi(TCCR4A, COM4B1);
    192c:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__DATA_REGION_ORIGIN__+0x60>
    1930:	80 62       	ori	r24, 0x20	; 32
    1932:	80 93 c0 00 	sts	0x00C0, r24	; 0x8000c0 <__DATA_REGION_ORIGIN__+0x60>
				OCR4B = val; // set pwm duty
    1936:	c0 93 d0 00 	sts	0x00D0, r28	; 0x8000d0 <__DATA_REGION_ORIGIN__+0x70>
    193a:	a6 cf       	rjmp	.-180    	; 0x1888 <analogWrite+0x6e>
			#endif
				
			#if defined(TCCR4C) && defined(COM4D1)
			case TIMER4D:				
				// connect pwm to pin on timer 4, channel D
				sbi(TCCR4C, COM4D1);
    193c:	80 91 c2 00 	lds	r24, 0x00C2	; 0x8000c2 <__DATA_REGION_ORIGIN__+0x62>
    1940:	88 60       	ori	r24, 0x08	; 8
    1942:	80 93 c2 00 	sts	0x00C2, r24	; 0x8000c2 <__DATA_REGION_ORIGIN__+0x62>
				#if defined(COM4D0)		// only used on 32U4
				cbi(TCCR4C, COM4D0);
    1946:	80 91 c2 00 	lds	r24, 0x00C2	; 0x8000c2 <__DATA_REGION_ORIGIN__+0x62>
    194a:	8b 7f       	andi	r24, 0xFB	; 251
    194c:	80 93 c2 00 	sts	0x00C2, r24	; 0x8000c2 <__DATA_REGION_ORIGIN__+0x62>
				#endif
				OCR4D = val;	// set pwm duty
    1950:	c0 93 d2 00 	sts	0x00D2, r28	; 0x8000d2 <__DATA_REGION_ORIGIN__+0x72>
    1954:	99 cf       	rjmp	.-206    	; 0x1888 <analogWrite+0x6e>
				break;
			#endif

			case NOT_ON_TIMER:
			default:
				if (val < 128) {
    1956:	c0 38       	cpi	r28, 0x80	; 128
    1958:	d1 05       	cpc	r29, r1
    195a:	0c f0       	brlt	.+2      	; 0x195e <analogWrite+0x144>
    195c:	72 cf       	rjmp	.-284    	; 0x1842 <analogWrite+0x28>
    195e:	67 cf       	rjmp	.-306    	; 0x182e <analogWrite+0x14>

00001960 <_ZN11ArduboyCore9setRGBledEhhh.constprop.59>:
  sendLCDCommand(flipped ? OLED_HORIZ_FLIPPED : OLED_HORIZ_NORMAL);
}

/* RGB LED */

void ArduboyCore::setRGBled(uint8_t red, uint8_t green, uint8_t blue)
    1960:	0f 93       	push	r16
    1962:	1f 93       	push	r17
    1964:	cf 93       	push	r28
    1966:	df 93       	push	r29
    1968:	06 2f       	mov	r16, r22
    196a:	14 2f       	mov	r17, r20
{
#ifdef ARDUBOY_10 // RGB, all the pretty colors
  // inversion is necessary because these are common annode LEDs
  analogWrite(RED_LED, 255 - red);
    196c:	cf ef       	ldi	r28, 0xFF	; 255
    196e:	d0 e0       	ldi	r29, 0x00	; 0
    1970:	be 01       	movw	r22, r28
    1972:	68 1b       	sub	r22, r24
    1974:	71 09       	sbc	r23, r1
    1976:	8a e0       	ldi	r24, 0x0A	; 10
    1978:	0e 94 0d 0c 	call	0x181a	; 0x181a <analogWrite>
  analogWrite(GREEN_LED, 255 - green);
    197c:	be 01       	movw	r22, r28
    197e:	60 1b       	sub	r22, r16
    1980:	71 09       	sbc	r23, r1
    1982:	8b e0       	ldi	r24, 0x0B	; 11
    1984:	0e 94 0d 0c 	call	0x181a	; 0x181a <analogWrite>
  analogWrite(BLUE_LED, 255 - blue);
    1988:	be 01       	movw	r22, r28
    198a:	61 1b       	sub	r22, r17
    198c:	71 09       	sbc	r23, r1
    198e:	89 e0       	ldi	r24, 0x09	; 9
#elif defined(AB_DEVKIT)
  // only blue on devkit
  digitalWrite(BLUE_LED, ~blue);
#endif
}
    1990:	df 91       	pop	r29
    1992:	cf 91       	pop	r28
    1994:	1f 91       	pop	r17
    1996:	0f 91       	pop	r16
{
#ifdef ARDUBOY_10 // RGB, all the pretty colors
  // inversion is necessary because these are common annode LEDs
  analogWrite(RED_LED, 255 - red);
  analogWrite(GREEN_LED, 255 - green);
  analogWrite(BLUE_LED, 255 - blue);
    1998:	0c 94 0d 0c 	jmp	0x181a	; 0x181a <analogWrite>

0000199c <micros>:
	return m;
}

unsigned long micros() {
	unsigned long m;
	uint8_t oldSREG = SREG, t;
    199c:	3f b7       	in	r19, 0x3f	; 63
	
	cli();
    199e:	f8 94       	cli
	m = timer0_overflow_count;
    19a0:	80 91 86 02 	lds	r24, 0x0286	; 0x800286 <timer0_overflow_count>
    19a4:	90 91 87 02 	lds	r25, 0x0287	; 0x800287 <timer0_overflow_count+0x1>
    19a8:	a0 91 88 02 	lds	r26, 0x0288	; 0x800288 <timer0_overflow_count+0x2>
    19ac:	b0 91 89 02 	lds	r27, 0x0289	; 0x800289 <timer0_overflow_count+0x3>
#if defined(TCNT0)
	t = TCNT0;
    19b0:	26 b5       	in	r18, 0x26	; 38
#else
	#error TIMER 0 not defined
#endif

#ifdef TIFR0
	if ((TIFR0 & _BV(TOV0)) && (t < 255))
    19b2:	a8 9b       	sbis	0x15, 0	; 21
    19b4:	05 c0       	rjmp	.+10     	; 0x19c0 <micros+0x24>
    19b6:	2f 3f       	cpi	r18, 0xFF	; 255
    19b8:	19 f0       	breq	.+6      	; 0x19c0 <micros+0x24>
		m++;
    19ba:	01 96       	adiw	r24, 0x01	; 1
    19bc:	a1 1d       	adc	r26, r1
    19be:	b1 1d       	adc	r27, r1
#else
	if ((TIFR & _BV(TOV0)) && (t < 255))
		m++;
#endif

	SREG = oldSREG;
    19c0:	3f bf       	out	0x3f, r19	; 63
	
	return ((m << 8) + t) * (64 / clockCyclesPerMicrosecond());
    19c2:	ba 2f       	mov	r27, r26
    19c4:	a9 2f       	mov	r26, r25
    19c6:	98 2f       	mov	r25, r24
    19c8:	88 27       	eor	r24, r24
    19ca:	bc 01       	movw	r22, r24
    19cc:	cd 01       	movw	r24, r26
    19ce:	62 0f       	add	r22, r18
    19d0:	71 1d       	adc	r23, r1
    19d2:	81 1d       	adc	r24, r1
    19d4:	91 1d       	adc	r25, r1
    19d6:	42 e0       	ldi	r20, 0x02	; 2
    19d8:	66 0f       	add	r22, r22
    19da:	77 1f       	adc	r23, r23
    19dc:	88 1f       	adc	r24, r24
    19de:	99 1f       	adc	r25, r25
    19e0:	4a 95       	dec	r20
    19e2:	d1 f7       	brne	.-12     	; 0x19d8 <micros+0x3c>
}
    19e4:	08 95       	ret

000019e6 <delay>:

void delay(unsigned long ms)
{
    19e6:	8f 92       	push	r8
    19e8:	9f 92       	push	r9
    19ea:	af 92       	push	r10
    19ec:	bf 92       	push	r11
    19ee:	cf 92       	push	r12
    19f0:	df 92       	push	r13
    19f2:	ef 92       	push	r14
    19f4:	ff 92       	push	r15
    19f6:	4b 01       	movw	r8, r22
    19f8:	5c 01       	movw	r10, r24
	uint32_t start = micros();
    19fa:	0e 94 ce 0c 	call	0x199c	; 0x199c <micros>
    19fe:	6b 01       	movw	r12, r22
    1a00:	7c 01       	movw	r14, r24

	while (ms > 0) {
		yield();
		while ( ms > 0 && (micros() - start) >= 1000) {
    1a02:	0e 94 ce 0c 	call	0x199c	; 0x199c <micros>
    1a06:	6c 19       	sub	r22, r12
    1a08:	7d 09       	sbc	r23, r13
    1a0a:	8e 09       	sbc	r24, r14
    1a0c:	9f 09       	sbc	r25, r15
    1a0e:	68 3e       	cpi	r22, 0xE8	; 232
    1a10:	73 40       	sbci	r23, 0x03	; 3
    1a12:	81 05       	cpc	r24, r1
    1a14:	91 05       	cpc	r25, r1
    1a16:	a8 f3       	brcs	.-22     	; 0x1a02 <delay+0x1c>
			ms--;
    1a18:	21 e0       	ldi	r18, 0x01	; 1
    1a1a:	82 1a       	sub	r8, r18
    1a1c:	91 08       	sbc	r9, r1
    1a1e:	a1 08       	sbc	r10, r1
    1a20:	b1 08       	sbc	r11, r1
			start += 1000;
    1a22:	88 ee       	ldi	r24, 0xE8	; 232
    1a24:	c8 0e       	add	r12, r24
    1a26:	83 e0       	ldi	r24, 0x03	; 3
    1a28:	d8 1e       	adc	r13, r24
    1a2a:	e1 1c       	adc	r14, r1
    1a2c:	f1 1c       	adc	r15, r1
{
	uint32_t start = micros();

	while (ms > 0) {
		yield();
		while ( ms > 0 && (micros() - start) >= 1000) {
    1a2e:	81 14       	cp	r8, r1
    1a30:	91 04       	cpc	r9, r1
    1a32:	a1 04       	cpc	r10, r1
    1a34:	b1 04       	cpc	r11, r1
    1a36:	29 f7       	brne	.-54     	; 0x1a02 <delay+0x1c>
			ms--;
			start += 1000;
		}
	}
}
    1a38:	ff 90       	pop	r15
    1a3a:	ef 90       	pop	r14
    1a3c:	df 90       	pop	r13
    1a3e:	cf 90       	pop	r12
    1a40:	bf 90       	pop	r11
    1a42:	af 90       	pop	r10
    1a44:	9f 90       	pop	r9
    1a46:	8f 90       	pop	r8
    1a48:	08 95       	ret

00001a4a <_ZN7Serial_5writeEPKhj>:
{
	return write(&c, 1);
}

size_t Serial_::write(const uint8_t *buffer, size_t size)
{
    1a4a:	8f 92       	push	r8
    1a4c:	9f 92       	push	r9
    1a4e:	af 92       	push	r10
    1a50:	bf 92       	push	r11
    1a52:	cf 92       	push	r12
    1a54:	df 92       	push	r13
    1a56:	ef 92       	push	r14
    1a58:	ff 92       	push	r15
    1a5a:	0f 93       	push	r16
    1a5c:	1f 93       	push	r17
    1a5e:	cf 93       	push	r28
    1a60:	df 93       	push	r29
    1a62:	6c 01       	movw	r12, r24
    1a64:	7b 01       	movw	r14, r22
    1a66:	8a 01       	movw	r16, r20
	 the connection is closed are lost - just like with a UART. */
	
	// TODO - ZE - check behavior on different OSes and test what happens if an
	// open connection isn't broken cleanly (cable is yanked out, host dies
	// or locks up, or host virtual serial port hangs)
	if (_usbLineInfo.lineState > 0)	{
    1a68:	80 91 0b 01 	lds	r24, 0x010B	; 0x80010b <_ZL12_usbLineInfo+0x7>
    1a6c:	88 23       	and	r24, r24
    1a6e:	09 f4       	brne	.+2      	; 0x1a72 <_ZN7Serial_5writeEPKhj+0x28>
    1a70:	5c c0       	rjmp	.+184    	; 0x1b2a <_ZN7Serial_5writeEPKhj+0xe0>
}

//	Blocking Send of data to an endpoint
int USB_Send(u8 ep, const void* d, int len)
{
	if (!_usbConfiguration)
    1a72:	80 91 b2 02 	lds	r24, 0x02B2	; 0x8002b2 <_usbConfiguration>
    1a76:	88 23       	and	r24, r24
    1a78:	09 f4       	brne	.+2      	; 0x1a7c <_ZN7Serial_5writeEPKhj+0x32>
    1a7a:	57 c0       	rjmp	.+174    	; 0x1b2a <_ZN7Serial_5writeEPKhj+0xe0>
		return -1;

	if (_usbSuspendState & (1<<SUSPI)) {
    1a7c:	80 91 a4 02 	lds	r24, 0x02A4	; 0x8002a4 <_usbSuspendState>
    1a80:	80 ff       	sbrs	r24, 0
    1a82:	05 c0       	rjmp	.+10     	; 0x1a8e <_ZN7Serial_5writeEPKhj+0x44>
		//send a remote wakeup
		UDCON |= (1 << RMWKUP);
    1a84:	80 91 e0 00 	lds	r24, 0x00E0	; 0x8000e0 <__DATA_REGION_ORIGIN__+0x80>
    1a88:	82 60       	ori	r24, 0x02	; 2
    1a8a:	80 93 e0 00 	sts	0x00E0, r24	; 0x8000e0 <__DATA_REGION_ORIGIN__+0x80>
{
	return write(&c, 1);
}

size_t Serial_::write(const uint8_t *buffer, size_t size)
{
    1a8e:	e8 01       	movw	r28, r16
    1a90:	b1 2c       	mov	r11, r1
    1a92:	8a ef       	ldi	r24, 0xFA	; 250
    1a94:	a8 2e       	mov	r10, r24
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    1a96:	93 e0       	ldi	r25, 0x03	; 3
    1a98:	89 2e       	mov	r8, r25
	UEINTX = 0x6B;	// FIFOCON=0 NAKINI=1 RWAL=1 NAKOUTI=0 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=1
}

static inline void ReleaseTX()
{
	UEINTX = 0x3A;	// FIFOCON=0 NAKINI=0 RWAL=1 NAKOUTI=1 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=0
    1a9a:	2a e3       	ldi	r18, 0x3A	; 58
    1a9c:	92 2e       	mov	r9, r18
	int r = len;
	const u8* data = (const u8*)d;
	u8 timeout = 250;		// 250ms timeout on send? TODO
	bool sendZlp = false;

	while (len || sendZlp)
    1a9e:	20 97       	sbiw	r28, 0x00	; 0
    1aa0:	11 f4       	brne	.+4      	; 0x1aa6 <_ZN7Serial_5writeEPKhj+0x5c>
    1aa2:	bb 20       	and	r11, r11
    1aa4:	d9 f1       	breq	.+118    	; 0x1b1c <_ZN7Serial_5writeEPKhj+0xd2>
	{
		u8 n = USB_SendSpace(ep);
    1aa6:	0e 94 c8 09 	call	0x1390	; 0x1390 <_Z13USB_SendSpaceh.constprop.3>
		if (n == 0)
    1aaa:	81 11       	cpse	r24, r1
    1aac:	0a c0       	rjmp	.+20     	; 0x1ac2 <_ZN7Serial_5writeEPKhj+0x78>
		{
			if (!(--timeout))
    1aae:	aa 94       	dec	r10
    1ab0:	aa 20       	and	r10, r10
    1ab2:	d9 f1       	breq	.+118    	; 0x1b2a <_ZN7Serial_5writeEPKhj+0xe0>
				return -1;
			delay(1);
    1ab4:	61 e0       	ldi	r22, 0x01	; 1
    1ab6:	70 e0       	ldi	r23, 0x00	; 0
    1ab8:	80 e0       	ldi	r24, 0x00	; 0
    1aba:	90 e0       	ldi	r25, 0x00	; 0
    1abc:	0e 94 f3 0c 	call	0x19e6	; 0x19e6 <delay>
    1ac0:	ee cf       	rjmp	.-36     	; 0x1a9e <_ZN7Serial_5writeEPKhj+0x54>
			continue;
		}

		if (n > len) {
    1ac2:	8c 17       	cp	r24, r28
    1ac4:	1d 06       	cpc	r1, r29
    1ac6:	11 f0       	breq	.+4      	; 0x1acc <_ZN7Serial_5writeEPKhj+0x82>
    1ac8:	0c f0       	brlt	.+2      	; 0x1acc <_ZN7Serial_5writeEPKhj+0x82>
			n = len;
    1aca:	8c 2f       	mov	r24, r28
#define USB_RECV_TIMEOUT
class LockEP
{
	u8 _sreg;
public:
	LockEP(u8 ep) : _sreg(SREG)
    1acc:	9f b7       	in	r25, 0x3f	; 63
	{
		cli();
    1ace:	f8 94       	cli
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    1ad0:	80 92 e9 00 	sts	0x00E9, r8	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
	UECONX = (1<<STALLRQ) | (1<<EPEN);
}

static inline u8 ReadWriteAllowed()
{
	return UEINTX & (1<<RWAL);
    1ad4:	20 91 e8 00 	lds	r18, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
		}

		{
			LockEP lock(ep);
			// Frame may have been released by the SOF interrupt handler
			if (!ReadWriteAllowed())
    1ad8:	25 fd       	sbrc	r18, 5
    1ada:	02 c0       	rjmp	.+4      	; 0x1ae0 <_ZN7Serial_5writeEPKhj+0x96>
		cli();
		SetEP(ep & 7);
	}
	~LockEP()
	{
		SREG = _sreg;
    1adc:	9f bf       	out	0x3f, r25	; 63
    1ade:	df cf       	rjmp	.-66     	; 0x1a9e <_ZN7Serial_5writeEPKhj+0x54>
			LockEP lock(ep);
			// Frame may have been released by the SOF interrupt handler
			if (!ReadWriteAllowed())
				continue;

			len -= n;
    1ae0:	28 2f       	mov	r18, r24
    1ae2:	30 e0       	ldi	r19, 0x00	; 0
    1ae4:	c2 1b       	sub	r28, r18
    1ae6:	d3 0b       	sbc	r29, r19
    1ae8:	f7 01       	movw	r30, r14
				while (n--)
					Send8(pgm_read_byte(data++));
			}
			else
			{
				while (n--)
    1aea:	81 50       	subi	r24, 0x01	; 1
    1aec:	20 f0       	brcs	.+8      	; 0x1af6 <_ZN7Serial_5writeEPKhj+0xac>
					Send8(*data++);
    1aee:	41 91       	ld	r20, Z+
	return UEDATX;	
}

static inline void Send8(u8 d)
{
	UEDATX = d;
    1af0:	40 93 f1 00 	sts	0x00F1, r20	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
    1af4:	fa cf       	rjmp	.-12     	; 0x1aea <_ZN7Serial_5writeEPKhj+0xa0>
    1af6:	e2 0e       	add	r14, r18
    1af8:	f3 1e       	adc	r15, r19
			{
				while (n--)
					Send8(*data++);
			}

			if (sendZlp) {
    1afa:	bb 20       	and	r11, r11
    1afc:	21 f0       	breq	.+8      	; 0x1b06 <_ZN7Serial_5writeEPKhj+0xbc>
	UEINTX = 0x6B;	// FIFOCON=0 NAKINI=1 RWAL=1 NAKOUTI=0 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=1
}

static inline void ReleaseTX()
{
	UEINTX = 0x3A;	// FIFOCON=0 NAKINI=0 RWAL=1 NAKOUTI=1 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=0
    1afe:	90 92 e8 00 	sts	0x00E8, r9	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
			if (sendZlp) {
				ReleaseTX();
				sendZlp = false;
			} else if (!ReadWriteAllowed()) { // ...release if buffer is full...
				ReleaseTX();
				if (len == 0) sendZlp = true;
    1b02:	b1 2c       	mov	r11, r1
    1b04:	eb cf       	rjmp	.-42     	; 0x1adc <_ZN7Serial_5writeEPKhj+0x92>
	UECONX = (1<<STALLRQ) | (1<<EPEN);
}

static inline u8 ReadWriteAllowed()
{
	return UEINTX & (1<<RWAL);
    1b06:	80 91 e8 00 	lds	r24, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
			}

			if (sendZlp) {
				ReleaseTX();
				sendZlp = false;
			} else if (!ReadWriteAllowed()) { // ...release if buffer is full...
    1b0a:	85 fd       	sbrc	r24, 5
    1b0c:	e7 cf       	rjmp	.-50     	; 0x1adc <_ZN7Serial_5writeEPKhj+0x92>
	UEINTX = 0x6B;	// FIFOCON=0 NAKINI=1 RWAL=1 NAKOUTI=0 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=1
}

static inline void ReleaseTX()
{
	UEINTX = 0x3A;	// FIFOCON=0 NAKINI=0 RWAL=1 NAKOUTI=1 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=0
    1b0e:	90 92 e8 00 	sts	0x00E8, r9	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
			if (sendZlp) {
				ReleaseTX();
				sendZlp = false;
			} else if (!ReadWriteAllowed()) { // ...release if buffer is full...
				ReleaseTX();
				if (len == 0) sendZlp = true;
    1b12:	bb 24       	eor	r11, r11
    1b14:	b3 94       	inc	r11
    1b16:	20 97       	sbiw	r28, 0x00	; 0
    1b18:	09 f3       	breq	.-62     	; 0x1adc <_ZN7Serial_5writeEPKhj+0x92>
    1b1a:	f3 cf       	rjmp	.-26     	; 0x1b02 <_ZN7Serial_5writeEPKhj+0xb8>
				// XXX: TRANSFER_RELEASE is never used can be removed?
				ReleaseTX();
			}
		}
	}
	TXLED1;					// light the TX LED
    1b1c:	5d 98       	cbi	0x0b, 5	; 11
	TxLEDPulse = TX_RX_LED_PULSE_MS;
    1b1e:	84 e6       	ldi	r24, 0x64	; 100
    1b20:	80 93 a3 02 	sts	0x02A3, r24	; 0x8002a3 <TxLEDPulse>
	// TODO - ZE - check behavior on different OSes and test what happens if an
	// open connection isn't broken cleanly (cable is yanked out, host dies
	// or locks up, or host virtual serial port hangs)
	if (_usbLineInfo.lineState > 0)	{
		int r = USB_Send(CDC_TX,buffer,size);
		if (r > 0) {
    1b24:	10 16       	cp	r1, r16
    1b26:	11 06       	cpc	r1, r17
    1b28:	3c f0       	brlt	.+14     	; 0x1b38 <_ZN7Serial_5writeEPKhj+0xee>
  private:
    int write_error;
    size_t printNumber(unsigned long, uint8_t);
    size_t printFloat(double, uint8_t);
  protected:
    void setWriteError(int err = 1) { write_error = err; }
    1b2a:	81 e0       	ldi	r24, 0x01	; 1
    1b2c:	90 e0       	ldi	r25, 0x00	; 0
    1b2e:	f6 01       	movw	r30, r12
    1b30:	93 83       	std	Z+3, r25	; 0x03
    1b32:	82 83       	std	Z+2, r24	; 0x02
			return r;
		} else {
			setWriteError();
			return 0;
    1b34:	10 e0       	ldi	r17, 0x00	; 0
    1b36:	00 e0       	ldi	r16, 0x00	; 0
		}
	}
	setWriteError();
	return 0;
}
    1b38:	c8 01       	movw	r24, r16
    1b3a:	df 91       	pop	r29
    1b3c:	cf 91       	pop	r28
    1b3e:	1f 91       	pop	r17
    1b40:	0f 91       	pop	r16
    1b42:	ff 90       	pop	r15
    1b44:	ef 90       	pop	r14
    1b46:	df 90       	pop	r13
    1b48:	cf 90       	pop	r12
    1b4a:	bf 90       	pop	r11
    1b4c:	af 90       	pop	r10
    1b4e:	9f 90       	pop	r9
    1b50:	8f 90       	pop	r8
    1b52:	08 95       	ret

00001b54 <_ZN11ArduboyCore12buttonsStateEv>:
  buttons = buttons | (((~PINC) & B01000000) >> 4);
  // A and B
  buttons = buttons | (((~PINF) & B11000000) >> 6);
#elif defined(ARDUBOY_10)
  // down, up, left right
  buttons = ((~PINF) & B11110000);
    1b54:	4f b1       	in	r20, 0x0f	; 15
  // A (left)
  buttons = buttons | (((~PINE) & B01000000) >> 3);
    1b56:	8c b1       	in	r24, 0x0c	; 12
  // B (right)
  buttons = buttons | (((~PINB) & B00010000) >> 2);
    1b58:	23 b1       	in	r18, 0x03	; 3
  buttons = buttons | (((~PINF) & B11000000) >> 6);
#elif defined(ARDUBOY_10)
  // down, up, left right
  buttons = ((~PINF) & B11110000);
  // A (left)
  buttons = buttons | (((~PINE) & B01000000) >> 3);
    1b5a:	90 e0       	ldi	r25, 0x00	; 0
    1b5c:	80 95       	com	r24
    1b5e:	90 95       	com	r25
    1b60:	33 e0       	ldi	r19, 0x03	; 3
    1b62:	95 95       	asr	r25
    1b64:	87 95       	ror	r24
    1b66:	3a 95       	dec	r19
    1b68:	e1 f7       	brne	.-8      	; 0x1b62 <_ZN11ArduboyCore12buttonsStateEv+0xe>
    1b6a:	88 70       	andi	r24, 0x08	; 8
  // B (right)
  buttons = buttons | (((~PINB) & B00010000) >> 2);
    1b6c:	30 e0       	ldi	r19, 0x00	; 0
    1b6e:	20 95       	com	r18
    1b70:	30 95       	com	r19
    1b72:	35 95       	asr	r19
    1b74:	27 95       	ror	r18
    1b76:	35 95       	asr	r19
    1b78:	27 95       	ror	r18
    1b7a:	24 70       	andi	r18, 0x04	; 4
    1b7c:	82 2b       	or	r24, r18
  buttons = buttons | (((~PINC) & B01000000) >> 4);
  // A and B
  buttons = buttons | (((~PINF) & B11000000) >> 6);
#elif defined(ARDUBOY_10)
  // down, up, left right
  buttons = ((~PINF) & B11110000);
    1b7e:	94 2f       	mov	r25, r20
    1b80:	90 95       	com	r25
    1b82:	90 7f       	andi	r25, 0xF0	; 240
  // B (right)
  buttons = buttons | (((~PINB) & B00010000) >> 2);
#endif
  
  return buttons;
}
    1b84:	89 2b       	or	r24, r25
    1b86:	08 95       	ret

00001b88 <_ZN11ArduboyCore4idleEv>:

/* Power Management */

void ArduboyCore::idle()
{
  set_sleep_mode(SLEEP_MODE_IDLE);
    1b88:	83 b7       	in	r24, 0x33	; 51
    1b8a:	81 7f       	andi	r24, 0xF1	; 241
    1b8c:	83 bf       	out	0x33, r24	; 51
  sleep_mode();
    1b8e:	83 b7       	in	r24, 0x33	; 51
    1b90:	81 60       	ori	r24, 0x01	; 1
    1b92:	83 bf       	out	0x33, r24	; 51
    1b94:	88 95       	sleep
    1b96:	83 b7       	in	r24, 0x33	; 51
    1b98:	8e 7f       	andi	r24, 0xFE	; 254
    1b9a:	83 bf       	out	0x33, r24	; 51
}
    1b9c:	08 95       	ret

00001b9e <_ZN11ArduboyCore14LCDCommandModeEv>:
  *csport &= ~cspinmask;
}

void ArduboyCore::LCDCommandMode()
{
  *csport |= cspinmask;
    1b9e:	e0 91 95 02 	lds	r30, 0x0295	; 0x800295 <_ZN11ArduboyCore6csportE>
    1ba2:	f0 91 96 02 	lds	r31, 0x0296	; 0x800296 <_ZN11ArduboyCore6csportE+0x1>
    1ba6:	90 81       	ld	r25, Z
    1ba8:	80 91 94 02 	lds	r24, 0x0294	; 0x800294 <_ZN11ArduboyCore9cspinmaskE>
    1bac:	98 2b       	or	r25, r24
    1bae:	90 83       	st	Z, r25
  *dcport &= ~dcpinmask;
    1bb0:	a0 91 92 02 	lds	r26, 0x0292	; 0x800292 <_ZN11ArduboyCore6dcportE>
    1bb4:	b0 91 93 02 	lds	r27, 0x0293	; 0x800293 <_ZN11ArduboyCore6dcportE+0x1>
    1bb8:	2c 91       	ld	r18, X
    1bba:	90 91 91 02 	lds	r25, 0x0291	; 0x800291 <_ZN11ArduboyCore9dcpinmaskE>
    1bbe:	90 95       	com	r25
    1bc0:	92 23       	and	r25, r18
    1bc2:	9c 93       	st	X, r25
  *csport &= ~cspinmask;
    1bc4:	90 81       	ld	r25, Z
    1bc6:	80 95       	com	r24
    1bc8:	89 23       	and	r24, r25
    1bca:	80 83       	st	Z, r24
}
    1bcc:	08 95       	ret

00001bce <_ZN11ArduboyCore11LCDDataModeEv>:
  LCDDataMode();
}

void ArduboyCore::LCDDataMode()
{
  *dcport |= dcpinmask;
    1bce:	e0 91 92 02 	lds	r30, 0x0292	; 0x800292 <_ZN11ArduboyCore6dcportE>
    1bd2:	f0 91 93 02 	lds	r31, 0x0293	; 0x800293 <_ZN11ArduboyCore6dcportE+0x1>
    1bd6:	80 81       	ld	r24, Z
    1bd8:	90 91 91 02 	lds	r25, 0x0291	; 0x800291 <_ZN11ArduboyCore9dcpinmaskE>
    1bdc:	89 2b       	or	r24, r25
    1bde:	80 83       	st	Z, r24
  *csport &= ~cspinmask;
    1be0:	e0 91 95 02 	lds	r30, 0x0295	; 0x800295 <_ZN11ArduboyCore6csportE>
    1be4:	f0 91 96 02 	lds	r31, 0x0296	; 0x800296 <_ZN11ArduboyCore6csportE+0x1>
    1be8:	90 81       	ld	r25, Z
    1bea:	80 91 94 02 	lds	r24, 0x0294	; 0x800294 <_ZN11ArduboyCore9cspinmaskE>
    1bee:	80 95       	com	r24
    1bf0:	89 23       	and	r24, r25
    1bf2:	80 83       	st	Z, r24
}
    1bf4:	08 95       	ret

00001bf6 <_ZN12ArduboyTunes8playNoteEhh.part.2>:
      stopNote(0);
      break;
  }
}

void ArduboyTunes::playNote(byte chan, byte note)
    1bf6:	cf 92       	push	r12
    1bf8:	df 92       	push	r13
    1bfa:	ef 92       	push	r14
    1bfc:	ff 92       	push	r15
    1bfe:	0f 93       	push	r16
    1c00:	1f 93       	push	r17
    1c02:	cf 93       	push	r28
  // we only have frequencies for 128 notes
  if (note > 127) {
    return;
  }

  timer_num = pgm_read_byte(tune_pin_to_timer_PGM + chan);
    1c04:	e8 2f       	mov	r30, r24
    1c06:	f0 e0       	ldi	r31, 0x00	; 0
    1c08:	e8 52       	subi	r30, 0x28	; 40
    1c0a:	f2 4f       	sbci	r31, 0xF2	; 242
    1c0c:	c4 91       	lpm	r28, Z
    1c0e:	e6 2f       	mov	r30, r22
    1c10:	f0 e0       	ldi	r31, 0x00	; 0
  if (note < 48) {
    1c12:	60 33       	cpi	r22, 0x30	; 48
    1c14:	98 f5       	brcc	.+102    	; 0x1c7c <_ZN12ArduboyTunes8playNoteEhh.part.2+0x86>
    frequency2 = pgm_read_byte(_midi_byte_note_frequencies + note);
    1c16:	e7 57       	subi	r30, 0x77	; 119
    1c18:	f2 4f       	sbci	r31, 0xF2	; 242
    1c1a:	e4 91       	lpm	r30, Z
    1c1c:	0e 2f       	mov	r16, r30
    1c1e:	10 e0       	ldi	r17, 0x00	; 0
    frequency2 = pgm_read_word(_midi_word_note_frequencies + note - 48);
  }

  //******  16-bit timer  *********
  // two choices for the 16 bit timers: ck/1 or ck/64
  ocr = F_CPU / frequency2 - 1;
    1c20:	f1 2c       	mov	r15, r1
    1c22:	e1 2c       	mov	r14, r1
    1c24:	60 e0       	ldi	r22, 0x00	; 0
    1c26:	74 e2       	ldi	r23, 0x24	; 36
    1c28:	84 ef       	ldi	r24, 0xF4	; 244
    1c2a:	90 e0       	ldi	r25, 0x00	; 0
    1c2c:	a7 01       	movw	r20, r14
    1c2e:	98 01       	movw	r18, r16
    1c30:	0e 94 1a 2f 	call	0x5e34	; 0x5e34 <__divmodsi4>
    1c34:	21 50       	subi	r18, 0x01	; 1
    1c36:	31 09       	sbc	r19, r1
    1c38:	41 09       	sbc	r20, r1
    1c3a:	51 09       	sbc	r21, r1
  prescalar_bits = 0b001;
    1c3c:	91 e0       	ldi	r25, 0x01	; 1
  if (ocr > 0xffff) {
    1c3e:	21 15       	cp	r18, r1
    1c40:	31 05       	cpc	r19, r1
    1c42:	81 e0       	ldi	r24, 0x01	; 1
    1c44:	48 07       	cpc	r20, r24
    1c46:	51 05       	cpc	r21, r1
    1c48:	6c f0       	brlt	.+26     	; 0x1c64 <_ZN12ArduboyTunes8playNoteEhh.part.2+0x6e>
    ocr = F_CPU / frequency2 / 64 - 1;
    1c4a:	60 e9       	ldi	r22, 0x90	; 144
    1c4c:	70 ed       	ldi	r23, 0xD0	; 208
    1c4e:	83 e0       	ldi	r24, 0x03	; 3
    1c50:	90 e0       	ldi	r25, 0x00	; 0
    1c52:	a7 01       	movw	r20, r14
    1c54:	98 01       	movw	r18, r16
    1c56:	0e 94 1a 2f 	call	0x5e34	; 0x5e34 <__divmodsi4>
    1c5a:	21 50       	subi	r18, 0x01	; 1
    1c5c:	31 09       	sbc	r19, r1
    1c5e:	41 09       	sbc	r20, r1
    1c60:	51 09       	sbc	r21, r1
    prescalar_bits = 0b011;
    1c62:	93 e0       	ldi	r25, 0x03	; 3
  }
  // Set the OCR for the given timer, then turn on the interrupts
  switch (timer_num) {
    1c64:	c1 30       	cpi	r28, 0x01	; 1
    1c66:	89 f0       	breq	.+34     	; 0x1c8a <_ZN12ArduboyTunes8playNoteEhh.part.2+0x94>
    1c68:	c3 30       	cpi	r28, 0x03	; 3
    1c6a:	f9 f0       	breq	.+62     	; 0x1caa <_ZN12ArduboyTunes8playNoteEhh.part.2+0xb4>
      wait_timer_frequency2 = frequency2;  // for "tune_delay" function
      wait_timer_playing = true;
      bitWrite(TIMSK3, OCIE3A, 1);
      break;
  }
}
    1c6c:	cf 91       	pop	r28
    1c6e:	1f 91       	pop	r17
    1c70:	0f 91       	pop	r16
    1c72:	ff 90       	pop	r15
    1c74:	ef 90       	pop	r14
    1c76:	df 90       	pop	r13
    1c78:	cf 90       	pop	r12
    1c7a:	08 95       	ret

  timer_num = pgm_read_byte(tune_pin_to_timer_PGM + chan);
  if (note < 48) {
    frequency2 = pgm_read_byte(_midi_byte_note_frequencies + note);
  } else {
    frequency2 = pgm_read_word(_midi_word_note_frequencies + note - 48);
    1c7c:	ee 0f       	add	r30, r30
    1c7e:	ff 1f       	adc	r31, r31
    1c80:	e7 57       	subi	r30, 0x77	; 119
    1c82:	f3 4f       	sbci	r31, 0xF3	; 243
    1c84:	05 91       	lpm	r16, Z+
    1c86:	14 91       	lpm	r17, Z
    1c88:	cb cf       	rjmp	.-106    	; 0x1c20 <_ZN12ArduboyTunes8playNoteEhh.part.2+0x2a>
    prescalar_bits = 0b011;
  }
  // Set the OCR for the given timer, then turn on the interrupts
  switch (timer_num) {
    case 1:
      TCCR1B = (TCCR1B & 0b11111000) | prescalar_bits;
    1c8a:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
    1c8e:	88 7f       	andi	r24, 0xF8	; 248
    1c90:	89 2b       	or	r24, r25
    1c92:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
      OCR1A = ocr;
    1c96:	30 93 89 00 	sts	0x0089, r19	; 0x800089 <__DATA_REGION_ORIGIN__+0x29>
    1c9a:	20 93 88 00 	sts	0x0088, r18	; 0x800088 <__DATA_REGION_ORIGIN__+0x28>
      bitWrite(TIMSK1, OCIE1A, 1);
    1c9e:	80 91 6f 00 	lds	r24, 0x006F	; 0x80006f <__DATA_REGION_ORIGIN__+0xf>
    1ca2:	82 60       	ori	r24, 0x02	; 2
    1ca4:	80 93 6f 00 	sts	0x006F, r24	; 0x80006f <__DATA_REGION_ORIGIN__+0xf>
    1ca8:	e1 cf       	rjmp	.-62     	; 0x1c6c <_ZN12ArduboyTunes8playNoteEhh.part.2+0x76>
      break;
    case 3:
      TCCR3B = (TCCR3B & 0b11111000) | prescalar_bits;
    1caa:	80 91 91 00 	lds	r24, 0x0091	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
    1cae:	88 7f       	andi	r24, 0xF8	; 248
    1cb0:	89 2b       	or	r24, r25
    1cb2:	80 93 91 00 	sts	0x0091, r24	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
      OCR3A = ocr;
    1cb6:	30 93 99 00 	sts	0x0099, r19	; 0x800099 <__DATA_REGION_ORIGIN__+0x39>
    1cba:	20 93 98 00 	sts	0x0098, r18	; 0x800098 <__DATA_REGION_ORIGIN__+0x38>
      wait_timer_frequency2 = frequency2;  // for "tune_delay" function
    1cbe:	10 93 84 02 	sts	0x0284, r17	; 0x800284 <wait_timer_frequency2+0x1>
    1cc2:	00 93 83 02 	sts	0x0283, r16	; 0x800283 <wait_timer_frequency2>
      wait_timer_playing = true;
    1cc6:	81 e0       	ldi	r24, 0x01	; 1
    1cc8:	80 93 82 02 	sts	0x0282, r24	; 0x800282 <wait_timer_playing>
      bitWrite(TIMSK3, OCIE3A, 1);
    1ccc:	80 91 71 00 	lds	r24, 0x0071	; 0x800071 <__DATA_REGION_ORIGIN__+0x11>
    1cd0:	82 60       	ori	r24, 0x02	; 2
    1cd2:	80 93 71 00 	sts	0x0071, r24	; 0x800071 <__DATA_REGION_ORIGIN__+0x11>
    1cd6:	ca cf       	rjmp	.-108    	; 0x1c6c <_ZN12ArduboyTunes8playNoteEhh.part.2+0x76>

00001cd8 <_ZN12ArduboyTunes8stopNoteEh>:
}

void ArduboyTunes::stopNote(byte chan)
{
  byte timer_num;
  timer_num = pgm_read_byte(tune_pin_to_timer_PGM + chan);
    1cd8:	e8 2f       	mov	r30, r24
    1cda:	f0 e0       	ldi	r31, 0x00	; 0
    1cdc:	e8 52       	subi	r30, 0x28	; 40
    1cde:	f2 4f       	sbci	r31, 0xF2	; 242
    1ce0:	e4 91       	lpm	r30, Z
  switch (timer_num) {
    1ce2:	e1 30       	cpi	r30, 0x01	; 1
    1ce4:	19 f0       	breq	.+6      	; 0x1cec <_ZN12ArduboyTunes8stopNoteEh+0x14>
    1ce6:	e3 30       	cpi	r30, 0x03	; 3
    1ce8:	89 f0       	breq	.+34     	; 0x1d0c <_ZN12ArduboyTunes8stopNoteEh+0x34>
    1cea:	08 95       	ret
    case 1:
      TIMSK1 &= ~(1 << OCIE1A);                 // disable the interrupt
    1cec:	80 91 6f 00 	lds	r24, 0x006F	; 0x80006f <__DATA_REGION_ORIGIN__+0xf>
    1cf0:	8d 7f       	andi	r24, 0xFD	; 253
    1cf2:	80 93 6f 00 	sts	0x006F, r24	; 0x80006f <__DATA_REGION_ORIGIN__+0xf>
      *_tunes_timer1_pin_port &= ~(_tunes_timer1_pin_mask);   // keep pin low after stop
    1cf6:	80 91 8d 02 	lds	r24, 0x028D	; 0x80028d <_tunes_timer1_pin_mask>
    1cfa:	e0 91 8e 02 	lds	r30, 0x028E	; 0x80028e <_tunes_timer1_pin_port>
    1cfe:	f0 91 8f 02 	lds	r31, 0x028F	; 0x80028f <_tunes_timer1_pin_port+0x1>
      break;
    case 3:
      wait_timer_playing = false;
      *_tunes_timer3_pin_port &= ~(_tunes_timer3_pin_mask);   // keep pin low after stop
    1d02:	90 81       	ld	r25, Z
    1d04:	80 95       	com	r24
    1d06:	89 23       	and	r24, r25
    1d08:	80 83       	st	Z, r24
      break;
  }
}
    1d0a:	08 95       	ret
    case 1:
      TIMSK1 &= ~(1 << OCIE1A);                 // disable the interrupt
      *_tunes_timer1_pin_port &= ~(_tunes_timer1_pin_mask);   // keep pin low after stop
      break;
    case 3:
      wait_timer_playing = false;
    1d0c:	10 92 82 02 	sts	0x0282, r1	; 0x800282 <wait_timer_playing>
      *_tunes_timer3_pin_port &= ~(_tunes_timer3_pin_mask);   // keep pin low after stop
    1d10:	80 91 8a 02 	lds	r24, 0x028A	; 0x80028a <_tunes_timer3_pin_mask>
    1d14:	e0 91 8b 02 	lds	r30, 0x028B	; 0x80028b <_tunes_timer3_pin_port>
    1d18:	f0 91 8c 02 	lds	r31, 0x028C	; 0x80028c <_tunes_timer3_pin_port+0x1>
    1d1c:	f2 cf       	rjmp	.-28     	; 0x1d02 <_ZN12ArduboyTunes8stopNoteEh+0x2a>

00001d1e <_ZN12ArduboyTunes4stepEv>:
{
  byte command, opcode, chan;
  unsigned duration;

  while (1) {
    command = pgm_read_byte(score_cursor++);
    1d1e:	e0 91 b5 02 	lds	r30, 0x02B5	; 0x8002b5 <score_cursor>
    1d22:	f0 91 b6 02 	lds	r31, 0x02B6	; 0x8002b6 <score_cursor+0x1>
    1d26:	bf 01       	movw	r22, r30
    1d28:	6f 5f       	subi	r22, 0xFF	; 255
    1d2a:	7f 4f       	sbci	r23, 0xFF	; 255
    1d2c:	70 93 b6 02 	sts	0x02B6, r23	; 0x8002b6 <score_cursor+0x1>
    1d30:	60 93 b5 02 	sts	0x02B5, r22	; 0x8002b5 <score_cursor>
    1d34:	24 91       	lpm	r18, Z
    opcode = command & 0xf0;
    1d36:	92 2f       	mov	r25, r18
    1d38:	90 7f       	andi	r25, 0xF0	; 240
    chan = command & 0x0f;
    1d3a:	82 2f       	mov	r24, r18
    1d3c:	8f 70       	andi	r24, 0x0F	; 15
    if (opcode == TUNE_OP_STOPNOTE) { /* stop note */
    1d3e:	90 38       	cpi	r25, 0x80	; 128
    1d40:	19 f4       	brne	.+6      	; 0x1d48 <_ZN12ArduboyTunes4stepEv+0x2a>
      stopNote(chan);
    1d42:	0e 94 6c 0e 	call	0x1cd8	; 0x1cd8 <_ZN12ArduboyTunes8stopNoteEh>
    1d46:	eb cf       	rjmp	.-42     	; 0x1d1e <_ZN12ArduboyTunes4stepEv>
    }
    else if (opcode == TUNE_OP_PLAYNOTE) { /* play note */
    1d48:	90 39       	cpi	r25, 0x90	; 144
    1d4a:	81 f4       	brne	.+32     	; 0x1d6c <_ZN12ArduboyTunes4stepEv+0x4e>
      playNote(chan, pgm_read_byte(score_cursor++));
    1d4c:	32 96       	adiw	r30, 0x02	; 2
    1d4e:	f0 93 b6 02 	sts	0x02B6, r31	; 0x8002b6 <score_cursor+0x1>
    1d52:	e0 93 b5 02 	sts	0x02B5, r30	; 0x8002b5 <score_cursor>
    1d56:	fb 01       	movw	r30, r22
    1d58:	64 91       	lpm	r22, Z
  byte prescalar_bits;
  unsigned int frequency2; /* frequency times 2 */
  unsigned long ocr;

  // we can't plan on a channel that does not exist
  if (chan >= _tune_num_chans)
    1d5a:	90 91 b3 02 	lds	r25, 0x02B3	; 0x8002b3 <_tune_num_chans>
    1d5e:	89 17       	cp	r24, r25
    1d60:	f0 f6       	brcc	.-68     	; 0x1d1e <_ZN12ArduboyTunes4stepEv>
    return;

  // we only have frequencies for 128 notes
  if (note > 127) {
    1d62:	67 fd       	sbrc	r22, 7
    1d64:	dc cf       	rjmp	.-72     	; 0x1d1e <_ZN12ArduboyTunes4stepEv>
    1d66:	0e 94 fb 0d 	call	0x1bf6	; 0x1bf6 <_ZN12ArduboyTunes8playNoteEhh.part.2>
    1d6a:	d9 cf       	rjmp	.-78     	; 0x1d1e <_ZN12ArduboyTunes4stepEv>
      stopNote(chan);
    }
    else if (opcode == TUNE_OP_PLAYNOTE) { /* play note */
      playNote(chan, pgm_read_byte(score_cursor++));
    }
    else if (opcode == TUNE_OP_RESTART) { /* restart score */
    1d6c:	90 3e       	cpi	r25, 0xE0	; 224
    1d6e:	49 f4       	brne	.+18     	; 0x1d82 <_ZN12ArduboyTunes4stepEv+0x64>
      score_cursor = score_start;
    1d70:	80 91 b7 02 	lds	r24, 0x02B7	; 0x8002b7 <score_start>
    1d74:	90 91 b8 02 	lds	r25, 0x02B8	; 0x8002b8 <score_start+0x1>
    1d78:	90 93 b6 02 	sts	0x02B6, r25	; 0x8002b6 <score_cursor+0x1>
    1d7c:	80 93 b5 02 	sts	0x02B5, r24	; 0x8002b5 <score_cursor>
    1d80:	ce cf       	rjmp	.-100    	; 0x1d1e <_ZN12ArduboyTunes4stepEv>
    }
    else if (opcode == TUNE_OP_STOP) { /* stop score */
    1d82:	90 3f       	cpi	r25, 0xF0	; 240
    1d84:	19 f4       	brne	.+6      	; 0x1d8c <_ZN12ArduboyTunes4stepEv+0x6e>
      tune_playing = false;
    1d86:	10 92 b4 02 	sts	0x02B4, r1	; 0x8002b4 <tune_playing>
    1d8a:	08 95       	ret
      break;
    }
    else if (opcode < 0x80) { /* wait count in msec. */
    1d8c:	97 fd       	sbrc	r25, 7
    1d8e:	c7 cf       	rjmp	.-114    	; 0x1d1e <_ZN12ArduboyTunes4stepEv>
      duration = ((unsigned)command << 8) | (pgm_read_byte(score_cursor++));
    1d90:	32 96       	adiw	r30, 0x02	; 2
    1d92:	f0 93 b6 02 	sts	0x02B6, r31	; 0x8002b6 <score_cursor+0x1>
    1d96:	e0 93 b5 02 	sts	0x02B5, r30	; 0x8002b5 <score_cursor>
    1d9a:	fb 01       	movw	r30, r22
    1d9c:	64 91       	lpm	r22, Z
      wait_toggle_count = ((unsigned long) wait_timer_frequency2 * duration + 500) / 1000;
    1d9e:	a0 91 83 02 	lds	r26, 0x0283	; 0x800283 <wait_timer_frequency2>
    1da2:	b0 91 84 02 	lds	r27, 0x0284	; 0x800284 <wait_timer_frequency2+0x1>
    else if (opcode == TUNE_OP_STOP) { /* stop score */
      tune_playing = false;
      break;
    }
    else if (opcode < 0x80) { /* wait count in msec. */
      duration = ((unsigned)command << 8) | (pgm_read_byte(score_cursor++));
    1da6:	32 2f       	mov	r19, r18
    1da8:	26 2f       	mov	r18, r22
      wait_toggle_count = ((unsigned long) wait_timer_frequency2 * duration + 500) / 1000;
    1daa:	0e 94 6e 2f 	call	0x5edc	; 0x5edc <__umulhisi3>
    1dae:	6c 50       	subi	r22, 0x0C	; 12
    1db0:	7e 4f       	sbci	r23, 0xFE	; 254
    1db2:	8f 4f       	sbci	r24, 0xFF	; 255
    1db4:	9f 4f       	sbci	r25, 0xFF	; 255
    1db6:	28 ee       	ldi	r18, 0xE8	; 232
    1db8:	33 e0       	ldi	r19, 0x03	; 3
    1dba:	40 e0       	ldi	r20, 0x00	; 0
    1dbc:	50 e0       	ldi	r21, 0x00	; 0
    1dbe:	0e 94 4c 2f 	call	0x5e98	; 0x5e98 <__udivmodsi4>
    1dc2:	20 93 7e 02 	sts	0x027E, r18	; 0x80027e <wait_toggle_count>
    1dc6:	30 93 7f 02 	sts	0x027F, r19	; 0x80027f <wait_toggle_count+0x1>
    1dca:	40 93 80 02 	sts	0x0280, r20	; 0x800280 <wait_toggle_count+0x2>
    1dce:	50 93 81 02 	sts	0x0281, r21	; 0x800281 <wait_toggle_count+0x3>
      if (wait_toggle_count == 0) wait_toggle_count = 1;
    1dd2:	80 91 7e 02 	lds	r24, 0x027E	; 0x80027e <wait_toggle_count>
    1dd6:	90 91 7f 02 	lds	r25, 0x027F	; 0x80027f <wait_toggle_count+0x1>
    1dda:	a0 91 80 02 	lds	r26, 0x0280	; 0x800280 <wait_toggle_count+0x2>
    1dde:	b0 91 81 02 	lds	r27, 0x0281	; 0x800281 <wait_toggle_count+0x3>
    1de2:	89 2b       	or	r24, r25
    1de4:	8a 2b       	or	r24, r26
    1de6:	8b 2b       	or	r24, r27
    1de8:	61 f4       	brne	.+24     	; 0x1e02 <_ZN12ArduboyTunes4stepEv+0xe4>
    1dea:	81 e0       	ldi	r24, 0x01	; 1
    1dec:	90 e0       	ldi	r25, 0x00	; 0
    1dee:	a0 e0       	ldi	r26, 0x00	; 0
    1df0:	b0 e0       	ldi	r27, 0x00	; 0
    1df2:	80 93 7e 02 	sts	0x027E, r24	; 0x80027e <wait_toggle_count>
    1df6:	90 93 7f 02 	sts	0x027F, r25	; 0x80027f <wait_toggle_count+0x1>
    1dfa:	a0 93 80 02 	sts	0x0280, r26	; 0x800280 <wait_toggle_count+0x2>
    1dfe:	b0 93 81 02 	sts	0x0281, r27	; 0x800281 <wait_toggle_count+0x3>
      break;
    }
  }
}
    1e02:	08 95       	ret

00001e04 <_ZN10MyArduboyV10playScore2EPKhh.constprop.39>:
    1e04:	0f 93       	push	r16
    1e06:	1f 93       	push	r17
    1e08:	cf 93       	push	r28
    1e0a:	df 93       	push	r29
    1e0c:	20 91 b9 02 	lds	r18, 0x02B9	; 0x8002b9 <_ZN12ArduboyAudio13audio_enabledE>
    1e10:	22 23       	and	r18, r18
    1e12:	29 f1       	breq	.+74     	; 0x1e5e <_ZN10MyArduboyV10playScore2EPKhh.constprop.39+0x5a>
    1e14:	16 2f       	mov	r17, r22
    1e16:	ec 01       	movw	r28, r24
  tune_playing = false;
}

bool ArduboyTunes::playing()
{
  return tune_playing;
    1e18:	80 91 b4 02 	lds	r24, 0x02B4	; 0x8002b4 <tune_playing>
    1e1c:	88 23       	and	r24, r24
    1e1e:	81 f0       	breq	.+32     	; 0x1e40 <_ZN10MyArduboyV10playScore2EPKhh.constprop.39+0x3c>
    1e20:	80 91 28 07 	lds	r24, 0x0728	; 0x800728 <arduboy+0x41e>
    1e24:	86 17       	cp	r24, r22
    1e26:	d8 f0       	brcs	.+54     	; 0x1e5e <_ZN10MyArduboyV10playScore2EPKhh.constprop.39+0x5a>
  tune_playing = true;  /* release the interrupt routine */
}

void ArduboyTunes::stopScore (void)
{
  for (uint8_t i = 0; i < _tune_num_chans; i++)
    1e28:	00 e0       	ldi	r16, 0x00	; 0
    1e2a:	80 91 b3 02 	lds	r24, 0x02B3	; 0x8002b3 <_tune_num_chans>
    1e2e:	08 17       	cp	r16, r24
    1e30:	28 f4       	brcc	.+10     	; 0x1e3c <_ZN10MyArduboyV10playScore2EPKhh.constprop.39+0x38>
    stopNote(i);
    1e32:	80 2f       	mov	r24, r16
    1e34:	0e 94 6c 0e 	call	0x1cd8	; 0x1cd8 <_ZN12ArduboyTunes8stopNoteEh>
  tune_playing = true;  /* release the interrupt routine */
}

void ArduboyTunes::stopScore (void)
{
  for (uint8_t i = 0; i < _tune_num_chans; i++)
    1e38:	0f 5f       	subi	r16, 0xFF	; 255
    1e3a:	f7 cf       	rjmp	.-18     	; 0x1e2a <_ZN10MyArduboyV10playScore2EPKhh.constprop.39+0x26>
    stopNote(i);
  tune_playing = false;
    1e3c:	10 92 b4 02 	sts	0x02B4, r1	; 0x8002b4 <tune_playing>
    1e40:	10 93 28 07 	sts	0x0728, r17	; 0x800728 <arduboy+0x41e>
  }
}

void ArduboyTunes::playScore(const byte *score)
{
  score_start = score;
    1e44:	d0 93 b8 02 	sts	0x02B8, r29	; 0x8002b8 <score_start+0x1>
    1e48:	c0 93 b7 02 	sts	0x02B7, r28	; 0x8002b7 <score_start>
  score_cursor = score_start;
    1e4c:	d0 93 b6 02 	sts	0x02B6, r29	; 0x8002b6 <score_cursor+0x1>
    1e50:	c0 93 b5 02 	sts	0x02B5, r28	; 0x8002b5 <score_cursor>
  step();  /* execute initial commands */
    1e54:	0e 94 8f 0e 	call	0x1d1e	; 0x1d1e <_ZN12ArduboyTunes4stepEv>
  tune_playing = true;  /* release the interrupt routine */
    1e58:	81 e0       	ldi	r24, 0x01	; 1
    1e5a:	80 93 b4 02 	sts	0x02B4, r24	; 0x8002b4 <tune_playing>
    1e5e:	df 91       	pop	r29
    1e60:	cf 91       	pop	r28
    1e62:	1f 91       	pop	r17
    1e64:	0f 91       	pop	r16
    1e66:	08 95       	ret

00001e68 <_ZN7Arduboy9drawPixelEiih>:
}

void Arduboy::drawPixel(int x, int y, uint8_t color)
{
  #ifdef PIXEL_SAFE_MODE
  if (x < 0 || x > (WIDTH-1) || y < 0 || y > (HEIGHT-1))
    1e68:	60 38       	cpi	r22, 0x80	; 128
    1e6a:	71 05       	cpc	r23, r1
    1e6c:	e8 f4       	brcc	.+58     	; 0x1ea8 <_ZN7Arduboy9drawPixelEiih+0x40>
    1e6e:	40 34       	cpi	r20, 0x40	; 64
    1e70:	51 05       	cpc	r21, r1
    1e72:	d0 f4       	brcc	.+52     	; 0x1ea8 <_ZN7Arduboy9drawPixelEiih+0x40>
  {
    return;
  }
  #endif

  uint8_t row = (uint8_t)y / 8;
    1e74:	34 2f       	mov	r19, r20
    1e76:	36 95       	lsr	r19
    1e78:	36 95       	lsr	r19
    1e7a:	36 95       	lsr	r19
    1e7c:	a0 e8       	ldi	r26, 0x80	; 128
    1e7e:	3a 9f       	mul	r19, r26
    1e80:	f0 01       	movw	r30, r0
    1e82:	11 24       	eor	r1, r1
    1e84:	e6 0f       	add	r30, r22
    1e86:	f7 1f       	adc	r31, r23
    1e88:	e8 0f       	add	r30, r24
    1e8a:	f9 1f       	adc	r31, r25
    1e8c:	34 89       	ldd	r19, Z+20	; 0x14
    1e8e:	ca 01       	movw	r24, r20
    1e90:	87 70       	andi	r24, 0x07	; 7
    1e92:	99 27       	eor	r25, r25
    1e94:	41 e0       	ldi	r20, 0x01	; 1
    1e96:	50 e0       	ldi	r21, 0x00	; 0
    1e98:	01 c0       	rjmp	.+2      	; 0x1e9c <_ZN7Arduboy9drawPixelEiih+0x34>
    1e9a:	44 0f       	add	r20, r20
    1e9c:	8a 95       	dec	r24
    1e9e:	ea f7       	brpl	.-6      	; 0x1e9a <_ZN7Arduboy9drawPixelEiih+0x32>
  if (color)
    1ea0:	22 23       	and	r18, r18
    1ea2:	19 f0       	breq	.+6      	; 0x1eaa <_ZN7Arduboy9drawPixelEiih+0x42>
  {
    sBuffer[(row*WIDTH) + (uint8_t)x] |=   _BV((uint8_t)y % 8);
    1ea4:	43 2b       	or	r20, r19
  }
  else
  {
    sBuffer[(row*WIDTH) + (uint8_t)x] &= ~ _BV((uint8_t)y % 8);
    1ea6:	44 8b       	std	Z+20, r20	; 0x14
  }
}
    1ea8:	08 95       	ret
  {
    sBuffer[(row*WIDTH) + (uint8_t)x] |=   _BV((uint8_t)y % 8);
  }
  else
  {
    sBuffer[(row*WIDTH) + (uint8_t)x] &= ~ _BV((uint8_t)y % 8);
    1eaa:	40 95       	com	r20
    1eac:	43 23       	and	r20, r19
    1eae:	fb cf       	rjmp	.-10     	; 0x1ea6 <_ZN7Arduboy9drawPixelEiih+0x3e>

00001eb0 <_ZN7Arduboy5writeEh>:
{
  wrap = w;
}

size_t Arduboy::write(uint8_t c)
{
    1eb0:	2f 92       	push	r2
    1eb2:	3f 92       	push	r3
    1eb4:	4f 92       	push	r4
    1eb6:	5f 92       	push	r5
    1eb8:	6f 92       	push	r6
    1eba:	7f 92       	push	r7
    1ebc:	8f 92       	push	r8
    1ebe:	9f 92       	push	r9
    1ec0:	af 92       	push	r10
    1ec2:	bf 92       	push	r11
    1ec4:	cf 92       	push	r12
    1ec6:	df 92       	push	r13
    1ec8:	ef 92       	push	r14
    1eca:	ff 92       	push	r15
    1ecc:	0f 93       	push	r16
    1ece:	1f 93       	push	r17
    1ed0:	cf 93       	push	r28
    1ed2:	df 93       	push	r29
    1ed4:	cd b7       	in	r28, 0x3d	; 61
    1ed6:	de b7       	in	r29, 0x3e	; 62
    1ed8:	2d 97       	sbiw	r28, 0x0d	; 13
    1eda:	0f b6       	in	r0, 0x3f	; 63
    1edc:	f8 94       	cli
    1ede:	de bf       	out	0x3e, r29	; 62
    1ee0:	0f be       	out	0x3f, r0	; 63
    1ee2:	cd bf       	out	0x3d, r28	; 61
  if (c == '\n')
    1ee4:	6a 30       	cpi	r22, 0x0A	; 10
    1ee6:	69 f5       	brne	.+90     	; 0x1f42 <_ZN7Arduboy5writeEh+0x92>
  {
    cursor_y += textsize*8;
    1ee8:	fc 01       	movw	r30, r24
    1eea:	ea 5e       	subi	r30, 0xEA	; 234
    1eec:	fb 4f       	sbci	r31, 0xFB	; 251
    1eee:	dc 01       	movw	r26, r24
    1ef0:	a8 5e       	subi	r26, 0xE8	; 232
    1ef2:	bb 4f       	sbci	r27, 0xFB	; 251
    1ef4:	2c 91       	ld	r18, X
    1ef6:	48 e0       	ldi	r20, 0x08	; 8
    1ef8:	24 9f       	mul	r18, r20
    1efa:	90 01       	movw	r18, r0
    1efc:	11 24       	eor	r1, r1
    1efe:	40 81       	ld	r20, Z
    1f00:	51 81       	ldd	r21, Z+1	; 0x01
    1f02:	24 0f       	add	r18, r20
    1f04:	35 1f       	adc	r19, r21
    1f06:	31 83       	std	Z+1, r19	; 0x01
    1f08:	20 83       	st	Z, r18
    cursor_x = 0;
    1f0a:	14 97       	sbiw	r26, 0x04	; 4
    1f0c:	1d 92       	st	X+, r1
    1f0e:	1c 92       	st	X, r1
      // calling ourselves recursively for 'newline' is 
      // 12 bytes smaller than doing the same math here
      write('\n');
    }
  }
}
    1f10:	2d 96       	adiw	r28, 0x0d	; 13
    1f12:	0f b6       	in	r0, 0x3f	; 63
    1f14:	f8 94       	cli
    1f16:	de bf       	out	0x3e, r29	; 62
    1f18:	0f be       	out	0x3f, r0	; 63
    1f1a:	cd bf       	out	0x3d, r28	; 61
    1f1c:	df 91       	pop	r29
    1f1e:	cf 91       	pop	r28
    1f20:	1f 91       	pop	r17
    1f22:	0f 91       	pop	r16
    1f24:	ff 90       	pop	r15
    1f26:	ef 90       	pop	r14
    1f28:	df 90       	pop	r13
    1f2a:	cf 90       	pop	r12
    1f2c:	bf 90       	pop	r11
    1f2e:	af 90       	pop	r10
    1f30:	9f 90       	pop	r9
    1f32:	8f 90       	pop	r8
    1f34:	7f 90       	pop	r7
    1f36:	6f 90       	pop	r6
    1f38:	5f 90       	pop	r5
    1f3a:	4f 90       	pop	r4
    1f3c:	3f 90       	pop	r3
    1f3e:	2f 90       	pop	r2
    1f40:	08 95       	ret
  if (c == '\n')
  {
    cursor_y += textsize*8;
    cursor_x = 0;
  }
  else if (c == '\r')
    1f42:	6d 30       	cpi	r22, 0x0D	; 13
    1f44:	29 f3       	breq	.-54     	; 0x1f10 <_ZN7Arduboy5writeEh+0x60>
    1f46:	9d 87       	std	Y+13, r25	; 0x0d
    1f48:	8c 87       	std	Y+12, r24	; 0x0c
  {
    // skip em
  }
  else
  {
    drawChar(cursor_x, cursor_y, c, 1, 0, textsize);
    1f4a:	8c 5e       	subi	r24, 0xEC	; 236
    1f4c:	9b 4f       	sbci	r25, 0xFB	; 251
    1f4e:	9a 83       	std	Y+2, r25	; 0x02
    1f50:	89 83       	std	Y+1, r24	; 0x01
    1f52:	fc 01       	movw	r30, r24
    1f54:	80 80       	ld	r8, Z
    1f56:	91 80       	ldd	r9, Z+1	; 0x01
    1f58:	2c 85       	ldd	r18, Y+12	; 0x0c
    1f5a:	3d 85       	ldd	r19, Y+13	; 0x0d
    1f5c:	28 5e       	subi	r18, 0xE8	; 232
    1f5e:	3b 4f       	sbci	r19, 0xFB	; 251
    1f60:	3c 83       	std	Y+4, r19	; 0x04
    1f62:	2b 83       	std	Y+3, r18	; 0x03
void Arduboy::drawChar
(int16_t x, int16_t y, unsigned char c, uint8_t color, uint8_t bg, uint8_t size)
{
  boolean draw_background = bg != color;

  if ((x >= WIDTH) ||         // Clip right
    1f64:	30 e8       	ldi	r19, 0x80	; 128
    1f66:	83 16       	cp	r8, r19
    1f68:	91 04       	cpc	r9, r1
    1f6a:	0c f0       	brlt	.+2      	; 0x1f6e <_ZN7Arduboy5writeEh+0xbe>
    1f6c:	71 c0       	rjmp	.+226    	; 0x2050 <_ZN7Arduboy5writeEh+0x1a0>
  {
    // skip em
  }
  else
  {
    drawChar(cursor_x, cursor_y, c, 1, 0, textsize);
    1f6e:	ec 85       	ldd	r30, Y+12	; 0x0c
    1f70:	fd 85       	ldd	r31, Y+13	; 0x0d
    1f72:	ea 5e       	subi	r30, 0xEA	; 234
    1f74:	fb 4f       	sbci	r31, 0xFB	; 251
    1f76:	60 80       	ld	r6, Z
    1f78:	71 80       	ldd	r7, Z+1	; 0x01
void Arduboy::drawChar
(int16_t x, int16_t y, unsigned char c, uint8_t color, uint8_t bg, uint8_t size)
{
  boolean draw_background = bg != color;

  if ((x >= WIDTH) ||         // Clip right
    1f7a:	40 e4       	ldi	r20, 0x40	; 64
    1f7c:	64 16       	cp	r6, r20
    1f7e:	71 04       	cpc	r7, r1
    1f80:	0c f0       	brlt	.+2      	; 0x1f84 <_ZN7Arduboy5writeEh+0xd4>
    1f82:	66 c0       	rjmp	.+204    	; 0x2050 <_ZN7Arduboy5writeEh+0x1a0>
  {
    // skip em
  }
  else
  {
    drawChar(cursor_x, cursor_y, c, 1, 0, textsize);
    1f84:	ab 81       	ldd	r26, Y+3	; 0x03
    1f86:	bc 81       	ldd	r27, Y+4	; 0x04
    1f88:	4c 90       	ld	r4, X
{
  boolean draw_background = bg != color;

  if ((x >= WIDTH) ||         // Clip right
    (y >= HEIGHT) ||        // Clip bottom
    ((x + 5 * size - 1) < 0) ||   // Clip left
    1f8a:	45 e0       	ldi	r20, 0x05	; 5
    1f8c:	94 01       	movw	r18, r8
    1f8e:	44 9e       	mul	r4, r20
    1f90:	20 0d       	add	r18, r0
    1f92:	31 1d       	adc	r19, r1
    1f94:	11 24       	eor	r1, r1
(int16_t x, int16_t y, unsigned char c, uint8_t color, uint8_t bg, uint8_t size)
{
  boolean draw_background = bg != color;

  if ((x >= WIDTH) ||         // Clip right
    (y >= HEIGHT) ||        // Clip bottom
    1f96:	12 16       	cp	r1, r18
    1f98:	13 06       	cpc	r1, r19
    1f9a:	0c f0       	brlt	.+2      	; 0x1f9e <_ZN7Arduboy5writeEh+0xee>
    1f9c:	59 c0       	rjmp	.+178    	; 0x2050 <_ZN7Arduboy5writeEh+0x1a0>
    ((x + 5 * size - 1) < 0) ||   // Clip left
    ((y + 8 * size - 1) < 0)    // Clip top
    1f9e:	24 2c       	mov	r2, r4
    1fa0:	31 2c       	mov	r3, r1
    1fa2:	91 01       	movw	r18, r2
    1fa4:	53 e0       	ldi	r21, 0x03	; 3
    1fa6:	22 0f       	add	r18, r18
    1fa8:	33 1f       	adc	r19, r19
    1faa:	5a 95       	dec	r21
    1fac:	e1 f7       	brne	.-8      	; 0x1fa6 <_ZN7Arduboy5writeEh+0xf6>
    1fae:	26 0d       	add	r18, r6
    1fb0:	37 1d       	adc	r19, r7
{
  boolean draw_background = bg != color;

  if ((x >= WIDTH) ||         // Clip right
    (y >= HEIGHT) ||        // Clip bottom
    ((x + 5 * size - 1) < 0) ||   // Clip left
    1fb2:	12 16       	cp	r1, r18
    1fb4:	13 06       	cpc	r1, r19
    1fb6:	0c f0       	brlt	.+2      	; 0x1fba <_ZN7Arduboy5writeEh+0x10a>
    1fb8:	4b c0       	rjmp	.+150    	; 0x2050 <_ZN7Arduboy5writeEh+0x1a0>
    {
      line = 0x0;
    }
    else
    {
      line = pgm_read_byte(font+(c*5)+i);
    1fba:	64 9f       	mul	r22, r20
    1fbc:	b0 01       	movw	r22, r0
    1fbe:	11 24       	eor	r1, r1
    1fc0:	10 e0       	ldi	r17, 0x00	; 0
    1fc2:	00 e0       	ldi	r16, 0x00	; 0
    1fc4:	fb 01       	movw	r30, r22
    1fc6:	e7 51       	subi	r30, 0x17	; 23
    1fc8:	f8 4f       	sbci	r31, 0xF8	; 248
    1fca:	fb 87       	std	Y+11, r31	; 0x0b
    1fcc:	ea 87       	std	Y+10, r30	; 0x0a
  for (int8_t i=0; i<6; i++ )
  {
    uint8_t line;
    if (i == 5)
    {
      line = 0x0;
    1fce:	e0 e0       	ldi	r30, 0x00	; 0
  }

  for (int8_t i=0; i<6; i++ )
  {
    uint8_t line;
    if (i == 5)
    1fd0:	05 30       	cpi	r16, 0x05	; 5
    1fd2:	29 f0       	breq	.+10     	; 0x1fde <_ZN7Arduboy5writeEh+0x12e>
    {
      line = 0x0;
    }
    else
    {
      line = pgm_read_byte(font+(c*5)+i);
    1fd4:	ea 85       	ldd	r30, Y+10	; 0x0a
    1fd6:	fb 85       	ldd	r31, Y+11	; 0x0b
    1fd8:	e0 0f       	add	r30, r16
    1fda:	f1 1f       	adc	r31, r17
    1fdc:	e4 91       	lpm	r30, Z
    1fde:	53 01       	movw	r10, r6
  for (int8_t i=0; i<6; i++ )
  {
    uint8_t line;
    if (i == 5)
    {
      line = 0x0;
    1fe0:	98 e0       	ldi	r25, 0x08	; 8
    1fe2:	59 2e       	mov	r5, r25
      line = pgm_read_byte(font+(c*5)+i);
    }

    for (int8_t j = 0; j<8; j++)
    {
      uint8_t draw_color = (line & 0x1) ? color : bg;
    1fe4:	2e 2f       	mov	r18, r30
    1fe6:	30 e0       	ldi	r19, 0x00	; 0
    1fe8:	3e 83       	std	Y+6, r19	; 0x06
    1fea:	2d 83       	std	Y+5, r18	; 0x05
    1fec:	e1 70       	andi	r30, 0x01	; 1
    1fee:	ef 83       	std	Y+7, r30	; 0x07
    1ff0:	f1 2c       	mov	r15, r1
    1ff2:	e1 2c       	mov	r14, r1

      if (draw_color || draw_background) {
        for (uint8_t a = 0; a < size; a++ ) {
    1ff4:	e4 14       	cp	r14, r4
    1ff6:	d8 f4       	brcc	.+54     	; 0x202e <_ZN7Arduboy5writeEh+0x17e>
    1ff8:	c4 01       	movw	r24, r8
    1ffa:	8e 0d       	add	r24, r14
    1ffc:	9f 1d       	adc	r25, r15
    1ffe:	99 87       	std	Y+9, r25	; 0x09
    2000:	88 87       	std	Y+8, r24	; 0x08
    2002:	d1 2c       	mov	r13, r1
    2004:	c1 2c       	mov	r12, r1
          for (uint8_t b = 0; b < size; b++ ) {
    2006:	c4 14       	cp	r12, r4
    2008:	70 f4       	brcc	.+28     	; 0x2026 <_ZN7Arduboy5writeEh+0x176>
            drawPixel(x + (i * size) + a, y + (j * size) + b, draw_color);
    200a:	a6 01       	movw	r20, r12
    200c:	4a 0d       	add	r20, r10
    200e:	5b 1d       	adc	r21, r11
    2010:	2f 81       	ldd	r18, Y+7	; 0x07
    2012:	68 85       	ldd	r22, Y+8	; 0x08
    2014:	79 85       	ldd	r23, Y+9	; 0x09
    2016:	8c 85       	ldd	r24, Y+12	; 0x0c
    2018:	9d 85       	ldd	r25, Y+13	; 0x0d
    201a:	0e 94 34 0f 	call	0x1e68	; 0x1e68 <_ZN7Arduboy9drawPixelEiih>
    201e:	9f ef       	ldi	r25, 0xFF	; 255
    2020:	c9 1a       	sub	r12, r25
    2022:	d9 0a       	sbc	r13, r25
    2024:	f0 cf       	rjmp	.-32     	; 0x2006 <_ZN7Arduboy5writeEh+0x156>
    2026:	af ef       	ldi	r26, 0xFF	; 255
    2028:	ea 1a       	sub	r14, r26
    202a:	fa 0a       	sbc	r15, r26
    202c:	e3 cf       	rjmp	.-58     	; 0x1ff4 <_ZN7Arduboy5writeEh+0x144>
          }
        }
      }
      line >>= 1;
    202e:	ed 81       	ldd	r30, Y+5	; 0x05
    2030:	fe 81       	ldd	r31, Y+6	; 0x06
    2032:	f5 95       	asr	r31
    2034:	e7 95       	ror	r30
    2036:	5a 94       	dec	r5
    2038:	a2 0c       	add	r10, r2
    203a:	b3 1c       	adc	r11, r3
    else
    {
      line = pgm_read_byte(font+(c*5)+i);
    }

    for (int8_t j = 0; j<8; j++)
    203c:	51 10       	cpse	r5, r1
    203e:	d2 cf       	rjmp	.-92     	; 0x1fe4 <_ZN7Arduboy5writeEh+0x134>
    2040:	0f 5f       	subi	r16, 0xFF	; 255
    2042:	1f 4f       	sbci	r17, 0xFF	; 255
    2044:	82 0c       	add	r8, r2
    2046:	93 1c       	adc	r9, r3
  )
  {
    return;
  }

  for (int8_t i=0; i<6; i++ )
    2048:	06 30       	cpi	r16, 0x06	; 6
    204a:	11 05       	cpc	r17, r1
    204c:	09 f0       	breq	.+2      	; 0x2050 <_ZN7Arduboy5writeEh+0x1a0>
    204e:	bf cf       	rjmp	.-130    	; 0x1fce <_ZN7Arduboy5writeEh+0x11e>
    // skip em
  }
  else
  {
    drawChar(cursor_x, cursor_y, c, 1, 0, textsize);
    cursor_x += textsize*6;
    2050:	eb 81       	ldd	r30, Y+3	; 0x03
    2052:	fc 81       	ldd	r31, Y+4	; 0x04
    2054:	20 81       	ld	r18, Z
    2056:	42 2f       	mov	r20, r18
    2058:	50 e0       	ldi	r21, 0x00	; 0
    205a:	a9 81       	ldd	r26, Y+1	; 0x01
    205c:	ba 81       	ldd	r27, Y+2	; 0x02
    205e:	8d 91       	ld	r24, X+
    2060:	9c 91       	ld	r25, X
    2062:	b6 e0       	ldi	r27, 0x06	; 6
    2064:	2b 9f       	mul	r18, r27
    2066:	80 0d       	add	r24, r0
    2068:	91 1d       	adc	r25, r1
    206a:	11 24       	eor	r1, r1
    206c:	e9 81       	ldd	r30, Y+1	; 0x01
    206e:	fa 81       	ldd	r31, Y+2	; 0x02
    2070:	91 83       	std	Z+1, r25	; 0x01
    2072:	80 83       	st	Z, r24
    if (wrap && (cursor_x > (WIDTH - textsize*6)))
    2074:	ec 85       	ldd	r30, Y+12	; 0x0c
    2076:	fd 85       	ldd	r31, Y+13	; 0x0d
    2078:	e7 5e       	subi	r30, 0xE7	; 231
    207a:	fb 4f       	sbci	r31, 0xFB	; 251
    207c:	20 81       	ld	r18, Z
    207e:	22 23       	and	r18, r18
    2080:	09 f4       	brne	.+2      	; 0x2084 <_ZN7Arduboy5writeEh+0x1d4>
    2082:	46 cf       	rjmp	.-372    	; 0x1f10 <_ZN7Arduboy5writeEh+0x60>
    2084:	6a ef       	ldi	r22, 0xFA	; 250
    2086:	64 03       	mulsu	r22, r20
    2088:	90 01       	movw	r18, r0
    208a:	65 9f       	mul	r22, r21
    208c:	30 0d       	add	r19, r0
    208e:	11 24       	eor	r1, r1
    2090:	20 58       	subi	r18, 0x80	; 128
    2092:	3f 4f       	sbci	r19, 0xFF	; 255
    2094:	28 17       	cp	r18, r24
    2096:	39 07       	cpc	r19, r25
    2098:	0c f0       	brlt	.+2      	; 0x209c <_ZN7Arduboy5writeEh+0x1ec>
    209a:	3a cf       	rjmp	.-396    	; 0x1f10 <_ZN7Arduboy5writeEh+0x60>
    {
      // calling ourselves recursively for 'newline' is 
      // 12 bytes smaller than doing the same math here
      write('\n');
    209c:	ac 85       	ldd	r26, Y+12	; 0x0c
    209e:	bd 85       	ldd	r27, Y+13	; 0x0d
    20a0:	ed 91       	ld	r30, X+
    20a2:	fc 91       	ld	r31, X
    20a4:	11 97       	sbiw	r26, 0x01	; 1
    20a6:	01 90       	ld	r0, Z+
    20a8:	f0 81       	ld	r31, Z
    20aa:	e0 2d       	mov	r30, r0
    20ac:	6a e0       	ldi	r22, 0x0A	; 10
    20ae:	cd 01       	movw	r24, r26
    }
  }
}
    20b0:	2d 96       	adiw	r28, 0x0d	; 13
    20b2:	0f b6       	in	r0, 0x3f	; 63
    20b4:	f8 94       	cli
    20b6:	de bf       	out	0x3e, r29	; 62
    20b8:	0f be       	out	0x3f, r0	; 63
    20ba:	cd bf       	out	0x3d, r28	; 61
    20bc:	df 91       	pop	r29
    20be:	cf 91       	pop	r28
    20c0:	1f 91       	pop	r17
    20c2:	0f 91       	pop	r16
    20c4:	ff 90       	pop	r15
    20c6:	ef 90       	pop	r14
    20c8:	df 90       	pop	r13
    20ca:	cf 90       	pop	r12
    20cc:	bf 90       	pop	r11
    20ce:	af 90       	pop	r10
    20d0:	9f 90       	pop	r9
    20d2:	8f 90       	pop	r8
    20d4:	7f 90       	pop	r7
    20d6:	6f 90       	pop	r6
    20d8:	5f 90       	pop	r5
    20da:	4f 90       	pop	r4
    20dc:	3f 90       	pop	r3
    20de:	2f 90       	pop	r2
    cursor_x += textsize*6;
    if (wrap && (cursor_x > (WIDTH - textsize*6)))
    {
      // calling ourselves recursively for 'newline' is 
      // 12 bytes smaller than doing the same math here
      write('\n');
    20e0:	09 94       	ijmp

000020e2 <_ZN7Arduboy13drawFastVLineEiihh>:
  drawFastVLine(x+w-1, y, h, color);
}

void Arduboy::drawFastVLine
(int16_t x, int16_t y, uint8_t h, uint8_t color)
{
    20e2:	af 92       	push	r10
    20e4:	bf 92       	push	r11
    20e6:	cf 92       	push	r12
    20e8:	df 92       	push	r13
    20ea:	ef 92       	push	r14
    20ec:	ff 92       	push	r15
    20ee:	0f 93       	push	r16
    20f0:	cf 93       	push	r28
    20f2:	df 93       	push	r29
    20f4:	6c 01       	movw	r12, r24
    20f6:	5b 01       	movw	r10, r22
  int end = y+h;
    20f8:	7a 01       	movw	r14, r20
    20fa:	e2 0e       	add	r14, r18
    20fc:	f1 1c       	adc	r15, r1
  for (int a = max(0,y); a < min(end,HEIGHT); a++)
    20fe:	ea 01       	movw	r28, r20
    2100:	57 ff       	sbrs	r21, 7
    2102:	02 c0       	rjmp	.+4      	; 0x2108 <_ZN7Arduboy13drawFastVLineEiihh+0x26>
    2104:	d0 e0       	ldi	r29, 0x00	; 0
    2106:	c0 e0       	ldi	r28, 0x00	; 0
    2108:	c7 01       	movw	r24, r14
    210a:	21 e4       	ldi	r18, 0x41	; 65
    210c:	e2 16       	cp	r14, r18
    210e:	f1 04       	cpc	r15, r1
    2110:	14 f0       	brlt	.+4      	; 0x2116 <_ZN7Arduboy13drawFastVLineEiihh+0x34>
    2112:	80 e4       	ldi	r24, 0x40	; 64
    2114:	90 e0       	ldi	r25, 0x00	; 0
    2116:	c8 17       	cp	r28, r24
    2118:	d9 07       	cpc	r29, r25
    211a:	44 f4       	brge	.+16     	; 0x212c <_ZN7Arduboy13drawFastVLineEiihh+0x4a>
  {
    drawPixel(x,a,color);
    211c:	20 2f       	mov	r18, r16
    211e:	ae 01       	movw	r20, r28
    2120:	b5 01       	movw	r22, r10
    2122:	c6 01       	movw	r24, r12
    2124:	0e 94 34 0f 	call	0x1e68	; 0x1e68 <_ZN7Arduboy9drawPixelEiih>

void Arduboy::drawFastVLine
(int16_t x, int16_t y, uint8_t h, uint8_t color)
{
  int end = y+h;
  for (int a = max(0,y); a < min(end,HEIGHT); a++)
    2128:	21 96       	adiw	r28, 0x01	; 1
    212a:	ee cf       	rjmp	.-36     	; 0x2108 <_ZN7Arduboy13drawFastVLineEiihh+0x26>
  {
    drawPixel(x,a,color);
  }
}
    212c:	df 91       	pop	r29
    212e:	cf 91       	pop	r28
    2130:	0f 91       	pop	r16
    2132:	ff 90       	pop	r15
    2134:	ef 90       	pop	r14
    2136:	df 90       	pop	r13
    2138:	cf 90       	pop	r12
    213a:	bf 90       	pop	r11
    213c:	af 90       	pop	r10
    213e:	08 95       	ret

00002140 <_ZN7Arduboy8drawRectEiihhh.constprop.13>:
      err += dx;
    }
  }
}

void Arduboy::drawRect
    2140:	7f 92       	push	r7
    2142:	8f 92       	push	r8
    2144:	9f 92       	push	r9
    2146:	af 92       	push	r10
    2148:	bf 92       	push	r11
    214a:	cf 92       	push	r12
    214c:	df 92       	push	r13
    214e:	ef 92       	push	r14
    2150:	ff 92       	push	r15
    2152:	0f 93       	push	r16
    2154:	1f 93       	push	r17
    2156:	cf 93       	push	r28
    2158:	df 93       	push	r29
    215a:	6c 01       	movw	r12, r24
    215c:	7b 01       	movw	r14, r22
    215e:	72 2e       	mov	r7, r18
}

void Arduboy::drawFastHLine
(int16_t x, int16_t y, uint8_t w, uint8_t color)
{
  int end = x+w;
    2160:	8c 01       	movw	r16, r24
    2162:	04 0f       	add	r16, r20
    2164:	11 1d       	adc	r17, r1
  for (int a = max(0,x); a < min(end,WIDTH); a++)
    2166:	ec 01       	movw	r28, r24
  {
    drawPixel(a,y,color);
    2168:	21 e0       	ldi	r18, 0x01	; 1
    216a:	a7 01       	movw	r20, r14
    216c:	be 01       	movw	r22, r28
    216e:	8a e0       	ldi	r24, 0x0A	; 10
    2170:	93 e0       	ldi	r25, 0x03	; 3
    2172:	0e 94 34 0f 	call	0x1e68	; 0x1e68 <_ZN7Arduboy9drawPixelEiih>

void Arduboy::drawFastHLine
(int16_t x, int16_t y, uint8_t w, uint8_t color)
{
  int end = x+w;
  for (int a = max(0,x); a < min(end,WIDTH); a++)
    2176:	5e 01       	movw	r10, r28
    2178:	8f ef       	ldi	r24, 0xFF	; 255
    217a:	a8 1a       	sub	r10, r24
    217c:	b8 0a       	sbc	r11, r24
    217e:	0a 15       	cp	r16, r10
    2180:	1b 05       	cpc	r17, r11
    2182:	81 f5       	brne	.+96     	; 0x21e4 <_ZN7Arduboy8drawRectEiihhh.constprop.13+0xa4>

void Arduboy::drawRect
(int16_t x, int16_t y, uint8_t w, uint8_t h, uint8_t color)
{
  drawFastHLine(x, y, w, color);
  drawFastHLine(x, y+h-1, w, color);
    2184:	47 01       	movw	r8, r14
    2186:	87 0c       	add	r8, r7
    2188:	91 1c       	adc	r9, r1
    218a:	81 e0       	ldi	r24, 0x01	; 1
    218c:	88 1a       	sub	r8, r24
    218e:	91 08       	sbc	r9, r1

void Arduboy::drawFastHLine
(int16_t x, int16_t y, uint8_t w, uint8_t color)
{
  int end = x+w;
  for (int a = max(0,x); a < min(end,WIDTH); a++)
    2190:	86 01       	movw	r16, r12
  {
    drawPixel(a,y,color);
    2192:	21 e0       	ldi	r18, 0x01	; 1
    2194:	a4 01       	movw	r20, r8
    2196:	b8 01       	movw	r22, r16
    2198:	8a e0       	ldi	r24, 0x0A	; 10
    219a:	93 e0       	ldi	r25, 0x03	; 3
    219c:	0e 94 34 0f 	call	0x1e68	; 0x1e68 <_ZN7Arduboy9drawPixelEiih>

void Arduboy::drawFastHLine
(int16_t x, int16_t y, uint8_t w, uint8_t color)
{
  int end = x+w;
  for (int a = max(0,x); a < min(end,WIDTH); a++)
    21a0:	0f 5f       	subi	r16, 0xFF	; 255
    21a2:	1f 4f       	sbci	r17, 0xFF	; 255
    21a4:	0a 15       	cp	r16, r10
    21a6:	1b 05       	cpc	r17, r11
    21a8:	a4 f3       	brlt	.-24     	; 0x2192 <_ZN7Arduboy8drawRectEiihhh.constprop.13+0x52>
void Arduboy::drawRect
(int16_t x, int16_t y, uint8_t w, uint8_t h, uint8_t color)
{
  drawFastHLine(x, y, w, color);
  drawFastHLine(x, y+h-1, w, color);
  drawFastVLine(x, y, h, color);
    21aa:	01 e0       	ldi	r16, 0x01	; 1
    21ac:	27 2d       	mov	r18, r7
    21ae:	a7 01       	movw	r20, r14
    21b0:	b6 01       	movw	r22, r12
    21b2:	8a e0       	ldi	r24, 0x0A	; 10
    21b4:	93 e0       	ldi	r25, 0x03	; 3
    21b6:	0e 94 71 10 	call	0x20e2	; 0x20e2 <_ZN7Arduboy13drawFastVLineEiihh>
  drawFastVLine(x+w-1, y, h, color);
    21ba:	27 2d       	mov	r18, r7
    21bc:	a7 01       	movw	r20, r14
    21be:	be 01       	movw	r22, r28
    21c0:	8a e0       	ldi	r24, 0x0A	; 10
    21c2:	93 e0       	ldi	r25, 0x03	; 3
    21c4:	0e 94 71 10 	call	0x20e2	; 0x20e2 <_ZN7Arduboy13drawFastVLineEiihh>
}
    21c8:	df 91       	pop	r29
    21ca:	cf 91       	pop	r28
    21cc:	1f 91       	pop	r17
    21ce:	0f 91       	pop	r16
    21d0:	ff 90       	pop	r15
    21d2:	ef 90       	pop	r14
    21d4:	df 90       	pop	r13
    21d6:	cf 90       	pop	r12
    21d8:	bf 90       	pop	r11
    21da:	af 90       	pop	r10
    21dc:	9f 90       	pop	r9
    21de:	8f 90       	pop	r8
    21e0:	7f 90       	pop	r7
    21e2:	08 95       	ret

void Arduboy::drawFastHLine
(int16_t x, int16_t y, uint8_t w, uint8_t color)
{
  int end = x+w;
  for (int a = max(0,x); a < min(end,WIDTH); a++)
    21e4:	e5 01       	movw	r28, r10
    21e6:	c0 cf       	rjmp	.-128    	; 0x2168 <_ZN7Arduboy8drawRectEiihhh.constprop.13+0x28>

000021e8 <_ZL7onStartv>:
    21e8:	80 91 72 02 	lds	r24, 0x0272	; 0x800272 <_ZL11menuItemPos>
    21ec:	80 93 75 02 	sts	0x0275, r24	; 0x800275 <_ZL10lastChoice>
    21f0:	83 30       	cpi	r24, 0x03	; 3
    21f2:	61 f4       	brne	.+24     	; 0x220c <_ZL7onStartv+0x24>
    21f4:	90 91 74 02 	lds	r25, 0x0274	; 0x800274 <_ZL9maxChoice>
    21f8:	94 30       	cpi	r25, 0x04	; 4
    21fa:	29 f4       	brne	.+10     	; 0x2206 <_ZL7onStartv+0x1e>
    21fc:	90 91 27 07 	lds	r25, 0x0727	; 0x800727 <arduboy+0x41d>
    2200:	90 79       	andi	r25, 0x90	; 144
    2202:	09 f0       	breq	.+2      	; 0x2206 <_ZL7onStartv+0x1e>
    2204:	84 e0       	ldi	r24, 0x04	; 4
    2206:	81 50       	subi	r24, 0x01	; 1
    2208:	9e e1       	ldi	r25, 0x1E	; 30
    220a:	03 c0       	rjmp	.+6      	; 0x2212 <_ZL7onStartv+0x2a>
    220c:	9a e0       	ldi	r25, 0x0A	; 10
    220e:	82 30       	cpi	r24, 0x02	; 2
    2210:	d4 f7       	brge	.-12     	; 0x2206 <_ZL7onStartv+0x1e>
    2212:	89 9f       	mul	r24, r25
    2214:	80 2d       	mov	r24, r0
    2216:	11 24       	eor	r1, r1
    2218:	80 93 73 02 	sts	0x0273, r24	; 0x800273 <startLevel>
    221c:	84 e0       	ldi	r24, 0x04	; 4
    221e:	90 e0       	ldi	r25, 0x00	; 0
    2220:	90 93 78 02 	sts	0x0278, r25	; 0x800278 <_ZL5state.lto_priv.68+0x1>
    2224:	80 93 77 02 	sts	0x0277, r24	; 0x800277 <_ZL5state.lto_priv.68>
    2228:	81 e0       	ldi	r24, 0x01	; 1
    222a:	80 93 76 02 	sts	0x0276, r24	; 0x800276 <isInvalid>
    222e:	08 95       	ret

00002230 <_Z11addMenuItemPK19__FlashStringHelperPFvvE>:
    2230:	9c 01       	movw	r18, r24
    2232:	90 91 4c 02 	lds	r25, 0x024C	; 0x80024c <_ZL13menuItemCount>
    2236:	97 30       	cpi	r25, 0x07	; 7
    2238:	6c f4       	brge	.+26     	; 0x2254 <_Z11addMenuItemPK19__FlashStringHelperPFvvE+0x24>
    223a:	84 e0       	ldi	r24, 0x04	; 4
    223c:	98 02       	muls	r25, r24
    223e:	f0 01       	movw	r30, r0
    2240:	11 24       	eor	r1, r1
    2242:	e5 5d       	subi	r30, 0xD5	; 213
    2244:	fd 4f       	sbci	r31, 0xFD	; 253
    2246:	33 83       	std	Z+3, r19	; 0x03
    2248:	22 83       	std	Z+2, r18	; 0x02
    224a:	71 83       	std	Z+1, r23	; 0x01
    224c:	60 83       	st	Z, r22
    224e:	9f 5f       	subi	r25, 0xFF	; 255
    2250:	90 93 4c 02 	sts	0x024C, r25	; 0x80024c <_ZL13menuItemCount>
    2254:	08 95       	ret

00002256 <_Z10updateLogov>:
    2256:	cf 93       	push	r28
    2258:	c0 91 2a 02 	lds	r28, 0x022A	; 0x80022a <_ZL7counter>
    225c:	c1 50       	subi	r28, 0x01	; 1
    225e:	c0 93 2a 02 	sts	0x022A, r28	; 0x80022a <_ZL7counter>
    2262:	2c 2f       	mov	r18, r28
    2264:	2f 50       	subi	r18, 0x0F	; 15
    2266:	33 0b       	sbc	r19, r19
    2268:	c9 01       	movw	r24, r18
    226a:	63 e0       	ldi	r22, 0x03	; 3
    226c:	70 e0       	ldi	r23, 0x00	; 0
    226e:	0e 94 99 2f 	call	0x5f32	; 0x5f32 <__divmodhi4>
    2272:	86 2f       	mov	r24, r22
    2274:	4a e3       	ldi	r20, 0x3A	; 58
    2276:	5a ea       	ldi	r21, 0xAA	; 170
    2278:	63 ee       	ldi	r22, 0xE3	; 227
    227a:	7e ee       	ldi	r23, 0xEE	; 238
    227c:	04 c0       	rjmp	.+8      	; 0x2286 <_Z10updateLogov+0x30>
    227e:	76 95       	lsr	r23
    2280:	67 95       	ror	r22
    2282:	57 95       	ror	r21
    2284:	47 95       	ror	r20
    2286:	8a 95       	dec	r24
    2288:	d2 f7       	brpl	.-12     	; 0x227e <_Z10updateLogov+0x28>
    228a:	41 70       	andi	r20, 0x01	; 1
    228c:	40 93 29 02 	sts	0x0229, r20	; 0x800229 <_ZL8signalOn>
    2290:	8f e7       	ldi	r24, 0x7F	; 127
    2292:	48 9f       	mul	r20, r24
    2294:	40 2d       	mov	r20, r0
    2296:	11 24       	eor	r1, r1
    2298:	60 e0       	ldi	r22, 0x00	; 0
    229a:	80 e0       	ldi	r24, 0x00	; 0
    229c:	0e 94 b0 0c 	call	0x1960	; 0x1960 <_ZN11ArduboyCore9setRGBledEhhh.constprop.59>
    22a0:	81 e0       	ldi	r24, 0x01	; 1
    22a2:	90 e0       	ldi	r25, 0x00	; 0
    22a4:	cc 23       	and	r28, r28
    22a6:	11 f0       	breq	.+4      	; 0x22ac <_Z10updateLogov+0x56>
    22a8:	90 e0       	ldi	r25, 0x00	; 0
    22aa:	80 e0       	ldi	r24, 0x00	; 0
    22ac:	cf 91       	pop	r28
    22ae:	08 95       	ret

000022b0 <_Z8initLogov>:
    22b0:	88 e7       	ldi	r24, 0x78	; 120
    22b2:	80 93 2a 02 	sts	0x022A, r24	; 0x80022a <_ZL7counter>
    22b6:	08 95       	ret

000022b8 <_ZL17decayDyingEnemiesv>:
    22b8:	80 91 60 01 	lds	r24, 0x0160	; 0x800160 <_ZL12dyingEnemies+0x3>
    22bc:	90 91 5f 01 	lds	r25, 0x015F	; 0x80015f <_ZL12dyingEnemies+0x2>
    22c0:	90 93 5d 01 	sts	0x015D, r25	; 0x80015d <_ZL12dyingEnemies>
    22c4:	80 93 5e 01 	sts	0x015E, r24	; 0x80015e <_ZL12dyingEnemies+0x1>
    22c8:	20 91 61 01 	lds	r18, 0x0161	; 0x800161 <_ZL12dyingEnemies+0x4>
    22cc:	90 91 62 01 	lds	r25, 0x0162	; 0x800162 <_ZL12dyingEnemies+0x5>
    22d0:	87 ff       	sbrs	r24, 7
    22d2:	1c c0       	rjmp	.+56     	; 0x230c <_ZL17decayDyingEnemiesv+0x54>
    22d4:	89 2f       	mov	r24, r25
    22d6:	80 95       	com	r24
    22d8:	88 1f       	adc	r24, r24
    22da:	88 27       	eor	r24, r24
    22dc:	88 1f       	adc	r24, r24
    22de:	20 93 5f 01 	sts	0x015F, r18	; 0x80015f <_ZL12dyingEnemies+0x2>
    22e2:	90 93 60 01 	sts	0x0160, r25	; 0x800160 <_ZL12dyingEnemies+0x3>
    22e6:	20 91 63 01 	lds	r18, 0x0163	; 0x800163 <_ZL12dyingEnemies+0x6>
    22ea:	90 91 64 01 	lds	r25, 0x0164	; 0x800164 <_ZL12dyingEnemies+0x7>
    22ee:	81 11       	cpse	r24, r1
    22f0:	05 c0       	rjmp	.+10     	; 0x22fc <_ZL17decayDyingEnemiesv+0x44>
    22f2:	89 2f       	mov	r24, r25
    22f4:	80 95       	com	r24
    22f6:	88 1f       	adc	r24, r24
    22f8:	88 27       	eor	r24, r24
    22fa:	88 1f       	adc	r24, r24
    22fc:	20 93 61 01 	sts	0x0161, r18	; 0x800161 <_ZL12dyingEnemies+0x4>
    2300:	90 93 62 01 	sts	0x0162, r25	; 0x800162 <_ZL12dyingEnemies+0x5>
    2304:	9f ef       	ldi	r25, 0xFF	; 255
    2306:	90 93 64 01 	sts	0x0164, r25	; 0x800164 <_ZL12dyingEnemies+0x7>
    230a:	08 95       	ret
    230c:	81 e0       	ldi	r24, 0x01	; 1
    230e:	e7 cf       	rjmp	.-50     	; 0x22de <_ZL17decayDyingEnemiesv+0x26>

00002310 <_ZL10isMoveableaah>:
    2310:	0f 93       	push	r16
    2312:	1f 93       	push	r17
    2314:	cf 93       	push	r28
    2316:	df 93       	push	r29
    2318:	30 e0       	ldi	r19, 0x00	; 0
    231a:	20 e0       	ldi	r18, 0x00	; 0
    231c:	c4 2f       	mov	r28, r20
    231e:	d0 e0       	ldi	r29, 0x00	; 0
    2320:	8e 01       	movw	r16, r28
    2322:	0f 5f       	subi	r16, 0xFF	; 255
    2324:	1f 4f       	sbci	r17, 0xFF	; 255
    2326:	76 e0       	ldi	r23, 0x06	; 6
    2328:	f9 01       	movw	r30, r18
    232a:	ec 0f       	add	r30, r28
    232c:	fd 1f       	adc	r31, r29
    232e:	e6 95       	lsr	r30
    2330:	e1 70       	andi	r30, 0x01	; 1
    2332:	e8 0f       	add	r30, r24
    2334:	d8 01       	movw	r26, r16
    2336:	a2 0f       	add	r26, r18
    2338:	b3 1f       	adc	r27, r19
    233a:	a6 95       	lsr	r26
    233c:	a1 70       	andi	r26, 0x01	; 1
    233e:	56 2f       	mov	r21, r22
    2340:	5a 1b       	sub	r21, r26
    2342:	e6 30       	cpi	r30, 0x06	; 6
    2344:	e0 f4       	brcc	.+56     	; 0x237e <_ZL10isMoveableaah+0x6e>
    2346:	57 fd       	sbrc	r21, 7
    2348:	1a c0       	rjmp	.+52     	; 0x237e <_ZL10isMoveableaah+0x6e>
    234a:	5e 30       	cpi	r21, 0x0E	; 14
    234c:	7c f4       	brge	.+30     	; 0x236c <_ZL10isMoveableaah+0x5c>
    234e:	57 03       	mulsu	r21, r23
    2350:	d0 01       	movw	r26, r0
    2352:	11 24       	eor	r1, r1
    2354:	ea 0f       	add	r30, r26
    2356:	fb 2f       	mov	r31, r27
    2358:	f1 1d       	adc	r31, r1
    235a:	ee 0f       	add	r30, r30
    235c:	ff 1f       	adc	r31, r31
    235e:	e3 58       	subi	r30, 0x83	; 131
    2360:	fe 4f       	sbci	r31, 0xFE	; 254
    2362:	01 90       	ld	r0, Z+
    2364:	f0 81       	ld	r31, Z
    2366:	e0 2d       	mov	r30, r0
    2368:	ef 2b       	or	r30, r31
    236a:	49 f4       	brne	.+18     	; 0x237e <_ZL10isMoveableaah+0x6e>
    236c:	45 30       	cpi	r20, 0x05	; 5
    236e:	29 f0       	breq	.+10     	; 0x237a <_ZL10isMoveableaah+0x6a>
    2370:	2f 5f       	subi	r18, 0xFF	; 255
    2372:	3f 4f       	sbci	r19, 0xFF	; 255
    2374:	23 30       	cpi	r18, 0x03	; 3
    2376:	31 05       	cpc	r19, r1
    2378:	b9 f6       	brne	.-82     	; 0x2328 <_ZL10isMoveableaah+0x18>
    237a:	81 e0       	ldi	r24, 0x01	; 1
    237c:	01 c0       	rjmp	.+2      	; 0x2380 <_ZL10isMoveableaah+0x70>
    237e:	80 e0       	ldi	r24, 0x00	; 0
    2380:	df 91       	pop	r29
    2382:	cf 91       	pop	r28
    2384:	1f 91       	pop	r17
    2386:	0f 91       	pop	r16
    2388:	08 95       	ret

0000238a <_ZL15forwardGameStarv>:
    238a:	2f 92       	push	r2
    238c:	3f 92       	push	r3
    238e:	4f 92       	push	r4
    2390:	5f 92       	push	r5
    2392:	6f 92       	push	r6
    2394:	7f 92       	push	r7
    2396:	8f 92       	push	r8
    2398:	9f 92       	push	r9
    239a:	af 92       	push	r10
    239c:	bf 92       	push	r11
    239e:	cf 92       	push	r12
    23a0:	df 92       	push	r13
    23a2:	ef 92       	push	r14
    23a4:	ff 92       	push	r15
    23a6:	0f 93       	push	r16
    23a8:	1f 93       	push	r17
    23aa:	cf 93       	push	r28
    23ac:	df 93       	push	r29
    23ae:	80 91 25 02 	lds	r24, 0x0225	; 0x800225 <_ZL5ballG>
    23b2:	88 5f       	subi	r24, 0xF8	; 248
    23b4:	80 93 25 02 	sts	0x0225, r24	; 0x800225 <_ZL5ballG>
    23b8:	06 e0       	ldi	r16, 0x06	; 6
    23ba:	58 e2       	ldi	r21, 0x28	; 40
    23bc:	65 2e       	mov	r6, r21
    23be:	71 2c       	mov	r7, r1
    23c0:	80 91 25 02 	lds	r24, 0x0225	; 0x800225 <_ZL5ballG>
    23c4:	80 34       	cpi	r24, 0x40	; 64
    23c6:	0c f4       	brge	.+2      	; 0x23ca <_ZL15forwardGameStarv+0x40>
    23c8:	f1 c0       	rjmp	.+482    	; 0x25ac <_ZL15forwardGameStarv+0x222>
    23ca:	20 91 4c 01 	lds	r18, 0x014C	; 0x80014c <_ZL8gameMode>
    23ce:	30 91 4d 01 	lds	r19, 0x014D	; 0x80014d <_ZL8gameMode+0x1>
    23d2:	25 30       	cpi	r18, 0x05	; 5
    23d4:	31 05       	cpc	r19, r1
    23d6:	09 f0       	breq	.+2      	; 0x23da <_ZL15forwardGameStarv+0x50>
    23d8:	e9 c0       	rjmp	.+466    	; 0x25ac <_ZL15forwardGameStarv+0x222>
    23da:	80 54       	subi	r24, 0x40	; 64
    23dc:	80 93 25 02 	sts	0x0225, r24	; 0x800225 <_ZL5ballG>
    23e0:	10 91 28 02 	lds	r17, 0x0228	; 0x800228 <_ZL5ballY>
    23e4:	c0 91 26 02 	lds	r28, 0x0226	; 0x800226 <_ZL5ballV>
    23e8:	d1 2f       	mov	r29, r17
    23ea:	dc 1b       	sub	r29, r28
    23ec:	1d 13       	cpse	r17, r29
    23ee:	36 c0       	rjmp	.+108    	; 0x245c <_ZL15forwardGameStarv+0xd2>
    23f0:	80 91 27 07 	lds	r24, 0x0727	; 0x800727 <arduboy+0x41d>
    23f4:	84 72       	andi	r24, 0x24	; 36
    23f6:	62 e0       	ldi	r22, 0x02	; 2
    23f8:	59 f1       	breq	.+86     	; 0x2450 <_ZL15forwardGameStarv+0xc6>
    23fa:	85 e6       	ldi	r24, 0x65	; 101
    23fc:	93 e0       	ldi	r25, 0x03	; 3
    23fe:	0e 94 02 0f 	call	0x1e04	; 0x1e04 <_ZN10MyArduboyV10playScore2EPKhh.constprop.39>
    2402:	81 e0       	ldi	r24, 0x01	; 1
    2404:	d1 11       	cpse	r29, r1
    2406:	91 c0       	rjmp	.+290    	; 0x252a <_ZL15forwardGameStarv+0x1a0>
    2408:	80 91 27 02 	lds	r24, 0x0227	; 0x800227 <_ZL5ballX>
    240c:	10 03       	mulsu	r17, r16
    240e:	f0 01       	movw	r30, r0
    2410:	11 24       	eor	r1, r1
    2412:	e8 0f       	add	r30, r24
    2414:	f1 1d       	adc	r31, r1
    2416:	87 fd       	sbrc	r24, 7
    2418:	fa 95       	dec	r31
    241a:	ee 0f       	add	r30, r30
    241c:	ff 1f       	adc	r31, r31
    241e:	e3 58       	subi	r30, 0x83	; 131
    2420:	fe 4f       	sbci	r31, 0xFE	; 254
    2422:	11 82       	std	Z+1, r1	; 0x01
    2424:	10 82       	st	Z, r1
    2426:	80 91 4a 01 	lds	r24, 0x014A	; 0x80014a <_ZL13killedEnemies>
    242a:	88 23       	and	r24, r24
    242c:	09 f4       	brne	.+2      	; 0x2430 <_ZL15forwardGameStarv+0xa6>
    242e:	86 c0       	rjmp	.+268    	; 0x253c <_ZL15forwardGameStarv+0x1b2>
    2430:	d0 93 71 01 	sts	0x0171, r29	; 0x800171 <_ZL14obtainedScoreY>
    2434:	82 e0       	ldi	r24, 0x02	; 2
    2436:	90 e0       	ldi	r25, 0x00	; 0
    2438:	90 93 4d 01 	sts	0x014D, r25	; 0x80014d <_ZL8gameMode+0x1>
    243c:	80 93 4c 01 	sts	0x014C, r24	; 0x80014c <_ZL8gameMode>
    2440:	70 92 77 01 	sts	0x0177, r7	; 0x800177 <_ZL11gameCounter+0x1>
    2444:	60 92 76 01 	sts	0x0176, r6	; 0x800176 <_ZL11gameCounter>
    2448:	91 e0       	ldi	r25, 0x01	; 1
    244a:	90 93 76 02 	sts	0x0276, r25	; 0x800276 <isInvalid>
    244e:	b8 cf       	rjmp	.-144    	; 0x23c0 <_ZL15forwardGameStarv+0x36>
    2450:	83 e4       	ldi	r24, 0x43	; 67
    2452:	93 e0       	ldi	r25, 0x03	; 3
    2454:	0e 94 02 0f 	call	0x1e04	; 0x1e04 <_ZN10MyArduboyV10playScore2EPKhh.constprop.39>
    2458:	80 e0       	ldi	r24, 0x00	; 0
    245a:	d4 cf       	rjmp	.-88     	; 0x2404 <_ZL15forwardGameStarv+0x7a>
    245c:	90 91 4b 01 	lds	r25, 0x014B	; 0x80014b <_ZL12enemiesCount>
    2460:	80 91 4a 01 	lds	r24, 0x014A	; 0x80014a <_ZL13killedEnemies>
    2464:	a0 91 58 01 	lds	r26, 0x0158	; 0x800158 <_ZL9starGuage>
    2468:	b0 91 59 01 	lds	r27, 0x0159	; 0x800159 <_ZL9starGuage+0x1>
    246c:	20 90 49 01 	lds	r2, 0x0149	; 0x800149 <_ZL9scoreCoef>
    2470:	31 2c       	mov	r3, r1
    2472:	80 90 45 01 	lds	r8, 0x0145	; 0x800145 <_ZL5score>
    2476:	90 90 46 01 	lds	r9, 0x0146	; 0x800146 <_ZL5score+0x1>
    247a:	a0 90 47 01 	lds	r10, 0x0147	; 0x800147 <_ZL5score+0x2>
    247e:	b0 90 48 01 	lds	r11, 0x0148	; 0x800148 <_ZL5score+0x3>
    2482:	c0 90 72 01 	lds	r12, 0x0172	; 0x800172 <_ZL13obtainedScore>
    2486:	d0 90 73 01 	lds	r13, 0x0173	; 0x800173 <_ZL13obtainedScore+0x1>
    248a:	e0 90 74 01 	lds	r14, 0x0174	; 0x800174 <_ZL13obtainedScore+0x2>
    248e:	f0 90 75 01 	lds	r15, 0x0175	; 0x800175 <_ZL13obtainedScore+0x3>
    2492:	2c e0       	ldi	r18, 0x0C	; 12
    2494:	d2 02       	muls	r29, r18
    2496:	20 01       	movw	r4, r0
    2498:	11 24       	eor	r1, r1
    249a:	30 e0       	ldi	r19, 0x00	; 0
    249c:	20 e0       	ldi	r18, 0x00	; 0
    249e:	f9 01       	movw	r30, r18
    24a0:	ee 0f       	add	r30, r30
    24a2:	ff 1f       	adc	r31, r31
    24a4:	e4 0d       	add	r30, r4
    24a6:	f5 1d       	adc	r31, r5
    24a8:	e3 58       	subi	r30, 0x83	; 131
    24aa:	fe 4f       	sbci	r31, 0xFE	; 254
    24ac:	40 81       	ld	r20, Z
    24ae:	51 81       	ldd	r21, Z+1	; 0x01
    24b0:	47 30       	cpi	r20, 0x07	; 7
    24b2:	51 05       	cpc	r21, r1
    24b4:	e1 f4       	brne	.+56     	; 0x24ee <_ZL15forwardGameStarv+0x164>
    24b6:	11 82       	std	Z+1, r1	; 0x01
    24b8:	10 82       	st	Z, r1
    24ba:	91 50       	subi	r25, 0x01	; 1
    24bc:	8f 5f       	subi	r24, 0xFF	; 255
    24be:	11 96       	adiw	r26, 0x01	; 1
    24c0:	68 2f       	mov	r22, r24
    24c2:	70 e0       	ldi	r23, 0x00	; 0
    24c4:	6f 5f       	subi	r22, 0xFF	; 255
    24c6:	7f 4f       	sbci	r23, 0xFF	; 255
    24c8:	62 9d       	mul	r22, r2
    24ca:	a0 01       	movw	r20, r0
    24cc:	63 9d       	mul	r22, r3
    24ce:	50 0d       	add	r21, r0
    24d0:	72 9d       	mul	r23, r2
    24d2:	50 0d       	add	r21, r0
    24d4:	11 24       	eor	r1, r1
    24d6:	05 2e       	mov	r0, r21
    24d8:	00 0c       	add	r0, r0
    24da:	66 0b       	sbc	r22, r22
    24dc:	77 0b       	sbc	r23, r23
    24de:	84 0e       	add	r8, r20
    24e0:	95 1e       	adc	r9, r21
    24e2:	a6 1e       	adc	r10, r22
    24e4:	b7 1e       	adc	r11, r23
    24e6:	c4 0e       	add	r12, r20
    24e8:	d5 1e       	adc	r13, r21
    24ea:	e6 1e       	adc	r14, r22
    24ec:	f7 1e       	adc	r15, r23
    24ee:	2f 5f       	subi	r18, 0xFF	; 255
    24f0:	3f 4f       	sbci	r19, 0xFF	; 255
    24f2:	26 30       	cpi	r18, 0x06	; 6
    24f4:	31 05       	cpc	r19, r1
    24f6:	99 f6       	brne	.-90     	; 0x249e <_ZL15forwardGameStarv+0x114>
    24f8:	90 93 4b 01 	sts	0x014B, r25	; 0x80014b <_ZL12enemiesCount>
    24fc:	80 93 4a 01 	sts	0x014A, r24	; 0x80014a <_ZL13killedEnemies>
    2500:	b0 93 59 01 	sts	0x0159, r27	; 0x800159 <_ZL9starGuage+0x1>
    2504:	a0 93 58 01 	sts	0x0158, r26	; 0x800158 <_ZL9starGuage>
    2508:	80 92 45 01 	sts	0x0145, r8	; 0x800145 <_ZL5score>
    250c:	90 92 46 01 	sts	0x0146, r9	; 0x800146 <_ZL5score+0x1>
    2510:	a0 92 47 01 	sts	0x0147, r10	; 0x800147 <_ZL5score+0x2>
    2514:	b0 92 48 01 	sts	0x0148, r11	; 0x800148 <_ZL5score+0x3>
    2518:	c0 92 72 01 	sts	0x0172, r12	; 0x800172 <_ZL13obtainedScore>
    251c:	d0 92 73 01 	sts	0x0173, r13	; 0x800173 <_ZL13obtainedScore+0x1>
    2520:	e0 92 74 01 	sts	0x0174, r14	; 0x800174 <_ZL13obtainedScore+0x2>
    2524:	f0 92 75 01 	sts	0x0175, r15	; 0x800175 <_ZL13obtainedScore+0x3>
    2528:	97 cf       	rjmp	.-210    	; 0x2458 <_ZL15forwardGameStarv+0xce>
    252a:	cf 5f       	subi	r28, 0xFF	; 255
    252c:	c0 93 26 02 	sts	0x0226, r28	; 0x800226 <_ZL5ballV>
    2530:	c8 30       	cpi	r28, 0x08	; 8
    2532:	0c f0       	brlt	.+2      	; 0x2536 <_ZL15forwardGameStarv+0x1ac>
    2534:	69 cf       	rjmp	.-302    	; 0x2408 <_ZL15forwardGameStarv+0x7e>
    2536:	81 11       	cpse	r24, r1
    2538:	67 cf       	rjmp	.-306    	; 0x2408 <_ZL15forwardGameStarv+0x7e>
    253a:	42 cf       	rjmp	.-380    	; 0x23c0 <_ZL15forwardGameStarv+0x36>
    253c:	20 91 49 01 	lds	r18, 0x0149	; 0x800149 <_ZL9scoreCoef>
    2540:	30 e0       	ldi	r19, 0x00	; 0
    2542:	a0 ed       	ldi	r26, 0xD0	; 208
    2544:	b7 e0       	ldi	r27, 0x07	; 7
    2546:	0e 94 6e 2f 	call	0x5edc	; 0x5edc <__umulhisi3>
    254a:	60 93 72 01 	sts	0x0172, r22	; 0x800172 <_ZL13obtainedScore>
    254e:	70 93 73 01 	sts	0x0173, r23	; 0x800173 <_ZL13obtainedScore+0x1>
    2552:	80 93 74 01 	sts	0x0174, r24	; 0x800174 <_ZL13obtainedScore+0x2>
    2556:	90 93 75 01 	sts	0x0175, r25	; 0x800175 <_ZL13obtainedScore+0x3>
    255a:	c0 90 45 01 	lds	r12, 0x0145	; 0x800145 <_ZL5score>
    255e:	d0 90 46 01 	lds	r13, 0x0146	; 0x800146 <_ZL5score+0x1>
    2562:	e0 90 47 01 	lds	r14, 0x0147	; 0x800147 <_ZL5score+0x2>
    2566:	f0 90 48 01 	lds	r15, 0x0148	; 0x800148 <_ZL5score+0x3>
    256a:	dc 01       	movw	r26, r24
    256c:	cb 01       	movw	r24, r22
    256e:	8c 0d       	add	r24, r12
    2570:	9d 1d       	adc	r25, r13
    2572:	ae 1d       	adc	r26, r14
    2574:	bf 1d       	adc	r27, r15
    2576:	80 93 45 01 	sts	0x0145, r24	; 0x800145 <_ZL5score>
    257a:	90 93 46 01 	sts	0x0146, r25	; 0x800146 <_ZL5score+0x1>
    257e:	a0 93 47 01 	sts	0x0147, r26	; 0x800147 <_ZL5score+0x2>
    2582:	b0 93 48 01 	sts	0x0148, r27	; 0x800148 <_ZL5score+0x3>
    2586:	80 91 56 01 	lds	r24, 0x0156	; 0x800156 <_ZL12starGuageMax>
    258a:	90 91 57 01 	lds	r25, 0x0157	; 0x800157 <_ZL12starGuageMax+0x1>
    258e:	97 fd       	sbrc	r25, 7
    2590:	01 96       	adiw	r24, 0x01	; 1
    2592:	95 95       	asr	r25
    2594:	87 95       	ror	r24
    2596:	20 91 58 01 	lds	r18, 0x0158	; 0x800158 <_ZL9starGuage>
    259a:	30 91 59 01 	lds	r19, 0x0159	; 0x800159 <_ZL9starGuage+0x1>
    259e:	82 0f       	add	r24, r18
    25a0:	93 1f       	adc	r25, r19
    25a2:	90 93 59 01 	sts	0x0159, r25	; 0x800159 <_ZL9starGuage+0x1>
    25a6:	80 93 58 01 	sts	0x0158, r24	; 0x800158 <_ZL9starGuage>
    25aa:	42 cf       	rjmp	.-380    	; 0x2430 <_ZL15forwardGameStarv+0xa6>
    25ac:	df 91       	pop	r29
    25ae:	cf 91       	pop	r28
    25b0:	1f 91       	pop	r17
    25b2:	0f 91       	pop	r16
    25b4:	ff 90       	pop	r15
    25b6:	ef 90       	pop	r14
    25b8:	df 90       	pop	r13
    25ba:	cf 90       	pop	r12
    25bc:	bf 90       	pop	r11
    25be:	af 90       	pop	r10
    25c0:	9f 90       	pop	r9
    25c2:	8f 90       	pop	r8
    25c4:	7f 90       	pop	r7
    25c6:	6f 90       	pop	r6
    25c8:	5f 90       	pop	r5
    25ca:	4f 90       	pop	r4
    25cc:	3f 90       	pop	r3
    25ce:	2f 90       	pop	r2
    25d0:	08 95       	ret

000025d2 <_ZL15forwardGameBallv>:
    25d2:	8f 92       	push	r8
    25d4:	9f 92       	push	r9
    25d6:	af 92       	push	r10
    25d8:	bf 92       	push	r11
    25da:	cf 92       	push	r12
    25dc:	df 92       	push	r13
    25de:	ef 92       	push	r14
    25e0:	ff 92       	push	r15
    25e2:	0f 93       	push	r16
    25e4:	1f 93       	push	r17
    25e6:	cf 93       	push	r28
    25e8:	df 93       	push	r29
    25ea:	80 91 25 02 	lds	r24, 0x0225	; 0x800225 <_ZL5ballG>
    25ee:	90 91 44 01 	lds	r25, 0x0144	; 0x800144 <_ZL9ballSpeed>
    25f2:	89 1b       	sub	r24, r25
    25f4:	80 93 25 02 	sts	0x0225, r24	; 0x800225 <_ZL5ballG>
    25f8:	e6 e0       	ldi	r30, 0x06	; 6
    25fa:	ce 2e       	mov	r12, r30
    25fc:	c2 e0       	ldi	r28, 0x02	; 2
    25fe:	d0 e0       	ldi	r29, 0x00	; 0
    2600:	08 e2       	ldi	r16, 0x28	; 40
    2602:	10 e0       	ldi	r17, 0x00	; 0
    2604:	99 24       	eor	r9, r9
    2606:	93 94       	inc	r9
    2608:	80 91 25 02 	lds	r24, 0x0225	; 0x800225 <_ZL5ballG>
    260c:	87 ff       	sbrs	r24, 7
    260e:	33 c1       	rjmp	.+614    	; 0x2876 <_ZL15forwardGameBallv+0x2a4>
    2610:	20 91 4c 01 	lds	r18, 0x014C	; 0x80014c <_ZL8gameMode>
    2614:	30 91 4d 01 	lds	r19, 0x014D	; 0x80014d <_ZL8gameMode+0x1>
    2618:	24 30       	cpi	r18, 0x04	; 4
    261a:	31 05       	cpc	r19, r1
    261c:	09 f0       	breq	.+2      	; 0x2620 <_ZL15forwardGameBallv+0x4e>
    261e:	2b c1       	rjmp	.+598    	; 0x2876 <_ZL15forwardGameBallv+0x2a4>
    2620:	80 5c       	subi	r24, 0xC0	; 192
    2622:	80 93 25 02 	sts	0x0225, r24	; 0x800225 <_ZL5ballG>
    2626:	0e 94 5c 11 	call	0x22b8	; 0x22b8 <_ZL17decayDyingEnemiesv>
    262a:	80 90 28 02 	lds	r8, 0x0228	; 0x800228 <_ZL5ballY>
    262e:	a8 2c       	mov	r10, r8
    2630:	08 2c       	mov	r0, r8
    2632:	00 0c       	add	r0, r0
    2634:	bb 08       	sbc	r11, r11
    2636:	d0 90 27 02 	lds	r13, 0x0227	; 0x800227 <_ZL5ballX>
    263a:	ed 2c       	mov	r14, r13
    263c:	0d 2c       	mov	r0, r13
    263e:	00 0c       	add	r0, r0
    2640:	ff 08       	sbc	r15, r15
    2642:	ca 9c       	mul	r12, r10
    2644:	f0 01       	movw	r30, r0
    2646:	cb 9c       	mul	r12, r11
    2648:	f0 0d       	add	r31, r0
    264a:	11 24       	eor	r1, r1
    264c:	ee 0d       	add	r30, r14
    264e:	ff 1d       	adc	r31, r15
    2650:	ee 0f       	add	r30, r30
    2652:	ff 1f       	adc	r31, r31
    2654:	e3 58       	subi	r30, 0x83	; 131
    2656:	fe 4f       	sbci	r31, 0xFE	; 254
    2658:	80 81       	ld	r24, Z
    265a:	91 81       	ldd	r25, Z+1	; 0x01
    265c:	07 97       	sbiw	r24, 0x07	; 7
    265e:	09 f0       	breq	.+2      	; 0x2662 <_ZL15forwardGameBallv+0x90>
    2660:	52 c0       	rjmp	.+164    	; 0x2706 <_ZL15forwardGameBallv+0x134>
    2662:	80 91 4b 01 	lds	r24, 0x014B	; 0x80014b <_ZL12enemiesCount>
    2666:	81 50       	subi	r24, 0x01	; 1
    2668:	80 93 4b 01 	sts	0x014B, r24	; 0x80014b <_ZL12enemiesCount>
    266c:	80 91 4a 01 	lds	r24, 0x014A	; 0x80014a <_ZL13killedEnemies>
    2670:	8f 5f       	subi	r24, 0xFF	; 255
    2672:	80 93 4a 01 	sts	0x014A, r24	; 0x80014a <_ZL13killedEnemies>
    2676:	20 91 58 01 	lds	r18, 0x0158	; 0x800158 <_ZL9starGuage>
    267a:	30 91 59 01 	lds	r19, 0x0159	; 0x800159 <_ZL9starGuage+0x1>
    267e:	2f 5f       	subi	r18, 0xFF	; 255
    2680:	3f 4f       	sbci	r19, 0xFF	; 255
    2682:	30 93 59 01 	sts	0x0159, r19	; 0x800159 <_ZL9starGuage+0x1>
    2686:	20 93 58 01 	sts	0x0158, r18	; 0x800158 <_ZL9starGuage>
    268a:	90 e0       	ldi	r25, 0x00	; 0
    268c:	01 96       	adiw	r24, 0x01	; 1
    268e:	40 91 49 01 	lds	r20, 0x0149	; 0x800149 <_ZL9scoreCoef>
    2692:	48 9f       	mul	r20, r24
    2694:	90 01       	movw	r18, r0
    2696:	49 9f       	mul	r20, r25
    2698:	30 0d       	add	r19, r0
    269a:	11 24       	eor	r1, r1
    269c:	c9 01       	movw	r24, r18
    269e:	33 0f       	add	r19, r19
    26a0:	aa 0b       	sbc	r26, r26
    26a2:	bb 0b       	sbc	r27, r27
    26a4:	40 91 45 01 	lds	r20, 0x0145	; 0x800145 <_ZL5score>
    26a8:	50 91 46 01 	lds	r21, 0x0146	; 0x800146 <_ZL5score+0x1>
    26ac:	60 91 47 01 	lds	r22, 0x0147	; 0x800147 <_ZL5score+0x2>
    26b0:	70 91 48 01 	lds	r23, 0x0148	; 0x800148 <_ZL5score+0x3>
    26b4:	48 0f       	add	r20, r24
    26b6:	59 1f       	adc	r21, r25
    26b8:	6a 1f       	adc	r22, r26
    26ba:	7b 1f       	adc	r23, r27
    26bc:	40 93 45 01 	sts	0x0145, r20	; 0x800145 <_ZL5score>
    26c0:	50 93 46 01 	sts	0x0146, r21	; 0x800146 <_ZL5score+0x1>
    26c4:	60 93 47 01 	sts	0x0147, r22	; 0x800147 <_ZL5score+0x2>
    26c8:	70 93 48 01 	sts	0x0148, r23	; 0x800148 <_ZL5score+0x3>
    26cc:	40 91 72 01 	lds	r20, 0x0172	; 0x800172 <_ZL13obtainedScore>
    26d0:	50 91 73 01 	lds	r21, 0x0173	; 0x800173 <_ZL13obtainedScore+0x1>
    26d4:	60 91 74 01 	lds	r22, 0x0174	; 0x800174 <_ZL13obtainedScore+0x2>
    26d8:	70 91 75 01 	lds	r23, 0x0175	; 0x800175 <_ZL13obtainedScore+0x3>
    26dc:	84 0f       	add	r24, r20
    26de:	95 1f       	adc	r25, r21
    26e0:	a6 1f       	adc	r26, r22
    26e2:	b7 1f       	adc	r27, r23
    26e4:	80 93 72 01 	sts	0x0172, r24	; 0x800172 <_ZL13obtainedScore>
    26e8:	90 93 73 01 	sts	0x0173, r25	; 0x800173 <_ZL13obtainedScore+0x1>
    26ec:	a0 93 74 01 	sts	0x0174, r26	; 0x800174 <_ZL13obtainedScore+0x2>
    26f0:	b0 93 75 01 	sts	0x0175, r27	; 0x800175 <_ZL13obtainedScore+0x3>
    26f4:	d0 92 63 01 	sts	0x0163, r13	; 0x800163 <_ZL12dyingEnemies+0x6>
    26f8:	80 92 64 01 	sts	0x0164, r8	; 0x800164 <_ZL12dyingEnemies+0x7>
    26fc:	62 e0       	ldi	r22, 0x02	; 2
    26fe:	85 e3       	ldi	r24, 0x35	; 53
    2700:	93 e0       	ldi	r25, 0x03	; 3
    2702:	0e 94 02 0f 	call	0x1e04	; 0x1e04 <_ZN10MyArduboyV10playScore2EPKhh.constprop.39>
    2706:	ca 9c       	mul	r12, r10
    2708:	f0 01       	movw	r30, r0
    270a:	cb 9c       	mul	r12, r11
    270c:	f0 0d       	add	r31, r0
    270e:	11 24       	eor	r1, r1
    2710:	ee 0d       	add	r30, r14
    2712:	ff 1d       	adc	r31, r15
    2714:	ee 0f       	add	r30, r30
    2716:	ff 1f       	adc	r31, r31
    2718:	e3 58       	subi	r30, 0x83	; 131
    271a:	fe 4f       	sbci	r31, 0xFE	; 254
    271c:	11 82       	std	Z+1, r1	; 0x01
    271e:	10 82       	st	Z, r1
    2720:	18 14       	cp	r1, r8
    2722:	bc f4       	brge	.+46     	; 0x2752 <_ZL15forwardGameBallv+0x180>
    2724:	c5 01       	movw	r24, r10
    2726:	01 97       	sbiw	r24, 0x01	; 1
    2728:	c8 9e       	mul	r12, r24
    272a:	f0 01       	movw	r30, r0
    272c:	c9 9e       	mul	r12, r25
    272e:	f0 0d       	add	r31, r0
    2730:	11 24       	eor	r1, r1
    2732:	ee 0d       	add	r30, r14
    2734:	ff 1d       	adc	r31, r15
    2736:	ee 0f       	add	r30, r30
    2738:	ff 1f       	adc	r31, r31
    273a:	e3 58       	subi	r30, 0x83	; 131
    273c:	fe 4f       	sbci	r31, 0xFE	; 254
    273e:	80 81       	ld	r24, Z
    2740:	91 81       	ldd	r25, Z+1	; 0x01
    2742:	01 97       	sbiw	r24, 0x01	; 1
    2744:	31 f0       	breq	.+12     	; 0x2752 <_ZL15forwardGameBallv+0x180>
    2746:	8a 94       	dec	r8
    2748:	80 92 28 02 	sts	0x0228, r8	; 0x800228 <_ZL5ballY>
    274c:	10 92 7c 01 	sts	0x017C, r1	; 0x80017c <_ZL5ballE>
    2750:	5b cf       	rjmp	.-330    	; 0x2608 <_ZL15forwardGameBallv+0x36>
    2752:	91 e0       	ldi	r25, 0x01	; 1
    2754:	dd 20       	and	r13, r13
    2756:	a1 f0       	breq	.+40     	; 0x2780 <_ZL15forwardGameBallv+0x1ae>
    2758:	ca 9c       	mul	r12, r10
    275a:	f0 01       	movw	r30, r0
    275c:	cb 9c       	mul	r12, r11
    275e:	f0 0d       	add	r31, r0
    2760:	11 24       	eor	r1, r1
    2762:	c7 01       	movw	r24, r14
    2764:	01 97       	sbiw	r24, 0x01	; 1
    2766:	e8 0f       	add	r30, r24
    2768:	f9 1f       	adc	r31, r25
    276a:	ee 0f       	add	r30, r30
    276c:	ff 1f       	adc	r31, r31
    276e:	e3 58       	subi	r30, 0x83	; 131
    2770:	fe 4f       	sbci	r31, 0xFE	; 254
    2772:	91 e0       	ldi	r25, 0x01	; 1
    2774:	20 81       	ld	r18, Z
    2776:	31 81       	ldd	r19, Z+1	; 0x01
    2778:	21 30       	cpi	r18, 0x01	; 1
    277a:	31 05       	cpc	r19, r1
    277c:	09 f0       	breq	.+2      	; 0x2780 <_ZL15forwardGameBallv+0x1ae>
    277e:	90 e0       	ldi	r25, 0x00	; 0
    2780:	80 91 7c 01 	lds	r24, 0x017C	; 0x80017c <_ZL5ballE>
    2784:	82 60       	ori	r24, 0x02	; 2
    2786:	98 2b       	or	r25, r24
    2788:	85 e0       	ldi	r24, 0x05	; 5
    278a:	d8 16       	cp	r13, r24
    278c:	09 f4       	brne	.+2      	; 0x2790 <_ZL15forwardGameBallv+0x1be>
    278e:	5a c0       	rjmp	.+180    	; 0x2844 <_ZL15forwardGameBallv+0x272>
    2790:	ca 9c       	mul	r12, r10
    2792:	f0 01       	movw	r30, r0
    2794:	cb 9c       	mul	r12, r11
    2796:	f0 0d       	add	r31, r0
    2798:	11 24       	eor	r1, r1
    279a:	8f ef       	ldi	r24, 0xFF	; 255
    279c:	e8 1a       	sub	r14, r24
    279e:	f8 0a       	sbc	r15, r24
    27a0:	ee 0d       	add	r30, r14
    27a2:	ff 1d       	adc	r31, r15
    27a4:	ee 0f       	add	r30, r30
    27a6:	ff 1f       	adc	r31, r31
    27a8:	e3 58       	subi	r30, 0x83	; 131
    27aa:	fe 4f       	sbci	r31, 0xFE	; 254
    27ac:	81 e0       	ldi	r24, 0x01	; 1
    27ae:	20 81       	ld	r18, Z
    27b0:	31 81       	ldd	r19, Z+1	; 0x01
    27b2:	21 30       	cpi	r18, 0x01	; 1
    27b4:	31 05       	cpc	r19, r1
    27b6:	09 f0       	breq	.+2      	; 0x27ba <_ZL15forwardGameBallv+0x1e8>
    27b8:	80 e0       	ldi	r24, 0x00	; 0
    27ba:	88 0f       	add	r24, r24
    27bc:	88 0f       	add	r24, r24
    27be:	89 2b       	or	r24, r25
    27c0:	80 93 7c 01 	sts	0x017C, r24	; 0x80017c <_ZL5ballE>
    27c4:	87 30       	cpi	r24, 0x07	; 7
    27c6:	09 f0       	breq	.+2      	; 0x27ca <_ZL15forwardGameBallv+0x1f8>
    27c8:	3f c0       	rjmp	.+126    	; 0x2848 <_ZL15forwardGameBallv+0x276>
    27ca:	80 92 71 01 	sts	0x0171, r8	; 0x800171 <_ZL14obtainedScoreY>
    27ce:	80 91 4b 01 	lds	r24, 0x014B	; 0x80014b <_ZL12enemiesCount>
    27d2:	81 11       	cpse	r24, r1
    27d4:	2c c0       	rjmp	.+88     	; 0x282e <_ZL15forwardGameBallv+0x25c>
    27d6:	80 91 4a 01 	lds	r24, 0x014A	; 0x80014a <_ZL13killedEnemies>
    27da:	8a 30       	cpi	r24, 0x0A	; 10
    27dc:	40 f1       	brcs	.+80     	; 0x282e <_ZL15forwardGameBallv+0x25c>
    27de:	80 91 72 01 	lds	r24, 0x0172	; 0x800172 <_ZL13obtainedScore>
    27e2:	90 91 73 01 	lds	r25, 0x0173	; 0x800173 <_ZL13obtainedScore+0x1>
    27e6:	a0 91 74 01 	lds	r26, 0x0174	; 0x800174 <_ZL13obtainedScore+0x2>
    27ea:	b0 91 75 01 	lds	r27, 0x0175	; 0x800175 <_ZL13obtainedScore+0x3>
    27ee:	40 91 45 01 	lds	r20, 0x0145	; 0x800145 <_ZL5score>
    27f2:	50 91 46 01 	lds	r21, 0x0146	; 0x800146 <_ZL5score+0x1>
    27f6:	60 91 47 01 	lds	r22, 0x0147	; 0x800147 <_ZL5score+0x2>
    27fa:	70 91 48 01 	lds	r23, 0x0148	; 0x800148 <_ZL5score+0x3>
    27fe:	48 0f       	add	r20, r24
    2800:	59 1f       	adc	r21, r25
    2802:	6a 1f       	adc	r22, r26
    2804:	7b 1f       	adc	r23, r27
    2806:	40 93 45 01 	sts	0x0145, r20	; 0x800145 <_ZL5score>
    280a:	50 93 46 01 	sts	0x0146, r21	; 0x800146 <_ZL5score+0x1>
    280e:	60 93 47 01 	sts	0x0147, r22	; 0x800147 <_ZL5score+0x2>
    2812:	70 93 48 01 	sts	0x0148, r23	; 0x800148 <_ZL5score+0x3>
    2816:	88 0f       	add	r24, r24
    2818:	99 1f       	adc	r25, r25
    281a:	aa 1f       	adc	r26, r26
    281c:	bb 1f       	adc	r27, r27
    281e:	80 93 72 01 	sts	0x0172, r24	; 0x800172 <_ZL13obtainedScore>
    2822:	90 93 73 01 	sts	0x0173, r25	; 0x800173 <_ZL13obtainedScore+0x1>
    2826:	a0 93 74 01 	sts	0x0174, r26	; 0x800174 <_ZL13obtainedScore+0x2>
    282a:	b0 93 75 01 	sts	0x0175, r27	; 0x800175 <_ZL13obtainedScore+0x3>
    282e:	d0 93 4d 01 	sts	0x014D, r29	; 0x80014d <_ZL8gameMode+0x1>
    2832:	c0 93 4c 01 	sts	0x014C, r28	; 0x80014c <_ZL8gameMode>
    2836:	10 93 77 01 	sts	0x0177, r17	; 0x800177 <_ZL11gameCounter+0x1>
    283a:	00 93 76 01 	sts	0x0176, r16	; 0x800176 <_ZL11gameCounter>
    283e:	90 92 76 02 	sts	0x0276, r9	; 0x800276 <isInvalid>
    2842:	e2 ce       	rjmp	.-572    	; 0x2608 <_ZL15forwardGameBallv+0x36>
    2844:	81 e0       	ldi	r24, 0x01	; 1
    2846:	b9 cf       	rjmp	.-142    	; 0x27ba <_ZL15forwardGameBallv+0x1e8>
    2848:	20 91 26 02 	lds	r18, 0x0226	; 0x800226 <_ZL5ballV>
    284c:	08 2e       	mov	r0, r24
    284e:	00 0c       	add	r0, r0
    2850:	99 0b       	sbc	r25, r25
    2852:	31 e0       	ldi	r19, 0x01	; 1
    2854:	32 0f       	add	r19, r18
    2856:	02 c0       	rjmp	.+4      	; 0x285c <_ZL15forwardGameBallv+0x28a>
    2858:	95 95       	asr	r25
    285a:	87 95       	ror	r24
    285c:	3a 95       	dec	r19
    285e:	e2 f7       	brpl	.-8      	; 0x2858 <_ZL15forwardGameBallv+0x286>
    2860:	80 ff       	sbrs	r24, 0
    2862:	03 c0       	rjmp	.+6      	; 0x286a <_ZL15forwardGameBallv+0x298>
    2864:	21 95       	neg	r18
    2866:	20 93 26 02 	sts	0x0226, r18	; 0x800226 <_ZL5ballV>
    286a:	80 91 26 02 	lds	r24, 0x0226	; 0x800226 <_ZL5ballV>
    286e:	d8 0e       	add	r13, r24
    2870:	d0 92 27 02 	sts	0x0227, r13	; 0x800227 <_ZL5ballX>
    2874:	c9 ce       	rjmp	.-622    	; 0x2608 <_ZL15forwardGameBallv+0x36>
    2876:	df 91       	pop	r29
    2878:	cf 91       	pop	r28
    287a:	1f 91       	pop	r17
    287c:	0f 91       	pop	r16
    287e:	ff 90       	pop	r15
    2880:	ef 90       	pop	r14
    2882:	df 90       	pop	r13
    2884:	cf 90       	pop	r12
    2886:	bf 90       	pop	r11
    2888:	af 90       	pop	r10
    288a:	9f 90       	pop	r9
    288c:	8f 90       	pop	r8
    288e:	08 95       	ret

00002890 <_ZL16forwardGameErasev>:
    2890:	80 91 76 01 	lds	r24, 0x0176	; 0x800176 <_ZL11gameCounter>
    2894:	90 91 77 01 	lds	r25, 0x0177	; 0x800177 <_ZL11gameCounter+0x1>
    2898:	01 97       	sbiw	r24, 0x01	; 1
    289a:	90 93 77 01 	sts	0x0177, r25	; 0x800177 <_ZL11gameCounter+0x1>
    289e:	80 93 76 01 	sts	0x0176, r24	; 0x800176 <_ZL11gameCounter>
    28a2:	18 16       	cp	r1, r24
    28a4:	19 06       	cpc	r1, r25
    28a6:	0c f4       	brge	.+2      	; 0x28aa <_ZL16forwardGameErasev+0x1a>
    28a8:	8a c0       	rjmp	.+276    	; 0x29be <_ZL16forwardGameErasev+0x12e>
    28aa:	40 91 78 01 	lds	r20, 0x0178	; 0x800178 <_ZL11filledLines>
    28ae:	50 91 79 01 	lds	r21, 0x0179	; 0x800179 <_ZL11filledLines+0x1>
    28b2:	9f ef       	ldi	r25, 0xFF	; 255
    28b4:	80 e0       	ldi	r24, 0x00	; 0
    28b6:	30 e0       	ldi	r19, 0x00	; 0
    28b8:	20 e0       	ldi	r18, 0x00	; 0
    28ba:	ba 01       	movw	r22, r20
    28bc:	02 2e       	mov	r0, r18
    28be:	02 c0       	rjmp	.+4      	; 0x28c4 <_ZL16forwardGameErasev+0x34>
    28c0:	75 95       	asr	r23
    28c2:	67 95       	ror	r22
    28c4:	0a 94       	dec	r0
    28c6:	e2 f7       	brpl	.-8      	; 0x28c0 <_ZL16forwardGameErasev+0x30>
    28c8:	60 ff       	sbrs	r22, 0
    28ca:	04 c0       	rjmp	.+8      	; 0x28d4 <_ZL16forwardGameErasev+0x44>
    28cc:	8f 5f       	subi	r24, 0xFF	; 255
    28ce:	9f 3f       	cpi	r25, 0xFF	; 255
    28d0:	09 f4       	brne	.+2      	; 0x28d4 <_ZL16forwardGameErasev+0x44>
    28d2:	92 2f       	mov	r25, r18
    28d4:	2f 5f       	subi	r18, 0xFF	; 255
    28d6:	3f 4f       	sbci	r19, 0xFF	; 255
    28d8:	2e 30       	cpi	r18, 0x0E	; 14
    28da:	31 05       	cpc	r19, r1
    28dc:	71 f7       	brne	.-36     	; 0x28ba <_ZL16forwardGameErasev+0x2a>
    28de:	90 93 71 01 	sts	0x0171, r25	; 0x800171 <_ZL14obtainedScoreY>
    28e2:	98 2f       	mov	r25, r24
    28e4:	99 0f       	add	r25, r25
    28e6:	99 0f       	add	r25, r25
    28e8:	48 2f       	mov	r20, r24
    28ea:	49 1b       	sub	r20, r25
    28ec:	44 0f       	add	r20, r20
    28ee:	90 91 43 01 	lds	r25, 0x0143	; 0x800143 <_ZL10boxesCount>
    28f2:	e4 2f       	mov	r30, r20
    28f4:	e9 0f       	add	r30, r25
    28f6:	e0 93 43 01 	sts	0x0143, r30	; 0x800143 <_ZL10boxesCount>
    28fa:	90 e0       	ldi	r25, 0x00	; 0
    28fc:	bc 01       	movw	r22, r24
    28fe:	61 50       	subi	r22, 0x01	; 1
    2900:	71 09       	sbc	r23, r1
    2902:	68 9f       	mul	r22, r24
    2904:	90 01       	movw	r18, r0
    2906:	69 9f       	mul	r22, r25
    2908:	30 0d       	add	r19, r0
    290a:	78 9f       	mul	r23, r24
    290c:	30 0d       	add	r19, r0
    290e:	11 24       	eor	r1, r1
    2910:	c9 01       	movw	r24, r18
    2912:	01 96       	adiw	r24, 0x01	; 1
    2914:	20 91 49 01 	lds	r18, 0x0149	; 0x800149 <_ZL9scoreCoef>
    2918:	28 9f       	mul	r18, r24
    291a:	d0 01       	movw	r26, r0
    291c:	29 9f       	mul	r18, r25
    291e:	b0 0d       	add	r27, r0
    2920:	11 24       	eor	r1, r1
    2922:	24 e1       	ldi	r18, 0x14	; 20
    2924:	30 e0       	ldi	r19, 0x00	; 0
    2926:	0e 94 b3 2f 	call	0x5f66	; 0x5f66 <__usmulhisi3>
    292a:	9b 01       	movw	r18, r22
    292c:	ac 01       	movw	r20, r24
    292e:	20 93 72 01 	sts	0x0172, r18	; 0x800172 <_ZL13obtainedScore>
    2932:	30 93 73 01 	sts	0x0173, r19	; 0x800173 <_ZL13obtainedScore+0x1>
    2936:	40 93 74 01 	sts	0x0174, r20	; 0x800174 <_ZL13obtainedScore+0x2>
    293a:	50 93 75 01 	sts	0x0175, r21	; 0x800175 <_ZL13obtainedScore+0x3>
    293e:	80 91 4a 01 	lds	r24, 0x014A	; 0x80014a <_ZL13killedEnemies>
    2942:	88 23       	and	r24, r24
    2944:	a1 f0       	breq	.+40     	; 0x296e <_ZL16forwardGameErasev+0xde>
    2946:	e1 11       	cpse	r30, r1
    2948:	3b c0       	rjmp	.+118    	; 0x29c0 <_ZL16forwardGameErasev+0x130>
    294a:	80 91 4b 01 	lds	r24, 0x014B	; 0x80014b <_ZL12enemiesCount>
    294e:	81 11       	cpse	r24, r1
    2950:	37 c0       	rjmp	.+110    	; 0x29c0 <_ZL16forwardGameErasev+0x130>
    2952:	63 e0       	ldi	r22, 0x03	; 3
    2954:	70 e0       	ldi	r23, 0x00	; 0
    2956:	80 e0       	ldi	r24, 0x00	; 0
    2958:	90 e0       	ldi	r25, 0x00	; 0
    295a:	0e 94 7d 2f 	call	0x5efa	; 0x5efa <__mulsi3>
    295e:	60 93 72 01 	sts	0x0172, r22	; 0x800172 <_ZL13obtainedScore>
    2962:	70 93 73 01 	sts	0x0173, r23	; 0x800173 <_ZL13obtainedScore+0x1>
    2966:	80 93 74 01 	sts	0x0174, r24	; 0x800174 <_ZL13obtainedScore+0x2>
    296a:	90 93 75 01 	sts	0x0175, r25	; 0x800175 <_ZL13obtainedScore+0x3>
    296e:	80 91 45 01 	lds	r24, 0x0145	; 0x800145 <_ZL5score>
    2972:	90 91 46 01 	lds	r25, 0x0146	; 0x800146 <_ZL5score+0x1>
    2976:	a0 91 47 01 	lds	r26, 0x0147	; 0x800147 <_ZL5score+0x2>
    297a:	b0 91 48 01 	lds	r27, 0x0148	; 0x800148 <_ZL5score+0x3>
    297e:	40 91 72 01 	lds	r20, 0x0172	; 0x800172 <_ZL13obtainedScore>
    2982:	50 91 73 01 	lds	r21, 0x0173	; 0x800173 <_ZL13obtainedScore+0x1>
    2986:	60 91 74 01 	lds	r22, 0x0174	; 0x800174 <_ZL13obtainedScore+0x2>
    298a:	70 91 75 01 	lds	r23, 0x0175	; 0x800175 <_ZL13obtainedScore+0x3>
    298e:	84 0f       	add	r24, r20
    2990:	95 1f       	adc	r25, r21
    2992:	a6 1f       	adc	r26, r22
    2994:	b7 1f       	adc	r27, r23
    2996:	80 93 45 01 	sts	0x0145, r24	; 0x800145 <_ZL5score>
    299a:	90 93 46 01 	sts	0x0146, r25	; 0x800146 <_ZL5score+0x1>
    299e:	a0 93 47 01 	sts	0x0147, r26	; 0x800147 <_ZL5score+0x2>
    29a2:	b0 93 48 01 	sts	0x0148, r27	; 0x800148 <_ZL5score+0x3>
    29a6:	82 e0       	ldi	r24, 0x02	; 2
    29a8:	90 e0       	ldi	r25, 0x00	; 0
    29aa:	90 93 4d 01 	sts	0x014D, r25	; 0x80014d <_ZL8gameMode+0x1>
    29ae:	80 93 4c 01 	sts	0x014C, r24	; 0x80014c <_ZL8gameMode>
    29b2:	88 e2       	ldi	r24, 0x28	; 40
    29b4:	90 e0       	ldi	r25, 0x00	; 0
    29b6:	90 93 77 01 	sts	0x0177, r25	; 0x800177 <_ZL11gameCounter+0x1>
    29ba:	80 93 76 01 	sts	0x0176, r24	; 0x800176 <_ZL11gameCounter>
    29be:	08 95       	ret
    29c0:	62 e0       	ldi	r22, 0x02	; 2
    29c2:	70 e0       	ldi	r23, 0x00	; 0
    29c4:	80 e0       	ldi	r24, 0x00	; 0
    29c6:	90 e0       	ldi	r25, 0x00	; 0
    29c8:	c8 cf       	rjmp	.-112    	; 0x295a <_ZL16forwardGameErasev+0xca>

000029ca <_ZL18forwardGameControlv>:
    29ca:	ef 92       	push	r14
    29cc:	ff 92       	push	r15
    29ce:	0f 93       	push	r16
    29d0:	1f 93       	push	r17
    29d2:	cf 93       	push	r28
    29d4:	df 93       	push	r29
    29d6:	20 91 27 07 	lds	r18, 0x0727	; 0x800727 <arduboy+0x41d>
    29da:	20 74       	andi	r18, 0x40	; 64
    29dc:	80 91 26 07 	lds	r24, 0x0726	; 0x800726 <arduboy+0x41c>
    29e0:	90 e0       	ldi	r25, 0x00	; 0
    29e2:	80 95       	com	r24
    29e4:	90 95       	com	r25
    29e6:	50 e0       	ldi	r21, 0x00	; 0
    29e8:	82 23       	and	r24, r18
    29ea:	95 23       	and	r25, r21
    29ec:	30 91 70 01 	lds	r19, 0x0170	; 0x800170 <_ZL6bunchG>
    29f0:	40 91 3d 01 	lds	r20, 0x013D	; 0x80013d <_ZL9fallSpeed>
    29f4:	89 2b       	or	r24, r25
    29f6:	41 f0       	breq	.+16     	; 0x2a08 <_ZL18forwardGameControlv+0x3e>
    29f8:	81 e0       	ldi	r24, 0x01	; 1
    29fa:	80 93 3e 01 	sts	0x013E, r24	; 0x80013e <_ZL10isFastFall>
    29fe:	84 2f       	mov	r24, r20
    2a00:	40 32       	cpi	r20, 0x20	; 32
    2a02:	58 f4       	brcc	.+22     	; 0x2a1a <_ZL18forwardGameControlv+0x50>
    2a04:	80 e2       	ldi	r24, 0x20	; 32
    2a06:	09 c0       	rjmp	.+18     	; 0x2a1a <_ZL18forwardGameControlv+0x50>
    2a08:	21 11       	cpse	r18, r1
    2a0a:	02 c0       	rjmp	.+4      	; 0x2a10 <_ZL18forwardGameControlv+0x46>
    2a0c:	10 92 3e 01 	sts	0x013E, r1	; 0x80013e <_ZL10isFastFall>
    2a10:	84 2f       	mov	r24, r20
    2a12:	90 91 3e 01 	lds	r25, 0x013E	; 0x80013e <_ZL10isFastFall>
    2a16:	91 11       	cpse	r25, r1
    2a18:	f3 cf       	rjmp	.-26     	; 0x2a00 <_ZL18forwardGameControlv+0x36>
    2a1a:	38 1b       	sub	r19, r24
    2a1c:	30 93 70 01 	sts	0x0170, r19	; 0x800170 <_ZL6bunchG>
    2a20:	0e e1       	ldi	r16, 0x1E	; 30
    2a22:	10 e0       	ldi	r17, 0x00	; 0
    2a24:	c0 91 70 01 	lds	r28, 0x0170	; 0x800170 <_ZL6bunchG>
    2a28:	c7 ff       	sbrs	r28, 7
    2a2a:	48 c0       	rjmp	.+144    	; 0x2abc <_ZL18forwardGameControlv+0xf2>
    2a2c:	d0 91 6e 01 	lds	r29, 0x016E	; 0x80016e <_ZL6bunchY>
    2a30:	d1 50       	subi	r29, 0x01	; 1
    2a32:	40 91 6f 01 	lds	r20, 0x016F	; 0x80016f <_ZL6bunchR>
    2a36:	6d 2f       	mov	r22, r29
    2a38:	80 91 6d 01 	lds	r24, 0x016D	; 0x80016d <_ZL6bunchX>
    2a3c:	0e 94 88 11 	call	0x2310	; 0x2310 <_ZL10isMoveableaah>
    2a40:	f0 90 3e 01 	lds	r15, 0x013E	; 0x80013e <_ZL10isFastFall>
    2a44:	88 23       	and	r24, r24
    2a46:	29 f1       	breq	.+74     	; 0x2a92 <_ZL18forwardGameControlv+0xc8>
    2a48:	d0 93 6e 01 	sts	0x016E, r29	; 0x80016e <_ZL6bunchY>
    2a4c:	ff 20       	and	r15, r15
    2a4e:	99 f0       	breq	.+38     	; 0x2a76 <_ZL18forwardGameControlv+0xac>
    2a50:	80 91 45 01 	lds	r24, 0x0145	; 0x800145 <_ZL5score>
    2a54:	90 91 46 01 	lds	r25, 0x0146	; 0x800146 <_ZL5score+0x1>
    2a58:	a0 91 47 01 	lds	r26, 0x0147	; 0x800147 <_ZL5score+0x2>
    2a5c:	b0 91 48 01 	lds	r27, 0x0148	; 0x800148 <_ZL5score+0x3>
    2a60:	01 96       	adiw	r24, 0x01	; 1
    2a62:	a1 1d       	adc	r26, r1
    2a64:	b1 1d       	adc	r27, r1
    2a66:	80 93 45 01 	sts	0x0145, r24	; 0x800145 <_ZL5score>
    2a6a:	90 93 46 01 	sts	0x0146, r25	; 0x800146 <_ZL5score+0x1>
    2a6e:	a0 93 47 01 	sts	0x0147, r26	; 0x800147 <_ZL5score+0x2>
    2a72:	b0 93 48 01 	sts	0x0148, r27	; 0x800148 <_ZL5score+0x3>
    2a76:	c0 5c       	subi	r28, 0xC0	; 192
    2a78:	c0 93 70 01 	sts	0x0170, r28	; 0x800170 <_ZL6bunchG>
    2a7c:	10 93 77 01 	sts	0x0177, r17	; 0x800177 <_ZL11gameCounter+0x1>
    2a80:	00 93 76 01 	sts	0x0176, r16	; 0x800176 <_ZL11gameCounter>
    2a84:	cf cf       	rjmp	.-98     	; 0x2a24 <_ZL18forwardGameControlv+0x5a>
    2a86:	21 97       	sbiw	r28, 0x01	; 1
    2a88:	d0 93 77 01 	sts	0x0177, r29	; 0x800177 <_ZL11gameCounter+0x1>
    2a8c:	c0 93 76 01 	sts	0x0176, r28	; 0x800176 <_ZL11gameCounter>
    2a90:	c9 cf       	rjmp	.-110    	; 0x2a24 <_ZL18forwardGameControlv+0x5a>
    2a92:	10 92 70 01 	sts	0x0170, r1	; 0x800170 <_ZL6bunchG>
    2a96:	c0 91 76 01 	lds	r28, 0x0176	; 0x800176 <_ZL11gameCounter>
    2a9a:	d0 91 77 01 	lds	r29, 0x0177	; 0x800177 <_ZL11gameCounter+0x1>
    2a9e:	ce 31       	cpi	r28, 0x1E	; 30
    2aa0:	d1 05       	cpc	r29, r1
    2aa2:	29 f4       	brne	.+10     	; 0x2aae <_ZL18forwardGameControlv+0xe4>
    2aa4:	63 e0       	ldi	r22, 0x03	; 3
    2aa6:	8b e1       	ldi	r24, 0x1B	; 27
    2aa8:	93 e0       	ldi	r25, 0x03	; 3
    2aaa:	0e 94 02 0f 	call	0x1e04	; 0x1e04 <_ZN10MyArduboyV10playScore2EPKhh.constprop.39>
    2aae:	ff 20       	and	r15, r15
    2ab0:	51 f3       	breq	.-44     	; 0x2a86 <_ZL18forwardGameControlv+0xbc>
    2ab2:	10 92 77 01 	sts	0x0177, r1	; 0x800177 <_ZL11gameCounter+0x1>
    2ab6:	10 92 76 01 	sts	0x0176, r1	; 0x800176 <_ZL11gameCounter>
    2aba:	b4 cf       	rjmp	.-152    	; 0x2a24 <_ZL18forwardGameControlv+0x5a>
    2abc:	80 91 76 01 	lds	r24, 0x0176	; 0x800176 <_ZL11gameCounter>
    2ac0:	90 91 77 01 	lds	r25, 0x0177	; 0x800177 <_ZL11gameCounter+0x1>
    2ac4:	18 16       	cp	r1, r24
    2ac6:	19 06       	cpc	r1, r25
    2ac8:	ec f5       	brge	.+122    	; 0x2b44 <_ZL18forwardGameControlv+0x17a>
    2aca:	c0 91 3c 01 	lds	r28, 0x013C	; 0x80013c <padX>
    2ace:	cc 23       	and	r28, r28
    2ad0:	69 f0       	breq	.+26     	; 0x2aec <_ZL18forwardGameControlv+0x122>
    2ad2:	80 91 6d 01 	lds	r24, 0x016D	; 0x80016d <_ZL6bunchX>
    2ad6:	c8 0f       	add	r28, r24
    2ad8:	40 91 6f 01 	lds	r20, 0x016F	; 0x80016f <_ZL6bunchR>
    2adc:	60 91 6e 01 	lds	r22, 0x016E	; 0x80016e <_ZL6bunchY>
    2ae0:	8c 2f       	mov	r24, r28
    2ae2:	0e 94 88 11 	call	0x2310	; 0x2310 <_ZL10isMoveableaah>
    2ae6:	81 11       	cpse	r24, r1
    2ae8:	c0 93 6d 01 	sts	0x016D, r28	; 0x80016d <_ZL6bunchX>
    2aec:	80 91 26 07 	lds	r24, 0x0726	; 0x800726 <arduboy+0x41c>
    2af0:	90 e0       	ldi	r25, 0x00	; 0
    2af2:	80 95       	com	r24
    2af4:	90 95       	com	r25
    2af6:	20 91 27 07 	lds	r18, 0x0727	; 0x800727 <arduboy+0x41d>
    2afa:	24 72       	andi	r18, 0x24	; 36
    2afc:	30 e0       	ldi	r19, 0x00	; 0
    2afe:	82 23       	and	r24, r18
    2b00:	93 23       	and	r25, r19
    2b02:	89 2b       	or	r24, r25
    2b04:	09 f4       	brne	.+2      	; 0x2b08 <_ZL18forwardGameControlv+0x13e>
    2b06:	70 c0       	rjmp	.+224    	; 0x2be8 <_ZL18forwardGameControlv+0x21e>
    2b08:	c0 91 6f 01 	lds	r28, 0x016F	; 0x80016f <_ZL6bunchR>
    2b0c:	c5 30       	cpi	r28, 0x05	; 5
    2b0e:	09 f4       	brne	.+2      	; 0x2b12 <_ZL18forwardGameControlv+0x148>
    2b10:	6b c0       	rjmp	.+214    	; 0x2be8 <_ZL18forwardGameControlv+0x21e>
    2b12:	cf 5f       	subi	r28, 0xFF	; 255
    2b14:	c3 70       	andi	r28, 0x03	; 3
    2b16:	4c 2f       	mov	r20, r28
    2b18:	60 91 6e 01 	lds	r22, 0x016E	; 0x80016e <_ZL6bunchY>
    2b1c:	80 91 6d 01 	lds	r24, 0x016D	; 0x80016d <_ZL6bunchX>
    2b20:	0e 94 88 11 	call	0x2310	; 0x2310 <_ZL10isMoveableaah>
    2b24:	88 23       	and	r24, r24
    2b26:	09 f4       	brne	.+2      	; 0x2b2a <_ZL18forwardGameControlv+0x160>
    2b28:	5f c0       	rjmp	.+190    	; 0x2be8 <_ZL18forwardGameControlv+0x21e>
    2b2a:	c0 93 6f 01 	sts	0x016F, r28	; 0x80016f <_ZL6bunchR>
    2b2e:	63 e0       	ldi	r22, 0x03	; 3
    2b30:	89 e9       	ldi	r24, 0x99	; 153
    2b32:	92 e0       	ldi	r25, 0x02	; 2
    2b34:	df 91       	pop	r29
    2b36:	cf 91       	pop	r28
    2b38:	1f 91       	pop	r17
    2b3a:	0f 91       	pop	r16
    2b3c:	ff 90       	pop	r15
    2b3e:	ef 90       	pop	r14
    2b40:	0c 94 02 0f 	jmp	0x1e04	; 0x1e04 <_ZN10MyArduboyV10playScore2EPKhh.constprop.39>
    2b44:	10 91 6f 01 	lds	r17, 0x016F	; 0x80016f <_ZL6bunchR>
    2b48:	00 91 6d 01 	lds	r16, 0x016D	; 0x80016d <_ZL6bunchX>
    2b4c:	f0 90 6e 01 	lds	r15, 0x016E	; 0x80016e <_ZL6bunchY>
    2b50:	30 91 4b 01 	lds	r19, 0x014B	; 0x80014b <_ZL12enemiesCount>
    2b54:	20 91 43 01 	lds	r18, 0x0143	; 0x800143 <_ZL10boxesCount>
    2b58:	90 e0       	ldi	r25, 0x00	; 0
    2b5a:	80 e0       	ldi	r24, 0x00	; 0
    2b5c:	41 2f       	mov	r20, r17
    2b5e:	01 2e       	mov	r0, r17
    2b60:	00 0c       	add	r0, r0
    2b62:	55 0b       	sbc	r21, r21
    2b64:	ba 01       	movw	r22, r20
    2b66:	6f 5f       	subi	r22, 0xFF	; 255
    2b68:	7f 4f       	sbci	r23, 0xFF	; 255
    2b6a:	b6 e0       	ldi	r27, 0x06	; 6
    2b6c:	eb 2e       	mov	r14, r27
    2b6e:	fc 01       	movw	r30, r24
    2b70:	e4 0f       	add	r30, r20
    2b72:	f5 1f       	adc	r31, r21
    2b74:	e6 95       	lsr	r30
    2b76:	e1 70       	andi	r30, 0x01	; 1
    2b78:	e0 0f       	add	r30, r16
    2b7a:	e6 30       	cpi	r30, 0x06	; 6
    2b7c:	10 f5       	brcc	.+68     	; 0x2bc2 <_ZL18forwardGameControlv+0x1f8>
    2b7e:	db 01       	movw	r26, r22
    2b80:	a8 0f       	add	r26, r24
    2b82:	b9 1f       	adc	r27, r25
    2b84:	a6 95       	lsr	r26
    2b86:	a1 70       	andi	r26, 0x01	; 1
    2b88:	ff 2d       	mov	r31, r15
    2b8a:	fa 1b       	sub	r31, r26
    2b8c:	af 2f       	mov	r26, r31
    2b8e:	fe 30       	cpi	r31, 0x0E	; 14
    2b90:	c0 f4       	brcc	.+48     	; 0x2bc2 <_ZL18forwardGameControlv+0x1f8>
    2b92:	ec 01       	movw	r28, r24
    2b94:	cc 0f       	add	r28, r28
    2b96:	dd 1f       	adc	r29, r29
    2b98:	c9 59       	subi	r28, 0x99	; 153
    2b9a:	de 4f       	sbci	r29, 0xFE	; 254
    2b9c:	09 90       	ld	r0, Y+
    2b9e:	d8 81       	ld	r29, Y
    2ba0:	c0 2d       	mov	r28, r0
    2ba2:	ea 9e       	mul	r14, r26
    2ba4:	d0 01       	movw	r26, r0
    2ba6:	11 24       	eor	r1, r1
    2ba8:	ea 0f       	add	r30, r26
    2baa:	fb 2f       	mov	r31, r27
    2bac:	f1 1d       	adc	r31, r1
    2bae:	ee 0f       	add	r30, r30
    2bb0:	ff 1f       	adc	r31, r31
    2bb2:	e3 58       	subi	r30, 0x83	; 131
    2bb4:	fe 4f       	sbci	r31, 0xFE	; 254
    2bb6:	d1 83       	std	Z+1, r29	; 0x01
    2bb8:	c0 83       	st	Z, r28
    2bba:	c1 30       	cpi	r28, 0x01	; 1
    2bbc:	d1 05       	cpc	r29, r1
    2bbe:	d9 f4       	brne	.+54     	; 0x2bf6 <_ZL18forwardGameControlv+0x22c>
    2bc0:	2f 5f       	subi	r18, 0xFF	; 255
    2bc2:	15 30       	cpi	r17, 0x05	; 5
    2bc4:	21 f0       	breq	.+8      	; 0x2bce <_ZL18forwardGameControlv+0x204>
    2bc6:	01 96       	adiw	r24, 0x01	; 1
    2bc8:	83 30       	cpi	r24, 0x03	; 3
    2bca:	91 05       	cpc	r25, r1
    2bcc:	81 f6       	brne	.-96     	; 0x2b6e <_ZL18forwardGameControlv+0x1a4>
    2bce:	30 93 4b 01 	sts	0x014B, r19	; 0x80014b <_ZL12enemiesCount>
    2bd2:	20 93 43 01 	sts	0x0143, r18	; 0x800143 <_ZL10boxesCount>
    2bd6:	82 e0       	ldi	r24, 0x02	; 2
    2bd8:	90 e0       	ldi	r25, 0x00	; 0
    2bda:	90 93 4d 01 	sts	0x014D, r25	; 0x80014d <_ZL8gameMode+0x1>
    2bde:	80 93 4c 01 	sts	0x014C, r24	; 0x80014c <_ZL8gameMode>
    2be2:	81 e0       	ldi	r24, 0x01	; 1
    2be4:	80 93 76 02 	sts	0x0276, r24	; 0x800276 <isInvalid>
    2be8:	df 91       	pop	r29
    2bea:	cf 91       	pop	r28
    2bec:	1f 91       	pop	r17
    2bee:	0f 91       	pop	r16
    2bf0:	ff 90       	pop	r15
    2bf2:	ef 90       	pop	r14
    2bf4:	08 95       	ret
    2bf6:	27 97       	sbiw	r28, 0x07	; 7
    2bf8:	21 f7       	brne	.-56     	; 0x2bc2 <_ZL18forwardGameControlv+0x1f8>
    2bfa:	3f 5f       	subi	r19, 0xFF	; 255
    2bfc:	e2 cf       	rjmp	.-60     	; 0x2bc2 <_ZL18forwardGameControlv+0x1f8>

00002bfe <_ZL14tuneParametersv>:
    2bfe:	50 91 55 01 	lds	r21, 0x0155	; 0x800155 <_ZL5level>
    2c02:	85 2f       	mov	r24, r21
    2c04:	6a e0       	ldi	r22, 0x0A	; 10
    2c06:	0e 94 8d 2f 	call	0x5f1a	; 0x5f1a <__udivmodqi4>
    2c0a:	48 2f       	mov	r20, r24
    2c0c:	88 9f       	mul	r24, r24
    2c0e:	c0 01       	movw	r24, r0
    2c10:	11 24       	eor	r1, r1
    2c12:	84 30       	cpi	r24, 0x04	; 4
    2c14:	91 05       	cpc	r25, r1
    2c16:	0c f4       	brge	.+2      	; 0x2c1a <_ZL14tuneParametersv+0x1c>
    2c18:	49 c0       	rjmp	.+146    	; 0x2cac <_ZL14tuneParametersv+0xae>
    2c1a:	95 95       	asr	r25
    2c1c:	87 95       	ror	r24
    2c1e:	28 2f       	mov	r18, r24
    2c20:	30 e0       	ldi	r19, 0x00	; 0
    2c22:	85 2f       	mov	r24, r21
    2c24:	65 e0       	ldi	r22, 0x05	; 5
    2c26:	0e 94 8d 2f 	call	0x5f1a	; 0x5f1a <__udivmodqi4>
    2c2a:	e9 2f       	mov	r30, r25
    2c2c:	f0 e0       	ldi	r31, 0x00	; 0
    2c2e:	85 2f       	mov	r24, r21
    2c30:	6a e0       	ldi	r22, 0x0A	; 10
    2c32:	0e 94 8d 2f 	call	0x5f1a	; 0x5f1a <__udivmodqi4>
    2c36:	95 30       	cpi	r25, 0x05	; 5
    2c38:	d8 f1       	brcs	.+118    	; 0x2cb0 <_ZL14tuneParametersv+0xb2>
    2c3a:	82 e0       	ldi	r24, 0x02	; 2
    2c3c:	90 e0       	ldi	r25, 0x00	; 0
    2c3e:	e8 9f       	mul	r30, r24
    2c40:	b0 01       	movw	r22, r0
    2c42:	e9 9f       	mul	r30, r25
    2c44:	70 0d       	add	r23, r0
    2c46:	f8 9f       	mul	r31, r24
    2c48:	70 0d       	add	r23, r0
    2c4a:	11 24       	eor	r1, r1
    2c4c:	6c 5f       	subi	r22, 0xFC	; 252
    2c4e:	7f 4f       	sbci	r23, 0xFF	; 255
    2c50:	62 9f       	mul	r22, r18
    2c52:	c0 01       	movw	r24, r0
    2c54:	63 9f       	mul	r22, r19
    2c56:	90 0d       	add	r25, r0
    2c58:	72 9f       	mul	r23, r18
    2c5a:	90 0d       	add	r25, r0
    2c5c:	11 24       	eor	r1, r1
    2c5e:	95 95       	asr	r25
    2c60:	87 95       	ror	r24
    2c62:	95 95       	asr	r25
    2c64:	87 95       	ror	r24
    2c66:	81 34       	cpi	r24, 0x41	; 65
    2c68:	08 f0       	brcs	.+2      	; 0x2c6c <_ZL14tuneParametersv+0x6e>
    2c6a:	80 e4       	ldi	r24, 0x40	; 64
    2c6c:	80 93 3d 01 	sts	0x013D, r24	; 0x80013d <_ZL9fallSpeed>
    2c70:	83 e0       	ldi	r24, 0x03	; 3
    2c72:	84 0f       	add	r24, r20
    2c74:	88 0f       	add	r24, r24
    2c76:	41 11       	cpse	r20, r1
    2c78:	01 c0       	rjmp	.+2      	; 0x2c7c <_ZL14tuneParametersv+0x7e>
    2c7a:	88 e0       	ldi	r24, 0x08	; 8
    2c7c:	89 31       	cpi	r24, 0x19	; 25
    2c7e:	08 f0       	brcs	.+2      	; 0x2c82 <_ZL14tuneParametersv+0x84>
    2c80:	88 e1       	ldi	r24, 0x18	; 24
    2c82:	80 93 44 01 	sts	0x0144, r24	; 0x800144 <_ZL9ballSpeed>
    2c86:	21 e0       	ldi	r18, 0x01	; 1
    2c88:	24 0f       	add	r18, r20
    2c8a:	82 2f       	mov	r24, r18
    2c8c:	44 30       	cpi	r20, 0x04	; 4
    2c8e:	28 f4       	brcc	.+10     	; 0x2c9a <_ZL14tuneParametersv+0x9c>
    2c90:	85 2f       	mov	r24, r21
    2c92:	64 e1       	ldi	r22, 0x14	; 20
    2c94:	0e 94 8d 2f 	call	0x5f1a	; 0x5f1a <__udivmodqi4>
    2c98:	8d 5f       	subi	r24, 0xFD	; 253
    2c9a:	80 93 54 01 	sts	0x0154, r24	; 0x800154 <_ZL8ballFreq>
    2c9e:	82 2f       	mov	r24, r18
    2ca0:	88 0f       	add	r24, r24
    2ca2:	88 0f       	add	r24, r24
    2ca4:	82 0f       	add	r24, r18
    2ca6:	80 93 49 01 	sts	0x0149, r24	; 0x800149 <_ZL9scoreCoef>
    2caa:	08 95       	ret
    2cac:	81 e0       	ldi	r24, 0x01	; 1
    2cae:	b7 cf       	rjmp	.-146    	; 0x2c1e <_ZL14tuneParametersv+0x20>
    2cb0:	81 e0       	ldi	r24, 0x01	; 1
    2cb2:	90 e0       	ldi	r25, 0x00	; 0
    2cb4:	c4 cf       	rjmp	.-120    	; 0x2c3e <_ZL14tuneParametersv+0x40>

00002cb6 <_Z14playSoundClickv>:
    2cb6:	6f ef       	ldi	r22, 0xFF	; 255
    2cb8:	8c ea       	ldi	r24, 0xAC	; 172
    2cba:	91 e0       	ldi	r25, 0x01	; 1
    2cbc:	0c 94 02 0f 	jmp	0x1e04	; 0x1e04 <_ZN10MyArduboyV10playScore2EPKhh.constprop.39>

00002cc0 <_ZL8onCreditv>:
    2cc0:	0e 94 5b 16 	call	0x2cb6	; 0x2cb6 <_Z14playSoundClickv>
    2cc4:	83 e0       	ldi	r24, 0x03	; 3
    2cc6:	90 e0       	ldi	r25, 0x00	; 0
    2cc8:	90 93 78 02 	sts	0x0278, r25	; 0x800278 <_ZL5state.lto_priv.68+0x1>
    2ccc:	80 93 77 02 	sts	0x0277, r24	; 0x800277 <_ZL5state.lto_priv.68>
    2cd0:	81 e0       	ldi	r24, 0x01	; 1
    2cd2:	80 93 76 02 	sts	0x0276, r24	; 0x800276 <isInvalid>
    2cd6:	08 95       	ret

00002cd8 <_ZL8onRecordv>:
    2cd8:	0e 94 5b 16 	call	0x2cb6	; 0x2cb6 <_Z14playSoundClickv>
    2cdc:	82 e0       	ldi	r24, 0x02	; 2
    2cde:	90 e0       	ldi	r25, 0x00	; 0
    2ce0:	90 93 78 02 	sts	0x0278, r25	; 0x800278 <_ZL5state.lto_priv.68+0x1>
    2ce4:	80 93 77 02 	sts	0x0277, r24	; 0x800277 <_ZL5state.lto_priv.68>
    2ce8:	81 e0       	ldi	r24, 0x01	; 1
    2cea:	80 93 76 02 	sts	0x0276, r24	; 0x800276 <isInvalid>
    2cee:	08 95       	ret

00002cf0 <_ZL6onQuitv>:
    2cf0:	0e 94 5b 16 	call	0x2cb6	; 0x2cb6 <_Z14playSoundClickv>
    2cf4:	10 92 53 02 	sts	0x0253, r1	; 0x800253 <lastScore>
    2cf8:	10 92 54 02 	sts	0x0254, r1	; 0x800254 <lastScore+0x1>
    2cfc:	10 92 55 02 	sts	0x0255, r1	; 0x800255 <lastScore+0x2>
    2d00:	10 92 56 02 	sts	0x0256, r1	; 0x800256 <lastScore+0x3>
    2d04:	85 e0       	ldi	r24, 0x05	; 5
    2d06:	90 e0       	ldi	r25, 0x00	; 0
    2d08:	90 93 5c 01 	sts	0x015C, r25	; 0x80015c <_ZL5state.lto_priv.67+0x1>
    2d0c:	80 93 5b 01 	sts	0x015B, r24	; 0x80015b <_ZL5state.lto_priv.67>
    2d10:	08 95       	ret

00002d12 <_ZL10onContinuev>:
    2d12:	0e 94 5b 16 	call	0x2cb6	; 0x2cb6 <_Z14playSoundClickv>
    2d16:	82 e0       	ldi	r24, 0x02	; 2
    2d18:	90 e0       	ldi	r25, 0x00	; 0
    2d1a:	90 93 5c 01 	sts	0x015C, r25	; 0x80015c <_ZL5state.lto_priv.67+0x1>
    2d1e:	80 93 5b 01 	sts	0x015B, r24	; 0x80015b <_ZL5state.lto_priv.67>
    2d22:	81 e0       	ldi	r24, 0x01	; 1
    2d24:	80 93 76 02 	sts	0x0276, r24	; 0x800276 <isInvalid>
    2d28:	08 95       	ret

00002d2a <_Z8setSoundb>:
    2d2a:	88 23       	and	r24, r24
    2d2c:	49 f0       	breq	.+18     	; 0x2d40 <_Z8setSoundb+0x16>
    2d2e:	80 91 65 00 	lds	r24, 0x0065	; 0x800065 <__DATA_REGION_ORIGIN__+0x5>
    2d32:	87 7f       	andi	r24, 0xF7	; 247
    2d34:	80 93 65 00 	sts	0x0065, r24	; 0x800065 <__DATA_REGION_ORIGIN__+0x5>
    2d38:	81 e0       	ldi	r24, 0x01	; 1
    2d3a:	80 93 b9 02 	sts	0x02B9, r24	; 0x8002b9 <_ZN12ArduboyAudio13audio_enabledE>
    2d3e:	08 95       	ret
    2d40:	10 92 b9 02 	sts	0x02B9, r1	; 0x8002b9 <_ZN12ArduboyAudio13audio_enabledE>
    2d44:	80 91 65 00 	lds	r24, 0x0065	; 0x800065 <__DATA_REGION_ORIGIN__+0x5>
    2d48:	88 60       	ori	r24, 0x08	; 8
    2d4a:	80 93 65 00 	sts	0x0065, r24	; 0x800065 <__DATA_REGION_ORIGIN__+0x5>
    2d4e:	08 95       	ret

00002d50 <_Z10handleMenuv>:
    2d50:	cf 93       	push	r28
    2d52:	80 91 26 07 	lds	r24, 0x0726	; 0x800726 <arduboy+0x41c>
    2d56:	90 e0       	ldi	r25, 0x00	; 0
    2d58:	80 95       	com	r24
    2d5a:	90 95       	com	r25
    2d5c:	20 91 27 07 	lds	r18, 0x0727	; 0x800727 <arduboy+0x41d>
    2d60:	20 72       	andi	r18, 0x20	; 32
    2d62:	30 e0       	ldi	r19, 0x00	; 0
    2d64:	82 23       	and	r24, r18
    2d66:	93 23       	and	r25, r19
    2d68:	89 2b       	or	r24, r25
    2d6a:	d9 f0       	breq	.+54     	; 0x2da2 <_Z10handleMenuv+0x52>
    2d6c:	80 91 72 02 	lds	r24, 0x0272	; 0x800272 <_ZL11menuItemPos>
    2d70:	18 16       	cp	r1, r24
    2d72:	bc f4       	brge	.+46     	; 0x2da2 <_Z10handleMenuv+0x52>
    2d74:	81 50       	subi	r24, 0x01	; 1
    2d76:	98 2f       	mov	r25, r24
    2d78:	81 50       	subi	r24, 0x01	; 1
    2d7a:	24 e0       	ldi	r18, 0x04	; 4
    2d7c:	92 02       	muls	r25, r18
    2d7e:	f0 01       	movw	r30, r0
    2d80:	11 24       	eor	r1, r1
    2d82:	e5 5d       	subi	r30, 0xD5	; 213
    2d84:	fd 4f       	sbci	r31, 0xFD	; 253
    2d86:	20 81       	ld	r18, Z
    2d88:	31 81       	ldd	r19, Z+1	; 0x01
    2d8a:	23 2b       	or	r18, r19
    2d8c:	a1 f3       	breq	.-24     	; 0x2d76 <_Z10handleMenuv+0x26>
    2d8e:	90 93 72 02 	sts	0x0272, r25	; 0x800272 <_ZL11menuItemPos>
    2d92:	6f ef       	ldi	r22, 0xFF	; 255
    2d94:	88 ef       	ldi	r24, 0xF8	; 248
    2d96:	94 e0       	ldi	r25, 0x04	; 4
    2d98:	0e 94 02 0f 	call	0x1e04	; 0x1e04 <_ZN10MyArduboyV10playScore2EPKhh.constprop.39>
    2d9c:	81 e0       	ldi	r24, 0x01	; 1
    2d9e:	80 93 71 02 	sts	0x0271, r24	; 0x800271 <_ZL13isInvalidMenu>
    2da2:	80 91 26 07 	lds	r24, 0x0726	; 0x800726 <arduboy+0x41c>
    2da6:	90 e0       	ldi	r25, 0x00	; 0
    2da8:	80 95       	com	r24
    2daa:	90 95       	com	r25
    2dac:	20 91 27 07 	lds	r18, 0x0727	; 0x800727 <arduboy+0x41d>
    2db0:	20 74       	andi	r18, 0x40	; 64
    2db2:	30 e0       	ldi	r19, 0x00	; 0
    2db4:	82 23       	and	r24, r18
    2db6:	93 23       	and	r25, r19
    2db8:	89 2b       	or	r24, r25
    2dba:	39 f1       	breq	.+78     	; 0x2e0a <_Z10handleMenuv+0xba>
    2dbc:	80 91 72 02 	lds	r24, 0x0272	; 0x800272 <_ZL11menuItemPos>
    2dc0:	48 2f       	mov	r20, r24
    2dc2:	08 2e       	mov	r0, r24
    2dc4:	00 0c       	add	r0, r0
    2dc6:	55 0b       	sbc	r21, r21
    2dc8:	20 91 4c 02 	lds	r18, 0x024C	; 0x80024c <_ZL13menuItemCount>
    2dcc:	02 2e       	mov	r0, r18
    2dce:	00 0c       	add	r0, r0
    2dd0:	33 0b       	sbc	r19, r19
    2dd2:	21 50       	subi	r18, 0x01	; 1
    2dd4:	31 09       	sbc	r19, r1
    2dd6:	42 17       	cp	r20, r18
    2dd8:	53 07       	cpc	r21, r19
    2dda:	bc f4       	brge	.+46     	; 0x2e0a <_Z10handleMenuv+0xba>
    2ddc:	8f 5f       	subi	r24, 0xFF	; 255
    2dde:	98 2f       	mov	r25, r24
    2de0:	8f 5f       	subi	r24, 0xFF	; 255
    2de2:	24 e0       	ldi	r18, 0x04	; 4
    2de4:	92 02       	muls	r25, r18
    2de6:	f0 01       	movw	r30, r0
    2de8:	11 24       	eor	r1, r1
    2dea:	e5 5d       	subi	r30, 0xD5	; 213
    2dec:	fd 4f       	sbci	r31, 0xFD	; 253
    2dee:	20 81       	ld	r18, Z
    2df0:	31 81       	ldd	r19, Z+1	; 0x01
    2df2:	23 2b       	or	r18, r19
    2df4:	a1 f3       	breq	.-24     	; 0x2dde <_Z10handleMenuv+0x8e>
    2df6:	90 93 72 02 	sts	0x0272, r25	; 0x800272 <_ZL11menuItemPos>
    2dfa:	6f ef       	ldi	r22, 0xFF	; 255
    2dfc:	88 ef       	ldi	r24, 0xF8	; 248
    2dfe:	94 e0       	ldi	r25, 0x04	; 4
    2e00:	0e 94 02 0f 	call	0x1e04	; 0x1e04 <_ZN10MyArduboyV10playScore2EPKhh.constprop.39>
    2e04:	81 e0       	ldi	r24, 0x01	; 1
    2e06:	80 93 71 02 	sts	0x0271, r24	; 0x800271 <_ZL13isInvalidMenu>
    2e0a:	80 91 4d 02 	lds	r24, 0x024D	; 0x80024d <_ZL14isControlSound>
    2e0e:	88 23       	and	r24, r24
    2e10:	b9 f0       	breq	.+46     	; 0x2e40 <_Z10handleMenuv+0xf0>
    2e12:	80 91 27 07 	lds	r24, 0x0727	; 0x800727 <arduboy+0x41d>
    2e16:	88 70       	andi	r24, 0x08	; 8
    2e18:	90 e0       	ldi	r25, 0x00	; 0
    2e1a:	20 91 26 07 	lds	r18, 0x0726	; 0x800726 <arduboy+0x41c>
    2e1e:	30 e0       	ldi	r19, 0x00	; 0
    2e20:	20 95       	com	r18
    2e22:	30 95       	com	r19
    2e24:	82 23       	and	r24, r18
    2e26:	93 23       	and	r25, r19
    2e28:	89 2b       	or	r24, r25
    2e2a:	51 f0       	breq	.+20     	; 0x2e40 <_Z10handleMenuv+0xf0>
    2e2c:	80 91 b9 02 	lds	r24, 0x02B9	; 0x8002b9 <_ZN12ArduboyAudio13audio_enabledE>
    2e30:	c1 e0       	ldi	r28, 0x01	; 1
    2e32:	8c 27       	eor	r24, r28
    2e34:	0e 94 95 16 	call	0x2d2a	; 0x2d2a <_Z8setSoundb>
    2e38:	0e 94 5b 16 	call	0x2cb6	; 0x2cb6 <_Z14playSoundClickv>
    2e3c:	c0 93 71 02 	sts	0x0271, r28	; 0x800271 <_ZL13isInvalidMenu>
    2e40:	80 91 26 07 	lds	r24, 0x0726	; 0x800726 <arduboy+0x41c>
    2e44:	90 e0       	ldi	r25, 0x00	; 0
    2e46:	80 95       	com	r24
    2e48:	90 95       	com	r25
    2e4a:	20 91 27 07 	lds	r18, 0x0727	; 0x800727 <arduboy+0x41d>
    2e4e:	24 70       	andi	r18, 0x04	; 4
    2e50:	30 e0       	ldi	r19, 0x00	; 0
    2e52:	82 23       	and	r24, r18
    2e54:	93 23       	and	r25, r19
    2e56:	89 2b       	or	r24, r25
    2e58:	69 f0       	breq	.+26     	; 0x2e74 <_Z10handleMenuv+0x124>
    2e5a:	e0 91 72 02 	lds	r30, 0x0272	; 0x800272 <_ZL11menuItemPos>
    2e5e:	84 e0       	ldi	r24, 0x04	; 4
    2e60:	e8 02       	muls	r30, r24
    2e62:	f0 01       	movw	r30, r0
    2e64:	11 24       	eor	r1, r1
    2e66:	e5 5d       	subi	r30, 0xD5	; 213
    2e68:	fd 4f       	sbci	r31, 0xFD	; 253
    2e6a:	01 90       	ld	r0, Z+
    2e6c:	f0 81       	ld	r31, Z
    2e6e:	e0 2d       	mov	r30, r0
    2e70:	cf 91       	pop	r28
    2e72:	09 94       	ijmp
    2e74:	cf 91       	pop	r28
    2e76:	08 95       	ret

00002e78 <_ZL12calcCheckSumv>:
    2e78:	e7 e5       	ldi	r30, 0x57	; 87
    2e7a:	f2 e0       	ldi	r31, 0x02	; 2
    2e7c:	25 e0       	ldi	r18, 0x05	; 5
    2e7e:	30 e0       	ldi	r19, 0x00	; 0
    2e80:	89 e3       	ldi	r24, 0x39	; 57
    2e82:	9e e5       	ldi	r25, 0x5E	; 94
    2e84:	61 91       	ld	r22, Z+
    2e86:	71 91       	ld	r23, Z+
    2e88:	62 9f       	mul	r22, r18
    2e8a:	a0 01       	movw	r20, r0
    2e8c:	63 9f       	mul	r22, r19
    2e8e:	50 0d       	add	r21, r0
    2e90:	72 9f       	mul	r23, r18
    2e92:	50 0d       	add	r21, r0
    2e94:	11 24       	eor	r1, r1
    2e96:	84 0f       	add	r24, r20
    2e98:	95 1f       	adc	r25, r21
    2e9a:	2e 5f       	subi	r18, 0xFE	; 254
    2e9c:	3f 4f       	sbci	r19, 0xFF	; 255
    2e9e:	2f 31       	cpi	r18, 0x1F	; 31
    2ea0:	31 05       	cpc	r19, r1
    2ea2:	81 f7       	brne	.-32     	; 0x2e84 <_ZL12calcCheckSumv+0xc>
    2ea4:	08 95       	ret

00002ea6 <_ZN10MyArduboyV5writeEh>:
    2ea6:	2f 92       	push	r2
    2ea8:	3f 92       	push	r3
    2eaa:	4f 92       	push	r4
    2eac:	5f 92       	push	r5
    2eae:	6f 92       	push	r6
    2eb0:	7f 92       	push	r7
    2eb2:	8f 92       	push	r8
    2eb4:	9f 92       	push	r9
    2eb6:	af 92       	push	r10
    2eb8:	bf 92       	push	r11
    2eba:	cf 92       	push	r12
    2ebc:	df 92       	push	r13
    2ebe:	ef 92       	push	r14
    2ec0:	ff 92       	push	r15
    2ec2:	0f 93       	push	r16
    2ec4:	1f 93       	push	r17
    2ec6:	cf 93       	push	r28
    2ec8:	df 93       	push	r29
    2eca:	cd b7       	in	r28, 0x3d	; 61
    2ecc:	de b7       	in	r29, 0x3e	; 62
    2ece:	2b 97       	sbiw	r28, 0x0b	; 11
    2ed0:	0f b6       	in	r0, 0x3f	; 63
    2ed2:	f8 94       	cli
    2ed4:	de bf       	out	0x3e, r29	; 62
    2ed6:	0f be       	out	0x3f, r0	; 63
    2ed8:	cd bf       	out	0x3d, r28	; 61
    2eda:	6a 30       	cpi	r22, 0x0A	; 10
    2edc:	81 f5       	brne	.+96     	; 0x2f3e <_ZN10MyArduboyV5writeEh+0x98>
    2ede:	fc 01       	movw	r30, r24
    2ee0:	ec 5e       	subi	r30, 0xEC	; 236
    2ee2:	fb 4f       	sbci	r31, 0xFB	; 251
    2ee4:	dc 01       	movw	r26, r24
    2ee6:	a8 5e       	subi	r26, 0xE8	; 232
    2ee8:	bb 4f       	sbci	r27, 0xFB	; 251
    2eea:	4c 91       	ld	r20, X
    2eec:	20 81       	ld	r18, Z
    2eee:	31 81       	ldd	r19, Z+1	; 0x01
    2ef0:	56 e0       	ldi	r21, 0x06	; 6
    2ef2:	45 9f       	mul	r20, r21
    2ef4:	20 0d       	add	r18, r0
    2ef6:	31 1d       	adc	r19, r1
    2ef8:	11 24       	eor	r1, r1
    2efa:	31 83       	std	Z+1, r19	; 0x01
    2efc:	20 83       	st	Z, r18
    2efe:	12 97       	sbiw	r26, 0x02	; 2
    2f00:	8f e3       	ldi	r24, 0x3F	; 63
    2f02:	90 e0       	ldi	r25, 0x00	; 0
    2f04:	8d 93       	st	X+, r24
    2f06:	9c 93       	st	X, r25
    2f08:	81 e0       	ldi	r24, 0x01	; 1
    2f0a:	90 e0       	ldi	r25, 0x00	; 0
    2f0c:	2b 96       	adiw	r28, 0x0b	; 11
    2f0e:	0f b6       	in	r0, 0x3f	; 63
    2f10:	f8 94       	cli
    2f12:	de bf       	out	0x3e, r29	; 62
    2f14:	0f be       	out	0x3f, r0	; 63
    2f16:	cd bf       	out	0x3d, r28	; 61
    2f18:	df 91       	pop	r29
    2f1a:	cf 91       	pop	r28
    2f1c:	1f 91       	pop	r17
    2f1e:	0f 91       	pop	r16
    2f20:	ff 90       	pop	r15
    2f22:	ef 90       	pop	r14
    2f24:	df 90       	pop	r13
    2f26:	cf 90       	pop	r12
    2f28:	bf 90       	pop	r11
    2f2a:	af 90       	pop	r10
    2f2c:	9f 90       	pop	r9
    2f2e:	8f 90       	pop	r8
    2f30:	7f 90       	pop	r7
    2f32:	6f 90       	pop	r6
    2f34:	5f 90       	pop	r5
    2f36:	4f 90       	pop	r4
    2f38:	3f 90       	pop	r3
    2f3a:	2f 90       	pop	r2
    2f3c:	08 95       	ret
    2f3e:	20 ee       	ldi	r18, 0xE0	; 224
    2f40:	26 0f       	add	r18, r22
    2f42:	20 34       	cpi	r18, 0x40	; 64
    2f44:	08 f7       	brcc	.-62     	; 0x2f08 <_ZN10MyArduboyV5writeEh+0x62>
    2f46:	9b 87       	std	Y+11, r25	; 0x0b
    2f48:	8a 87       	std	Y+10, r24	; 0x0a
    2f4a:	fc 01       	movw	r30, r24
    2f4c:	ec 5e       	subi	r30, 0xEC	; 236
    2f4e:	fb 4f       	sbci	r31, 0xFB	; 251
    2f50:	e0 80       	ld	r14, Z
    2f52:	f1 80       	ldd	r15, Z+1	; 0x01
    2f54:	88 5e       	subi	r24, 0xE8	; 232
    2f56:	9b 4f       	sbci	r25, 0xFB	; 251
    2f58:	9f 83       	std	Y+7, r25	; 0x07
    2f5a:	8e 83       	std	Y+6, r24	; 0x06
    2f5c:	ea 85       	ldd	r30, Y+10	; 0x0a
    2f5e:	fb 85       	ldd	r31, Y+11	; 0x0b
    2f60:	ea 5e       	subi	r30, 0xEA	; 234
    2f62:	fb 4f       	sbci	r31, 0xFB	; 251
    2f64:	fc 83       	std	Y+4, r31	; 0x04
    2f66:	eb 83       	std	Y+3, r30	; 0x03
    2f68:	f0 e8       	ldi	r31, 0x80	; 128
    2f6a:	ef 16       	cp	r14, r31
    2f6c:	f1 04       	cpc	r15, r1
    2f6e:	0c f0       	brlt	.+2      	; 0x2f72 <_ZN10MyArduboyV5writeEh+0xcc>
    2f70:	5c c0       	rjmp	.+184    	; 0x302a <_ZN10MyArduboyV5writeEh+0x184>
    2f72:	dc 01       	movw	r26, r24
    2f74:	7c 90       	ld	r7, X
    2f76:	e7 2d       	mov	r30, r7
    2f78:	f0 e0       	ldi	r31, 0x00	; 0
    2f7a:	fa 83       	std	Y+2, r31	; 0x02
    2f7c:	e9 83       	std	Y+1, r30	; 0x01
    2f7e:	f6 e0       	ldi	r31, 0x06	; 6
    2f80:	7f 9e       	mul	r7, r31
    2f82:	c0 01       	movw	r24, r0
    2f84:	11 24       	eor	r1, r1
    2f86:	ab 81       	ldd	r26, Y+3	; 0x03
    2f88:	bc 81       	ldd	r27, Y+4	; 0x04
    2f8a:	0d 91       	ld	r16, X+
    2f8c:	1c 91       	ld	r17, X
    2f8e:	9c 01       	movw	r18, r24
    2f90:	21 5c       	subi	r18, 0xC1	; 193
    2f92:	3f 4f       	sbci	r19, 0xFF	; 255
    2f94:	20 17       	cp	r18, r16
    2f96:	31 07       	cpc	r19, r17
    2f98:	08 f4       	brcc	.+2      	; 0x2f9c <_ZN10MyArduboyV5writeEh+0xf6>
    2f9a:	47 c0       	rjmp	.+142    	; 0x302a <_ZN10MyArduboyV5writeEh+0x184>
    2f9c:	8e 0d       	add	r24, r14
    2f9e:	9f 1d       	adc	r25, r15
    2fa0:	97 fd       	sbrc	r25, 7
    2fa2:	43 c0       	rjmp	.+134    	; 0x302a <_ZN10MyArduboyV5writeEh+0x184>
    2fa4:	ea 85       	ldd	r30, Y+10	; 0x0a
    2fa6:	fb 85       	ldd	r31, Y+11	; 0x0b
    2fa8:	e5 5e       	subi	r30, 0xE5	; 229
    2faa:	fb 4f       	sbci	r31, 0xFB	; 251
    2fac:	60 80       	ld	r6, Z
    2fae:	ea 85       	ldd	r30, Y+10	; 0x0a
    2fb0:	fb 85       	ldd	r31, Y+11	; 0x0b
    2fb2:	e6 5e       	subi	r30, 0xE6	; 230
    2fb4:	fb 4f       	sbci	r31, 0xFB	; 251
    2fb6:	50 80       	ld	r5, Z
    2fb8:	b4 e0       	ldi	r27, 0x04	; 4
    2fba:	6b 9f       	mul	r22, r27
    2fbc:	f0 01       	movw	r30, r0
    2fbe:	11 24       	eor	r1, r1
    2fc0:	e4 5d       	subi	r30, 0xD4	; 212
    2fc2:	ff 4f       	sbci	r31, 0xFF	; 255
    2fc4:	85 90       	lpm	r8, Z+
    2fc6:	95 90       	lpm	r9, Z+
    2fc8:	a5 90       	lpm	r10, Z+
    2fca:	b4 90       	lpm	r11, Z
    2fcc:	e1 e0       	ldi	r30, 0x01	; 1
    2fce:	7e 12       	cpse	r7, r30
    2fd0:	59 c0       	rjmp	.+178    	; 0x3084 <_ZN10MyArduboyV5writeEh+0x1de>
    2fd2:	36 e0       	ldi	r19, 0x06	; 6
    2fd4:	73 2e       	mov	r7, r19
    2fd6:	d1 2c       	mov	r13, r1
    2fd8:	c1 2c       	mov	r12, r1
    2fda:	d5 01       	movw	r26, r10
    2fdc:	c4 01       	movw	r24, r8
    2fde:	81 70       	andi	r24, 0x01	; 1
    2fe0:	99 27       	eor	r25, r25
    2fe2:	aa 27       	eor	r26, r26
    2fe4:	bb 27       	eor	r27, r27
    2fe6:	80 fc       	sbrc	r8, 0
    2fe8:	02 c0       	rjmp	.+4      	; 0x2fee <_ZN10MyArduboyV5writeEh+0x148>
    2fea:	65 14       	cp	r6, r5
    2fec:	71 f0       	breq	.+28     	; 0x300a <_ZN10MyArduboyV5writeEh+0x164>
    2fee:	25 2d       	mov	r18, r5
    2ff0:	89 2b       	or	r24, r25
    2ff2:	8a 2b       	or	r24, r26
    2ff4:	8b 2b       	or	r24, r27
    2ff6:	09 f4       	brne	.+2      	; 0x2ffa <_ZN10MyArduboyV5writeEh+0x154>
    2ff8:	26 2d       	mov	r18, r6
    2ffa:	a8 01       	movw	r20, r16
    2ffc:	b7 01       	movw	r22, r14
    2ffe:	6c 0d       	add	r22, r12
    3000:	7d 1d       	adc	r23, r13
    3002:	8a 85       	ldd	r24, Y+10	; 0x0a
    3004:	9b 85       	ldd	r25, Y+11	; 0x0b
    3006:	0e 94 34 0f 	call	0x1e68	; 0x1e68 <_ZN7Arduboy9drawPixelEiih>
    300a:	b6 94       	lsr	r11
    300c:	a7 94       	ror	r10
    300e:	97 94       	ror	r9
    3010:	87 94       	ror	r8
    3012:	ff ef       	ldi	r31, 0xFF	; 255
    3014:	cf 1a       	sub	r12, r31
    3016:	df 0a       	sbc	r13, r31
    3018:	26 e0       	ldi	r18, 0x06	; 6
    301a:	c2 16       	cp	r12, r18
    301c:	d1 04       	cpc	r13, r1
    301e:	e9 f6       	brne	.-70     	; 0x2fda <_ZN10MyArduboyV5writeEh+0x134>
    3020:	7a 94       	dec	r7
    3022:	01 50       	subi	r16, 0x01	; 1
    3024:	11 09       	sbc	r17, r1
    3026:	71 10       	cpse	r7, r1
    3028:	d6 cf       	rjmp	.-84     	; 0x2fd6 <_ZN10MyArduboyV5writeEh+0x130>
    302a:	ae 81       	ldd	r26, Y+6	; 0x06
    302c:	bf 81       	ldd	r27, Y+7	; 0x07
    302e:	2c 91       	ld	r18, X
    3030:	3a ef       	ldi	r19, 0xFA	; 250
    3032:	32 03       	mulsu	r19, r18
    3034:	a0 01       	movw	r20, r0
    3036:	11 24       	eor	r1, r1
    3038:	ab 81       	ldd	r26, Y+3	; 0x03
    303a:	bc 81       	ldd	r27, Y+4	; 0x04
    303c:	8d 91       	ld	r24, X+
    303e:	9c 91       	ld	r25, X
    3040:	11 97       	sbiw	r26, 0x01	; 1
    3042:	48 0f       	add	r20, r24
    3044:	59 1f       	adc	r21, r25
    3046:	4d 93       	st	X+, r20
    3048:	5c 93       	st	X, r21
    304a:	ea 85       	ldd	r30, Y+10	; 0x0a
    304c:	fb 85       	ldd	r31, Y+11	; 0x0b
    304e:	e7 5e       	subi	r30, 0xE7	; 231
    3050:	fb 4f       	sbci	r31, 0xFB	; 251
    3052:	80 81       	ld	r24, Z
    3054:	88 23       	and	r24, r24
    3056:	09 f4       	brne	.+2      	; 0x305a <_ZN10MyArduboyV5writeEh+0x1b4>
    3058:	57 cf       	rjmp	.-338    	; 0x2f08 <_ZN10MyArduboyV5writeEh+0x62>
    305a:	b6 e0       	ldi	r27, 0x06	; 6
    305c:	2b 9f       	mul	r18, r27
    305e:	c0 01       	movw	r24, r0
    3060:	11 24       	eor	r1, r1
    3062:	01 97       	sbiw	r24, 0x01	; 1
    3064:	48 17       	cp	r20, r24
    3066:	59 07       	cpc	r21, r25
    3068:	0c f0       	brlt	.+2      	; 0x306c <_ZN10MyArduboyV5writeEh+0x1c6>
    306a:	4e cf       	rjmp	.-356    	; 0x2f08 <_ZN10MyArduboyV5writeEh+0x62>
    306c:	aa 85       	ldd	r26, Y+10	; 0x0a
    306e:	bb 85       	ldd	r27, Y+11	; 0x0b
    3070:	ed 91       	ld	r30, X+
    3072:	fc 91       	ld	r31, X
    3074:	11 97       	sbiw	r26, 0x01	; 1
    3076:	01 90       	ld	r0, Z+
    3078:	f0 81       	ld	r31, Z
    307a:	e0 2d       	mov	r30, r0
    307c:	6a e0       	ldi	r22, 0x0A	; 10
    307e:	cd 01       	movw	r24, r26
    3080:	09 95       	icall
    3082:	42 cf       	rjmp	.-380    	; 0x2f08 <_ZN10MyArduboyV5writeEh+0x62>
    3084:	0f 5f       	subi	r16, 0xFF	; 255
    3086:	1f 4f       	sbci	r17, 0xFF	; 255
    3088:	18 01       	movw	r2, r16
    308a:	89 81       	ldd	r24, Y+1	; 0x01
    308c:	9a 81       	ldd	r25, Y+2	; 0x02
    308e:	28 1a       	sub	r2, r24
    3090:	39 0a       	sbc	r3, r25
    3092:	16 e0       	ldi	r17, 0x06	; 6
    3094:	67 01       	movw	r12, r14
    3096:	96 e0       	ldi	r25, 0x06	; 6
    3098:	49 2e       	mov	r4, r25
    309a:	a9 81       	ldd	r26, Y+1	; 0x01
    309c:	ba 81       	ldd	r27, Y+2	; 0x02
    309e:	ac 0d       	add	r26, r12
    30a0:	bd 1d       	adc	r27, r13
    30a2:	b9 87       	std	Y+9, r27	; 0x09
    30a4:	a8 87       	std	Y+8, r26	; 0x08
    30a6:	d5 01       	movw	r26, r10
    30a8:	c4 01       	movw	r24, r8
    30aa:	81 70       	andi	r24, 0x01	; 1
    30ac:	99 27       	eor	r25, r25
    30ae:	aa 27       	eor	r26, r26
    30b0:	bb 27       	eor	r27, r27
    30b2:	80 fc       	sbrc	r8, 0
    30b4:	02 c0       	rjmp	.+4      	; 0x30ba <_ZN10MyArduboyV5writeEh+0x214>
    30b6:	65 14       	cp	r6, r5
    30b8:	c1 f0       	breq	.+48     	; 0x30ea <_ZN10MyArduboyV5writeEh+0x244>
    30ba:	89 2b       	or	r24, r25
    30bc:	8a 2b       	or	r24, r26
    30be:	8b 2b       	or	r24, r27
    30c0:	91 f0       	breq	.+36     	; 0x30e6 <_ZN10MyArduboyV5writeEh+0x240>
    30c2:	5d 82       	std	Y+5, r5	; 0x05

void Arduboy::fillRect
(int16_t x, int16_t y, uint8_t w, uint8_t h, uint8_t color)
{
  // stupidest version - update in subclasses if desired!
  for (int16_t i=x; i<x+w; i++)
    30c4:	e8 85       	ldd	r30, Y+8	; 0x08
    30c6:	f9 85       	ldd	r31, Y+9	; 0x09
    30c8:	ce 16       	cp	r12, r30
    30ca:	df 06       	cpc	r13, r31
    30cc:	74 f4       	brge	.+28     	; 0x30ea <_ZN10MyArduboyV5writeEh+0x244>
  {
    drawFastVLine(i, y, h, color);
    30ce:	0d 81       	ldd	r16, Y+5	; 0x05
    30d0:	27 2d       	mov	r18, r7
    30d2:	a1 01       	movw	r20, r2
    30d4:	b6 01       	movw	r22, r12
    30d6:	8a 85       	ldd	r24, Y+10	; 0x0a
    30d8:	9b 85       	ldd	r25, Y+11	; 0x0b
    30da:	0e 94 71 10 	call	0x20e2	; 0x20e2 <_ZN7Arduboy13drawFastVLineEiihh>

void Arduboy::fillRect
(int16_t x, int16_t y, uint8_t w, uint8_t h, uint8_t color)
{
  // stupidest version - update in subclasses if desired!
  for (int16_t i=x; i<x+w; i++)
    30de:	ff ef       	ldi	r31, 0xFF	; 255
    30e0:	cf 1a       	sub	r12, r31
    30e2:	df 0a       	sbc	r13, r31
    30e4:	ef cf       	rjmp	.-34     	; 0x30c4 <_ZN10MyArduboyV5writeEh+0x21e>
    30e6:	6d 82       	std	Y+5, r6	; 0x05
    30e8:	ed cf       	rjmp	.-38     	; 0x30c4 <_ZN10MyArduboyV5writeEh+0x21e>
    30ea:	b6 94       	lsr	r11
    30ec:	a7 94       	ror	r10
    30ee:	97 94       	ror	r9
    30f0:	87 94       	ror	r8
    30f2:	4a 94       	dec	r4
    30f4:	c8 84       	ldd	r12, Y+8	; 0x08
    30f6:	d9 84       	ldd	r13, Y+9	; 0x09
    30f8:	41 10       	cpse	r4, r1
    30fa:	cf cf       	rjmp	.-98     	; 0x309a <_ZN10MyArduboyV5writeEh+0x1f4>
    30fc:	11 50       	subi	r17, 0x01	; 1
    30fe:	29 81       	ldd	r18, Y+1	; 0x01
    3100:	3a 81       	ldd	r19, Y+2	; 0x02
    3102:	22 1a       	sub	r2, r18
    3104:	33 0a       	sbc	r3, r19
    3106:	11 11       	cpse	r17, r1
    3108:	c5 cf       	rjmp	.-118    	; 0x3094 <_ZN10MyArduboyV5writeEh+0x1ee>
    310a:	8f cf       	rjmp	.-226    	; 0x302a <_ZN10MyArduboyV5writeEh+0x184>

0000310c <_ZN5Print5printEPK19__FlashStringHelper.constprop.49>:

size_t Print::print(const __FlashStringHelper *ifsh)
    310c:	0f 93       	push	r16
    310e:	1f 93       	push	r17
    3110:	cf 93       	push	r28
    3112:	df 93       	push	r29
    3114:	8c 01       	movw	r16, r24
{
  PGM_P p = reinterpret_cast<PGM_P>(ifsh);
  size_t n = 0;
    3116:	d0 e0       	ldi	r29, 0x00	; 0
    3118:	c0 e0       	ldi	r28, 0x00	; 0
  while (1) {
    unsigned char c = pgm_read_byte(p++);
    311a:	f8 01       	movw	r30, r16
    311c:	ec 0f       	add	r30, r28
    311e:	fd 1f       	adc	r31, r29
    3120:	64 91       	lpm	r22, Z
    if (c == 0) break;
    3122:	66 23       	and	r22, r22
    3124:	41 f0       	breq	.+16     	; 0x3136 <_ZN5Print5printEPK19__FlashStringHelper.constprop.49+0x2a>
    if (write(c)) n++;
    3126:	8a e0       	ldi	r24, 0x0A	; 10
    3128:	93 e0       	ldi	r25, 0x03	; 3
    312a:	0e 94 53 17 	call	0x2ea6	; 0x2ea6 <_ZN10MyArduboyV5writeEh>
    312e:	89 2b       	or	r24, r25
    3130:	11 f0       	breq	.+4      	; 0x3136 <_ZN5Print5printEPK19__FlashStringHelper.constprop.49+0x2a>
    3132:	21 96       	adiw	r28, 0x01	; 1
    3134:	f2 cf       	rjmp	.-28     	; 0x311a <_ZN5Print5printEPK19__FlashStringHelper.constprop.49+0xe>
    else break;
  }
  return n;
}
    3136:	ce 01       	movw	r24, r28
    3138:	df 91       	pop	r29
    313a:	cf 91       	pop	r28
    313c:	1f 91       	pop	r17
    313e:	0f 91       	pop	r16
    3140:	08 95       	ret

00003142 <_Z8drawLogov>:
    3142:	8f 92       	push	r8
    3144:	9f 92       	push	r9
    3146:	af 92       	push	r10
    3148:	bf 92       	push	r11
    314a:	cf 92       	push	r12
    314c:	df 92       	push	r13
    314e:	ef 92       	push	r14
    3150:	0f 93       	push	r16
    3152:	cf 93       	push	r28
    3154:	df 93       	push	r29
  clear();
}

void Arduboy::clear()
{
  fillScreen(BLACK);
    3156:	0e 94 8f 09 	call	0x131e	; 0x131e <_ZN7Arduboy10fillScreenEh.constprop.19>
    315a:	20 91 2a 02 	lds	r18, 0x022A	; 0x80022a <_ZL7counter>
    315e:	88 e7       	ldi	r24, 0x78	; 120
    3160:	90 e0       	ldi	r25, 0x00	; 0
    3162:	82 1b       	sub	r24, r18
    3164:	91 09       	sbc	r25, r1
    3166:	6c e2       	ldi	r22, 0x2C	; 44
    3168:	70 e0       	ldi	r23, 0x00	; 0
    316a:	0e 94 99 2f 	call	0x5f32	; 0x5f32 <__divmodhi4>
    316e:	4b 01       	movw	r8, r22
    3170:	2c ef       	ldi	r18, 0xFC	; 252
    3172:	c2 2e       	mov	r12, r18
    3174:	23 e0       	ldi	r18, 0x03	; 3
    3176:	d2 2e       	mov	r13, r18
    3178:	3b e2       	ldi	r19, 0x2B	; 43
    317a:	a3 2e       	mov	r10, r19
    317c:	b1 2c       	mov	r11, r1
    317e:	d0 e0       	ldi	r29, 0x00	; 0
    3180:	c0 e0       	ldi	r28, 0x00	; 0
    3182:	81 e0       	ldi	r24, 0x01	; 1
    3184:	90 e0       	ldi	r25, 0x00	; 0
    3186:	8c 16       	cp	r8, r28
    3188:	9d 06       	cpc	r9, r29
    318a:	11 f0       	breq	.+4      	; 0x3190 <_Z8drawLogov+0x4e>
    318c:	90 e0       	ldi	r25, 0x00	; 0
    318e:	80 e0       	ldi	r24, 0x00	; 0
    3190:	20 91 29 02 	lds	r18, 0x0229	; 0x800229 <_ZL8signalOn>
    3194:	28 9f       	mul	r18, r24
    3196:	b0 01       	movw	r22, r0
    3198:	29 9f       	mul	r18, r25
    319a:	70 0d       	add	r23, r0
    319c:	11 24       	eor	r1, r1
    319e:	66 5d       	subi	r22, 0xD6	; 214
    31a0:	7f 4f       	sbci	r23, 0xFF	; 255
    31a2:	95 e1       	ldi	r25, 0x15	; 21
    31a4:	e9 2e       	mov	r14, r25
    31a6:	0c e1       	ldi	r16, 0x1C	; 28
    31a8:	96 01       	movw	r18, r12
    31aa:	a5 01       	movw	r20, r10
    31ac:	8a e0       	ldi	r24, 0x0A	; 10
    31ae:	93 e0       	ldi	r25, 0x03	; 3
    31b0:	0e 94 94 08 	call	0x1128	; 0x1128 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25>
    31b4:	21 96       	adiw	r28, 0x01	; 1
    31b6:	85 e1       	ldi	r24, 0x15	; 21
    31b8:	a8 1a       	sub	r10, r24
    31ba:	b1 08       	sbc	r11, r1
    31bc:	84 e5       	ldi	r24, 0x54	; 84
    31be:	c8 0e       	add	r12, r24
    31c0:	d1 1c       	adc	r13, r1
    31c2:	c3 30       	cpi	r28, 0x03	; 3
    31c4:	d1 05       	cpc	r29, r1
    31c6:	e9 f6       	brne	.-70     	; 0x3182 <_Z8drawLogov+0x40>
    31c8:	80 e2       	ldi	r24, 0x20	; 32
    31ca:	e8 2e       	mov	r14, r24
    31cc:	08 e0       	ldi	r16, 0x08	; 8
    31ce:	2c ed       	ldi	r18, 0xDC	; 220
    31d0:	33 e0       	ldi	r19, 0x03	; 3
    31d2:	50 e0       	ldi	r21, 0x00	; 0
    31d4:	40 e0       	ldi	r20, 0x00	; 0
    31d6:	68 e4       	ldi	r22, 0x48	; 72
    31d8:	70 e0       	ldi	r23, 0x00	; 0
    31da:	8a e0       	ldi	r24, 0x0A	; 10
    31dc:	93 e0       	ldi	r25, 0x03	; 3
    31de:	0e 94 94 08 	call	0x1128	; 0x1128 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25>
  }
}

void Arduboy::setCursor(int16_t x, int16_t y)
{
  cursor_x = x;
    31e2:	8c e5       	ldi	r24, 0x5C	; 92
    31e4:	90 e0       	ldi	r25, 0x00	; 0
    31e6:	90 93 1f 07 	sts	0x071F, r25	; 0x80071f <arduboy+0x415>
    31ea:	80 93 1e 07 	sts	0x071E, r24	; 0x80071e <arduboy+0x414>
  cursor_y = y;
    31ee:	85 e3       	ldi	r24, 0x35	; 53
    31f0:	90 e0       	ldi	r25, 0x00	; 0
    31f2:	90 93 21 07 	sts	0x0721, r25	; 0x800721 <arduboy+0x417>
    31f6:	80 93 20 07 	sts	0x0720, r24	; 0x800720 <arduboy+0x416>
    31fa:	84 ed       	ldi	r24, 0xD4	; 212
    31fc:	93 e0       	ldi	r25, 0x03	; 3
    31fe:	0e 94 86 18 	call	0x310c	; 0x310c <_ZN5Print5printEPK19__FlashStringHelper.constprop.49>
  }
}

void Arduboy::setCursor(int16_t x, int16_t y)
{
  cursor_x = x;
    3202:	82 e6       	ldi	r24, 0x62	; 98
    3204:	90 e0       	ldi	r25, 0x00	; 0
    3206:	90 93 1f 07 	sts	0x071F, r25	; 0x80071f <arduboy+0x415>
    320a:	80 93 1e 07 	sts	0x071E, r24	; 0x80071e <arduboy+0x414>
  cursor_y = y;
    320e:	88 e3       	ldi	r24, 0x38	; 56
    3210:	90 e0       	ldi	r25, 0x00	; 0
    3212:	90 93 21 07 	sts	0x0721, r25	; 0x800721 <arduboy+0x417>
    3216:	80 93 20 07 	sts	0x0720, r24	; 0x800720 <arduboy+0x416>
    321a:	8b ec       	ldi	r24, 0xCB	; 203
    321c:	93 e0       	ldi	r25, 0x03	; 3
    321e:	df 91       	pop	r29
    3220:	cf 91       	pop	r28
    3222:	0f 91       	pop	r16
    3224:	ef 90       	pop	r14
    3226:	df 90       	pop	r13
    3228:	cf 90       	pop	r12
    322a:	bf 90       	pop	r11
    322c:	af 90       	pop	r10
    322e:	9f 90       	pop	r9
    3230:	8f 90       	pop	r8
    3232:	0c 94 86 18 	jmp	0x310c	; 0x310c <_ZN5Print5printEPK19__FlashStringHelper.constprop.49>

00003236 <_ZN5Print5flushEv>:
    size_t println(unsigned long, int = DEC);
    size_t println(double, int = 2);
    size_t println(const Printable&);
    size_t println(void);

    virtual void flush() { /* Empty implementation for backward compatibility */ }
    3236:	08 95       	ret

00003238 <_ZN5Print17availableForWriteEv>:
      return write((const uint8_t *)buffer, size);
    }

    // default to zero, meaning "a single write may block"
    // should be overriden by subclasses with buffering
    virtual int availableForWrite() { return 0; }
    3238:	90 e0       	ldi	r25, 0x00	; 0
    323a:	80 e0       	ldi	r24, 0x00	; 0
    323c:	08 95       	ret

0000323e <_ZN10MyArduboyV14drawFastHLine2Eiihh.constprop.44>:
    323e:	97 ff       	sbrs	r25, 7
    3240:	0d c0       	rjmp	.+26     	; 0x325c <_ZN10MyArduboyV14drawFastHLine2Eiihh.constprop.44+0x1e>
    3242:	22 27       	eor	r18, r18
    3244:	33 27       	eor	r19, r19
    3246:	28 1b       	sub	r18, r24
    3248:	39 0b       	sbc	r19, r25
    324a:	42 17       	cp	r20, r18
    324c:	13 06       	cpc	r1, r19
    324e:	29 f0       	breq	.+10     	; 0x325a <_ZN10MyArduboyV14drawFastHLine2Eiihh.constprop.44+0x1c>
    3250:	24 f0       	brlt	.+8      	; 0x325a <_ZN10MyArduboyV14drawFastHLine2Eiihh.constprop.44+0x1c>
    3252:	48 0f       	add	r20, r24
    3254:	90 e0       	ldi	r25, 0x00	; 0
    3256:	80 e0       	ldi	r24, 0x00	; 0
    3258:	31 f4       	brne	.+12     	; 0x3266 <_ZN10MyArduboyV14drawFastHLine2Eiihh.constprop.44+0x28>
    325a:	08 95       	ret
    325c:	44 23       	and	r20, r20
    325e:	e9 f3       	breq	.-6      	; 0x325a <_ZN10MyArduboyV14drawFastHLine2Eiihh.constprop.44+0x1c>
    3260:	80 38       	cpi	r24, 0x80	; 128
    3262:	91 05       	cpc	r25, r1
    3264:	d4 f7       	brge	.-12     	; 0x325a <_ZN10MyArduboyV14drawFastHLine2Eiihh.constprop.44+0x1c>
    3266:	60 34       	cpi	r22, 0x40	; 64
    3268:	71 05       	cpc	r23, r1
    326a:	b8 f7       	brcc	.-18     	; 0x325a <_ZN10MyArduboyV14drawFastHLine2Eiihh.constprop.44+0x1c>
    326c:	9c 01       	movw	r18, r24
    326e:	24 0f       	add	r18, r20
    3270:	31 1d       	adc	r19, r1
    3272:	21 38       	cpi	r18, 0x81	; 129
    3274:	31 05       	cpc	r19, r1
    3276:	14 f0       	brlt	.+4      	; 0x327c <_ZN10MyArduboyV14drawFastHLine2Eiihh.constprop.44+0x3e>
    3278:	40 e8       	ldi	r20, 0x80	; 128
    327a:	48 1b       	sub	r20, r24
    327c:	36 2f       	mov	r19, r22
    327e:	37 70       	andi	r19, 0x07	; 7
    3280:	21 e0       	ldi	r18, 0x01	; 1
    3282:	01 c0       	rjmp	.+2      	; 0x3286 <_ZN10MyArduboyV14drawFastHLine2Eiihh.constprop.44+0x48>
    3284:	22 0f       	add	r18, r18
    3286:	3a 95       	dec	r19
    3288:	ea f7       	brpl	.-6      	; 0x3284 <_ZN10MyArduboyV14drawFastHLine2Eiihh.constprop.44+0x46>
    328a:	fb 01       	movw	r30, r22
    328c:	33 e0       	ldi	r19, 0x03	; 3
    328e:	f5 95       	asr	r31
    3290:	e7 95       	ror	r30
    3292:	3a 95       	dec	r19
    3294:	e1 f7       	brne	.-8      	; 0x328e <_ZN10MyArduboyV14drawFastHLine2Eiihh.constprop.44+0x50>
    3296:	f6 95       	lsr	r31
    3298:	fe 2f       	mov	r31, r30
    329a:	ee 27       	eor	r30, r30
    329c:	f7 95       	ror	r31
    329e:	e7 95       	ror	r30
    32a0:	e8 0f       	add	r30, r24
    32a2:	f9 1f       	adc	r31, r25
    32a4:	e2 5e       	subi	r30, 0xE2	; 226
    32a6:	fc 4f       	sbci	r31, 0xFC	; 252
    32a8:	80 81       	ld	r24, Z
    32aa:	82 2b       	or	r24, r18
    32ac:	81 93       	st	Z+, r24
    32ae:	41 50       	subi	r20, 0x01	; 1
    32b0:	d9 f7       	brne	.-10     	; 0x32a8 <_ZN10MyArduboyV14drawFastHLine2Eiihh.constprop.44+0x6a>
    32b2:	d3 cf       	rjmp	.-90     	; 0x325a <_ZN10MyArduboyV14drawFastHLine2Eiihh.constprop.44+0x1c>

000032b4 <_ZN10MyArduboyV9drawRect2Eiihah.constprop.43>:
    32b4:	ef 92       	push	r14
    32b6:	ff 92       	push	r15
    32b8:	0f 93       	push	r16
    32ba:	1f 93       	push	r17
    32bc:	cf 93       	push	r28
    32be:	df 93       	push	r29
    32c0:	7c 01       	movw	r14, r24
    32c2:	eb 01       	movw	r28, r22
    32c4:	14 2f       	mov	r17, r20
    32c6:	02 2f       	mov	r16, r18
    32c8:	0e 94 1f 19 	call	0x323e	; 0x323e <_ZN10MyArduboyV14drawFastHLine2Eiihh.constprop.44>
    32cc:	be 01       	movw	r22, r28
    32ce:	60 0f       	add	r22, r16
    32d0:	71 1d       	adc	r23, r1
    32d2:	07 fd       	sbrc	r16, 7
    32d4:	7a 95       	dec	r23
    32d6:	61 50       	subi	r22, 0x01	; 1
    32d8:	71 09       	sbc	r23, r1
    32da:	41 2f       	mov	r20, r17
    32dc:	c7 01       	movw	r24, r14
    32de:	0e 94 1f 19 	call	0x323e	; 0x323e <_ZN10MyArduboyV14drawFastHLine2Eiihh.constprop.44>
    32e2:	02 50       	subi	r16, 0x02	; 2
    32e4:	21 96       	adiw	r28, 0x01	; 1
    32e6:	21 e0       	ldi	r18, 0x01	; 1
    32e8:	40 2f       	mov	r20, r16
    32ea:	be 01       	movw	r22, r28
    32ec:	c7 01       	movw	r24, r14
    32ee:	0e 94 99 07 	call	0xf32	; 0xf32 <_ZN10MyArduboyV14drawFastVLine2Eiiah.constprop.47>
    32f2:	c7 01       	movw	r24, r14
    32f4:	81 0f       	add	r24, r17
    32f6:	91 1d       	adc	r25, r1
    32f8:	21 e0       	ldi	r18, 0x01	; 1
    32fa:	40 2f       	mov	r20, r16
    32fc:	be 01       	movw	r22, r28
    32fe:	01 97       	sbiw	r24, 0x01	; 1
    3300:	df 91       	pop	r29
    3302:	cf 91       	pop	r28
    3304:	1f 91       	pop	r17
    3306:	0f 91       	pop	r16
    3308:	ff 90       	pop	r15
    330a:	ef 90       	pop	r14
    330c:	0c 94 99 07 	jmp	0xf32	; 0xf32 <_ZN10MyArduboyV14drawFastVLine2Eiiah.constprop.47>

00003310 <_Z13drawMenuItemsb.part.0>:
    3310:	af 92       	push	r10
    3312:	bf 92       	push	r11
    3314:	cf 92       	push	r12
    3316:	df 92       	push	r13
    3318:	ef 92       	push	r14
    331a:	ff 92       	push	r15
    331c:	0f 93       	push	r16
    331e:	1f 93       	push	r17
    3320:	cf 93       	push	r28
    3322:	df 93       	push	r29
    3324:	10 91 4f 02 	lds	r17, 0x024F	; 0x80024f <_ZL5menuH>
    3328:	d0 90 50 02 	lds	r13, 0x0250	; 0x800250 <_ZL5menuW>
    332c:	e0 90 51 02 	lds	r14, 0x0251	; 0x800251 <_ZL5menuY>
    3330:	0e 2c       	mov	r0, r14
    3332:	00 0c       	add	r0, r0
    3334:	ff 08       	sbc	r15, r15
    3336:	e1 1a       	sub	r14, r17
    3338:	f1 08       	sbc	r15, r1
    333a:	17 fd       	sbrc	r17, 7
    333c:	f3 94       	inc	r15
    333e:	c0 91 52 02 	lds	r28, 0x0252	; 0x800252 <_ZL5menuX>
    3342:	0c 2e       	mov	r0, r28
    3344:	00 0c       	add	r0, r0
    3346:	dd 0b       	sbc	r29, r29
    3348:	22 e0       	ldi	r18, 0x02	; 2
    334a:	21 0f       	add	r18, r17
    334c:	42 e0       	ldi	r20, 0x02	; 2
    334e:	4d 0d       	add	r20, r13
    3350:	00 e0       	ldi	r16, 0x00	; 0
    3352:	b7 01       	movw	r22, r14
    3354:	ce 01       	movw	r24, r28
    3356:	01 97       	sbiw	r24, 0x01	; 1
    3358:	0e 94 06 08 	call	0x100c	; 0x100c <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42>
    335c:	80 91 4e 02 	lds	r24, 0x024E	; 0x80024e <_ZL8isFramed>
    3360:	88 23       	and	r24, r24
    3362:	59 f0       	breq	.+22     	; 0x337a <_Z13drawMenuItemsb.part.0+0x6a>
    3364:	24 e0       	ldi	r18, 0x04	; 4
    3366:	21 0f       	add	r18, r17
    3368:	44 e0       	ldi	r20, 0x04	; 4
    336a:	4d 0d       	add	r20, r13
    336c:	b7 01       	movw	r22, r14
    336e:	61 50       	subi	r22, 0x01	; 1
    3370:	71 09       	sbc	r23, r1
    3372:	ce 01       	movw	r24, r28
    3374:	02 97       	sbiw	r24, 0x02	; 2
    3376:	0e 94 5a 19 	call	0x32b4	; 0x32b4 <_ZN10MyArduboyV9drawRect2Eiihah.constprop.43>
    337a:	d1 2c       	mov	r13, r1
    337c:	c1 2c       	mov	r12, r1
    337e:	2b e2       	ldi	r18, 0x2B	; 43
    3380:	e2 2e       	mov	r14, r18
    3382:	22 e0       	ldi	r18, 0x02	; 2
    3384:	f2 2e       	mov	r15, r18
    3386:	80 91 4c 02 	lds	r24, 0x024C	; 0x80024c <_ZL13menuItemCount>
    338a:	08 2e       	mov	r0, r24
    338c:	00 0c       	add	r0, r0
    338e:	99 0b       	sbc	r25, r25
    3390:	c8 16       	cp	r12, r24
    3392:	d9 06       	cpc	r13, r25
    3394:	e4 f5       	brge	.+120    	; 0x340e <_Z13drawMenuItemsb.part.0+0xfe>
    3396:	f7 01       	movw	r30, r14
    3398:	82 81       	ldd	r24, Z+2	; 0x02
    339a:	93 81       	ldd	r25, Z+3	; 0x03
    339c:	89 2b       	or	r24, r25
    339e:	a9 f1       	breq	.+106    	; 0x340a <_Z13drawMenuItemsb.part.0+0xfa>
    33a0:	60 91 51 02 	lds	r22, 0x0251	; 0x800251 <_ZL5menuY>
    33a4:	06 2e       	mov	r0, r22
    33a6:	00 0c       	add	r0, r0
    33a8:	77 0b       	sbc	r23, r23
    33aa:	80 81       	ld	r24, Z
    33ac:	91 81       	ldd	r25, Z+1	; 0x01
    33ae:	5b 01       	movw	r10, r22
    33b0:	89 2b       	or	r24, r25
    33b2:	19 f0       	breq	.+6      	; 0x33ba <_Z13drawMenuItemsb.part.0+0xaa>
    33b4:	fc e0       	ldi	r31, 0x0C	; 12
    33b6:	af 1a       	sub	r10, r31
    33b8:	b1 08       	sbc	r11, r1
    33ba:	80 91 72 02 	lds	r24, 0x0272	; 0x800272 <_ZL11menuItemPos>
    33be:	08 2e       	mov	r0, r24
    33c0:	00 0c       	add	r0, r0
    33c2:	99 0b       	sbc	r25, r25
    33c4:	c8 16       	cp	r12, r24
    33c6:	d9 06       	cpc	r13, r25
    33c8:	59 f4       	brne	.+22     	; 0x33e0 <_Z13drawMenuItemsb.part.0+0xd0>
    33ca:	65 50       	subi	r22, 0x05	; 5
    33cc:	71 09       	sbc	r23, r1
    33ce:	01 e0       	ldi	r16, 0x01	; 1
    33d0:	25 e0       	ldi	r18, 0x05	; 5
    33d2:	45 e0       	ldi	r20, 0x05	; 5
    33d4:	ce 01       	movw	r24, r28
    33d6:	0e 94 06 08 	call	0x100c	; 0x100c <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42>
    33da:	84 e0       	ldi	r24, 0x04	; 4
    33dc:	a8 0e       	add	r10, r24
    33de:	b1 1c       	adc	r11, r1
    33e0:	f7 01       	movw	r30, r14
    33e2:	82 81       	ldd	r24, Z+2	; 0x02
    33e4:	93 81       	ldd	r25, Z+3	; 0x03
  }
}

void Arduboy::setCursor(int16_t x, int16_t y)
{
  cursor_x = x;
    33e6:	d0 93 1f 07 	sts	0x071F, r29	; 0x80071f <arduboy+0x415>
    33ea:	c0 93 1e 07 	sts	0x071E, r28	; 0x80071e <arduboy+0x414>
  cursor_y = y;
    33ee:	b0 92 21 07 	sts	0x0721, r11	; 0x800721 <arduboy+0x417>
    33f2:	a0 92 20 07 	sts	0x0720, r10	; 0x800720 <arduboy+0x416>
    33f6:	0e 94 86 18 	call	0x310c	; 0x310c <_ZN5Print5printEPK19__FlashStringHelper.constprop.49>
    33fa:	26 96       	adiw	r28, 0x06	; 6
    33fc:	ff ef       	ldi	r31, 0xFF	; 255
    33fe:	cf 1a       	sub	r12, r31
    3400:	df 0a       	sbc	r13, r31
    3402:	84 e0       	ldi	r24, 0x04	; 4
    3404:	e8 0e       	add	r14, r24
    3406:	f1 1c       	adc	r15, r1
    3408:	be cf       	rjmp	.-132    	; 0x3386 <_Z13drawMenuItemsb.part.0+0x76>
    340a:	22 96       	adiw	r28, 0x02	; 2
    340c:	f7 cf       	rjmp	.-18     	; 0x33fc <_Z13drawMenuItemsb.part.0+0xec>
    340e:	80 91 4d 02 	lds	r24, 0x024D	; 0x80024d <_ZL14isControlSound>
    3412:	88 23       	and	r24, r24
    3414:	41 f1       	breq	.+80     	; 0x3466 <_Z13drawMenuItemsb.part.0+0x156>
    3416:	00 e0       	ldi	r16, 0x00	; 0
    3418:	26 e1       	ldi	r18, 0x16	; 22
    341a:	48 e0       	ldi	r20, 0x08	; 8
    341c:	70 e0       	ldi	r23, 0x00	; 0
    341e:	60 e0       	ldi	r22, 0x00	; 0
    3420:	88 e7       	ldi	r24, 0x78	; 120
    3422:	90 e0       	ldi	r25, 0x00	; 0
    3424:	0e 94 06 08 	call	0x100c	; 0x100c <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42>
    3428:	20 91 b9 02 	lds	r18, 0x02B9	; 0x8002b9 <_ZN12ArduboyAudio13audio_enabledE>
    342c:	e7 e0       	ldi	r30, 0x07	; 7
    342e:	2e 9f       	mul	r18, r30
    3430:	90 01       	movw	r18, r0
    3432:	11 24       	eor	r1, r1
    3434:	24 5f       	subi	r18, 0xF4	; 244
    3436:	3a 4f       	sbci	r19, 0xFA	; 250
    3438:	86 e0       	ldi	r24, 0x06	; 6
    343a:	e8 2e       	mov	r14, r24
    343c:	07 e0       	ldi	r16, 0x07	; 7
    343e:	50 e0       	ldi	r21, 0x00	; 0
    3440:	40 e0       	ldi	r20, 0x00	; 0
    3442:	69 e7       	ldi	r22, 0x79	; 121
    3444:	70 e0       	ldi	r23, 0x00	; 0
    3446:	8a e0       	ldi	r24, 0x0A	; 10
    3448:	93 e0       	ldi	r25, 0x03	; 3
    344a:	0e 94 94 08 	call	0x1128	; 0x1128 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25>
    344e:	9f e0       	ldi	r25, 0x0F	; 15
    3450:	e9 2e       	mov	r14, r25
    3452:	2e ef       	ldi	r18, 0xFE	; 254
    3454:	34 e0       	ldi	r19, 0x04	; 4
    3456:	46 e0       	ldi	r20, 0x06	; 6
    3458:	50 e0       	ldi	r21, 0x00	; 0
    345a:	69 e7       	ldi	r22, 0x79	; 121
    345c:	70 e0       	ldi	r23, 0x00	; 0
    345e:	8a e0       	ldi	r24, 0x0A	; 10
    3460:	93 e0       	ldi	r25, 0x03	; 3
    3462:	0e 94 94 08 	call	0x1128	; 0x1128 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25>
    3466:	10 92 71 02 	sts	0x0271, r1	; 0x800271 <_ZL13isInvalidMenu>
    346a:	df 91       	pop	r29
    346c:	cf 91       	pop	r28
    346e:	1f 91       	pop	r17
    3470:	0f 91       	pop	r16
    3472:	ff 90       	pop	r15
    3474:	ef 90       	pop	r14
    3476:	df 90       	pop	r13
    3478:	cf 90       	pop	r12
    347a:	bf 90       	pop	r11
    347c:	af 90       	pop	r10
    347e:	08 95       	ret

00003480 <_ZN5Print11printNumberEmh.constprop.36>:
  return n;
}

// Private Methods /////////////////////////////////////////////////////////////

size_t Print::printNumber(unsigned long n, uint8_t base)
    3480:	8f 92       	push	r8
    3482:	9f 92       	push	r9
    3484:	af 92       	push	r10
    3486:	bf 92       	push	r11
    3488:	0f 93       	push	r16
    348a:	1f 93       	push	r17
    348c:	cf 93       	push	r28
    348e:	df 93       	push	r29
    3490:	cd b7       	in	r28, 0x3d	; 61
    3492:	de b7       	in	r29, 0x3e	; 62
    3494:	a1 97       	sbiw	r28, 0x21	; 33
    3496:	0f b6       	in	r0, 0x3f	; 63
    3498:	f8 94       	cli
    349a:	de bf       	out	0x3e, r29	; 62
    349c:	0f be       	out	0x3f, r0	; 63
    349e:	cd bf       	out	0x3d, r28	; 61
{
  char buf[8 * sizeof(long) + 1]; // Assumes 8-bit chars plus zero byte.
  char *str = &buf[sizeof(buf) - 1];

  *str = '\0';
    34a0:	19 a2       	std	Y+33, r1	; 0x21

  // prevent crash if called with base == 1
  if (base < 2) base = 10;
    34a2:	42 30       	cpi	r20, 0x02	; 2
    34a4:	08 f4       	brcc	.+2      	; 0x34a8 <_ZN5Print11printNumberEmh.constprop.36+0x28>
    34a6:	4a e0       	ldi	r20, 0x0A	; 10
    34a8:	8e 01       	movw	r16, r28
    34aa:	0f 5d       	subi	r16, 0xDF	; 223
    34ac:	1f 4f       	sbci	r17, 0xFF	; 255

  do {
    char c = n % base;
    34ae:	84 2e       	mov	r8, r20
    34b0:	91 2c       	mov	r9, r1
    34b2:	b1 2c       	mov	r11, r1
    34b4:	a1 2c       	mov	r10, r1
    34b6:	a5 01       	movw	r20, r10
    34b8:	94 01       	movw	r18, r8
    34ba:	0e 94 4c 2f 	call	0x5e98	; 0x5e98 <__udivmodsi4>
    34be:	e6 2f       	mov	r30, r22
    n /= base;
    34c0:	b9 01       	movw	r22, r18
    34c2:	ca 01       	movw	r24, r20

    *--str = c < 10 ? c + '0' : c + 'A' - 10;
    34c4:	ea 30       	cpi	r30, 0x0A	; 10
    34c6:	44 f5       	brge	.+80     	; 0x3518 <_ZN5Print11printNumberEmh.constprop.36+0x98>
    34c8:	e0 5d       	subi	r30, 0xD0	; 208
    34ca:	d8 01       	movw	r26, r16
    34cc:	ee 93       	st	-X, r30
    34ce:	8d 01       	movw	r16, r26
  } while(n);
    34d0:	23 2b       	or	r18, r19
    34d2:	24 2b       	or	r18, r20
    34d4:	25 2b       	or	r18, r21
    34d6:	79 f7       	brne	.-34     	; 0x34b6 <_ZN5Print11printNumberEmh.constprop.36+0x36>
    int getWriteError() { return write_error; }
    void clearWriteError() { setWriteError(0); }
  
    virtual size_t write(uint8_t) = 0;
    size_t write(const char *str) {
      if (str == NULL) return 0;
    34d8:	90 e0       	ldi	r25, 0x00	; 0
    34da:	80 e0       	ldi	r24, 0x00	; 0
    34dc:	10 97       	sbiw	r26, 0x00	; 0
    34de:	69 f0       	breq	.+26     	; 0x34fa <_ZN5Print11printNumberEmh.constprop.36+0x7a>
      return write((const uint8_t *)str, strlen(str));
    34e0:	fd 01       	movw	r30, r26
    34e2:	01 90       	ld	r0, Z+
    34e4:	00 20       	and	r0, r0
    34e6:	e9 f7       	brne	.-6      	; 0x34e2 <_ZN5Print11printNumberEmh.constprop.36+0x62>
    34e8:	31 97       	sbiw	r30, 0x01	; 1
    34ea:	af 01       	movw	r20, r30
    34ec:	4a 1b       	sub	r20, r26
    34ee:	5b 0b       	sbc	r21, r27
    34f0:	bd 01       	movw	r22, r26
    34f2:	8a e0       	ldi	r24, 0x0A	; 10
    34f4:	93 e0       	ldi	r25, 0x03	; 3
    34f6:	0e 94 33 0b 	call	0x1666	; 0x1666 <_ZN5Print5writeEPKhj>

  return write(str);
}
    34fa:	a1 96       	adiw	r28, 0x21	; 33
    34fc:	0f b6       	in	r0, 0x3f	; 63
    34fe:	f8 94       	cli
    3500:	de bf       	out	0x3e, r29	; 62
    3502:	0f be       	out	0x3f, r0	; 63
    3504:	cd bf       	out	0x3d, r28	; 61
    3506:	df 91       	pop	r29
    3508:	cf 91       	pop	r28
    350a:	1f 91       	pop	r17
    350c:	0f 91       	pop	r16
    350e:	bf 90       	pop	r11
    3510:	af 90       	pop	r10
    3512:	9f 90       	pop	r9
    3514:	8f 90       	pop	r8
    3516:	08 95       	ret

  do {
    char c = n % base;
    n /= base;

    *--str = c < 10 ? c + '0' : c + 'A' - 10;
    3518:	e9 5c       	subi	r30, 0xC9	; 201
    351a:	d7 cf       	rjmp	.-82     	; 0x34ca <_ZN5Print11printNumberEmh.constprop.36+0x4a>

0000351c <_ZN5Print5printEli.constprop.27>:
size_t Print::print(unsigned int n, int base)
{
  return print((unsigned long) n, base);
}

size_t Print::print(long n, int base)
    351c:	cf 92       	push	r12
    351e:	df 92       	push	r13
    3520:	ef 92       	push	r14
    3522:	ff 92       	push	r15
    3524:	cf 93       	push	r28
    3526:	df 93       	push	r29
{
  if (base == 0) {
    return write(n);
  } else if (base == 10) {
    if (n < 0) {
    3528:	97 ff       	sbrs	r25, 7
    352a:	1b c0       	rjmp	.+54     	; 0x3562 <_ZN5Print5printEli.constprop.27+0x46>
    352c:	6b 01       	movw	r12, r22
    352e:	7c 01       	movw	r14, r24
  return write(str);
}

size_t Print::print(char c)
{
  return write(c);
    3530:	6d e2       	ldi	r22, 0x2D	; 45
    3532:	8a e0       	ldi	r24, 0x0A	; 10
    3534:	93 e0       	ldi	r25, 0x03	; 3
    3536:	0e 94 53 17 	call	0x2ea6	; 0x2ea6 <_ZN10MyArduboyV5writeEh>
    353a:	ec 01       	movw	r28, r24
  if (base == 0) {
    return write(n);
  } else if (base == 10) {
    if (n < 0) {
      int t = print('-');
      n = -n;
    353c:	66 27       	eor	r22, r22
    353e:	77 27       	eor	r23, r23
    3540:	cb 01       	movw	r24, r22
    3542:	6c 19       	sub	r22, r12
    3544:	7d 09       	sbc	r23, r13
    3546:	8e 09       	sbc	r24, r14
    3548:	9f 09       	sbc	r25, r15
      return printNumber(n, 10) + t;
    354a:	4a e0       	ldi	r20, 0x0A	; 10
    354c:	0e 94 40 1a 	call	0x3480	; 0x3480 <_ZN5Print11printNumberEmh.constprop.36>
    3550:	8c 0f       	add	r24, r28
    3552:	9d 1f       	adc	r25, r29
    }
    return printNumber(n, 10);
  } else {
    return printNumber(n, base);
  }
}
    3554:	df 91       	pop	r29
    3556:	cf 91       	pop	r28
    3558:	ff 90       	pop	r15
    355a:	ef 90       	pop	r14
    355c:	df 90       	pop	r13
    355e:	cf 90       	pop	r12
    3560:	08 95       	ret
    if (n < 0) {
      int t = print('-');
      n = -n;
      return printNumber(n, 10) + t;
    }
    return printNumber(n, 10);
    3562:	4a e0       	ldi	r20, 0x0A	; 10
  } else {
    return printNumber(n, base);
  }
}
    3564:	df 91       	pop	r29
    3566:	cf 91       	pop	r28
    3568:	ff 90       	pop	r15
    356a:	ef 90       	pop	r14
    356c:	df 90       	pop	r13
    356e:	cf 90       	pop	r12
    if (n < 0) {
      int t = print('-');
      n = -n;
      return printNumber(n, 10) + t;
    }
    return printNumber(n, 10);
    3570:	0c 94 40 1a 	jmp	0x3480	; 0x3480 <_ZN5Print11printNumberEmh.constprop.36>

00003574 <_Z11drawNumberViil7ALIGN_T>:
    3574:	4f 92       	push	r4
    3576:	5f 92       	push	r5
    3578:	6f 92       	push	r6
    357a:	7f 92       	push	r7
    357c:	af 92       	push	r10
    357e:	bf 92       	push	r11
    3580:	cf 92       	push	r12
    3582:	df 92       	push	r13
    3584:	ef 92       	push	r14
    3586:	ff 92       	push	r15
    3588:	0f 93       	push	r16
    358a:	1f 93       	push	r17
    358c:	cf 93       	push	r28
    358e:	df 93       	push	r29
    3590:	5c 01       	movw	r10, r24
    3592:	eb 01       	movw	r28, r22
    3594:	69 01       	movw	r12, r18
    3596:	7a 01       	movw	r14, r20
    3598:	01 15       	cp	r16, r1
    359a:	11 05       	cpc	r17, r1
    359c:	19 f1       	breq	.+70     	; 0x35e4 <_Z11drawNumberViil7ALIGN_T+0x70>
    359e:	c8 01       	movw	r24, r16
    35a0:	88 0f       	add	r24, r24
    35a2:	99 1f       	adc	r25, r25
    35a4:	08 0f       	add	r16, r24
    35a6:	19 1f       	adc	r17, r25
    35a8:	96 01       	movw	r18, r12
    35aa:	f7 fe       	sbrs	r15, 7
    35ac:	09 c0       	rjmp	.+18     	; 0x35c0 <_Z11drawNumberViil7ALIGN_T+0x4c>
    35ae:	c0 0f       	add	r28, r16
    35b0:	d1 1f       	adc	r29, r17
    35b2:	22 27       	eor	r18, r18
    35b4:	33 27       	eor	r19, r19
    35b6:	a9 01       	movw	r20, r18
    35b8:	2c 19       	sub	r18, r12
    35ba:	3d 09       	sbc	r19, r13
    35bc:	4e 09       	sbc	r20, r14
    35be:	5f 09       	sbc	r21, r15
    35c0:	8a e0       	ldi	r24, 0x0A	; 10
    35c2:	48 2e       	mov	r4, r24
    35c4:	51 2c       	mov	r5, r1
    35c6:	61 2c       	mov	r6, r1
    35c8:	71 2c       	mov	r7, r1
    35ca:	c0 0f       	add	r28, r16
    35cc:	d1 1f       	adc	r29, r17
    35ce:	ca 01       	movw	r24, r20
    35d0:	b9 01       	movw	r22, r18
    35d2:	a3 01       	movw	r20, r6
    35d4:	92 01       	movw	r18, r4
    35d6:	0e 94 4c 2f 	call	0x5e98	; 0x5e98 <__udivmodsi4>
    35da:	21 15       	cp	r18, r1
    35dc:	31 05       	cpc	r19, r1
    35de:	41 05       	cpc	r20, r1
    35e0:	51 05       	cpc	r21, r1
    35e2:	99 f7       	brne	.-26     	; 0x35ca <_Z11drawNumberViil7ALIGN_T+0x56>
  }
}

void Arduboy::setCursor(int16_t x, int16_t y)
{
  cursor_x = x;
    35e4:	b0 92 1f 07 	sts	0x071F, r11	; 0x80071f <arduboy+0x415>
    35e8:	a0 92 1e 07 	sts	0x071E, r10	; 0x80071e <arduboy+0x414>
  cursor_y = y;
    35ec:	d0 93 21 07 	sts	0x0721, r29	; 0x800721 <arduboy+0x417>
    35f0:	c0 93 20 07 	sts	0x0720, r28	; 0x800720 <arduboy+0x416>
    35f4:	c7 01       	movw	r24, r14
    35f6:	b6 01       	movw	r22, r12
    35f8:	df 91       	pop	r29
    35fa:	cf 91       	pop	r28
    35fc:	1f 91       	pop	r17
    35fe:	0f 91       	pop	r16
    3600:	ff 90       	pop	r15
    3602:	ef 90       	pop	r14
    3604:	df 90       	pop	r13
    3606:	cf 90       	pop	r12
    3608:	bf 90       	pop	r11
    360a:	af 90       	pop	r10
    360c:	7f 90       	pop	r7
    360e:	6f 90       	pop	r6
    3610:	5f 90       	pop	r5
    3612:	4f 90       	pop	r4
    3614:	0c 94 8e 1a 	jmp	0x351c	; 0x351c <_ZN5Print5printEli.constprop.27>

00003618 <_ZL20printColonAnd2Digitsh>:
    3618:	cf 93       	push	r28
    361a:	c8 2f       	mov	r28, r24
  return write(str);
}

size_t Print::print(char c)
{
  return write(c);
    361c:	6a e3       	ldi	r22, 0x3A	; 58
    361e:	8a e0       	ldi	r24, 0x0A	; 10
    3620:	93 e0       	ldi	r25, 0x03	; 3
    3622:	0e 94 53 17 	call	0x2ea6	; 0x2ea6 <_ZN10MyArduboyV5writeEh>
    3626:	ca 30       	cpi	r28, 0x0A	; 10
    3628:	28 f4       	brcc	.+10     	; 0x3634 <_ZL20printColonAnd2Digitsh+0x1c>
    362a:	60 e3       	ldi	r22, 0x30	; 48
    362c:	8a e0       	ldi	r24, 0x0A	; 10
    362e:	93 e0       	ldi	r25, 0x03	; 3
    3630:	0e 94 53 17 	call	0x2ea6	; 0x2ea6 <_ZN10MyArduboyV5writeEh>
}

size_t Print::print(unsigned char b, int base)
{
  return print((unsigned long) b, base);
    3634:	6c 2f       	mov	r22, r28
    3636:	70 e0       	ldi	r23, 0x00	; 0
    3638:	90 e0       	ldi	r25, 0x00	; 0
    363a:	80 e0       	ldi	r24, 0x00	; 0
}

size_t Print::print(unsigned long n, int base)
{
  if (base == 0) return write(n);
  else return printNumber(n, base);
    363c:	4a e0       	ldi	r20, 0x0A	; 10
    363e:	cf 91       	pop	r28
    3640:	0c 94 40 1a 	jmp	0x3480	; 0x3480 <_ZN5Print11printNumberEmh.constprop.36>

00003644 <__cxa_pure_virtual>:
extern "C" void __cxa_deleted_virtual(void) __attribute__ ((__noreturn__));

void __cxa_pure_virtual(void) {
  // We might want to write some diagnostics to uart in this case
  //std::terminate();
  abort();
    3644:	0e 94 ce 2f 	call	0x5f9c	; 0x5f9c <abort>

00003648 <_Z9drawTitlev>:
    3648:	2f 92       	push	r2
    364a:	3f 92       	push	r3
    364c:	4f 92       	push	r4
    364e:	5f 92       	push	r5
    3650:	6f 92       	push	r6
    3652:	7f 92       	push	r7
    3654:	8f 92       	push	r8
    3656:	9f 92       	push	r9
    3658:	af 92       	push	r10
    365a:	bf 92       	push	r11
    365c:	cf 92       	push	r12
    365e:	df 92       	push	r13
    3660:	ef 92       	push	r14
    3662:	0f 93       	push	r16
    3664:	1f 93       	push	r17
    3666:	cf 93       	push	r28
    3668:	df 93       	push	r29
    366a:	80 91 76 02 	lds	r24, 0x0276	; 0x800276 <isInvalid>
    366e:	88 23       	and	r24, r24
    3670:	69 f0       	breq	.+26     	; 0x368c <_Z9drawTitlev+0x44>
    3672:	c0 91 77 02 	lds	r28, 0x0277	; 0x800277 <_ZL5state.lto_priv.68>
    3676:	d0 91 78 02 	lds	r29, 0x0278	; 0x800278 <_ZL5state.lto_priv.68+0x1>
  clear();
}

void Arduboy::clear()
{
  fillScreen(BLACK);
    367a:	0e 94 8f 09 	call	0x131e	; 0x131e <_ZN7Arduboy10fillScreenEh.constprop.19>
    367e:	c2 30       	cpi	r28, 0x02	; 2
    3680:	d1 05       	cpc	r29, r1
    3682:	09 f4       	brne	.+2      	; 0x3686 <_Z9drawTitlev+0x3e>
    3684:	50 c0       	rjmp	.+160    	; 0x3726 <_Z9drawTitlev+0xde>
    3686:	28 f5       	brcc	.+74     	; 0x36d2 <_Z9drawTitlev+0x8a>
    3688:	21 97       	sbiw	r28, 0x01	; 1
    368a:	49 f1       	breq	.+82     	; 0x36de <_Z9drawTitlev+0x96>
    368c:	80 91 77 02 	lds	r24, 0x0277	; 0x800277 <_ZL5state.lto_priv.68>
    3690:	90 91 78 02 	lds	r25, 0x0278	; 0x800278 <_ZL5state.lto_priv.68+0x1>
    3694:	01 97       	sbiw	r24, 0x01	; 1
    3696:	49 f4       	brne	.+18     	; 0x36aa <_Z9drawTitlev+0x62>
    3698:	80 91 71 02 	lds	r24, 0x0271	; 0x800271 <_ZL13isInvalidMenu>
    369c:	81 11       	cpse	r24, r1
    369e:	03 c0       	rjmp	.+6      	; 0x36a6 <_Z9drawTitlev+0x5e>
    36a0:	80 91 76 02 	lds	r24, 0x0276	; 0x800276 <isInvalid>
    36a4:	81 11       	cpse	r24, r1
    36a6:	0e 94 88 19 	call	0x3310	; 0x3310 <_Z13drawMenuItemsb.part.0>
    36aa:	10 92 76 02 	sts	0x0276, r1	; 0x800276 <isInvalid>
    36ae:	df 91       	pop	r29
    36b0:	cf 91       	pop	r28
    36b2:	1f 91       	pop	r17
    36b4:	0f 91       	pop	r16
    36b6:	ef 90       	pop	r14
    36b8:	df 90       	pop	r13
    36ba:	cf 90       	pop	r12
    36bc:	bf 90       	pop	r11
    36be:	af 90       	pop	r10
    36c0:	9f 90       	pop	r9
    36c2:	8f 90       	pop	r8
    36c4:	7f 90       	pop	r7
    36c6:	6f 90       	pop	r6
    36c8:	5f 90       	pop	r5
    36ca:	4f 90       	pop	r4
    36cc:	3f 90       	pop	r3
    36ce:	2f 90       	pop	r2
    36d0:	08 95       	ret
    36d2:	c3 30       	cpi	r28, 0x03	; 3
    36d4:	d1 05       	cpc	r29, r1
    36d6:	09 f4       	brne	.+2      	; 0x36da <_Z9drawTitlev+0x92>
    36d8:	17 c1       	rjmp	.+558    	; 0x3908 <_Z9drawTitlev+0x2c0>
    36da:	24 97       	sbiw	r28, 0x04	; 4
    36dc:	b9 f6       	brne	.-82     	; 0x368c <_Z9drawTitlev+0x44>
    36de:	c0 e4       	ldi	r28, 0x40	; 64
    36e0:	ec 2e       	mov	r14, r28
    36e2:	00 e4       	ldi	r16, 0x40	; 64
    36e4:	29 e4       	ldi	r18, 0x49	; 73
    36e6:	35 e0       	ldi	r19, 0x05	; 5
    36e8:	50 e0       	ldi	r21, 0x00	; 0
    36ea:	40 e0       	ldi	r20, 0x00	; 0
    36ec:	68 e0       	ldi	r22, 0x08	; 8
    36ee:	70 e0       	ldi	r23, 0x00	; 0
    36f0:	8a e0       	ldi	r24, 0x0A	; 10
    36f2:	93 e0       	ldi	r25, 0x03	; 3
    36f4:	0e 94 94 08 	call	0x1128	; 0x1128 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25>
    36f8:	20 91 53 02 	lds	r18, 0x0253	; 0x800253 <lastScore>
    36fc:	30 91 54 02 	lds	r19, 0x0254	; 0x800254 <lastScore+0x1>
    3700:	40 91 55 02 	lds	r20, 0x0255	; 0x800255 <lastScore+0x2>
    3704:	50 91 56 02 	lds	r21, 0x0256	; 0x800256 <lastScore+0x3>
    3708:	21 15       	cp	r18, r1
    370a:	31 05       	cpc	r19, r1
    370c:	41 05       	cpc	r20, r1
    370e:	51 05       	cpc	r21, r1
    3710:	09 f4       	brne	.+2      	; 0x3714 <_Z9drawTitlev+0xcc>
    3712:	bc cf       	rjmp	.-136    	; 0x368c <_Z9drawTitlev+0x44>
    3714:	02 e0       	ldi	r16, 0x02	; 2
    3716:	10 e0       	ldi	r17, 0x00	; 0
    3718:	6f ef       	ldi	r22, 0xFF	; 255
    371a:	7f ef       	ldi	r23, 0xFF	; 255
    371c:	90 e0       	ldi	r25, 0x00	; 0
    371e:	80 e0       	ldi	r24, 0x00	; 0
    3720:	0e 94 ba 1a 	call	0x3574	; 0x3574 <_Z11drawNumberViil7ALIGN_T>
    3724:	b3 cf       	rjmp	.-154    	; 0x368c <_Z9drawTitlev+0x44>
  }
}

void Arduboy::setCursor(int16_t x, int16_t y)
{
  cursor_x = x;
    3726:	84 e0       	ldi	r24, 0x04	; 4
    3728:	90 e0       	ldi	r25, 0x00	; 0
    372a:	90 93 1f 07 	sts	0x071F, r25	; 0x80071f <arduboy+0x415>
    372e:	80 93 1e 07 	sts	0x071E, r24	; 0x80071e <arduboy+0x414>
  cursor_y = y;
    3732:	87 e3       	ldi	r24, 0x37	; 55
    3734:	90 e0       	ldi	r25, 0x00	; 0
    3736:	90 93 21 07 	sts	0x0721, r25	; 0x800721 <arduboy+0x417>
    373a:	80 93 20 07 	sts	0x0720, r24	; 0x800720 <arduboy+0x416>
    373e:	88 e7       	ldi	r24, 0x78	; 120
    3740:	97 e0       	ldi	r25, 0x07	; 7
    3742:	0e 94 86 18 	call	0x310c	; 0x310c <_ZN5Print5printEPK19__FlashStringHelper.constprop.49>
  }
}

void Arduboy::setCursor(int16_t x, int16_t y)
{
  cursor_x = x;
    3746:	8a e0       	ldi	r24, 0x0A	; 10
    3748:	90 e0       	ldi	r25, 0x00	; 0
    374a:	90 93 1f 07 	sts	0x071F, r25	; 0x80071f <arduboy+0x415>
    374e:	80 93 1e 07 	sts	0x071E, r24	; 0x80071e <arduboy+0x414>
  cursor_y = y;
    3752:	8b e2       	ldi	r24, 0x2B	; 43
    3754:	90 e0       	ldi	r25, 0x00	; 0
    3756:	90 93 21 07 	sts	0x0721, r25	; 0x800721 <arduboy+0x417>
    375a:	80 93 20 07 	sts	0x0720, r24	; 0x800720 <arduboy+0x416>
    375e:	81 e7       	ldi	r24, 0x71	; 113
    3760:	97 e0       	ldi	r25, 0x07	; 7
    3762:	0e 94 86 18 	call	0x310c	; 0x310c <_ZN5Print5printEPK19__FlashStringHelper.constprop.49>
    3766:	41 2c       	mov	r4, r1
    3768:	51 2c       	mov	r5, r1
    376a:	32 01       	movw	r6, r4
    376c:	43 94       	inc	r4
    376e:	a6 e1       	ldi	r26, 0x16	; 22
    3770:	ca 2e       	mov	r12, r26
    3772:	d1 2c       	mov	r13, r1
    3774:	d0 e0       	ldi	r29, 0x00	; 0
    3776:	c0 e0       	ldi	r28, 0x00	; 0
    3778:	b7 e3       	ldi	r27, 0x37	; 55
    377a:	2b 2e       	mov	r2, r27
    377c:	31 2c       	mov	r3, r1
  }
}

void Arduboy::setCursor(int16_t x, int16_t y)
{
  cursor_x = x;
    377e:	d0 92 1f 07 	sts	0x071F, r13	; 0x80071f <arduboy+0x415>
    3782:	c0 92 1e 07 	sts	0x071E, r12	; 0x80071e <arduboy+0x414>
  cursor_y = y;
    3786:	8d e3       	ldi	r24, 0x3D	; 61
    3788:	90 e0       	ldi	r25, 0x00	; 0
    378a:	90 93 21 07 	sts	0x0721, r25	; 0x800721 <arduboy+0x417>
    378e:	80 93 20 07 	sts	0x0720, r24	; 0x800720 <arduboy+0x416>
    3792:	8d e6       	ldi	r24, 0x6D	; 109
    3794:	97 e0       	ldi	r25, 0x07	; 7
    3796:	0e 94 86 18 	call	0x310c	; 0x310c <_ZN5Print5printEPK19__FlashStringHelper.constprop.49>
    379a:	4e 01       	movw	r8, r28
    379c:	9f ef       	ldi	r25, 0xFF	; 255
    379e:	89 1a       	sub	r8, r25
    37a0:	99 0a       	sbc	r9, r25
  }
}

void Arduboy::setCursor(int16_t x, int16_t y)
{
  cursor_x = x;
    37a2:	d0 92 1f 07 	sts	0x071F, r13	; 0x80071f <arduboy+0x415>
    37a6:	c0 92 1e 07 	sts	0x071E, r12	; 0x80071e <arduboy+0x414>
  cursor_y = y;
    37aa:	30 92 21 07 	sts	0x0721, r3	; 0x800721 <arduboy+0x417>
    37ae:	20 92 20 07 	sts	0x0720, r2	; 0x800720 <arduboy+0x416>
    37b2:	c3 01       	movw	r24, r6
    37b4:	b2 01       	movw	r22, r4
    37b6:	0e 94 8e 1a 	call	0x351c	; 0x351c <_ZN5Print5printEli.constprop.27>
    37ba:	cc 0f       	add	r28, r28
    37bc:	dd 1f       	adc	r29, r29
    37be:	cc 0f       	add	r28, r28
    37c0:	dd 1f       	adc	r29, r29
    37c2:	c9 5a       	subi	r28, 0xA9	; 169
    37c4:	dd 4f       	sbci	r29, 0xFD	; 253
    37c6:	28 81       	ld	r18, Y
    37c8:	39 81       	ldd	r19, Y+1	; 0x01
    37ca:	4a 81       	ldd	r20, Y+2	; 0x02
    37cc:	50 e0       	ldi	r21, 0x00	; 0
    37ce:	02 e0       	ldi	r16, 0x02	; 2
    37d0:	10 e0       	ldi	r17, 0x00	; 0
    37d2:	61 e0       	ldi	r22, 0x01	; 1
    37d4:	70 e0       	ldi	r23, 0x00	; 0
    37d6:	c6 01       	movw	r24, r12
    37d8:	0e 94 ba 1a 	call	0x3574	; 0x3574 <_Z11drawNumberViil7ALIGN_T>
    37dc:	56 01       	movw	r10, r12
    37de:	e6 e0       	ldi	r30, 0x06	; 6
    37e0:	ae 0e       	add	r10, r30
    37e2:	b1 1c       	adc	r11, r1
    37e4:	e4 e1       	ldi	r30, 0x14	; 20
    37e6:	ee 2e       	mov	r14, r30
    37e8:	05 e0       	ldi	r16, 0x05	; 5
    37ea:	29 e4       	ldi	r18, 0x49	; 73
    37ec:	37 e0       	ldi	r19, 0x07	; 7
    37ee:	4d e0       	ldi	r20, 0x0D	; 13
    37f0:	50 e0       	ldi	r21, 0x00	; 0
    37f2:	b5 01       	movw	r22, r10
    37f4:	8a e0       	ldi	r24, 0x0A	; 10
    37f6:	93 e0       	ldi	r25, 0x03	; 3
    37f8:	0e 94 94 08 	call	0x1128	; 0x1128 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25>
    37fc:	2b 81       	ldd	r18, Y+3	; 0x03
    37fe:	30 e0       	ldi	r19, 0x00	; 0
    3800:	50 e0       	ldi	r21, 0x00	; 0
    3802:	40 e0       	ldi	r20, 0x00	; 0
    3804:	02 e0       	ldi	r16, 0x02	; 2
    3806:	10 e0       	ldi	r17, 0x00	; 0
    3808:	6f ef       	ldi	r22, 0xFF	; 255
    380a:	7f ef       	ldi	r23, 0xFF	; 255
    380c:	c5 01       	movw	r24, r10
    380e:	0e 94 ba 1a 	call	0x3574	; 0x3574 <_Z11drawNumberViil7ALIGN_T>
    3812:	fe e0       	ldi	r31, 0x0E	; 14
    3814:	cf 0e       	add	r12, r31
    3816:	d1 1c       	adc	r13, r1
    3818:	8f ef       	ldi	r24, 0xFF	; 255
    381a:	48 1a       	sub	r4, r24
    381c:	58 0a       	sbc	r5, r24
    381e:	68 0a       	sbc	r6, r24
    3820:	78 0a       	sbc	r7, r24
    3822:	e4 01       	movw	r28, r8
    3824:	c5 30       	cpi	r28, 0x05	; 5
    3826:	d1 05       	cpc	r29, r1
    3828:	09 f0       	breq	.+2      	; 0x382c <_Z9drawTitlev+0x1e4>
    382a:	a9 cf       	rjmp	.-174    	; 0x377e <_Z9drawTitlev+0x136>
    382c:	22 e4       	ldi	r18, 0x42	; 66
    382e:	49 e4       	ldi	r20, 0x49	; 73
    3830:	6f ef       	ldi	r22, 0xFF	; 255
    3832:	7f ef       	ldi	r23, 0xFF	; 255
    3834:	83 e1       	ldi	r24, 0x13	; 19
    3836:	90 e0       	ldi	r25, 0x00	; 0
    3838:	0e 94 a0 10 	call	0x2140	; 0x2140 <_ZN7Arduboy8drawRectEiihhh.constprop.13>
  }
}

void Arduboy::setCursor(int16_t x, int16_t y)
{
  cursor_x = x;
    383c:	82 e6       	ldi	r24, 0x62	; 98
    383e:	90 e0       	ldi	r25, 0x00	; 0
    3840:	90 93 1f 07 	sts	0x071F, r25	; 0x80071f <arduboy+0x415>
    3844:	80 93 1e 07 	sts	0x071E, r24	; 0x80071e <arduboy+0x414>
  cursor_y = y;
    3848:	cf e3       	ldi	r28, 0x3F	; 63
    384a:	d0 e0       	ldi	r29, 0x00	; 0
    384c:	d0 93 21 07 	sts	0x0721, r29	; 0x800721 <arduboy+0x417>
    3850:	c0 93 20 07 	sts	0x0720, r28	; 0x800720 <arduboy+0x416>
    3854:	82 e6       	ldi	r24, 0x62	; 98
    3856:	97 e0       	ldi	r25, 0x07	; 7
    3858:	0e 94 86 18 	call	0x310c	; 0x310c <_ZN5Print5printEPK19__FlashStringHelper.constprop.49>
    385c:	20 91 6f 02 	lds	r18, 0x026F	; 0x80026f <record+0x18>
    3860:	30 91 70 02 	lds	r19, 0x0270	; 0x800270 <record+0x19>
    3864:	50 e0       	ldi	r21, 0x00	; 0
    3866:	40 e0       	ldi	r20, 0x00	; 0
    3868:	6f ef       	ldi	r22, 0xFF	; 255
    386a:	7f ef       	ldi	r23, 0xFF	; 255
    386c:	88 e6       	ldi	r24, 0x68	; 104
    386e:	90 e0       	ldi	r25, 0x00	; 0
    3870:	0e 94 ba 1a 	call	0x3574	; 0x3574 <_Z11drawNumberViil7ALIGN_T>
  }
}

void Arduboy::setCursor(int16_t x, int16_t y)
{
  cursor_x = x;
    3874:	80 e7       	ldi	r24, 0x70	; 112
    3876:	90 e0       	ldi	r25, 0x00	; 0
    3878:	90 93 1f 07 	sts	0x071F, r25	; 0x80071f <arduboy+0x415>
    387c:	80 93 1e 07 	sts	0x071E, r24	; 0x80071e <arduboy+0x414>
  cursor_y = y;
    3880:	d0 93 21 07 	sts	0x0721, r29	; 0x800721 <arduboy+0x417>
    3884:	c0 93 20 07 	sts	0x0720, r28	; 0x800720 <arduboy+0x416>
    3888:	88 e5       	ldi	r24, 0x58	; 88
    388a:	97 e0       	ldi	r25, 0x07	; 7
    388c:	0e 94 86 18 	call	0x310c	; 0x310c <_ZN5Print5printEPK19__FlashStringHelper.constprop.49>
    3890:	40 90 6b 02 	lds	r4, 0x026B	; 0x80026b <record+0x14>
    3894:	50 90 6c 02 	lds	r5, 0x026C	; 0x80026c <record+0x15>
    3898:	60 90 6d 02 	lds	r6, 0x026D	; 0x80026d <record+0x16>
    389c:	70 90 6e 02 	lds	r7, 0x026E	; 0x80026e <record+0x17>
    38a0:	c3 01       	movw	r24, r6
    38a2:	b2 01       	movw	r22, r4
    38a4:	20 ec       	ldi	r18, 0xC0	; 192
    38a6:	3b e4       	ldi	r19, 0x4B	; 75
    38a8:	43 e0       	ldi	r20, 0x03	; 3
    38aa:	50 e0       	ldi	r21, 0x00	; 0
    38ac:	0e 94 4c 2f 	call	0x5e98	; 0x5e98 <__udivmodsi4>
    38b0:	63 e2       	ldi	r22, 0x23	; 35
    38b2:	70 e0       	ldi	r23, 0x00	; 0
    38b4:	86 e7       	ldi	r24, 0x76	; 118
    38b6:	90 e0       	ldi	r25, 0x00	; 0
    38b8:	0e 94 ba 1a 	call	0x3574	; 0x3574 <_Z11drawNumberViil7ALIGN_T>
    38bc:	c3 01       	movw	r24, r6
    38be:	b2 01       	movw	r22, r4
    38c0:	20 e1       	ldi	r18, 0x10	; 16
    38c2:	3e e0       	ldi	r19, 0x0E	; 14
    38c4:	40 e0       	ldi	r20, 0x00	; 0
    38c6:	50 e0       	ldi	r21, 0x00	; 0
    38c8:	0e 94 4c 2f 	call	0x5e98	; 0x5e98 <__udivmodsi4>
    38cc:	6c e3       	ldi	r22, 0x3C	; 60
    38ce:	86 2e       	mov	r8, r22
    38d0:	91 2c       	mov	r9, r1
    38d2:	a1 2c       	mov	r10, r1
    38d4:	b1 2c       	mov	r11, r1
    38d6:	ca 01       	movw	r24, r20
    38d8:	b9 01       	movw	r22, r18
    38da:	a5 01       	movw	r20, r10
    38dc:	94 01       	movw	r18, r8
    38de:	0e 94 4c 2f 	call	0x5e98	; 0x5e98 <__udivmodsi4>
    38e2:	86 2f       	mov	r24, r22
    38e4:	0e 94 0c 1b 	call	0x3618	; 0x3618 <_ZL20printColonAnd2Digitsh>
    38e8:	c3 01       	movw	r24, r6
    38ea:	b2 01       	movw	r22, r4
    38ec:	a5 01       	movw	r20, r10
    38ee:	94 01       	movw	r18, r8
    38f0:	0e 94 4c 2f 	call	0x5e98	; 0x5e98 <__udivmodsi4>
    38f4:	ca 01       	movw	r24, r20
    38f6:	b9 01       	movw	r22, r18
    38f8:	a5 01       	movw	r20, r10
    38fa:	94 01       	movw	r18, r8
    38fc:	0e 94 4c 2f 	call	0x5e98	; 0x5e98 <__udivmodsi4>
    3900:	86 2f       	mov	r24, r22
    3902:	0e 94 0c 1b 	call	0x3618	; 0x3618 <_ZL20printColonAnd2Digitsh>
    3906:	c2 ce       	rjmp	.-636    	; 0x368c <_Z9drawTitlev+0x44>
    3908:	08 e1       	ldi	r16, 0x18	; 24
    390a:	10 e0       	ldi	r17, 0x00	; 0
    390c:	cf e7       	ldi	r28, 0x7F	; 127
    390e:	d7 e0       	ldi	r29, 0x07	; 7
    3910:	fe 01       	movw	r30, r28
    3912:	84 91       	lpm	r24, Z
    3914:	8b 31       	cpi	r24, 0x1B	; 27
    3916:	39 f1       	breq	.+78     	; 0x3966 <_Z9drawTitlev+0x31e>
    3918:	65 e1       	ldi	r22, 0x15	; 21
    391a:	70 e0       	ldi	r23, 0x00	; 0
    391c:	ce 01       	movw	r24, r28
    391e:	0e 94 c6 2e 	call	0x5d8c	; 0x5d8c <strnlen_P>
    3922:	5c 01       	movw	r10, r24
    3924:	6c 01       	movw	r12, r24
    3926:	dd 24       	eor	r13, r13
  }
}

void Arduboy::setCursor(int16_t x, int16_t y)
{
  cursor_x = x;
    3928:	10 93 1f 07 	sts	0x071F, r17	; 0x80071f <arduboy+0x415>
    392c:	00 93 1e 07 	sts	0x071E, r16	; 0x80071e <arduboy+0x414>
    3930:	c6 01       	movw	r24, r12
    3932:	88 0f       	add	r24, r24
    3934:	99 1f       	adc	r25, r25
    3936:	8c 0d       	add	r24, r12
    3938:	9d 1d       	adc	r25, r13
    393a:	4f 96       	adiw	r24, 0x1f	; 31
  cursor_y = y;
    393c:	90 93 21 07 	sts	0x0721, r25	; 0x800721 <arduboy+0x417>
    3940:	80 93 20 07 	sts	0x0720, r24	; 0x800720 <arduboy+0x416>
    3944:	ce 01       	movw	r24, r28
    3946:	0e 94 86 18 	call	0x310c	; 0x310c <_ZN5Print5printEPK19__FlashStringHelper.constprop.49>
    394a:	ff ef       	ldi	r31, 0xFF	; 255
    394c:	cf 1a       	sub	r12, r31
    394e:	df 0a       	sbc	r13, r31
    3950:	cc 0d       	add	r28, r12
    3952:	dd 1d       	adc	r29, r13
    3954:	82 e0       	ldi	r24, 0x02	; 2
    3956:	90 e0       	ldi	r25, 0x00	; 0
    3958:	aa 20       	and	r10, r10
    395a:	11 f0       	breq	.+4      	; 0x3960 <_Z9drawTitlev+0x318>
    395c:	86 e0       	ldi	r24, 0x06	; 6
    395e:	90 e0       	ldi	r25, 0x00	; 0
    3960:	08 0f       	add	r16, r24
    3962:	19 1f       	adc	r17, r25
    3964:	d5 cf       	rjmp	.-86     	; 0x3910 <_Z9drawTitlev+0x2c8>
    3966:	25 e3       	ldi	r18, 0x35	; 53
    3968:	41 e1       	ldi	r20, 0x11	; 17
    396a:	66 e0       	ldi	r22, 0x06	; 6
    396c:	70 e0       	ldi	r23, 0x00	; 0
    396e:	85 e1       	ldi	r24, 0x15	; 21
    3970:	90 e0       	ldi	r25, 0x00	; 0
    3972:	0e 94 a0 10 	call	0x2140	; 0x2140 <_ZN7Arduboy8drawRectEiihhh.constprop.13>
    3976:	8a ce       	rjmp	.-748    	; 0x368c <_Z9drawTitlev+0x44>

00003978 <_Z11updateTitlev>:
    3978:	cf 92       	push	r12
    397a:	df 92       	push	r13
    397c:	ef 92       	push	r14
    397e:	ff 92       	push	r15
    3980:	cf 93       	push	r28
    3982:	df 93       	push	r29
    3984:	80 91 77 02 	lds	r24, 0x0277	; 0x800277 <_ZL5state.lto_priv.68>
    3988:	90 91 78 02 	lds	r25, 0x0278	; 0x800278 <_ZL5state.lto_priv.68+0x1>
    398c:	01 97       	sbiw	r24, 0x01	; 1
    398e:	39 f5       	brne	.+78     	; 0x39de <_Z11updateTitlev+0x66>
    3990:	0e 94 a8 16 	call	0x2d50	; 0x2d50 <_Z10handleMenuv>
    3994:	80 91 77 02 	lds	r24, 0x0277	; 0x800277 <_ZL5state.lto_priv.68>
    3998:	90 91 78 02 	lds	r25, 0x0278	; 0x800278 <_ZL5state.lto_priv.68+0x1>
    399c:	c2 e0       	ldi	r28, 0x02	; 2
    399e:	d0 e0       	ldi	r29, 0x00	; 0
    39a0:	04 97       	sbiw	r24, 0x04	; 4
    39a2:	11 f0       	breq	.+4      	; 0x39a8 <_Z11updateTitlev+0x30>
    39a4:	c1 e0       	ldi	r28, 0x01	; 1
    39a6:	d0 e0       	ldi	r29, 0x00	; 0
    39a8:	0e 94 09 2e 	call	0x5c12	; 0x5c12 <rand>
    39ac:	6c 01       	movw	r12, r24
    39ae:	99 0f       	add	r25, r25
    39b0:	ee 08       	sbc	r14, r14
    39b2:	ff 08       	sbc	r15, r15
    39b4:	0e 94 ce 0c 	call	0x199c	; 0x199c <micros>
  #include "stdlib.h"
}

void randomSeed(unsigned long seed)
{
  if (seed != 0) {
    39b8:	c6 16       	cp	r12, r22
    39ba:	d7 06       	cpc	r13, r23
    39bc:	e8 06       	cpc	r14, r24
    39be:	f9 06       	cpc	r15, r25
    39c0:	31 f0       	breq	.+12     	; 0x39ce <_Z11updateTitlev+0x56>
    39c2:	6c 25       	eor	r22, r12
    39c4:	7d 25       	eor	r23, r13
    39c6:	8e 25       	eor	r24, r14
    39c8:	9f 25       	eor	r25, r15
    srandom(seed);
    39ca:	0e 94 b4 2e 	call	0x5d68	; 0x5d68 <srandom>
    39ce:	ce 01       	movw	r24, r28
    39d0:	df 91       	pop	r29
    39d2:	cf 91       	pop	r28
    39d4:	ff 90       	pop	r15
    39d6:	ef 90       	pop	r14
    39d8:	df 90       	pop	r13
    39da:	cf 90       	pop	r12
    39dc:	08 95       	ret
    39de:	80 91 26 07 	lds	r24, 0x0726	; 0x800726 <arduboy+0x41c>
    39e2:	90 e0       	ldi	r25, 0x00	; 0
    39e4:	80 95       	com	r24
    39e6:	90 95       	com	r25
    39e8:	20 91 27 07 	lds	r18, 0x0727	; 0x800727 <arduboy+0x41d>
    39ec:	2c 70       	andi	r18, 0x0C	; 12
    39ee:	30 e0       	ldi	r19, 0x00	; 0
    39f0:	82 23       	and	r24, r18
    39f2:	93 23       	and	r25, r19
    39f4:	89 2b       	or	r24, r25
    39f6:	b1 f2       	breq	.-84     	; 0x39a4 <_Z11updateTitlev+0x2c>
    39f8:	0e 94 5b 16 	call	0x2cb6	; 0x2cb6 <_Z14playSoundClickv>
    39fc:	81 e0       	ldi	r24, 0x01	; 1
    39fe:	90 e0       	ldi	r25, 0x00	; 0
    3a00:	90 93 78 02 	sts	0x0278, r25	; 0x800278 <_ZL5state.lto_priv.68+0x1>
    3a04:	80 93 77 02 	sts	0x0277, r24	; 0x800277 <_ZL5state.lto_priv.68>
    3a08:	80 93 76 02 	sts	0x0276, r24	; 0x800276 <isInvalid>
    3a0c:	cb cf       	rjmp	.-106    	; 0x39a4 <_Z11updateTitlev+0x2c>

00003a0e <_Z9initTitlev>:
    3a0e:	0f 93       	push	r16
    3a10:	1f 93       	push	r17
    3a12:	cf 93       	push	r28
    3a14:	df 93       	push	r29
    3a16:	80 91 77 02 	lds	r24, 0x0277	; 0x800277 <_ZL5state.lto_priv.68>
    3a1a:	90 91 78 02 	lds	r25, 0x0278	; 0x800278 <_ZL5state.lto_priv.68+0x1>
    3a1e:	89 2b       	or	r24, r25
    3a20:	09 f0       	breq	.+2      	; 0x3a24 <_Z9initTitlev+0x16>
    3a22:	53 c0       	rjmp	.+166    	; 0x3aca <_Z9initTitlev+0xbc>
    3a24:	80 ee       	ldi	r24, 0xE0	; 224
    3a26:	92 e0       	ldi	r25, 0x02	; 2
    3a28:	90 93 4b 02 	sts	0x024B, r25	; 0x80024b <_ZL7eepAddr+0x1>
    3a2c:	80 93 4a 02 	sts	0x024A, r24	; 0x80024a <_ZL7eepAddr>
    3a30:	f9 99       	sbic	0x1f, 1	; 31
    3a32:	fe cf       	rjmp	.-4      	; 0x3a30 <_Z9initTitlev+0x22>
    3a34:	80 ee       	ldi	r24, 0xE0	; 224
    3a36:	92 e0       	ldi	r25, 0x02	; 2
    3a38:	0e 94 e9 2e 	call	0x5dd2	; 0x5dd2 <eeprom_read_dword>
    3a3c:	24 ee       	ldi	r18, 0xE4	; 228
    3a3e:	32 e0       	ldi	r19, 0x02	; 2
    3a40:	30 93 4b 02 	sts	0x024B, r19	; 0x80024b <_ZL7eepAddr+0x1>
    3a44:	20 93 4a 02 	sts	0x024A, r18	; 0x80024a <_ZL7eepAddr>
    3a48:	6f 34       	cpi	r22, 0x4F	; 79
    3a4a:	72 44       	sbci	r23, 0x42	; 66
    3a4c:	8e 44       	sbci	r24, 0x4E	; 78
    3a4e:	99 40       	sbci	r25, 0x09	; 9
    3a50:	09 f0       	breq	.+2      	; 0x3a54 <_Z9initTitlev+0x46>
    3a52:	a6 c0       	rjmp	.+332    	; 0x3ba0 <_Z9initTitlev+0x192>
    3a54:	f9 99       	sbic	0x1f, 1	; 31
    3a56:	fe cf       	rjmp	.-4      	; 0x3a54 <_Z9initTitlev+0x46>
    3a58:	4a e1       	ldi	r20, 0x1A	; 26
    3a5a:	50 e0       	ldi	r21, 0x00	; 0
    3a5c:	64 ee       	ldi	r22, 0xE4	; 228
    3a5e:	72 e0       	ldi	r23, 0x02	; 2
    3a60:	87 e5       	ldi	r24, 0x57	; 87
    3a62:	92 e0       	ldi	r25, 0x02	; 2
    3a64:	0e 94 d1 2e 	call	0x5da2	; 0x5da2 <eeprom_read_block>
    3a68:	c0 91 4a 02 	lds	r28, 0x024A	; 0x80024a <_ZL7eepAddr>
    3a6c:	d0 91 4b 02 	lds	r29, 0x024B	; 0x80024b <_ZL7eepAddr+0x1>
    3a70:	6a 96       	adiw	r28, 0x1a	; 26
    3a72:	d0 93 4b 02 	sts	0x024B, r29	; 0x80024b <_ZL7eepAddr+0x1>
    3a76:	c0 93 4a 02 	sts	0x024A, r28	; 0x80024a <_ZL7eepAddr>
    3a7a:	f9 99       	sbic	0x1f, 1	; 31
    3a7c:	fe cf       	rjmp	.-4      	; 0x3a7a <_Z9initTitlev+0x6c>
    3a7e:	ce 01       	movw	r24, r28
    3a80:	0e 94 ef 2e 	call	0x5dde	; 0x5dde <eeprom_read_word>
    3a84:	8c 01       	movw	r16, r24
    3a86:	22 96       	adiw	r28, 0x02	; 2
    3a88:	d0 93 4b 02 	sts	0x024B, r29	; 0x80024b <_ZL7eepAddr+0x1>
    3a8c:	c0 93 4a 02 	sts	0x024A, r28	; 0x80024a <_ZL7eepAddr>
    3a90:	0e 94 3c 17 	call	0x2e78	; 0x2e78 <_ZL12calcCheckSumv>
    3a94:	80 17       	cp	r24, r16
    3a96:	91 07       	cpc	r25, r17
    3a98:	09 f0       	breq	.+2      	; 0x3a9c <_Z9initTitlev+0x8e>
    3a9a:	82 c0       	rjmp	.+260    	; 0x3ba0 <_Z9initTitlev+0x192>
    3a9c:	82 e0       	ldi	r24, 0x02	; 2
    3a9e:	90 e0       	ldi	r25, 0x00	; 0
    3aa0:	90 93 49 02 	sts	0x0249, r25	; 0x800249 <_ZL11recordState+0x1>
    3aa4:	80 93 48 02 	sts	0x0248, r24	; 0x800248 <_ZL11recordState>
    3aa8:	10 92 47 02 	sts	0x0247, r1	; 0x800247 <isRecordDirty>
    3aac:	80 91 b9 02 	lds	r24, 0x02B9	; 0x8002b9 <_ZN12ArduboyAudio13audio_enabledE>
    3ab0:	0e 94 95 16 	call	0x2d2a	; 0x2d2a <_Z8setSoundb>
    3ab4:	10 92 53 02 	sts	0x0253, r1	; 0x800253 <lastScore>
    3ab8:	10 92 54 02 	sts	0x0254, r1	; 0x800254 <lastScore+0x1>
    3abc:	10 92 55 02 	sts	0x0255, r1	; 0x800255 <lastScore+0x2>
    3ac0:	10 92 56 02 	sts	0x0256, r1	; 0x800256 <lastScore+0x3>
    3ac4:	81 e0       	ldi	r24, 0x01	; 1
    3ac6:	80 93 75 02 	sts	0x0275, r24	; 0x800275 <_ZL10lastChoice>
    3aca:	82 e0       	ldi	r24, 0x02	; 2
    3acc:	80 93 74 02 	sts	0x0274, r24	; 0x800274 <_ZL9maxChoice>
    3ad0:	20 91 5a 02 	lds	r18, 0x025A	; 0x80025a <record+0x3>
    3ad4:	80 91 57 02 	lds	r24, 0x0257	; 0x800257 <record>
    3ad8:	90 91 58 02 	lds	r25, 0x0258	; 0x800258 <record+0x1>
    3adc:	a0 91 59 02 	lds	r26, 0x0259	; 0x800259 <record+0x2>
    3ae0:	b0 e0       	ldi	r27, 0x00	; 0
    3ae2:	2c 33       	cpi	r18, 0x3C	; 60
    3ae4:	08 f0       	brcs	.+2      	; 0x3ae8 <_Z9initTitlev+0xda>
    3ae6:	6c c0       	rjmp	.+216    	; 0x3bc0 <_Z9initTitlev+0x1b2>
    3ae8:	80 34       	cpi	r24, 0x40	; 64
    3aea:	3d e0       	ldi	r19, 0x0D	; 13
    3aec:	93 07       	cpc	r25, r19
    3aee:	33 e0       	ldi	r19, 0x03	; 3
    3af0:	a3 07       	cpc	r26, r19
    3af2:	b1 05       	cpc	r27, r1
    3af4:	08 f0       	brcs	.+2      	; 0x3af8 <_Z9initTitlev+0xea>
    3af6:	64 c0       	rjmp	.+200    	; 0x3bc0 <_Z9initTitlev+0x1b2>
    3af8:	10 92 4c 02 	sts	0x024C, r1	; 0x80024c <_ZL13menuItemCount>
    3afc:	64 ef       	ldi	r22, 0xF4	; 244
    3afe:	70 e1       	ldi	r23, 0x10	; 16
    3b00:	80 e4       	ldi	r24, 0x40	; 64
    3b02:	95 e0       	ldi	r25, 0x05	; 5
    3b04:	0e 94 18 11 	call	0x2230	; 0x2230 <_Z11addMenuItemPK19__FlashStringHelperPFvvE>
    3b08:	64 ef       	ldi	r22, 0xF4	; 244
    3b0a:	70 e1       	ldi	r23, 0x10	; 16
    3b0c:	89 e3       	ldi	r24, 0x39	; 57
    3b0e:	95 e0       	ldi	r25, 0x05	; 5
    3b10:	0e 94 18 11 	call	0x2230	; 0x2230 <_Z11addMenuItemPK19__FlashStringHelperPFvvE>
    3b14:	64 ef       	ldi	r22, 0xF4	; 244
    3b16:	70 e1       	ldi	r23, 0x10	; 16
    3b18:	80 e3       	ldi	r24, 0x30	; 48
    3b1a:	95 e0       	ldi	r25, 0x05	; 5
    3b1c:	0e 94 18 11 	call	0x2230	; 0x2230 <_Z11addMenuItemPK19__FlashStringHelperPFvvE>
    3b20:	80 91 74 02 	lds	r24, 0x0274	; 0x800274 <_ZL9maxChoice>
    3b24:	83 30       	cpi	r24, 0x03	; 3
    3b26:	34 f0       	brlt	.+12     	; 0x3b34 <_Z9initTitlev+0x126>
    3b28:	64 ef       	ldi	r22, 0xF4	; 244
    3b2a:	70 e1       	ldi	r23, 0x10	; 16
    3b2c:	88 e2       	ldi	r24, 0x28	; 40
    3b2e:	95 e0       	ldi	r25, 0x05	; 5
    3b30:	0e 94 18 11 	call	0x2230	; 0x2230 <_Z11addMenuItemPK19__FlashStringHelperPFvvE>
    3b34:	70 e0       	ldi	r23, 0x00	; 0
    3b36:	60 e0       	ldi	r22, 0x00	; 0
    3b38:	90 e0       	ldi	r25, 0x00	; 0
    3b3a:	80 e0       	ldi	r24, 0x00	; 0
    3b3c:	0e 94 18 11 	call	0x2230	; 0x2230 <_Z11addMenuItemPK19__FlashStringHelperPFvvE>
    3b40:	6c e6       	ldi	r22, 0x6C	; 108
    3b42:	76 e1       	ldi	r23, 0x16	; 22
    3b44:	81 e2       	ldi	r24, 0x21	; 33
    3b46:	95 e0       	ldi	r25, 0x05	; 5
    3b48:	0e 94 18 11 	call	0x2230	; 0x2230 <_Z11addMenuItemPK19__FlashStringHelperPFvvE>
    3b4c:	60 e6       	ldi	r22, 0x60	; 96
    3b4e:	76 e1       	ldi	r23, 0x16	; 22
    3b50:	8a e1       	ldi	r24, 0x1A	; 26
    3b52:	95 e0       	ldi	r25, 0x05	; 5
    3b54:	0e 94 18 11 	call	0x2230	; 0x2230 <_Z11addMenuItemPK19__FlashStringHelperPFvvE>
    3b58:	80 e5       	ldi	r24, 0x50	; 80
    3b5a:	80 93 52 02 	sts	0x0252, r24	; 0x800252 <_ZL5menuX>
    3b5e:	8f e3       	ldi	r24, 0x3F	; 63
    3b60:	80 93 51 02 	sts	0x0251, r24	; 0x800251 <_ZL5menuY>
    3b64:	85 e2       	ldi	r24, 0x25	; 37
    3b66:	80 93 50 02 	sts	0x0250, r24	; 0x800250 <_ZL5menuW>
    3b6a:	80 e4       	ldi	r24, 0x40	; 64
    3b6c:	80 93 4f 02 	sts	0x024F, r24	; 0x80024f <_ZL5menuH>
    3b70:	10 92 4e 02 	sts	0x024E, r1	; 0x80024e <_ZL8isFramed>
    3b74:	81 e0       	ldi	r24, 0x01	; 1
    3b76:	80 93 4d 02 	sts	0x024D, r24	; 0x80024d <_ZL14isControlSound>
    3b7a:	90 91 75 02 	lds	r25, 0x0275	; 0x800275 <_ZL10lastChoice>
    3b7e:	90 93 72 02 	sts	0x0272, r25	; 0x800272 <_ZL11menuItemPos>
    3b82:	80 93 71 02 	sts	0x0271, r24	; 0x800271 <_ZL13isInvalidMenu>
    3b86:	21 e0       	ldi	r18, 0x01	; 1
    3b88:	30 e0       	ldi	r19, 0x00	; 0
    3b8a:	30 93 78 02 	sts	0x0278, r19	; 0x800278 <_ZL5state.lto_priv.68+0x1>
    3b8e:	20 93 77 02 	sts	0x0277, r18	; 0x800277 <_ZL5state.lto_priv.68>
    3b92:	80 93 76 02 	sts	0x0276, r24	; 0x800276 <isInvalid>
    3b96:	df 91       	pop	r29
    3b98:	cf 91       	pop	r28
    3b9a:	1f 91       	pop	r17
    3b9c:	0f 91       	pop	r16
    3b9e:	08 95       	ret
    3ba0:	e7 e5       	ldi	r30, 0x57	; 87
    3ba2:	f2 e0       	ldi	r31, 0x02	; 2
    3ba4:	8a e1       	ldi	r24, 0x1A	; 26
    3ba6:	df 01       	movw	r26, r30
    3ba8:	1d 92       	st	X+, r1
    3baa:	8a 95       	dec	r24
    3bac:	e9 f7       	brne	.-6      	; 0x3ba8 <_Z9initTitlev+0x19a>
    3bae:	81 e0       	ldi	r24, 0x01	; 1
    3bb0:	90 e0       	ldi	r25, 0x00	; 0
    3bb2:	90 93 49 02 	sts	0x0249, r25	; 0x800249 <_ZL11recordState+0x1>
    3bb6:	80 93 48 02 	sts	0x0248, r24	; 0x800248 <_ZL11recordState>
    3bba:	80 93 47 02 	sts	0x0247, r24	; 0x800247 <isRecordDirty>
    3bbe:	76 cf       	rjmp	.-276    	; 0x3aac <_Z9initTitlev+0x9e>
    3bc0:	33 e0       	ldi	r19, 0x03	; 3
    3bc2:	30 93 74 02 	sts	0x0274, r19	; 0x800274 <_ZL9maxChoice>
    3bc6:	2a 35       	cpi	r18, 0x5A	; 90
    3bc8:	30 f4       	brcc	.+12     	; 0x3bd6 <_Z9initTitlev+0x1c8>
    3bca:	80 32       	cpi	r24, 0x20	; 32
    3bcc:	91 4a       	sbci	r25, 0xA1	; 161
    3bce:	a7 40       	sbci	r26, 0x07	; 7
    3bd0:	b1 05       	cpc	r27, r1
    3bd2:	08 f4       	brcc	.+2      	; 0x3bd6 <_Z9initTitlev+0x1c8>
    3bd4:	91 cf       	rjmp	.-222    	; 0x3af8 <_Z9initTitlev+0xea>
    3bd6:	84 e0       	ldi	r24, 0x04	; 4
    3bd8:	80 93 74 02 	sts	0x0274, r24	; 0x800274 <_ZL9maxChoice>
    3bdc:	8d cf       	rjmp	.-230    	; 0x3af8 <_Z9initTitlev+0xea>

00003bde <_ZL13drawGameErasev>:
    3bde:	4f 92       	push	r4
    3be0:	5f 92       	push	r5
    3be2:	6f 92       	push	r6
    3be4:	7f 92       	push	r7
    3be6:	af 92       	push	r10
    3be8:	bf 92       	push	r11
    3bea:	cf 92       	push	r12
    3bec:	df 92       	push	r13
    3bee:	ef 92       	push	r14
    3bf0:	ff 92       	push	r15
    3bf2:	0f 93       	push	r16
    3bf4:	1f 93       	push	r17
    3bf6:	cf 93       	push	r28
    3bf8:	df 93       	push	r29
    3bfa:	c0 e7       	ldi	r28, 0x70	; 112
    3bfc:	d0 e0       	ldi	r29, 0x00	; 0
    3bfe:	b1 2c       	mov	r11, r1
    3c00:	a1 2c       	mov	r10, r1
long random(long howbig)
{
  if (howbig == 0) {
    return 0;
  }
  return random() % howbig;
    3c02:	8e e1       	ldi	r24, 0x1E	; 30
    3c04:	48 2e       	mov	r4, r24
    3c06:	51 2c       	mov	r5, r1
    3c08:	61 2c       	mov	r6, r1
    3c0a:	71 2c       	mov	r7, r1
    3c0c:	80 91 78 01 	lds	r24, 0x0178	; 0x800178 <_ZL11filledLines>
    3c10:	90 91 79 01 	lds	r25, 0x0179	; 0x800179 <_ZL11filledLines+0x1>
    3c14:	0a 2c       	mov	r0, r10
    3c16:	02 c0       	rjmp	.+4      	; 0x3c1c <_ZL13drawGameErasev+0x3e>
    3c18:	95 95       	asr	r25
    3c1a:	87 95       	ror	r24
    3c1c:	0a 94       	dec	r0
    3c1e:	e2 f7       	brpl	.-8      	; 0x3c18 <_ZL13drawGameErasev+0x3a>
    3c20:	80 ff       	sbrs	r24, 0
    3c22:	27 c0       	rjmp	.+78     	; 0x3c72 <_ZL13drawGameErasev+0x94>
    3c24:	10 e0       	ldi	r17, 0x00	; 0
    3c26:	00 e0       	ldi	r16, 0x00	; 0
    3c28:	0e 94 65 2e 	call	0x5cca	; 0x5cca <random>
    3c2c:	c0 90 76 01 	lds	r12, 0x0176	; 0x800176 <_ZL11gameCounter>
    3c30:	d0 90 77 01 	lds	r13, 0x0177	; 0x800177 <_ZL11gameCounter+0x1>
    3c34:	21 e0       	ldi	r18, 0x01	; 1
    3c36:	c2 1a       	sub	r12, r18
    3c38:	d1 08       	sbc	r13, r1
    3c3a:	0d 2c       	mov	r0, r13
    3c3c:	00 0c       	add	r0, r0
    3c3e:	ee 08       	sbc	r14, r14
    3c40:	ff 08       	sbc	r15, r15
    3c42:	a3 01       	movw	r20, r6
    3c44:	92 01       	movw	r18, r4
    3c46:	0e 94 1a 2f 	call	0x5e34	; 0x5e34 <__divmodsi4>
    3c4a:	21 e0       	ldi	r18, 0x01	; 1
    3c4c:	6c 15       	cp	r22, r12
    3c4e:	7d 05       	cpc	r23, r13
    3c50:	8e 05       	cpc	r24, r14
    3c52:	9f 05       	cpc	r25, r15
    3c54:	0c f0       	brlt	.+2      	; 0x3c58 <_ZL13drawGameErasev+0x7a>
    3c56:	20 e0       	ldi	r18, 0x00	; 0
    3c58:	40 e3       	ldi	r20, 0x30	; 48
    3c5a:	68 e0       	ldi	r22, 0x08	; 8
    3c5c:	70 e0       	ldi	r23, 0x00	; 0
    3c5e:	c8 01       	movw	r24, r16
    3c60:	8c 0f       	add	r24, r28
    3c62:	9d 1f       	adc	r25, r29
    3c64:	0e 94 99 07 	call	0xf32	; 0xf32 <_ZN10MyArduboyV14drawFastVLine2Eiiah.constprop.47>
    3c68:	0f 5f       	subi	r16, 0xFF	; 255
    3c6a:	1f 4f       	sbci	r17, 0xFF	; 255
    3c6c:	08 30       	cpi	r16, 0x08	; 8
    3c6e:	11 05       	cpc	r17, r1
    3c70:	d9 f6       	brne	.-74     	; 0x3c28 <_ZL13drawGameErasev+0x4a>
    3c72:	8f ef       	ldi	r24, 0xFF	; 255
    3c74:	a8 1a       	sub	r10, r24
    3c76:	b8 0a       	sbc	r11, r24
    3c78:	28 97       	sbiw	r28, 0x08	; 8
    3c7a:	41 f6       	brne	.-112    	; 0x3c0c <_ZL13drawGameErasev+0x2e>
    3c7c:	df 91       	pop	r29
    3c7e:	cf 91       	pop	r28
    3c80:	1f 91       	pop	r17
    3c82:	0f 91       	pop	r16
    3c84:	ff 90       	pop	r15
    3c86:	ef 90       	pop	r14
    3c88:	df 90       	pop	r13
    3c8a:	cf 90       	pop	r12
    3c8c:	bf 90       	pop	r11
    3c8e:	af 90       	pop	r10
    3c90:	7f 90       	pop	r7
    3c92:	6f 90       	pop	r6
    3c94:	5f 90       	pop	r5
    3c96:	4f 90       	pop	r4
    3c98:	08 95       	ret

00003c9a <_ZL12setNextBunchv>:
    3c9a:	8f 92       	push	r8
    3c9c:	9f 92       	push	r9
    3c9e:	af 92       	push	r10
    3ca0:	bf 92       	push	r11
    3ca2:	cf 92       	push	r12
    3ca4:	df 92       	push	r13
    3ca6:	ef 92       	push	r14
    3ca8:	ff 92       	push	r15
    3caa:	0f 93       	push	r16
    3cac:	1f 93       	push	r17
    3cae:	cf 93       	push	r28
    3cb0:	df 93       	push	r29
    3cb2:	80 91 5a 01 	lds	r24, 0x015A	; 0x80015a <_ZL8nextBall>
    3cb6:	81 50       	subi	r24, 0x01	; 1
    3cb8:	80 93 5a 01 	sts	0x015A, r24	; 0x80015a <_ZL8nextBall>
    3cbc:	81 11       	cpse	r24, r1
    3cbe:	84 c0       	rjmp	.+264    	; 0x3dc8 <_ZL12setNextBunchv+0x12e>
    3cc0:	20 91 58 01 	lds	r18, 0x0158	; 0x800158 <_ZL9starGuage>
    3cc4:	30 91 59 01 	lds	r19, 0x0159	; 0x800159 <_ZL9starGuage+0x1>
    3cc8:	80 91 56 01 	lds	r24, 0x0156	; 0x800156 <_ZL12starGuageMax>
    3ccc:	90 91 57 01 	lds	r25, 0x0157	; 0x800157 <_ZL12starGuageMax+0x1>
    3cd0:	28 17       	cp	r18, r24
    3cd2:	39 07       	cpc	r19, r25
    3cd4:	dc f0       	brlt	.+54     	; 0x3d0c <_ZL12setNextBunchv+0x72>
    3cd6:	28 1b       	sub	r18, r24
    3cd8:	39 0b       	sbc	r19, r25
    3cda:	30 93 59 01 	sts	0x0159, r19	; 0x800159 <_ZL9starGuage+0x1>
    3cde:	20 93 58 01 	sts	0x0158, r18	; 0x800158 <_ZL9starGuage>
    3ce2:	80 39       	cpi	r24, 0x90	; 144
    3ce4:	21 e0       	ldi	r18, 0x01	; 1
    3ce6:	92 07       	cpc	r25, r18
    3ce8:	6c f4       	brge	.+26     	; 0x3d04 <_ZL12setNextBunchv+0x6a>
    3cea:	24 e6       	ldi	r18, 0x64	; 100
    3cec:	30 e0       	ldi	r19, 0x00	; 0
    3cee:	88 3c       	cpi	r24, 0xC8	; 200
    3cf0:	91 05       	cpc	r25, r1
    3cf2:	14 f4       	brge	.+4      	; 0x3cf8 <_ZL12setNextBunchv+0x5e>
    3cf4:	28 e2       	ldi	r18, 0x28	; 40
    3cf6:	30 e0       	ldi	r19, 0x00	; 0
    3cf8:	82 0f       	add	r24, r18
    3cfa:	93 1f       	adc	r25, r19
    3cfc:	90 93 57 01 	sts	0x0157, r25	; 0x800157 <_ZL12starGuageMax+0x1>
    3d00:	80 93 56 01 	sts	0x0156, r24	; 0x800156 <_ZL12starGuageMax>
    3d04:	11 e0       	ldi	r17, 0x01	; 1
    3d06:	81 e0       	ldi	r24, 0x01	; 1
    3d08:	00 e0       	ldi	r16, 0x00	; 0
    3d0a:	08 c0       	rjmp	.+16     	; 0x3d1c <_ZL12setNextBunchv+0x82>
    3d0c:	81 e0       	ldi	r24, 0x01	; 1
    3d0e:	90 91 55 01 	lds	r25, 0x0155	; 0x800155 <_ZL5level>
    3d12:	9a 30       	cpi	r25, 0x0A	; 10
    3d14:	08 f0       	brcs	.+2      	; 0x3d18 <_ZL12setNextBunchv+0x7e>
    3d16:	80 e0       	ldi	r24, 0x00	; 0
    3d18:	10 e0       	ldi	r17, 0x00	; 0
    3d1a:	01 e0       	ldi	r16, 0x01	; 1
    3d1c:	90 91 54 01 	lds	r25, 0x0154	; 0x800154 <_ZL8ballFreq>
    3d20:	90 93 5a 01 	sts	0x015A, r25	; 0x80015a <_ZL8nextBall>
    3d24:	c1 e0       	ldi	r28, 0x01	; 1
    3d26:	d0 e0       	ldi	r29, 0x00	; 0
    3d28:	81 11       	cpse	r24, r1
    3d2a:	02 c0       	rjmp	.+4      	; 0x3d30 <_ZL12setNextBunchv+0x96>
    3d2c:	c3 e0       	ldi	r28, 0x03	; 3
    3d2e:	d0 e0       	ldi	r29, 0x00	; 0
    3d30:	9e e4       	ldi	r25, 0x4E	; 78
    3d32:	c9 2e       	mov	r12, r25
    3d34:	91 e0       	ldi	r25, 0x01	; 1
    3d36:	d9 2e       	mov	r13, r25
    3d38:	f1 2c       	mov	r15, r1
    3d3a:	e1 2c       	mov	r14, r1
    3d3c:	22 e0       	ldi	r18, 0x02	; 2
    3d3e:	82 2e       	mov	r8, r18
    3d40:	91 2c       	mov	r9, r1
    3d42:	a1 2c       	mov	r10, r1
    3d44:	b1 2c       	mov	r11, r1
    3d46:	ec 16       	cp	r14, r28
    3d48:	fd 06       	cpc	r15, r29
    3d4a:	0c f0       	brlt	.+2      	; 0x3d4e <_ZL12setNextBunchv+0xb4>
    3d4c:	43 c0       	rjmp	.+134    	; 0x3dd4 <_ZL12setNextBunchv+0x13a>
    3d4e:	0e 94 65 2e 	call	0x5cca	; 0x5cca <random>
    3d52:	a5 01       	movw	r20, r10
    3d54:	94 01       	movw	r18, r8
    3d56:	0e 94 1a 2f 	call	0x5e34	; 0x5e34 <__divmodsi4>
    3d5a:	67 2b       	or	r22, r23
    3d5c:	68 2b       	or	r22, r24
    3d5e:	69 2b       	or	r22, r25
    3d60:	b1 f5       	brne	.+108    	; 0x3dce <_ZL12setNextBunchv+0x134>
    3d62:	87 e0       	ldi	r24, 0x07	; 7
    3d64:	90 e0       	ldi	r25, 0x00	; 0
    3d66:	f6 01       	movw	r30, r12
    3d68:	91 83       	std	Z+1, r25	; 0x01
    3d6a:	80 83       	st	Z, r24
    3d6c:	ff ef       	ldi	r31, 0xFF	; 255
    3d6e:	ef 1a       	sub	r14, r31
    3d70:	ff 0a       	sbc	r15, r31
    3d72:	22 e0       	ldi	r18, 0x02	; 2
    3d74:	c2 0e       	add	r12, r18
    3d76:	d1 1c       	adc	r13, r1
    3d78:	83 e0       	ldi	r24, 0x03	; 3
    3d7a:	e8 16       	cp	r14, r24
    3d7c:	f1 04       	cpc	r15, r1
    3d7e:	19 f7       	brne	.-58     	; 0x3d46 <_ZL12setNextBunchv+0xac>
    3d80:	01 11       	cpse	r16, r1
    3d82:	02 c0       	rjmp	.+4      	; 0x3d88 <_ZL12setNextBunchv+0xee>
    3d84:	11 23       	and	r17, r17
    3d86:	99 f0       	breq	.+38     	; 0x3dae <_ZL12setNextBunchv+0x114>
    3d88:	0e 94 65 2e 	call	0x5cca	; 0x5cca <random>
    3d8c:	9e 01       	movw	r18, r28
    3d8e:	dd 0f       	add	r29, r29
    3d90:	44 0b       	sbc	r20, r20
    3d92:	55 0b       	sbc	r21, r21
    3d94:	0e 94 1a 2f 	call	0x5e34	; 0x5e34 <__divmodsi4>
    3d98:	eb 01       	movw	r28, r22
    3d9a:	cc 0f       	add	r28, r28
    3d9c:	dd 1f       	adc	r29, r29
    3d9e:	11 23       	and	r17, r17
    3da0:	e9 f0       	breq	.+58     	; 0x3ddc <_ZL12setNextBunchv+0x142>
    3da2:	c2 5b       	subi	r28, 0xB2	; 178
    3da4:	de 4f       	sbci	r29, 0xFE	; 254
    3da6:	85 e0       	ldi	r24, 0x05	; 5
    3da8:	90 e0       	ldi	r25, 0x00	; 0
    3daa:	99 83       	std	Y+1, r25	; 0x01
    3dac:	88 83       	st	Y, r24
    3dae:	df 91       	pop	r29
    3db0:	cf 91       	pop	r28
    3db2:	1f 91       	pop	r17
    3db4:	0f 91       	pop	r16
    3db6:	ff 90       	pop	r15
    3db8:	ef 90       	pop	r14
    3dba:	df 90       	pop	r13
    3dbc:	cf 90       	pop	r12
    3dbe:	bf 90       	pop	r11
    3dc0:	af 90       	pop	r10
    3dc2:	9f 90       	pop	r9
    3dc4:	8f 90       	pop	r8
    3dc6:	08 95       	ret
    3dc8:	10 e0       	ldi	r17, 0x00	; 0
    3dca:	00 e0       	ldi	r16, 0x00	; 0
    3dcc:	af cf       	rjmp	.-162    	; 0x3d2c <_ZL12setNextBunchv+0x92>
    3dce:	81 e0       	ldi	r24, 0x01	; 1
    3dd0:	90 e0       	ldi	r25, 0x00	; 0
    3dd2:	c9 cf       	rjmp	.-110    	; 0x3d66 <_ZL12setNextBunchv+0xcc>
    3dd4:	f6 01       	movw	r30, r12
    3dd6:	11 82       	std	Z+1, r1	; 0x01
    3dd8:	10 82       	st	Z, r1
    3dda:	c8 cf       	rjmp	.-112    	; 0x3d6c <_ZL12setNextBunchv+0xd2>
    3ddc:	0e 94 65 2e 	call	0x5cca	; 0x5cca <random>
    3de0:	22 e0       	ldi	r18, 0x02	; 2
    3de2:	30 e0       	ldi	r19, 0x00	; 0
    3de4:	40 e0       	ldi	r20, 0x00	; 0
    3de6:	50 e0       	ldi	r21, 0x00	; 0
    3de8:	0e 94 1a 2f 	call	0x5e34	; 0x5e34 <__divmodsi4>
    3dec:	67 2b       	or	r22, r23
    3dee:	68 2b       	or	r22, r24
    3df0:	69 2b       	or	r22, r25
    3df2:	29 f4       	brne	.+10     	; 0x3dfe <_ZL12setNextBunchv+0x164>
    3df4:	84 e0       	ldi	r24, 0x04	; 4
    3df6:	90 e0       	ldi	r25, 0x00	; 0
    3df8:	c2 5b       	subi	r28, 0xB2	; 178
    3dfa:	de 4f       	sbci	r29, 0xFE	; 254
    3dfc:	d6 cf       	rjmp	.-84     	; 0x3daa <_ZL12setNextBunchv+0x110>
    3dfe:	83 e0       	ldi	r24, 0x03	; 3
    3e00:	90 e0       	ldi	r25, 0x00	; 0
    3e02:	fa cf       	rjmp	.-12     	; 0x3df8 <_ZL12setNextBunchv+0x15e>

00003e04 <_ZL15forwardGameWaitv>:
    3e04:	80 91 76 01 	lds	r24, 0x0176	; 0x800176 <_ZL11gameCounter>
    3e08:	90 91 77 01 	lds	r25, 0x0177	; 0x800177 <_ZL11gameCounter+0x1>
    3e0c:	01 97       	sbiw	r24, 0x01	; 1
    3e0e:	90 93 77 01 	sts	0x0177, r25	; 0x800177 <_ZL11gameCounter+0x1>
    3e12:	80 93 76 01 	sts	0x0176, r24	; 0x800176 <_ZL11gameCounter>
    3e16:	18 16       	cp	r1, r24
    3e18:	19 06       	cpc	r1, r25
    3e1a:	44 f1       	brlt	.+80     	; 0x3e6c <_ZL15forwardGameWaitv+0x68>
    3e1c:	86 e0       	ldi	r24, 0x06	; 6
    3e1e:	ee e4       	ldi	r30, 0x4E	; 78
    3e20:	f1 e0       	ldi	r31, 0x01	; 1
    3e22:	a7 e6       	ldi	r26, 0x67	; 103
    3e24:	b1 e0       	ldi	r27, 0x01	; 1
    3e26:	01 90       	ld	r0, Z+
    3e28:	0d 92       	st	X+, r0
    3e2a:	8a 95       	dec	r24
    3e2c:	e1 f7       	brne	.-8      	; 0x3e26 <_ZL15forwardGameWaitv+0x22>
    3e2e:	0e 94 4d 1e 	call	0x3c9a	; 0x3c9a <_ZL12setNextBunchv>
    3e32:	82 e0       	ldi	r24, 0x02	; 2
    3e34:	80 93 6d 01 	sts	0x016D, r24	; 0x80016d <_ZL6bunchX>
    3e38:	8e e0       	ldi	r24, 0x0E	; 14
    3e3a:	80 93 6e 01 	sts	0x016E, r24	; 0x80016e <_ZL6bunchY>
    3e3e:	80 91 69 01 	lds	r24, 0x0169	; 0x800169 <_ZL12currentBunch+0x2>
    3e42:	90 91 6a 01 	lds	r25, 0x016A	; 0x80016a <_ZL12currentBunch+0x3>
    3e46:	89 2b       	or	r24, r25
    3e48:	91 f0       	breq	.+36     	; 0x3e6e <_ZL15forwardGameWaitv+0x6a>
    3e4a:	80 e0       	ldi	r24, 0x00	; 0
    3e4c:	80 93 6f 01 	sts	0x016F, r24	; 0x80016f <_ZL6bunchR>
    3e50:	10 92 70 01 	sts	0x0170, r1	; 0x800170 <_ZL6bunchG>
    3e54:	10 92 7a 01 	sts	0x017A, r1	; 0x80017a <_ZL5lastY>
    3e58:	10 92 3e 01 	sts	0x013E, r1	; 0x80013e <_ZL10isFastFall>
    3e5c:	10 92 4a 01 	sts	0x014A, r1	; 0x80014a <_ZL13killedEnemies>
    3e60:	81 e0       	ldi	r24, 0x01	; 1
    3e62:	90 e0       	ldi	r25, 0x00	; 0
    3e64:	90 93 4d 01 	sts	0x014D, r25	; 0x80014d <_ZL8gameMode+0x1>
    3e68:	80 93 4c 01 	sts	0x014C, r24	; 0x80014c <_ZL8gameMode>
    3e6c:	08 95       	ret
    3e6e:	85 e0       	ldi	r24, 0x05	; 5
    3e70:	ed cf       	rjmp	.-38     	; 0x3e4c <_ZL15forwardGameWaitv+0x48>

00003e72 <_Z8initGamev>:
    3e72:	80 91 73 02 	lds	r24, 0x0273	; 0x800273 <startLevel>
    3e76:	80 93 55 01 	sts	0x0155, r24	; 0x800155 <_ZL5level>
    3e7a:	10 92 45 01 	sts	0x0145, r1	; 0x800145 <_ZL5score>
    3e7e:	10 92 46 01 	sts	0x0146, r1	; 0x800146 <_ZL5score+0x1>
    3e82:	10 92 47 01 	sts	0x0147, r1	; 0x800147 <_ZL5score+0x2>
    3e86:	10 92 48 01 	sts	0x0148, r1	; 0x800148 <_ZL5score+0x3>
    3e8a:	10 92 41 01 	sts	0x0141, r1	; 0x800141 <_ZL10bunchCount>
    3e8e:	10 92 59 01 	sts	0x0159, r1	; 0x800159 <_ZL9starGuage+0x1>
    3e92:	10 92 58 01 	sts	0x0158, r1	; 0x800158 <_ZL9starGuage>
    3e96:	20 e5       	ldi	r18, 0x50	; 80
    3e98:	30 e0       	ldi	r19, 0x00	; 0
    3e9a:	30 93 57 01 	sts	0x0157, r19	; 0x800157 <_ZL12starGuageMax+0x1>
    3e9e:	20 93 56 01 	sts	0x0156, r18	; 0x800156 <_ZL12starGuageMax>
    3ea2:	10 92 42 01 	sts	0x0142, r1	; 0x800142 <_ZL13isFieldFalled>
    3ea6:	10 92 72 01 	sts	0x0172, r1	; 0x800172 <_ZL13obtainedScore>
    3eaa:	10 92 73 01 	sts	0x0173, r1	; 0x800173 <_ZL13obtainedScore+0x1>
    3eae:	10 92 74 01 	sts	0x0174, r1	; 0x800174 <_ZL13obtainedScore+0x2>
    3eb2:	10 92 75 01 	sts	0x0175, r1	; 0x800175 <_ZL13obtainedScore+0x3>
    3eb6:	8c 33       	cpi	r24, 0x3C	; 60
    3eb8:	09 f0       	breq	.+2      	; 0x3ebc <_Z8initGamev+0x4a>
    3eba:	4d c0       	rjmp	.+154    	; 0x3f56 <_Z8initGamev+0xe4>
    3ebc:	80 e4       	ldi	r24, 0x40	; 64
    3ebe:	9d e0       	ldi	r25, 0x0D	; 13
    3ec0:	a3 e0       	ldi	r26, 0x03	; 3
    3ec2:	b0 e0       	ldi	r27, 0x00	; 0
    3ec4:	80 93 45 01 	sts	0x0145, r24	; 0x800145 <_ZL5score>
    3ec8:	90 93 46 01 	sts	0x0146, r25	; 0x800146 <_ZL5score+0x1>
    3ecc:	a0 93 47 01 	sts	0x0147, r26	; 0x800147 <_ZL5score+0x2>
    3ed0:	b0 93 48 01 	sts	0x0148, r27	; 0x800148 <_ZL5score+0x3>
    3ed4:	ed e7       	ldi	r30, 0x7D	; 125
    3ed6:	f1 e0       	ldi	r31, 0x01	; 1
    3ed8:	11 82       	std	Z+1, r1	; 0x01
    3eda:	10 82       	st	Z, r1
    3edc:	13 82       	std	Z+3, r1	; 0x03
    3ede:	12 82       	std	Z+2, r1	; 0x02
    3ee0:	15 82       	std	Z+5, r1	; 0x05
    3ee2:	14 82       	std	Z+4, r1	; 0x04
    3ee4:	17 82       	std	Z+7, r1	; 0x07
    3ee6:	16 82       	std	Z+6, r1	; 0x06
    3ee8:	11 86       	std	Z+9, r1	; 0x09
    3eea:	10 86       	std	Z+8, r1	; 0x08
    3eec:	13 86       	std	Z+11, r1	; 0x0b
    3eee:	12 86       	std	Z+10, r1	; 0x0a
    3ef0:	3c 96       	adiw	r30, 0x0c	; 12
    3ef2:	82 e0       	ldi	r24, 0x02	; 2
    3ef4:	e5 32       	cpi	r30, 0x25	; 37
    3ef6:	f8 07       	cpc	r31, r24
    3ef8:	79 f7       	brne	.-34     	; 0x3ed8 <_Z8initGamev+0x66>
    3efa:	8f ef       	ldi	r24, 0xFF	; 255
    3efc:	80 93 5e 01 	sts	0x015E, r24	; 0x80015e <_ZL12dyingEnemies+0x1>
    3f00:	80 93 60 01 	sts	0x0160, r24	; 0x800160 <_ZL12dyingEnemies+0x3>
    3f04:	80 93 62 01 	sts	0x0162, r24	; 0x800162 <_ZL12dyingEnemies+0x5>
    3f08:	80 93 64 01 	sts	0x0164, r24	; 0x800164 <_ZL12dyingEnemies+0x7>
    3f0c:	10 92 43 01 	sts	0x0143, r1	; 0x800143 <_ZL10boxesCount>
    3f10:	10 92 4b 01 	sts	0x014B, r1	; 0x80014b <_ZL12enemiesCount>
    3f14:	10 92 3f 01 	sts	0x013F, r1	; 0x80013f <_ZL9maxHeight>
    3f18:	0e 94 ff 15 	call	0x2bfe	; 0x2bfe <_ZL14tuneParametersv>
    3f1c:	80 91 54 01 	lds	r24, 0x0154	; 0x800154 <_ZL8ballFreq>
    3f20:	80 93 5a 01 	sts	0x015A, r24	; 0x80015a <_ZL8nextBall>
    3f24:	0e 94 4d 1e 	call	0x3c9a	; 0x3c9a <_ZL12setNextBunchv>
    3f28:	10 92 4d 01 	sts	0x014D, r1	; 0x80014d <_ZL8gameMode+0x1>
    3f2c:	10 92 4c 01 	sts	0x014C, r1	; 0x80014c <_ZL8gameMode>
    3f30:	88 e7       	ldi	r24, 0x78	; 120
    3f32:	90 e0       	ldi	r25, 0x00	; 0
    3f34:	90 93 77 01 	sts	0x0177, r25	; 0x800177 <_ZL11gameCounter+0x1>
    3f38:	80 93 76 01 	sts	0x0176, r24	; 0x800176 <_ZL11gameCounter>
    3f3c:	81 e0       	ldi	r24, 0x01	; 1
    3f3e:	90 e0       	ldi	r25, 0x00	; 0
    3f40:	90 93 5c 01 	sts	0x015C, r25	; 0x80015c <_ZL5state.lto_priv.67+0x1>
    3f44:	80 93 5b 01 	sts	0x015B, r24	; 0x80015b <_ZL5state.lto_priv.67>
    3f48:	80 93 76 02 	sts	0x0276, r24	; 0x800276 <isInvalid>
    3f4c:	60 e0       	ldi	r22, 0x00	; 0
    3f4e:	82 eb       	ldi	r24, 0xB2	; 178
    3f50:	91 e0       	ldi	r25, 0x01	; 1
    3f52:	0c 94 02 0f 	jmp	0x1e04	; 0x1e04 <_ZN10MyArduboyV10playScore2EPKhh.constprop.39>
    3f56:	8a 35       	cpi	r24, 0x5A	; 90
    3f58:	09 f0       	breq	.+2      	; 0x3f5c <_Z8initGamev+0xea>
    3f5a:	bc cf       	rjmp	.-136    	; 0x3ed4 <_Z8initGamev+0x62>
    3f5c:	80 e2       	ldi	r24, 0x20	; 32
    3f5e:	91 ea       	ldi	r25, 0xA1	; 161
    3f60:	a7 e0       	ldi	r26, 0x07	; 7
    3f62:	b0 e0       	ldi	r27, 0x00	; 0
    3f64:	80 93 45 01 	sts	0x0145, r24	; 0x800145 <_ZL5score>
    3f68:	90 93 46 01 	sts	0x0146, r25	; 0x800146 <_ZL5score+0x1>
    3f6c:	a0 93 47 01 	sts	0x0147, r26	; 0x800147 <_ZL5score+0x2>
    3f70:	b0 93 48 01 	sts	0x0148, r27	; 0x800148 <_ZL5score+0x3>
    3f74:	80 ea       	ldi	r24, 0xA0	; 160
    3f76:	90 e0       	ldi	r25, 0x00	; 0
    3f78:	90 93 57 01 	sts	0x0157, r25	; 0x800157 <_ZL12starGuageMax+0x1>
    3f7c:	80 93 56 01 	sts	0x0156, r24	; 0x800156 <_ZL12starGuageMax>
    3f80:	a9 cf       	rjmp	.-174    	; 0x3ed4 <_Z8initGamev+0x62>

00003f82 <_ZL9onRestartv>:
    3f82:	0c 94 39 1f 	jmp	0x3e72	; 0x3e72 <_Z8initGamev>

00003f86 <_ZL14drawObjectFastaaa8OBJECT_T>:
    3f86:	e6 e0       	ldi	r30, 0x06	; 6
    3f88:	f0 e0       	ldi	r31, 0x00	; 0
    3f8a:	df 01       	movw	r26, r30
    3f8c:	a8 1b       	sub	r26, r24
    3f8e:	b1 09       	sbc	r27, r1
    3f90:	87 fd       	sbrc	r24, 7
    3f92:	b3 95       	inc	r27
    3f94:	cd 01       	movw	r24, r26
    3f96:	54 e0       	ldi	r21, 0x04	; 4
    3f98:	88 0f       	add	r24, r24
    3f9a:	99 1f       	adc	r25, r25
    3f9c:	5a 95       	dec	r21
    3f9e:	e1 f7       	brne	.-8      	; 0x3f98 <_ZL14drawObjectFastaaa8OBJECT_T+0x12>
    3fa0:	ee e0       	ldi	r30, 0x0E	; 14
    3fa2:	f0 e0       	ldi	r31, 0x00	; 0
    3fa4:	e6 1b       	sub	r30, r22
    3fa6:	f1 09       	sbc	r31, r1
    3fa8:	67 fd       	sbrc	r22, 7
    3faa:	f3 95       	inc	r31
    3fac:	8e 0f       	add	r24, r30
    3fae:	9f 1f       	adc	r25, r31
    3fb0:	63 e0       	ldi	r22, 0x03	; 3
    3fb2:	88 0f       	add	r24, r24
    3fb4:	99 1f       	adc	r25, r25
    3fb6:	6a 95       	dec	r22
    3fb8:	e1 f7       	brne	.-8      	; 0x3fb2 <_ZL14drawObjectFastaaa8OBJECT_T+0x2c>
    3fba:	47 fd       	sbrc	r20, 7
    3fbc:	49 5f       	subi	r20, 0xF9	; 249
    3fbe:	45 95       	asr	r20
    3fc0:	45 95       	asr	r20
    3fc2:	45 95       	asr	r20
    3fc4:	84 1b       	sub	r24, r20
    3fc6:	91 09       	sbc	r25, r1
    3fc8:	47 fd       	sbrc	r20, 7
    3fca:	93 95       	inc	r25
    3fcc:	25 30       	cpi	r18, 0x05	; 5
    3fce:	31 05       	cpc	r19, r1
    3fd0:	31 f4       	brne	.+12     	; 0x3fde <_ZL14drawObjectFastaaa8OBJECT_T+0x58>
    3fd2:	40 91 6b 02 	lds	r20, 0x026B	; 0x80026b <record+0x14>
    3fd6:	40 ff       	sbrs	r20, 0
    3fd8:	02 c0       	rjmp	.+4      	; 0x3fde <_ZL14drawObjectFastaaa8OBJECT_T+0x58>
    3fda:	26 e0       	ldi	r18, 0x06	; 6
    3fdc:	30 e0       	ldi	r19, 0x00	; 0
    3fde:	43 e0       	ldi	r20, 0x03	; 3
    3fe0:	22 0f       	add	r18, r18
    3fe2:	33 1f       	adc	r19, r19
    3fe4:	4a 95       	dec	r20
    3fe6:	e1 f7       	brne	.-8      	; 0x3fe0 <_ZL14drawObjectFastaaa8OBJECT_T+0x5a>
    3fe8:	b9 01       	movw	r22, r18
    3fea:	6d 58       	subi	r22, 0x8D	; 141
    3fec:	7c 4f       	sbci	r23, 0xFC	; 252
    3fee:	48 e0       	ldi	r20, 0x08	; 8
    3ff0:	50 e0       	ldi	r21, 0x00	; 0
    3ff2:	82 5e       	subi	r24, 0xE2	; 226
    3ff4:	9c 4f       	sbci	r25, 0xFC	; 252
    3ff6:	0c 94 bd 2e 	jmp	0x5d7a	; 0x5d7a <memcpy_P>

00003ffa <_ZL12drawGameStarv>:
    3ffa:	cf 92       	push	r12
    3ffc:	df 92       	push	r13
    3ffe:	ef 92       	push	r14
    4000:	ff 92       	push	r15
    4002:	0f 93       	push	r16
    4004:	1f 93       	push	r17
    4006:	cf 93       	push	r28
    4008:	df 93       	push	r29
    400a:	25 e0       	ldi	r18, 0x05	; 5
    400c:	30 e0       	ldi	r19, 0x00	; 0
    400e:	40 e0       	ldi	r20, 0x00	; 0
    4010:	60 91 28 02 	lds	r22, 0x0228	; 0x800228 <_ZL5ballY>
    4014:	80 91 27 02 	lds	r24, 0x0227	; 0x800227 <_ZL5ballX>
    4018:	0e 94 c3 1f 	call	0x3f86	; 0x3f86 <_ZL14drawObjectFastaaa8OBJECT_T>
    401c:	80 91 26 02 	lds	r24, 0x0226	; 0x800226 <_ZL5ballV>
    4020:	88 23       	and	r24, r24
    4022:	09 f4       	brne	.+2      	; 0x4026 <_ZL12drawGameStarv+0x2c>
    4024:	6b c0       	rjmp	.+214    	; 0x40fc <_ZL12drawGameStarv+0x102>
    4026:	00 91 28 02 	lds	r16, 0x0228	; 0x800228 <_ZL5ballY>
    402a:	08 1b       	sub	r16, r24
    402c:	00 2e       	mov	r0, r16
    402e:	00 0c       	add	r0, r0
    4030:	11 0b       	sbc	r17, r17
    4032:	c1 e0       	ldi	r28, 0x01	; 1
    4034:	d0 e0       	ldi	r29, 0x00	; 0
    4036:	80 91 25 02 	lds	r24, 0x0225	; 0x800225 <_ZL5ballG>
    403a:	88 30       	cpi	r24, 0x08	; 8
    403c:	14 f0       	brlt	.+4      	; 0x4042 <_ZL12drawGameStarv+0x48>
    403e:	d0 e0       	ldi	r29, 0x00	; 0
    4040:	c0 e0       	ldi	r28, 0x00	; 0
    4042:	c0 0f       	add	r28, r16
    4044:	d1 1f       	adc	r29, r17
    4046:	2c e0       	ldi	r18, 0x0C	; 12
    4048:	2c 9f       	mul	r18, r28
    404a:	c0 01       	movw	r24, r0
    404c:	2d 9f       	mul	r18, r29
    404e:	90 0d       	add	r25, r0
    4050:	11 24       	eor	r1, r1
    4052:	9c 01       	movw	r18, r24
    4054:	23 58       	subi	r18, 0x83	; 131
    4056:	3e 4f       	sbci	r19, 0xFE	; 254
    4058:	79 01       	movw	r14, r18
    405a:	c0 17       	cp	r28, r16
    405c:	d1 07       	cpc	r29, r17
    405e:	54 f1       	brlt	.+84     	; 0x40b4 <_ZL12drawGameStarv+0xba>
    4060:	d1 2c       	mov	r13, r1
    4062:	c1 2c       	mov	r12, r1
    4064:	f6 01       	movw	r30, r12
    4066:	ee 0f       	add	r30, r30
    4068:	ff 1f       	adc	r31, r31
    406a:	ee 0d       	add	r30, r14
    406c:	ff 1d       	adc	r31, r15
    406e:	20 81       	ld	r18, Z
    4070:	31 81       	ldd	r19, Z+1	; 0x01
    4072:	27 30       	cpi	r18, 0x07	; 7
    4074:	31 05       	cpc	r19, r1
    4076:	69 f4       	brne	.+26     	; 0x4092 <_ZL12drawGameStarv+0x98>
    4078:	20 91 25 02 	lds	r18, 0x0225	; 0x800225 <_ZL5ballG>
    407c:	27 fd       	sbrc	r18, 7
    407e:	21 5f       	subi	r18, 0xF1	; 241
    4080:	25 95       	asr	r18
    4082:	25 95       	asr	r18
    4084:	25 95       	asr	r18
    4086:	25 95       	asr	r18
    4088:	02 2e       	mov	r0, r18
    408a:	00 0c       	add	r0, r0
    408c:	33 0b       	sbc	r19, r19
    408e:	29 5f       	subi	r18, 0xF9	; 249
    4090:	3f 4f       	sbci	r19, 0xFF	; 255
    4092:	40 e0       	ldi	r20, 0x00	; 0
    4094:	6c 2f       	mov	r22, r28
    4096:	8c 2d       	mov	r24, r12
    4098:	0e 94 c3 1f 	call	0x3f86	; 0x3f86 <_ZL14drawObjectFastaaa8OBJECT_T>
    409c:	3f ef       	ldi	r19, 0xFF	; 255
    409e:	c3 1a       	sub	r12, r19
    40a0:	d3 0a       	sbc	r13, r19
    40a2:	86 e0       	ldi	r24, 0x06	; 6
    40a4:	c8 16       	cp	r12, r24
    40a6:	d1 04       	cpc	r13, r1
    40a8:	e9 f6       	brne	.-70     	; 0x4064 <_ZL12drawGameStarv+0x6a>
    40aa:	21 97       	sbiw	r28, 0x01	; 1
    40ac:	ac e0       	ldi	r26, 0x0C	; 12
    40ae:	ea 1a       	sub	r14, r26
    40b0:	f1 08       	sbc	r15, r1
    40b2:	d3 cf       	rjmp	.-90     	; 0x405a <_ZL12drawGameStarv+0x60>
    40b4:	ee e0       	ldi	r30, 0x0E	; 14
    40b6:	f0 e0       	ldi	r31, 0x00	; 0
    40b8:	e0 1b       	sub	r30, r16
    40ba:	f1 0b       	sbc	r31, r17
    40bc:	83 e0       	ldi	r24, 0x03	; 3
    40be:	ee 0f       	add	r30, r30
    40c0:	ff 1f       	adc	r31, r31
    40c2:	8a 95       	dec	r24
    40c4:	e1 f7       	brne	.-8      	; 0x40be <_ZL12drawGameStarv+0xc4>
    40c6:	90 91 25 02 	lds	r25, 0x0225	; 0x800225 <_ZL5ballG>
    40ca:	97 fd       	sbrc	r25, 7
    40cc:	99 5f       	subi	r25, 0xF9	; 249
    40ce:	95 95       	asr	r25
    40d0:	95 95       	asr	r25
    40d2:	95 95       	asr	r25
    40d4:	21 e0       	ldi	r18, 0x01	; 1
    40d6:	40 e3       	ldi	r20, 0x30	; 48
    40d8:	68 e0       	ldi	r22, 0x08	; 8
    40da:	70 e0       	ldi	r23, 0x00	; 0
    40dc:	df 01       	movw	r26, r30
    40de:	a9 0f       	add	r26, r25
    40e0:	b1 1d       	adc	r27, r1
    40e2:	97 fd       	sbrc	r25, 7
    40e4:	ba 95       	dec	r27
    40e6:	cd 01       	movw	r24, r26
    40e8:	df 91       	pop	r29
    40ea:	cf 91       	pop	r28
    40ec:	1f 91       	pop	r17
    40ee:	0f 91       	pop	r16
    40f0:	ff 90       	pop	r15
    40f2:	ef 90       	pop	r14
    40f4:	df 90       	pop	r13
    40f6:	cf 90       	pop	r12
    40f8:	0c 94 99 07 	jmp	0xf32	; 0xf32 <_ZN10MyArduboyV14drawFastVLine2Eiiah.constprop.47>
    40fc:	df 91       	pop	r29
    40fe:	cf 91       	pop	r28
    4100:	1f 91       	pop	r17
    4102:	0f 91       	pop	r16
    4104:	ff 90       	pop	r15
    4106:	ef 90       	pop	r14
    4108:	df 90       	pop	r13
    410a:	cf 90       	pop	r12
    410c:	08 95       	ret

0000410e <_ZL16drawDyingEnemiesv>:
    410e:	ef 92       	push	r14
    4110:	ff 92       	push	r15
    4112:	0f 93       	push	r16
    4114:	1f 93       	push	r17
    4116:	cf 93       	push	r28
    4118:	df 93       	push	r29
    411a:	0d e5       	ldi	r16, 0x5D	; 93
    411c:	11 e0       	ldi	r17, 0x01	; 1
    411e:	d0 e0       	ldi	r29, 0x00	; 0
    4120:	c0 e0       	ldi	r28, 0x00	; 0
    4122:	8b e0       	ldi	r24, 0x0B	; 11
    4124:	e8 2e       	mov	r14, r24
    4126:	f1 2c       	mov	r15, r1
    4128:	f8 01       	movw	r30, r16
    412a:	61 81       	ldd	r22, Z+1	; 0x01
    412c:	67 fd       	sbrc	r22, 7
    412e:	0c c0       	rjmp	.+24     	; 0x4148 <_ZL16drawDyingEnemiesv+0x3a>
    4130:	97 01       	movw	r18, r14
    4132:	2c 1b       	sub	r18, r28
    4134:	3d 0b       	sbc	r19, r29
    4136:	20 97       	sbiw	r28, 0x00	; 0
    4138:	11 f4       	brne	.+4      	; 0x413e <_ZL16drawDyingEnemiesv+0x30>
    413a:	30 e0       	ldi	r19, 0x00	; 0
    413c:	20 e0       	ldi	r18, 0x00	; 0
    413e:	40 e0       	ldi	r20, 0x00	; 0
    4140:	f8 01       	movw	r30, r16
    4142:	80 81       	ld	r24, Z
    4144:	0e 94 c3 1f 	call	0x3f86	; 0x3f86 <_ZL14drawObjectFastaaa8OBJECT_T>
    4148:	21 96       	adiw	r28, 0x01	; 1
    414a:	0e 5f       	subi	r16, 0xFE	; 254
    414c:	1f 4f       	sbci	r17, 0xFF	; 255
    414e:	c4 30       	cpi	r28, 0x04	; 4
    4150:	d1 05       	cpc	r29, r1
    4152:	51 f7       	brne	.-44     	; 0x4128 <_ZL16drawDyingEnemiesv+0x1a>
    4154:	df 91       	pop	r29
    4156:	cf 91       	pop	r28
    4158:	1f 91       	pop	r17
    415a:	0f 91       	pop	r16
    415c:	ff 90       	pop	r15
    415e:	ef 90       	pop	r14
    4160:	08 95       	ret

00004162 <_ZL12drawGameBallv>:
    4162:	cf 92       	push	r12
    4164:	df 92       	push	r13
    4166:	ef 92       	push	r14
    4168:	0f 93       	push	r16
    416a:	cf 93       	push	r28
    416c:	df 93       	push	r29
    416e:	0e 94 87 20 	call	0x410e	; 0x410e <_ZL16drawDyingEnemiesv>
    4172:	80 91 28 02 	lds	r24, 0x0228	; 0x800228 <_ZL5ballY>
    4176:	9e e0       	ldi	r25, 0x0E	; 14
    4178:	c9 2e       	mov	r12, r25
    417a:	d1 2c       	mov	r13, r1
    417c:	c8 1a       	sub	r12, r24
    417e:	d1 08       	sbc	r13, r1
    4180:	87 fd       	sbrc	r24, 7
    4182:	d3 94       	inc	r13
    4184:	23 e0       	ldi	r18, 0x03	; 3
    4186:	cc 0c       	add	r12, r12
    4188:	dd 1c       	adc	r13, r13
    418a:	2a 95       	dec	r18
    418c:	e1 f7       	brne	.-8      	; 0x4186 <_ZL12drawGameBallv+0x24>
    418e:	80 91 27 02 	lds	r24, 0x0227	; 0x800227 <_ZL5ballX>
    4192:	c6 e0       	ldi	r28, 0x06	; 6
    4194:	d0 e0       	ldi	r29, 0x00	; 0
    4196:	c8 1b       	sub	r28, r24
    4198:	d1 09       	sbc	r29, r1
    419a:	87 fd       	sbrc	r24, 7
    419c:	d3 95       	inc	r29
    419e:	33 e0       	ldi	r19, 0x03	; 3
    41a0:	cc 0f       	add	r28, r28
    41a2:	dd 1f       	adc	r29, r29
    41a4:	3a 95       	dec	r19
    41a6:	e1 f7       	brne	.-8      	; 0x41a0 <_ZL12drawGameBallv+0x3e>
    41a8:	90 91 7c 01 	lds	r25, 0x017C	; 0x80017c <_ZL5ballE>
    41ac:	80 91 25 02 	lds	r24, 0x0225	; 0x800225 <_ZL5ballG>
    41b0:	91 11       	cpse	r25, r1
    41b2:	1f c0       	rjmp	.+62     	; 0x41f2 <_ZL12drawGameBallv+0x90>
    41b4:	87 fd       	sbrc	r24, 7
    41b6:	89 5f       	subi	r24, 0xF9	; 249
    41b8:	85 95       	asr	r24
    41ba:	85 95       	asr	r24
    41bc:	85 95       	asr	r24
    41be:	c8 1a       	sub	r12, r24
    41c0:	d1 08       	sbc	r13, r1
    41c2:	87 fd       	sbrc	r24, 7
    41c4:	d3 94       	inc	r13
    41c6:	88 e0       	ldi	r24, 0x08	; 8
    41c8:	e8 2e       	mov	r14, r24
    41ca:	08 e0       	ldi	r16, 0x08	; 8
    41cc:	23 e8       	ldi	r18, 0x83	; 131
    41ce:	33 e0       	ldi	r19, 0x03	; 3
    41d0:	ae 01       	movw	r20, r28
    41d2:	b6 01       	movw	r22, r12
    41d4:	8a e0       	ldi	r24, 0x0A	; 10
    41d6:	93 e0       	ldi	r25, 0x03	; 3
    41d8:	0e 94 94 08 	call	0x1128	; 0x1128 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25>
    41dc:	c0 92 7b 01 	sts	0x017B, r12	; 0x80017b <_ZL5lastX>
    41e0:	c0 93 7a 01 	sts	0x017A, r28	; 0x80017a <_ZL5lastY>
    41e4:	df 91       	pop	r29
    41e6:	cf 91       	pop	r28
    41e8:	0f 91       	pop	r16
    41ea:	ef 90       	pop	r14
    41ec:	df 90       	pop	r13
    41ee:	cf 90       	pop	r12
    41f0:	08 95       	ret
    41f2:	87 fd       	sbrc	r24, 7
    41f4:	89 5f       	subi	r24, 0xF9	; 249
    41f6:	85 95       	asr	r24
    41f8:	85 95       	asr	r24
    41fa:	85 95       	asr	r24
    41fc:	90 91 26 02 	lds	r25, 0x0226	; 0x800226 <_ZL5ballV>
    4200:	89 02       	muls	r24, r25
    4202:	c0 0d       	add	r28, r0
    4204:	d1 1d       	adc	r29, r1
    4206:	11 24       	eor	r1, r1
    4208:	de cf       	rjmp	.-68     	; 0x41c6 <_ZL12drawGameBallv+0x64>

0000420a <_ZL12drawGameFallv>:
    420a:	8f 92       	push	r8
    420c:	9f 92       	push	r9
    420e:	af 92       	push	r10
    4210:	bf 92       	push	r11
    4212:	cf 92       	push	r12
    4214:	df 92       	push	r13
    4216:	ef 92       	push	r14
    4218:	ff 92       	push	r15
    421a:	0f 93       	push	r16
    421c:	1f 93       	push	r17
    421e:	cf 93       	push	r28
    4220:	df 93       	push	r29
    4222:	80 91 7c 01 	lds	r24, 0x017C	; 0x80017c <_ZL5ballE>
    4226:	87 30       	cpi	r24, 0x07	; 7
    4228:	11 f4       	brne	.+4      	; 0x422e <_ZL12drawGameFallv+0x24>
    422a:	0e 94 87 20 	call	0x410e	; 0x410e <_ZL16drawDyingEnemiesv>
    422e:	80 91 72 01 	lds	r24, 0x0172	; 0x800172 <_ZL13obtainedScore>
    4232:	90 91 73 01 	lds	r25, 0x0173	; 0x800173 <_ZL13obtainedScore+0x1>
    4236:	a0 91 74 01 	lds	r26, 0x0174	; 0x800174 <_ZL13obtainedScore+0x2>
    423a:	b0 91 75 01 	lds	r27, 0x0175	; 0x800175 <_ZL13obtainedScore+0x3>
    423e:	89 2b       	or	r24, r25
    4240:	8a 2b       	or	r24, r26
    4242:	8b 2b       	or	r24, r27
    4244:	09 f4       	brne	.+2      	; 0x4248 <_ZL12drawGameFallv+0x3e>
    4246:	51 c0       	rjmp	.+162    	; 0x42ea <_ZL12drawGameFallv+0xe0>
    4248:	80 91 71 01 	lds	r24, 0x0171	; 0x800171 <_ZL14obtainedScoreY>
    424c:	ce e0       	ldi	r28, 0x0E	; 14
    424e:	d0 e0       	ldi	r29, 0x00	; 0
    4250:	c8 1b       	sub	r28, r24
    4252:	d1 09       	sbc	r29, r1
    4254:	87 fd       	sbrc	r24, 7
    4256:	d3 95       	inc	r29
    4258:	83 e0       	ldi	r24, 0x03	; 3
    425a:	cc 0f       	add	r28, r28
    425c:	dd 1f       	adc	r29, r29
    425e:	8a 95       	dec	r24
    4260:	e1 f7       	brne	.-8      	; 0x425a <_ZL12drawGameFallv+0x50>
    4262:	5e 01       	movw	r10, r28
    4264:	82 e0       	ldi	r24, 0x02	; 2
    4266:	a8 0e       	add	r10, r24
    4268:	b1 1c       	adc	r11, r1
    426a:	10 92 24 07 	sts	0x0724, r1	; 0x800724 <arduboy+0x41a>
    426e:	10 92 25 07 	sts	0x0725, r1	; 0x800725 <arduboy+0x41b>
    4272:	9e e1       	ldi	r25, 0x1E	; 30
    4274:	e9 2e       	mov	r14, r25
    4276:	f1 2c       	mov	r15, r1
    4278:	4e 01       	movw	r8, r28
    427a:	84 e0       	ldi	r24, 0x04	; 4
    427c:	88 0e       	add	r8, r24
    427e:	91 1c       	adc	r9, r1
    4280:	6e 01       	movw	r12, r28
    4282:	8f ef       	ldi	r24, 0xFF	; 255
    4284:	c8 1a       	sub	r12, r24
    4286:	d8 0a       	sbc	r13, r24
    4288:	20 91 72 01 	lds	r18, 0x0172	; 0x800172 <_ZL13obtainedScore>
    428c:	30 91 73 01 	lds	r19, 0x0173	; 0x800173 <_ZL13obtainedScore+0x1>
    4290:	40 91 74 01 	lds	r20, 0x0174	; 0x800174 <_ZL13obtainedScore+0x2>
    4294:	50 91 75 01 	lds	r21, 0x0175	; 0x800175 <_ZL13obtainedScore+0x3>
    4298:	01 e0       	ldi	r16, 0x01	; 1
    429a:	10 e0       	ldi	r17, 0x00	; 0
    429c:	b7 01       	movw	r22, r14
    429e:	c6 01       	movw	r24, r12
    42a0:	0e 94 ba 1a 	call	0x3574	; 0x3574 <_Z11drawNumberViil7ALIGN_T>
    42a4:	8f ef       	ldi	r24, 0xFF	; 255
    42a6:	c8 1a       	sub	r12, r24
    42a8:	d8 0a       	sbc	r13, r24
    42aa:	c8 14       	cp	r12, r8
    42ac:	d9 04       	cpc	r13, r9
    42ae:	61 f7       	brne	.-40     	; 0x4288 <_ZL12drawGameFallv+0x7e>
    42b0:	8f ef       	ldi	r24, 0xFF	; 255
    42b2:	e8 1a       	sub	r14, r24
    42b4:	f8 0a       	sbc	r15, r24
    42b6:	81 e2       	ldi	r24, 0x21	; 33
    42b8:	e8 16       	cp	r14, r24
    42ba:	f1 04       	cpc	r15, r1
    42bc:	09 f7       	brne	.-62     	; 0x4280 <_ZL12drawGameFallv+0x76>
    42be:	81 e0       	ldi	r24, 0x01	; 1
    42c0:	80 93 24 07 	sts	0x0724, r24	; 0x800724 <arduboy+0x41a>
    42c4:	80 93 25 07 	sts	0x0725, r24	; 0x800725 <arduboy+0x41b>
    42c8:	80 91 76 01 	lds	r24, 0x0176	; 0x800176 <_ZL11gameCounter>
    42cc:	81 ff       	sbrs	r24, 1
    42ce:	0d c0       	rjmp	.+26     	; 0x42ea <_ZL12drawGameFallv+0xe0>
    42d0:	20 91 72 01 	lds	r18, 0x0172	; 0x800172 <_ZL13obtainedScore>
    42d4:	30 91 73 01 	lds	r19, 0x0173	; 0x800173 <_ZL13obtainedScore+0x1>
    42d8:	40 91 74 01 	lds	r20, 0x0174	; 0x800174 <_ZL13obtainedScore+0x2>
    42dc:	50 91 75 01 	lds	r21, 0x0175	; 0x800175 <_ZL13obtainedScore+0x3>
    42e0:	6f e1       	ldi	r22, 0x1F	; 31
    42e2:	70 e0       	ldi	r23, 0x00	; 0
    42e4:	c5 01       	movw	r24, r10
    42e6:	0e 94 ba 1a 	call	0x3574	; 0x3574 <_Z11drawNumberViil7ALIGN_T>
    42ea:	df 91       	pop	r29
    42ec:	cf 91       	pop	r28
    42ee:	1f 91       	pop	r17
    42f0:	0f 91       	pop	r16
    42f2:	ff 90       	pop	r15
    42f4:	ef 90       	pop	r14
    42f6:	df 90       	pop	r13
    42f8:	cf 90       	pop	r12
    42fa:	bf 90       	pop	r11
    42fc:	af 90       	pop	r10
    42fe:	9f 90       	pop	r9
    4300:	8f 90       	pop	r8
    4302:	08 95       	ret

00004304 <_ZL12drawGameWaitv>:
    4304:	80 91 7c 01 	lds	r24, 0x017C	; 0x80017c <_ZL5ballE>
    4308:	87 30       	cpi	r24, 0x07	; 7
    430a:	11 f4       	brne	.+4      	; 0x4310 <_ZL12drawGameWaitv+0xc>
    430c:	0c 94 87 20 	jmp	0x410e	; 0x410e <_ZL16drawDyingEnemiesv>
    4310:	08 95       	ret

00004312 <_ZL9drawBunchaaaaP8OBJECT_T>:
    4312:	8f 92       	push	r8
    4314:	9f 92       	push	r9
    4316:	af 92       	push	r10
    4318:	bf 92       	push	r11
    431a:	cf 92       	push	r12
    431c:	df 92       	push	r13
    431e:	ef 92       	push	r14
    4320:	ff 92       	push	r15
    4322:	0f 93       	push	r16
    4324:	1f 93       	push	r17
    4326:	cf 93       	push	r28
    4328:	df 93       	push	r29
    432a:	a8 2e       	mov	r10, r24
    432c:	96 2e       	mov	r9, r22
    432e:	b4 2e       	mov	r11, r20
    4330:	82 2e       	mov	r8, r18
    4332:	c4 2f       	mov	r28, r20
    4334:	44 0f       	add	r20, r20
    4336:	dd 0b       	sbc	r29, r29
    4338:	21 96       	adiw	r28, 0x01	; 1
    433a:	78 01       	movw	r14, r16
    433c:	68 01       	movw	r12, r16
    433e:	86 e0       	ldi	r24, 0x06	; 6
    4340:	c8 0e       	add	r12, r24
    4342:	d1 1c       	adc	r13, r1
    4344:	ce 01       	movw	r24, r28
    4346:	01 97       	sbiw	r24, 0x01	; 1
    4348:	86 95       	lsr	r24
    434a:	81 70       	andi	r24, 0x01	; 1
    434c:	8a 0d       	add	r24, r10
    434e:	9c 2f       	mov	r25, r28
    4350:	96 95       	lsr	r25
    4352:	91 70       	andi	r25, 0x01	; 1
    4354:	69 2d       	mov	r22, r9
    4356:	69 1b       	sub	r22, r25
    4358:	30 e0       	ldi	r19, 0x00	; 0
    435a:	20 e0       	ldi	r18, 0x00	; 0
    435c:	01 15       	cp	r16, r1
    435e:	11 05       	cpc	r17, r1
    4360:	19 f0       	breq	.+6      	; 0x4368 <_ZL9drawBunchaaaaP8OBJECT_T+0x56>
    4362:	f7 01       	movw	r30, r14
    4364:	20 81       	ld	r18, Z
    4366:	31 81       	ldd	r19, Z+1	; 0x01
    4368:	48 2d       	mov	r20, r8
    436a:	0e 94 c3 1f 	call	0x3f86	; 0x3f86 <_ZL14drawObjectFastaaa8OBJECT_T>
    436e:	f5 e0       	ldi	r31, 0x05	; 5
    4370:	bf 16       	cp	r11, r31
    4372:	39 f0       	breq	.+14     	; 0x4382 <_ZL9drawBunchaaaaP8OBJECT_T+0x70>
    4374:	21 96       	adiw	r28, 0x01	; 1
    4376:	82 e0       	ldi	r24, 0x02	; 2
    4378:	e8 0e       	add	r14, r24
    437a:	f1 1c       	adc	r15, r1
    437c:	ce 14       	cp	r12, r14
    437e:	df 04       	cpc	r13, r15
    4380:	09 f7       	brne	.-62     	; 0x4344 <_ZL9drawBunchaaaaP8OBJECT_T+0x32>
    4382:	df 91       	pop	r29
    4384:	cf 91       	pop	r28
    4386:	1f 91       	pop	r17
    4388:	0f 91       	pop	r16
    438a:	ff 90       	pop	r15
    438c:	ef 90       	pop	r14
    438e:	df 90       	pop	r13
    4390:	cf 90       	pop	r12
    4392:	bf 90       	pop	r11
    4394:	af 90       	pop	r10
    4396:	9f 90       	pop	r9
    4398:	8f 90       	pop	r8
    439a:	08 95       	ret

0000439c <_ZL15drawGameControlv>:
    439c:	0f 93       	push	r16
    439e:	1f 93       	push	r17
    43a0:	07 e6       	ldi	r16, 0x67	; 103
    43a2:	11 e0       	ldi	r17, 0x01	; 1
    43a4:	20 91 70 01 	lds	r18, 0x0170	; 0x800170 <_ZL6bunchG>
    43a8:	40 91 6f 01 	lds	r20, 0x016F	; 0x80016f <_ZL6bunchR>
    43ac:	60 91 6e 01 	lds	r22, 0x016E	; 0x80016e <_ZL6bunchY>
    43b0:	80 91 6d 01 	lds	r24, 0x016D	; 0x80016d <_ZL6bunchX>
    43b4:	0e 94 89 21 	call	0x4312	; 0x4312 <_ZL9drawBunchaaaaP8OBJECT_T>
    43b8:	80 91 6d 01 	lds	r24, 0x016D	; 0x80016d <_ZL6bunchX>
    43bc:	80 93 7b 01 	sts	0x017B, r24	; 0x80017b <_ZL5lastX>
    43c0:	80 91 6e 01 	lds	r24, 0x016E	; 0x80016e <_ZL6bunchY>
    43c4:	80 93 7a 01 	sts	0x017A, r24	; 0x80017a <_ZL5lastY>
    43c8:	80 91 6f 01 	lds	r24, 0x016F	; 0x80016f <_ZL6bunchR>
    43cc:	80 93 66 01 	sts	0x0166, r24	; 0x800166 <_ZL5lastR>
    43d0:	80 91 70 01 	lds	r24, 0x0170	; 0x800170 <_ZL6bunchG>
    43d4:	80 93 65 01 	sts	0x0165, r24	; 0x800165 <_ZL5lastG>
    43d8:	1f 91       	pop	r17
    43da:	0f 91       	pop	r16
    43dc:	08 95       	ret

000043de <_Z8drawGamev>:
    43de:	ef 92       	push	r14
    43e0:	ff 92       	push	r15
    43e2:	0f 93       	push	r16
    43e4:	1f 93       	push	r17
    43e6:	cf 93       	push	r28
    43e8:	df 93       	push	r29
    43ea:	80 91 5b 01 	lds	r24, 0x015B	; 0x80015b <_ZL5state.lto_priv.67>
    43ee:	90 91 5c 01 	lds	r25, 0x015C	; 0x80015c <_ZL5state.lto_priv.67+0x1>
    43f2:	85 30       	cpi	r24, 0x05	; 5
    43f4:	91 05       	cpc	r25, r1
    43f6:	29 f1       	breq	.+74     	; 0x4442 <_Z8drawGamev+0x64>
    43f8:	c0 91 76 02 	lds	r28, 0x0276	; 0x800276 <isInvalid>
    43fc:	03 97       	sbiw	r24, 0x03	; 3
    43fe:	41 f5       	brne	.+80     	; 0x4450 <_Z8drawGamev+0x72>
    4400:	cc 23       	and	r28, r28
    4402:	b1 f0       	breq	.+44     	; 0x4430 <_Z8drawGamev+0x52>
    4404:	00 e0       	ldi	r16, 0x00	; 0
    4406:	20 e1       	ldi	r18, 0x10	; 16
    4408:	40 e1       	ldi	r20, 0x10	; 16
    440a:	68 e1       	ldi	r22, 0x18	; 24
    440c:	70 e0       	ldi	r23, 0x00	; 0
    440e:	90 e0       	ldi	r25, 0x00	; 0
    4410:	80 e0       	ldi	r24, 0x00	; 0
    4412:	0e 94 06 08 	call	0x100c	; 0x100c <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42>
    4416:	20 e3       	ldi	r18, 0x30	; 48
    4418:	48 e6       	ldi	r20, 0x68	; 104
    441a:	68 e0       	ldi	r22, 0x08	; 8
    441c:	70 e0       	ldi	r23, 0x00	; 0
    441e:	80 e1       	ldi	r24, 0x10	; 16
    4420:	90 e0       	ldi	r25, 0x00	; 0
    4422:	0e 94 06 08 	call	0x100c	; 0x100c <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42>
    4426:	40 e0       	ldi	r20, 0x00	; 0
    4428:	60 e0       	ldi	r22, 0x00	; 0
    442a:	80 e0       	ldi	r24, 0x00	; 0
    442c:	0e 94 b0 0c 	call	0x1960	; 0x1960 <_ZN11ArduboyCore9setRGBledEhhh.constprop.59>
    4430:	80 91 71 02 	lds	r24, 0x0271	; 0x800271 <_ZL13isInvalidMenu>
    4434:	81 11       	cpse	r24, r1
    4436:	01 c0       	rjmp	.+2      	; 0x443a <_Z8drawGamev+0x5c>
    4438:	c1 11       	cpse	r28, r1
    443a:	0e 94 88 19 	call	0x3310	; 0x3310 <_Z13drawMenuItemsb.part.0>
    443e:	10 92 76 02 	sts	0x0276, r1	; 0x800276 <isInvalid>
    4442:	df 91       	pop	r29
    4444:	cf 91       	pop	r28
    4446:	1f 91       	pop	r17
    4448:	0f 91       	pop	r16
    444a:	ff 90       	pop	r15
    444c:	ef 90       	pop	r14
    444e:	08 95       	ret
    4450:	cc 23       	and	r28, r28
    4452:	09 f4       	brne	.+2      	; 0x4456 <_Z8drawGamev+0x78>
    4454:	d3 c0       	rjmp	.+422    	; 0x45fc <_Z8drawGamev+0x21e>
  clear();
}

void Arduboy::clear()
{
  fillScreen(BLACK);
    4456:	0e 94 8f 09 	call	0x131e	; 0x131e <_ZN7Arduboy10fillScreenEh.constprop.19>
    445a:	49 e6       	ldi	r20, 0x69	; 105
    445c:	67 e0       	ldi	r22, 0x07	; 7
    445e:	70 e0       	ldi	r23, 0x00	; 0
    4460:	80 e1       	ldi	r24, 0x10	; 16
    4462:	90 e0       	ldi	r25, 0x00	; 0
    4464:	0e 94 1f 19 	call	0x323e	; 0x323e <_ZN10MyArduboyV14drawFastHLine2Eiihh.constprop.44>
    4468:	49 e6       	ldi	r20, 0x69	; 105
    446a:	68 e3       	ldi	r22, 0x38	; 56
    446c:	70 e0       	ldi	r23, 0x00	; 0
    446e:	80 e1       	ldi	r24, 0x10	; 16
    4470:	90 e0       	ldi	r25, 0x00	; 0
    4472:	0e 94 1f 19 	call	0x323e	; 0x323e <_ZN10MyArduboyV14drawFastHLine2Eiihh.constprop.44>
    4476:	21 e0       	ldi	r18, 0x01	; 1
    4478:	40 e3       	ldi	r20, 0x30	; 48
    447a:	68 e0       	ldi	r22, 0x08	; 8
    447c:	70 e0       	ldi	r23, 0x00	; 0
    447e:	88 e7       	ldi	r24, 0x78	; 120
    4480:	90 e0       	ldi	r25, 0x00	; 0
    4482:	0e 94 99 07 	call	0xf32	; 0xf32 <_ZN10MyArduboyV14drawFastVLine2Eiiah.constprop.47>
    4486:	cd e7       	ldi	r28, 0x7D	; 125
    4488:	ec 2e       	mov	r14, r28
    448a:	c1 e0       	ldi	r28, 0x01	; 1
    448c:	fc 2e       	mov	r15, r28
    448e:	10 e0       	ldi	r17, 0x00	; 0
    4490:	d0 e0       	ldi	r29, 0x00	; 0
    4492:	c0 e0       	ldi	r28, 0x00	; 0
    4494:	fe 01       	movw	r30, r28
    4496:	ee 0f       	add	r30, r30
    4498:	ff 1f       	adc	r31, r31
    449a:	ee 0d       	add	r30, r14
    449c:	ff 1d       	adc	r31, r15
    449e:	20 81       	ld	r18, Z
    44a0:	31 81       	ldd	r19, Z+1	; 0x01
    44a2:	21 15       	cp	r18, r1
    44a4:	31 05       	cpc	r19, r1
    44a6:	29 f0       	breq	.+10     	; 0x44b2 <_Z8drawGamev+0xd4>
    44a8:	40 e0       	ldi	r20, 0x00	; 0
    44aa:	61 2f       	mov	r22, r17
    44ac:	8c 2f       	mov	r24, r28
    44ae:	0e 94 c3 1f 	call	0x3f86	; 0x3f86 <_ZL14drawObjectFastaaa8OBJECT_T>
    44b2:	21 96       	adiw	r28, 0x01	; 1
    44b4:	c6 30       	cpi	r28, 0x06	; 6
    44b6:	d1 05       	cpc	r29, r1
    44b8:	69 f7       	brne	.-38     	; 0x4494 <_Z8drawGamev+0xb6>
    44ba:	8c e0       	ldi	r24, 0x0C	; 12
    44bc:	e8 0e       	add	r14, r24
    44be:	f1 1c       	adc	r15, r1
    44c0:	1f 5f       	subi	r17, 0xFF	; 255
    44c2:	1e 30       	cpi	r17, 0x0E	; 14
    44c4:	29 f7       	brne	.-54     	; 0x4490 <_Z8drawGamev+0xb2>
    44c6:	f0 90 76 02 	lds	r15, 0x0276	; 0x800276 <isInvalid>
    44ca:	74 e1       	ldi	r23, 0x14	; 20
    44cc:	e7 2e       	mov	r14, r23
    44ce:	05 e0       	ldi	r16, 0x05	; 5
    44d0:	29 e4       	ldi	r18, 0x49	; 73
    44d2:	37 e0       	ldi	r19, 0x07	; 7
    44d4:	4c e2       	ldi	r20, 0x2C	; 44
    44d6:	50 e0       	ldi	r21, 0x00	; 0
    44d8:	70 e0       	ldi	r23, 0x00	; 0
    44da:	60 e0       	ldi	r22, 0x00	; 0
    44dc:	8a e0       	ldi	r24, 0x0A	; 10
    44de:	93 e0       	ldi	r25, 0x03	; 3
    44e0:	0e 94 94 08 	call	0x1128	; 0x1128 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25>
    44e4:	60 91 55 01 	lds	r22, 0x0155	; 0x800155 <_ZL5level>
    44e8:	70 e0       	ldi	r23, 0x00	; 0
    44ea:	90 e0       	ldi	r25, 0x00	; 0
    44ec:	80 e0       	ldi	r24, 0x00	; 0
  }
}

void Arduboy::setCursor(int16_t x, int16_t y)
{
  cursor_x = x;
    44ee:	26 e0       	ldi	r18, 0x06	; 6
    44f0:	30 e0       	ldi	r19, 0x00	; 0
    44f2:	30 93 1f 07 	sts	0x071F, r19	; 0x80071f <arduboy+0x415>
    44f6:	20 93 1e 07 	sts	0x071E, r18	; 0x80071e <arduboy+0x414>
  cursor_y = y;
    44fa:	2f e3       	ldi	r18, 0x3F	; 63
    44fc:	30 e0       	ldi	r19, 0x00	; 0
    44fe:	30 93 21 07 	sts	0x0721, r19	; 0x800721 <arduboy+0x417>
    4502:	20 93 20 07 	sts	0x0720, r18	; 0x800720 <arduboy+0x416>
    4506:	0e 94 8e 1a 	call	0x351c	; 0x351c <_ZN5Print5printEli.constprop.27>
    450a:	20 91 45 01 	lds	r18, 0x0145	; 0x800145 <_ZL5score>
    450e:	30 91 46 01 	lds	r19, 0x0146	; 0x800146 <_ZL5score+0x1>
    4512:	40 91 47 01 	lds	r20, 0x0147	; 0x800147 <_ZL5score+0x2>
    4516:	50 91 48 01 	lds	r21, 0x0148	; 0x800148 <_ZL5score+0x3>
    451a:	02 e0       	ldi	r16, 0x02	; 2
    451c:	10 e0       	ldi	r17, 0x00	; 0
    451e:	6f ef       	ldi	r22, 0xFF	; 255
    4520:	7f ef       	ldi	r23, 0xFF	; 255
    4522:	8a e7       	ldi	r24, 0x7A	; 122
    4524:	90 e0       	ldi	r25, 0x00	; 0
    4526:	0e 94 ba 1a 	call	0x3574	; 0x3574 <_Z11drawNumberViil7ALIGN_T>
    452a:	22 e1       	ldi	r18, 0x12	; 18
    452c:	48 e0       	ldi	r20, 0x08	; 8
    452e:	70 e0       	ldi	r23, 0x00	; 0
    4530:	60 e0       	ldi	r22, 0x00	; 0
    4532:	90 e0       	ldi	r25, 0x00	; 0
    4534:	80 e0       	ldi	r24, 0x00	; 0
    4536:	0e 94 5a 19 	call	0x32b4	; 0x32b4 <_ZN10MyArduboyV9drawRect2Eiihah.constprop.43>
    453a:	e0 91 58 01 	lds	r30, 0x0158	; 0x800158 <_ZL9starGuage>
    453e:	f0 91 59 01 	lds	r31, 0x0159	; 0x800159 <_ZL9starGuage+0x1>
    4542:	20 91 56 01 	lds	r18, 0x0156	; 0x800156 <_ZL12starGuageMax>
    4546:	30 91 57 01 	lds	r19, 0x0157	; 0x800157 <_ZL12starGuageMax+0x1>
    454a:	cf 01       	movw	r24, r30
    454c:	a4 e0       	ldi	r26, 0x04	; 4
    454e:	88 0f       	add	r24, r24
    4550:	99 1f       	adc	r25, r25
    4552:	aa 95       	dec	r26
    4554:	e1 f7       	brne	.-8      	; 0x454e <_Z8drawGamev+0x170>
    4556:	b9 01       	movw	r22, r18
    4558:	0e 94 99 2f 	call	0x5f32	; 0x5f32 <__divmodhi4>
    455c:	c6 2f       	mov	r28, r22
    455e:	e2 17       	cp	r30, r18
    4560:	f3 07       	cpc	r31, r19
    4562:	24 f0       	brlt	.+8      	; 0x456c <_Z8drawGamev+0x18e>
    4564:	80 91 6b 02 	lds	r24, 0x026B	; 0x80026b <record+0x14>
    4568:	80 fd       	sbrc	r24, 0
    456a:	c0 e0       	ldi	r28, 0x00	; 0
    456c:	01 e0       	ldi	r16, 0x01	; 1
    456e:	2c 2f       	mov	r18, r28
    4570:	46 e0       	ldi	r20, 0x06	; 6
    4572:	61 e0       	ldi	r22, 0x01	; 1
    4574:	70 e0       	ldi	r23, 0x00	; 0
    4576:	81 e0       	ldi	r24, 0x01	; 1
    4578:	90 e0       	ldi	r25, 0x00	; 0
    457a:	0e 94 06 08 	call	0x100c	; 0x100c <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42>
    457e:	20 e1       	ldi	r18, 0x10	; 16
    4580:	2c 1b       	sub	r18, r28
    4582:	6c 2f       	mov	r22, r28
    4584:	cc 0f       	add	r28, r28
    4586:	77 0b       	sbc	r23, r23
    4588:	6f 5f       	subi	r22, 0xFF	; 255
    458a:	7f 4f       	sbci	r23, 0xFF	; 255
    458c:	00 e0       	ldi	r16, 0x00	; 0
    458e:	46 e0       	ldi	r20, 0x06	; 6
    4590:	81 e0       	ldi	r24, 0x01	; 1
    4592:	90 e0       	ldi	r25, 0x00	; 0
    4594:	0e 94 06 08 	call	0x100c	; 0x100c <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42>
    4598:	c0 91 5b 01 	lds	r28, 0x015B	; 0x80015b <_ZL5state.lto_priv.67>
    459c:	d0 91 5c 01 	lds	r29, 0x015C	; 0x80015c <_ZL5state.lto_priv.67+0x1>
    45a0:	f1 10       	cpse	r15, r1
    45a2:	6d c0       	rjmp	.+218    	; 0x467e <_Z8drawGamev+0x2a0>
    45a4:	24 97       	sbiw	r28, 0x04	; 4
    45a6:	09 f0       	breq	.+2      	; 0x45aa <_Z8drawGamev+0x1cc>
    45a8:	88 c0       	rjmp	.+272    	; 0x46ba <_Z8drawGamev+0x2dc>
    45aa:	80 91 40 01 	lds	r24, 0x0140	; 0x800140 <_ZL9isHiscore>
    45ae:	88 23       	and	r24, r24
    45b0:	09 f4       	brne	.+2      	; 0x45b4 <_Z8drawGamev+0x1d6>
    45b2:	83 c0       	rjmp	.+262    	; 0x46ba <_Z8drawGamev+0x2dc>
    45b4:	80 91 76 01 	lds	r24, 0x0176	; 0x800176 <_ZL11gameCounter>
    45b8:	90 91 77 01 	lds	r25, 0x0177	; 0x800177 <_ZL11gameCounter+0x1>
    45bc:	23 e0       	ldi	r18, 0x03	; 3
    45be:	95 95       	asr	r25
    45c0:	87 95       	ror	r24
    45c2:	2a 95       	dec	r18
    45c4:	e1 f7       	brne	.-8      	; 0x45be <_Z8drawGamev+0x1e0>
    45c6:	81 70       	andi	r24, 0x01	; 1
    45c8:	80 93 24 07 	sts	0x0724, r24	; 0x800724 <arduboy+0x41a>
    45cc:	80 93 25 07 	sts	0x0725, r24	; 0x800725 <arduboy+0x41b>
  }
}

void Arduboy::setCursor(int16_t x, int16_t y)
{
  cursor_x = x;
    45d0:	88 e4       	ldi	r24, 0x48	; 72
    45d2:	90 e0       	ldi	r25, 0x00	; 0
    45d4:	90 93 1f 07 	sts	0x071F, r25	; 0x80071f <arduboy+0x415>
    45d8:	80 93 1e 07 	sts	0x071E, r24	; 0x80071e <arduboy+0x414>
  cursor_y = y;
    45dc:	8d e3       	ldi	r24, 0x3D	; 61
    45de:	90 e0       	ldi	r25, 0x00	; 0
    45e0:	90 93 21 07 	sts	0x0721, r25	; 0x800721 <arduboy+0x417>
    45e4:	80 93 20 07 	sts	0x0720, r24	; 0x800720 <arduboy+0x416>
    45e8:	89 ef       	ldi	r24, 0xF9	; 249
    45ea:	91 e0       	ldi	r25, 0x01	; 1
    45ec:	0e 94 86 18 	call	0x310c	; 0x310c <_ZN5Print5printEPK19__FlashStringHelper.constprop.49>
    45f0:	81 e0       	ldi	r24, 0x01	; 1
    45f2:	80 93 24 07 	sts	0x0724, r24	; 0x800724 <arduboy+0x41a>
    45f6:	80 93 25 07 	sts	0x0725, r24	; 0x800725 <arduboy+0x41b>
    45fa:	5f c0       	rjmp	.+190    	; 0x46ba <_Z8drawGamev+0x2dc>
    45fc:	00 e0       	ldi	r16, 0x00	; 0
    45fe:	2c e0       	ldi	r18, 0x0C	; 12
    4600:	46 e0       	ldi	r20, 0x06	; 6
    4602:	64 e3       	ldi	r22, 0x34	; 52
    4604:	70 e0       	ldi	r23, 0x00	; 0
    4606:	86 e0       	ldi	r24, 0x06	; 6
    4608:	90 e0       	ldi	r25, 0x00	; 0
    460a:	0e 94 06 08 	call	0x100c	; 0x100c <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42>
    460e:	2a e2       	ldi	r18, 0x2A	; 42
    4610:	46 e0       	ldi	r20, 0x06	; 6
    4612:	70 e0       	ldi	r23, 0x00	; 0
    4614:	60 e0       	ldi	r22, 0x00	; 0
    4616:	8a e7       	ldi	r24, 0x7A	; 122
    4618:	90 e0       	ldi	r25, 0x00	; 0
    461a:	0e 94 06 08 	call	0x100c	; 0x100c <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42>
    461e:	80 91 4c 01 	lds	r24, 0x014C	; 0x80014c <_ZL8gameMode>
    4622:	90 91 4d 01 	lds	r25, 0x014D	; 0x80014d <_ZL8gameMode+0x1>
    4626:	01 97       	sbiw	r24, 0x01	; 1
    4628:	81 f4       	brne	.+32     	; 0x464a <_Z8drawGamev+0x26c>
    462a:	60 91 7a 01 	lds	r22, 0x017A	; 0x80017a <_ZL5lastY>
    462e:	80 91 6e 01 	lds	r24, 0x016E	; 0x80016e <_ZL6bunchY>
    4632:	68 17       	cp	r22, r24
    4634:	54 f0       	brlt	.+20     	; 0x464a <_Z8drawGamev+0x26c>
    4636:	10 e0       	ldi	r17, 0x00	; 0
    4638:	00 e0       	ldi	r16, 0x00	; 0
    463a:	20 91 65 01 	lds	r18, 0x0165	; 0x800165 <_ZL5lastG>
    463e:	40 91 66 01 	lds	r20, 0x0166	; 0x800166 <_ZL5lastR>
    4642:	80 91 7b 01 	lds	r24, 0x017B	; 0x80017b <_ZL5lastX>
    4646:	0e 94 89 21 	call	0x4312	; 0x4312 <_ZL9drawBunchaaaaP8OBJECT_T>
    464a:	80 91 4c 01 	lds	r24, 0x014C	; 0x80014c <_ZL8gameMode>
    464e:	90 91 4d 01 	lds	r25, 0x014D	; 0x80014d <_ZL8gameMode+0x1>
    4652:	04 97       	sbiw	r24, 0x04	; 4
    4654:	09 f0       	breq	.+2      	; 0x4658 <_Z8drawGamev+0x27a>
    4656:	37 cf       	rjmp	.-402    	; 0x44c6 <_Z8drawGamev+0xe8>
    4658:	80 91 7b 01 	lds	r24, 0x017B	; 0x80017b <_ZL5lastX>
    465c:	88 23       	and	r24, r24
    465e:	09 f4       	brne	.+2      	; 0x4662 <_Z8drawGamev+0x284>
    4660:	32 cf       	rjmp	.-412    	; 0x44c6 <_Z8drawGamev+0xe8>
    4662:	60 91 7a 01 	lds	r22, 0x017A	; 0x80017a <_ZL5lastY>
    4666:	06 2e       	mov	r0, r22
    4668:	00 0c       	add	r0, r0
    466a:	77 0b       	sbc	r23, r23
    466c:	00 e0       	ldi	r16, 0x00	; 0
    466e:	28 e0       	ldi	r18, 0x08	; 8
    4670:	48 e0       	ldi	r20, 0x08	; 8
    4672:	08 2e       	mov	r0, r24
    4674:	00 0c       	add	r0, r0
    4676:	99 0b       	sbc	r25, r25
    4678:	0e 94 06 08 	call	0x100c	; 0x100c <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42>
    467c:	24 cf       	rjmp	.-440    	; 0x44c6 <_Z8drawGamev+0xe8>
    467e:	64 e1       	ldi	r22, 0x14	; 20
    4680:	e6 2e       	mov	r14, r22
    4682:	05 e0       	ldi	r16, 0x05	; 5
    4684:	2a ee       	ldi	r18, 0xEA	; 234
    4686:	31 e0       	ldi	r19, 0x01	; 1
    4688:	4c e2       	ldi	r20, 0x2C	; 44
    468a:	50 e0       	ldi	r21, 0x00	; 0
    468c:	6a e7       	ldi	r22, 0x7A	; 122
    468e:	70 e0       	ldi	r23, 0x00	; 0
    4690:	8a e0       	ldi	r24, 0x0A	; 10
    4692:	93 e0       	ldi	r25, 0x03	; 3
    4694:	0e 94 94 08 	call	0x1128	; 0x1128 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25>
    4698:	c1 30       	cpi	r28, 0x01	; 1
    469a:	d1 05       	cpc	r29, r1
    469c:	09 f0       	breq	.+2      	; 0x46a0 <_Z8drawGamev+0x2c2>
    469e:	74 c0       	rjmp	.+232    	; 0x4788 <_Z8drawGamev+0x3aa>
    46a0:	58 e2       	ldi	r21, 0x28	; 40
    46a2:	e5 2e       	mov	r14, r21
    46a4:	0e e0       	ldi	r16, 0x0E	; 14
    46a6:	27 e4       	ldi	r18, 0x47	; 71
    46a8:	32 e0       	ldi	r19, 0x02	; 2
    46aa:	4c e0       	ldi	r20, 0x0C	; 12
    46ac:	50 e0       	ldi	r21, 0x00	; 0
    46ae:	69 e3       	ldi	r22, 0x39	; 57
    46b0:	70 e0       	ldi	r23, 0x00	; 0
    46b2:	8a e0       	ldi	r24, 0x0A	; 10
    46b4:	93 e0       	ldi	r25, 0x03	; 3
    46b6:	0e 94 94 08 	call	0x1128	; 0x1128 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25>
    46ba:	80 91 4c 01 	lds	r24, 0x014C	; 0x80014c <_ZL8gameMode>
    46be:	90 91 4d 01 	lds	r25, 0x014D	; 0x80014d <_ZL8gameMode+0x1>
    46c2:	01 97       	sbiw	r24, 0x01	; 1
    46c4:	21 f4       	brne	.+8      	; 0x46ce <_Z8drawGamev+0x2f0>
    46c6:	80 91 6e 01 	lds	r24, 0x016E	; 0x80016e <_ZL6bunchY>
    46ca:	8c 30       	cpi	r24, 0x0C	; 12
    46cc:	7c f4       	brge	.+30     	; 0x46ec <_Z8drawGamev+0x30e>
    46ce:	80 91 50 01 	lds	r24, 0x0150	; 0x800150 <_ZL9nextBunch+0x2>
    46d2:	90 91 51 01 	lds	r25, 0x0151	; 0x800151 <_ZL9nextBunch+0x3>
    46d6:	45 e0       	ldi	r20, 0x05	; 5
    46d8:	89 2b       	or	r24, r25
    46da:	09 f0       	breq	.+2      	; 0x46de <_Z8drawGamev+0x300>
    46dc:	40 e0       	ldi	r20, 0x00	; 0
    46de:	0e e4       	ldi	r16, 0x4E	; 78
    46e0:	11 e0       	ldi	r17, 0x01	; 1
    46e2:	20 e0       	ldi	r18, 0x00	; 0
    46e4:	6e e0       	ldi	r22, 0x0E	; 14
    46e6:	82 e0       	ldi	r24, 0x02	; 2
    46e8:	0e 94 89 21 	call	0x4312	; 0x4312 <_ZL9drawBunchaaaaP8OBJECT_T>
    46ec:	80 91 5b 01 	lds	r24, 0x015B	; 0x80015b <_ZL5state.lto_priv.67>
    46f0:	90 91 5c 01 	lds	r25, 0x015C	; 0x80015c <_ZL5state.lto_priv.67+0x1>
    46f4:	02 97       	sbiw	r24, 0x02	; 2
    46f6:	61 f4       	brne	.+24     	; 0x4710 <_Z8drawGamev+0x332>
    46f8:	e0 91 4c 01 	lds	r30, 0x014C	; 0x80014c <_ZL8gameMode>
    46fc:	f0 91 4d 01 	lds	r31, 0x014D	; 0x80014d <_ZL8gameMode+0x1>
    4700:	ee 0f       	add	r30, r30
    4702:	ff 1f       	adc	r31, r31
    4704:	e3 57       	subi	r30, 0x73	; 115
    4706:	fd 4f       	sbci	r31, 0xFD	; 253
    4708:	85 91       	lpm	r24, Z+
    470a:	94 91       	lpm	r25, Z
    470c:	fc 01       	movw	r30, r24
    470e:	09 95       	icall
    4710:	80 91 5b 01 	lds	r24, 0x015B	; 0x80015b <_ZL5state.lto_priv.67>
    4714:	90 91 5c 01 	lds	r25, 0x015C	; 0x80015c <_ZL5state.lto_priv.67+0x1>
    4718:	82 30       	cpi	r24, 0x02	; 2
    471a:	91 05       	cpc	r25, r1
    471c:	09 f0       	breq	.+2      	; 0x4720 <_Z8drawGamev+0x342>
    471e:	63 c0       	rjmp	.+198    	; 0x47e6 <_Z8drawGamev+0x408>
    4720:	80 91 3f 01 	lds	r24, 0x013F	; 0x80013f <_ZL9maxHeight>
    4724:	8a 30       	cpi	r24, 0x0A	; 10
    4726:	08 f4       	brcc	.+2      	; 0x472a <_Z8drawGamev+0x34c>
    4728:	6d c0       	rjmp	.+218    	; 0x4804 <_Z8drawGamev+0x426>
    472a:	4d e0       	ldi	r20, 0x0D	; 13
    472c:	48 1b       	sub	r20, r24
    472e:	64 2f       	mov	r22, r20
    4730:	70 e0       	ldi	r23, 0x00	; 0
    4732:	cb 01       	movw	r24, r22
    4734:	03 96       	adiw	r24, 0x03	; 3
    4736:	21 e0       	ldi	r18, 0x01	; 1
    4738:	30 e0       	ldi	r19, 0x00	; 0
    473a:	01 c0       	rjmp	.+2      	; 0x473e <_Z8drawGamev+0x360>
    473c:	22 0f       	add	r18, r18
    473e:	8a 95       	dec	r24
    4740:	ea f7       	brpl	.-6      	; 0x473c <_Z8drawGamev+0x35e>
    4742:	82 2f       	mov	r24, r18
    4744:	86 95       	lsr	r24
    4746:	21 50       	subi	r18, 0x01	; 1
    4748:	90 91 6b 02 	lds	r25, 0x026B	; 0x80026b <record+0x14>
    474c:	29 23       	and	r18, r25
    474e:	82 1b       	sub	r24, r18
    4750:	08 2e       	mov	r0, r24
    4752:	00 0c       	add	r0, r0
    4754:	99 0b       	sbc	r25, r25
    4756:	97 ff       	sbrs	r25, 7
    4758:	03 c0       	rjmp	.+6      	; 0x4760 <_Z8drawGamev+0x382>
    475a:	91 95       	neg	r25
    475c:	81 95       	neg	r24
    475e:	91 09       	sbc	r25, r1
    4760:	23 e0       	ldi	r18, 0x03	; 3
    4762:	30 e0       	ldi	r19, 0x00	; 0
    4764:	26 1b       	sub	r18, r22
    4766:	37 0b       	sbc	r19, r23
    4768:	01 c0       	rjmp	.+2      	; 0x476c <_Z8drawGamev+0x38e>
    476a:	88 0f       	add	r24, r24
    476c:	2a 95       	dec	r18
    476e:	ea f7       	brpl	.-6      	; 0x476a <_Z8drawGamev+0x38c>
    4770:	44 0f       	add	r20, r20
    4772:	44 0f       	add	r20, r20
    4774:	44 0f       	add	r20, r20
    4776:	84 1b       	sub	r24, r20
    4778:	60 e0       	ldi	r22, 0x00	; 0
    477a:	18 16       	cp	r1, r24
    477c:	0c f0       	brlt	.+2      	; 0x4780 <_Z8drawGamev+0x3a2>
    477e:	80 e0       	ldi	r24, 0x00	; 0
    4780:	40 e0       	ldi	r20, 0x00	; 0
    4782:	0e 94 b0 0c 	call	0x1960	; 0x1960 <_ZN11ArduboyCore9setRGBledEhhh.constprop.59>
    4786:	5b ce       	rjmp	.-842    	; 0x443e <_Z8drawGamev+0x60>
    4788:	24 97       	sbiw	r28, 0x04	; 4
    478a:	09 f0       	breq	.+2      	; 0x478e <_Z8drawGamev+0x3b0>
    478c:	96 cf       	rjmp	.-212    	; 0x46ba <_Z8drawGamev+0x2dc>
    478e:	22 e4       	ldi	r18, 0x42	; 66
    4790:	4e e1       	ldi	r20, 0x1E	; 30
    4792:	6f ef       	ldi	r22, 0xFF	; 255
    4794:	7f ef       	ldi	r23, 0xFF	; 255
    4796:	81 e3       	ldi	r24, 0x31	; 49
    4798:	90 e0       	ldi	r25, 0x00	; 0
    479a:	0e 94 5a 19 	call	0x32b4	; 0x32b4 <_ZN10MyArduboyV9drawRect2Eiihah.constprop.43>
    479e:	00 e0       	ldi	r16, 0x00	; 0
    47a0:	20 e4       	ldi	r18, 0x40	; 64
    47a2:	4c e1       	ldi	r20, 0x1C	; 28
    47a4:	70 e0       	ldi	r23, 0x00	; 0
    47a6:	60 e0       	ldi	r22, 0x00	; 0
    47a8:	82 e3       	ldi	r24, 0x32	; 50
    47aa:	90 e0       	ldi	r25, 0x00	; 0
    47ac:	0e 94 06 08 	call	0x100c	; 0x100c <_ZN10MyArduboyV9fillRect2Eiihah.constprop.42>
    47b0:	38 e3       	ldi	r19, 0x38	; 56
    47b2:	e3 2e       	mov	r14, r19
    47b4:	08 e0       	ldi	r16, 0x08	; 8
    47b6:	2f e0       	ldi	r18, 0x0F	; 15
    47b8:	32 e0       	ldi	r19, 0x02	; 2
    47ba:	50 e0       	ldi	r21, 0x00	; 0
    47bc:	40 e0       	ldi	r20, 0x00	; 0
    47be:	6c e3       	ldi	r22, 0x3C	; 60
    47c0:	70 e0       	ldi	r23, 0x00	; 0
    47c2:	8a e0       	ldi	r24, 0x0A	; 10
    47c4:	93 e0       	ldi	r25, 0x03	; 3
    47c6:	0e 94 94 08 	call	0x1128	; 0x1128 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25>
    47ca:	48 e0       	ldi	r20, 0x08	; 8
    47cc:	e4 2e       	mov	r14, r20
    47ce:	0b e0       	ldi	r16, 0x0B	; 11
    47d0:	24 e0       	ldi	r18, 0x04	; 4
    47d2:	32 e0       	ldi	r19, 0x02	; 2
    47d4:	48 e3       	ldi	r20, 0x38	; 56
    47d6:	50 e0       	ldi	r21, 0x00	; 0
    47d8:	6c e3       	ldi	r22, 0x3C	; 60
    47da:	70 e0       	ldi	r23, 0x00	; 0
    47dc:	8a e0       	ldi	r24, 0x0A	; 10
    47de:	93 e0       	ldi	r25, 0x03	; 3
    47e0:	0e 94 94 08 	call	0x1128	; 0x1128 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.25>
    47e4:	e2 ce       	rjmp	.-572    	; 0x45aa <_Z8drawGamev+0x1cc>
    47e6:	04 97       	sbiw	r24, 0x04	; 4
    47e8:	69 f4       	brne	.+26     	; 0x4804 <_Z8drawGamev+0x426>
    47ea:	60 91 76 01 	lds	r22, 0x0176	; 0x800176 <_ZL11gameCounter>
    47ee:	70 91 77 01 	lds	r23, 0x0177	; 0x800177 <_ZL11gameCounter+0x1>
    47f2:	68 53       	subi	r22, 0x38	; 56
    47f4:	72 40       	sbci	r23, 0x02	; 2
    47f6:	66 0f       	add	r22, r22
    47f8:	77 1f       	adc	r23, r23
    47fa:	86 2f       	mov	r24, r22
    47fc:	16 16       	cp	r1, r22
    47fe:	17 06       	cpc	r1, r23
    4800:	0c f4       	brge	.+2      	; 0x4804 <_Z8drawGamev+0x426>
    4802:	be cf       	rjmp	.-132    	; 0x4780 <_Z8drawGamev+0x3a2>
    4804:	60 e0       	ldi	r22, 0x00	; 0
    4806:	bb cf       	rjmp	.-138    	; 0x477e <_Z8drawGamev+0x3a0>

00004808 <_Z11writeRecordv.part.1>:
    4808:	cf 93       	push	r28
    480a:	df 93       	push	r29
    480c:	80 91 48 02 	lds	r24, 0x0248	; 0x800248 <_ZL11recordState>
    4810:	90 91 49 02 	lds	r25, 0x0249	; 0x800249 <_ZL11recordState+0x1>
    4814:	01 97       	sbiw	r24, 0x01	; 1
    4816:	09 f0       	breq	.+2      	; 0x481a <_Z11writeRecordv.part.1+0x12>
    4818:	50 c0       	rjmp	.+160    	; 0x48ba <_Z11writeRecordv.part.1+0xb2>
    481a:	80 ee       	ldi	r24, 0xE0	; 224
    481c:	92 e0       	ldi	r25, 0x02	; 2
    481e:	90 93 4b 02 	sts	0x024B, r25	; 0x80024b <_ZL7eepAddr+0x1>
    4822:	80 93 4a 02 	sts	0x024A, r24	; 0x80024a <_ZL7eepAddr>
    4826:	f9 99       	sbic	0x1f, 1	; 31
    4828:	fe cf       	rjmp	.-4      	; 0x4826 <_Z11writeRecordv.part.1+0x1e>
    482a:	4f e4       	ldi	r20, 0x4F	; 79
    482c:	52 e4       	ldi	r21, 0x42	; 66
    482e:	6e e4       	ldi	r22, 0x4E	; 78
    4830:	79 e0       	ldi	r23, 0x09	; 9
    4832:	80 ee       	ldi	r24, 0xE0	; 224
    4834:	92 e0       	ldi	r25, 0x02	; 2
    4836:	0e 94 0d 2f 	call	0x5e1a	; 0x5e1a <eeprom_write_dword>
    483a:	80 91 4a 02 	lds	r24, 0x024A	; 0x80024a <_ZL7eepAddr>
    483e:	90 91 4b 02 	lds	r25, 0x024B	; 0x80024b <_ZL7eepAddr+0x1>
    4842:	04 96       	adiw	r24, 0x04	; 4
    4844:	90 93 4b 02 	sts	0x024B, r25	; 0x80024b <_ZL7eepAddr+0x1>
    4848:	80 93 4a 02 	sts	0x024A, r24	; 0x80024a <_ZL7eepAddr>
    484c:	f9 99       	sbic	0x1f, 1	; 31
    484e:	fe cf       	rjmp	.-4      	; 0x484c <_Z11writeRecordv.part.1+0x44>
    4850:	60 91 4a 02 	lds	r22, 0x024A	; 0x80024a <_ZL7eepAddr>
    4854:	70 91 4b 02 	lds	r23, 0x024B	; 0x80024b <_ZL7eepAddr+0x1>
    4858:	4a e1       	ldi	r20, 0x1A	; 26
    485a:	50 e0       	ldi	r21, 0x00	; 0
    485c:	87 e5       	ldi	r24, 0x57	; 87
    485e:	92 e0       	ldi	r25, 0x02	; 2
    4860:	0e 94 f5 2e 	call	0x5dea	; 0x5dea <eeprom_write_block>
    4864:	c0 91 4a 02 	lds	r28, 0x024A	; 0x80024a <_ZL7eepAddr>
    4868:	d0 91 4b 02 	lds	r29, 0x024B	; 0x80024b <_ZL7eepAddr+0x1>
    486c:	6a 96       	adiw	r28, 0x1a	; 26
    486e:	d0 93 4b 02 	sts	0x024B, r29	; 0x80024b <_ZL7eepAddr+0x1>
    4872:	c0 93 4a 02 	sts	0x024A, r28	; 0x80024a <_ZL7eepAddr>
    4876:	0e 94 3c 17 	call	0x2e78	; 0x2e78 <_ZL12calcCheckSumv>
    487a:	f9 99       	sbic	0x1f, 1	; 31
    487c:	fe cf       	rjmp	.-4      	; 0x487a <_Z11writeRecordv.part.1+0x72>
    487e:	bc 01       	movw	r22, r24
    4880:	ce 01       	movw	r24, r28
    4882:	0e 94 15 2f 	call	0x5e2a	; 0x5e2a <eeprom_write_word>
    4886:	80 91 4a 02 	lds	r24, 0x024A	; 0x80024a <_ZL7eepAddr>
    488a:	90 91 4b 02 	lds	r25, 0x024B	; 0x80024b <_ZL7eepAddr+0x1>
    488e:	02 96       	adiw	r24, 0x02	; 2
    4890:	90 93 4b 02 	sts	0x024B, r25	; 0x80024b <_ZL7eepAddr+0x1>
    4894:	80 93 4a 02 	sts	0x024A, r24	; 0x80024a <_ZL7eepAddr>
    uint8_t operator*() const            { return eeprom_read_byte( (uint8_t*) index ); }
    operator uint8_t() const             { return **this; }
    
    //Assignment/write members.
    EERef &operator=( const EERef &ref ) { return *this = *ref; }
    EERef &operator=( uint8_t in )       { return eeprom_write_byte( (uint8_t*) index, in ), *this;  }
    4898:	60 91 b9 02 	lds	r22, 0x02B9	; 0x8002b9 <_ZN12ArduboyAudio13audio_enabledE>
    489c:	82 e0       	ldi	r24, 0x02	; 2
    489e:	90 e0       	ldi	r25, 0x00	; 0
    48a0:	0e 94 ff 2e 	call	0x5dfe	; 0x5dfe <eeprom_write_byte>
    48a4:	82 e0       	ldi	r24, 0x02	; 2
    48a6:	90 e0       	ldi	r25, 0x00	; 0
    48a8:	90 93 49 02 	sts	0x0249, r25	; 0x800249 <_ZL11recordState+0x1>
    48ac:	80 93 48 02 	sts	0x0248, r24	; 0x800248 <_ZL11recordState>
    48b0:	10 92 47 02 	sts	0x0247, r1	; 0x800247 <isRecordDirty>
    48b4:	df 91       	pop	r29
    48b6:	cf 91       	pop	r28
    48b8:	08 95       	ret
    48ba:	84 ee       	ldi	r24, 0xE4	; 228
    48bc:	92 e0       	ldi	r25, 0x02	; 2
    48be:	c2 cf       	rjmp	.-124    	; 0x4844 <_Z11writeRecordv.part.1+0x3c>

000048c0 <_Z10updateGamev>:
    48c0:	80 91 5b 01 	lds	r24, 0x015B	; 0x80015b <_ZL5state.lto_priv.67>
    48c4:	90 91 5c 01 	lds	r25, 0x015C	; 0x80015c <_ZL5state.lto_priv.67+0x1>
    48c8:	82 30       	cpi	r24, 0x02	; 2
    48ca:	91 05       	cpc	r25, r1
    48cc:	09 f4       	brne	.+2      	; 0x48d0 <_Z10updateGamev+0x10>
    48ce:	56 c0       	rjmp	.+172    	; 0x497c <_Z10updateGamev+0xbc>
    48d0:	60 f4       	brcc	.+24     	; 0x48ea <_Z10updateGamev+0x2a>
    48d2:	01 97       	sbiw	r24, 0x01	; 1
    48d4:	a9 f1       	breq	.+106    	; 0x4940 <_Z10updateGamev+0x80>
    48d6:	80 91 5b 01 	lds	r24, 0x015B	; 0x80015b <_ZL5state.lto_priv.67>
    48da:	90 91 5c 01 	lds	r25, 0x015C	; 0x80015c <_ZL5state.lto_priv.67+0x1>
    48de:	05 97       	sbiw	r24, 0x05	; 5
    48e0:	09 f4       	brne	.+2      	; 0x48e4 <_Z10updateGamev+0x24>
    48e2:	ec c0       	rjmp	.+472    	; 0x4abc <_Z10updateGamev+0x1fc>
    48e4:	82 e0       	ldi	r24, 0x02	; 2
    48e6:	90 e0       	ldi	r25, 0x00	; 0
    48e8:	08 95       	ret
    48ea:	83 30       	cpi	r24, 0x03	; 3
    48ec:	91 05       	cpc	r25, r1
    48ee:	09 f4       	brne	.+2      	; 0x48f2 <_Z10updateGamev+0x32>
    48f0:	e2 c0       	rjmp	.+452    	; 0x4ab6 <_Z10updateGamev+0x1f6>
    48f2:	04 97       	sbiw	r24, 0x04	; 4
    48f4:	81 f7       	brne	.-32     	; 0x48d6 <_Z10updateGamev+0x16>
    48f6:	20 91 76 01 	lds	r18, 0x0176	; 0x800176 <_ZL11gameCounter>
    48fa:	30 91 77 01 	lds	r19, 0x0177	; 0x800177 <_ZL11gameCounter+0x1>
    48fe:	21 50       	subi	r18, 0x01	; 1
    4900:	31 09       	sbc	r19, r1
    4902:	30 93 77 01 	sts	0x0177, r19	; 0x800177 <_ZL11gameCounter+0x1>
    4906:	20 93 76 01 	sts	0x0176, r18	; 0x800176 <_ZL11gameCounter>
    490a:	2d 31       	cpi	r18, 0x1D	; 29
    490c:	f2 e0       	ldi	r31, 0x02	; 2
    490e:	3f 07       	cpc	r19, r31
    4910:	4c f7       	brge	.-46     	; 0x48e4 <_Z10updateGamev+0x24>
    4912:	80 91 27 07 	lds	r24, 0x0727	; 0x800727 <arduboy+0x41d>
    4916:	8c 70       	andi	r24, 0x0C	; 12
    4918:	90 e0       	ldi	r25, 0x00	; 0
    491a:	40 91 26 07 	lds	r20, 0x0726	; 0x800726 <arduboy+0x41c>
    491e:	50 e0       	ldi	r21, 0x00	; 0
    4920:	40 95       	com	r20
    4922:	50 95       	com	r21
    4924:	84 23       	and	r24, r20
    4926:	95 23       	and	r25, r21
    4928:	89 2b       	or	r24, r25
    492a:	19 f4       	brne	.+6      	; 0x4932 <_Z10updateGamev+0x72>
    492c:	12 16       	cp	r1, r18
    492e:	13 06       	cpc	r1, r19
    4930:	cc f2       	brlt	.-78     	; 0x48e4 <_Z10updateGamev+0x24>
    4932:	85 e0       	ldi	r24, 0x05	; 5
    4934:	90 e0       	ldi	r25, 0x00	; 0
    4936:	90 93 5c 01 	sts	0x015C, r25	; 0x80015c <_ZL5state.lto_priv.67+0x1>
    493a:	80 93 5b 01 	sts	0x015B, r24	; 0x80015b <_ZL5state.lto_priv.67>
    493e:	cb cf       	rjmp	.-106    	; 0x48d6 <_Z10updateGamev+0x16>
    4940:	80 91 76 01 	lds	r24, 0x0176	; 0x800176 <_ZL11gameCounter>
    4944:	90 91 77 01 	lds	r25, 0x0177	; 0x800177 <_ZL11gameCounter+0x1>
    4948:	01 97       	sbiw	r24, 0x01	; 1
    494a:	90 93 77 01 	sts	0x0177, r25	; 0x800177 <_ZL11gameCounter+0x1>
    494e:	80 93 76 01 	sts	0x0176, r24	; 0x800176 <_ZL11gameCounter>
    4952:	45 97       	sbiw	r24, 0x15	; 21
    4954:	3c f6       	brge	.-114    	; 0x48e4 <_Z10updateGamev+0x24>
    4956:	80 91 6f 02 	lds	r24, 0x026F	; 0x80026f <record+0x18>
    495a:	90 91 70 02 	lds	r25, 0x0270	; 0x800270 <record+0x19>
    495e:	01 96       	adiw	r24, 0x01	; 1
    4960:	90 93 70 02 	sts	0x0270, r25	; 0x800270 <record+0x19>
    4964:	80 93 6f 02 	sts	0x026F, r24	; 0x80026f <record+0x18>
    4968:	82 e0       	ldi	r24, 0x02	; 2
    496a:	90 e0       	ldi	r25, 0x00	; 0
    496c:	90 93 5c 01 	sts	0x015C, r25	; 0x80015c <_ZL5state.lto_priv.67+0x1>
    4970:	80 93 5b 01 	sts	0x015B, r24	; 0x80015b <_ZL5state.lto_priv.67>
    4974:	81 e0       	ldi	r24, 0x01	; 1
    4976:	80 93 76 02 	sts	0x0276, r24	; 0x800276 <isInvalid>
    497a:	ad cf       	rjmp	.-166    	; 0x48d6 <_Z10updateGamev+0x16>
    497c:	80 91 6b 02 	lds	r24, 0x026B	; 0x80026b <record+0x14>
    4980:	90 91 6c 02 	lds	r25, 0x026C	; 0x80026c <record+0x15>
    4984:	a0 91 6d 02 	lds	r26, 0x026D	; 0x80026d <record+0x16>
    4988:	b0 91 6e 02 	lds	r27, 0x026E	; 0x80026e <record+0x17>
    498c:	01 96       	adiw	r24, 0x01	; 1
    498e:	a1 1d       	adc	r26, r1
    4990:	b1 1d       	adc	r27, r1
    4992:	80 93 6b 02 	sts	0x026B, r24	; 0x80026b <record+0x14>
    4996:	90 93 6c 02 	sts	0x026C, r25	; 0x80026c <record+0x15>
    499a:	a0 93 6d 02 	sts	0x026D, r26	; 0x80026d <record+0x16>
    499e:	b0 93 6e 02 	sts	0x026E, r27	; 0x80026e <record+0x17>
    49a2:	81 e0       	ldi	r24, 0x01	; 1
    49a4:	80 93 47 02 	sts	0x0247, r24	; 0x800247 <isRecordDirty>
    49a8:	10 92 3b 01 	sts	0x013B, r1	; 0x80013b <padY>
    49ac:	10 92 3c 01 	sts	0x013C, r1	; 0x80013c <padX>
    49b0:	80 91 27 07 	lds	r24, 0x0727	; 0x800727 <arduboy+0x41d>
    49b4:	98 2f       	mov	r25, r24
    49b6:	90 7f       	andi	r25, 0xF0	; 240
    49b8:	09 f4       	brne	.+2      	; 0x49bc <_Z10updateGamev+0xfc>
    49ba:	7a c0       	rjmp	.+244    	; 0x4ab0 <_Z10updateGamev+0x1f0>
    49bc:	90 91 3a 01 	lds	r25, 0x013A	; 0x80013a <__data_end>
    49c0:	9f 5f       	subi	r25, 0xFF	; 255
    49c2:	9b 30       	cpi	r25, 0x0B	; 11
    49c4:	0c f0       	brlt	.+2      	; 0x49c8 <_Z10updateGamev+0x108>
    49c6:	72 c0       	rjmp	.+228    	; 0x4aac <_Z10updateGamev+0x1ec>
    49c8:	90 93 3a 01 	sts	0x013A, r25	; 0x80013a <__data_end>
    49cc:	90 91 3a 01 	lds	r25, 0x013A	; 0x80013a <__data_end>
    49d0:	91 30       	cpi	r25, 0x01	; 1
    49d2:	11 f0       	breq	.+4      	; 0x49d8 <_Z10updateGamev+0x118>
    49d4:	9a 30       	cpi	r25, 0x0A	; 10
    49d6:	c1 f4       	brne	.+48     	; 0x4a08 <_Z10updateGamev+0x148>
    49d8:	84 ff       	sbrs	r24, 4
    49da:	03 c0       	rjmp	.+6      	; 0x49e2 <_Z10updateGamev+0x122>
    49dc:	9f ef       	ldi	r25, 0xFF	; 255
    49de:	90 93 3c 01 	sts	0x013C, r25	; 0x80013c <padX>
    49e2:	87 ff       	sbrs	r24, 7
    49e4:	05 c0       	rjmp	.+10     	; 0x49f0 <_Z10updateGamev+0x130>
    49e6:	90 91 3c 01 	lds	r25, 0x013C	; 0x80013c <padX>
    49ea:	9f 5f       	subi	r25, 0xFF	; 255
    49ec:	90 93 3c 01 	sts	0x013C, r25	; 0x80013c <padX>
    49f0:	85 ff       	sbrs	r24, 5
    49f2:	03 c0       	rjmp	.+6      	; 0x49fa <_Z10updateGamev+0x13a>
    49f4:	9f ef       	ldi	r25, 0xFF	; 255
    49f6:	90 93 3b 01 	sts	0x013B, r25	; 0x80013b <padY>
    49fa:	86 ff       	sbrs	r24, 6
    49fc:	05 c0       	rjmp	.+10     	; 0x4a08 <_Z10updateGamev+0x148>
    49fe:	80 91 3b 01 	lds	r24, 0x013B	; 0x80013b <padY>
    4a02:	8f 5f       	subi	r24, 0xFF	; 255
    4a04:	80 93 3b 01 	sts	0x013B, r24	; 0x80013b <padY>
    4a08:	e0 91 4c 01 	lds	r30, 0x014C	; 0x80014c <_ZL8gameMode>
    4a0c:	f0 91 4d 01 	lds	r31, 0x014D	; 0x80014d <_ZL8gameMode+0x1>
    4a10:	ee 0f       	add	r30, r30
    4a12:	ff 1f       	adc	r31, r31
    4a14:	e2 52       	subi	r30, 0x22	; 34
    4a16:	fe 4f       	sbci	r31, 0xFE	; 254
    4a18:	85 91       	lpm	r24, Z+
    4a1a:	94 91       	lpm	r25, Z
    4a1c:	fc 01       	movw	r30, r24
    4a1e:	09 95       	icall
    4a20:	80 91 5b 01 	lds	r24, 0x015B	; 0x80015b <_ZL5state.lto_priv.67>
    4a24:	90 91 5c 01 	lds	r25, 0x015C	; 0x80015c <_ZL5state.lto_priv.67+0x1>
    4a28:	02 97       	sbiw	r24, 0x02	; 2
    4a2a:	09 f0       	breq	.+2      	; 0x4a2e <_Z10updateGamev+0x16e>
    4a2c:	54 cf       	rjmp	.-344    	; 0x48d6 <_Z10updateGamev+0x16>
    4a2e:	80 91 27 07 	lds	r24, 0x0727	; 0x800727 <arduboy+0x41d>
    4a32:	88 70       	andi	r24, 0x08	; 8
    4a34:	90 e0       	ldi	r25, 0x00	; 0
    4a36:	20 91 26 07 	lds	r18, 0x0726	; 0x800726 <arduboy+0x41c>
    4a3a:	30 e0       	ldi	r19, 0x00	; 0
    4a3c:	20 95       	com	r18
    4a3e:	30 95       	com	r19
    4a40:	82 23       	and	r24, r18
    4a42:	93 23       	and	r25, r19
    4a44:	89 2b       	or	r24, r25
    4a46:	09 f4       	brne	.+2      	; 0x4a4a <_Z10updateGamev+0x18a>
    4a48:	4d cf       	rjmp	.-358    	; 0x48e4 <_Z10updateGamev+0x24>
    4a4a:	10 92 4c 02 	sts	0x024C, r1	; 0x80024c <_ZL13menuItemCount>
    4a4e:	69 e8       	ldi	r22, 0x89	; 137
    4a50:	76 e1       	ldi	r23, 0x16	; 22
    4a52:	85 ed       	ldi	r24, 0xD5	; 213
    4a54:	91 e0       	ldi	r25, 0x01	; 1
    4a56:	0e 94 18 11 	call	0x2230	; 0x2230 <_Z11addMenuItemPK19__FlashStringHelperPFvvE>
    4a5a:	61 ec       	ldi	r22, 0xC1	; 193
    4a5c:	7f e1       	ldi	r23, 0x1F	; 31
    4a5e:	8d ec       	ldi	r24, 0xCD	; 205
    4a60:	91 e0       	ldi	r25, 0x01	; 1
    4a62:	0e 94 18 11 	call	0x2230	; 0x2230 <_Z11addMenuItemPK19__FlashStringHelperPFvvE>
    4a66:	68 e7       	ldi	r22, 0x78	; 120
    4a68:	76 e1       	ldi	r23, 0x16	; 22
    4a6a:	88 ec       	ldi	r24, 0xC8	; 200
    4a6c:	91 e0       	ldi	r25, 0x01	; 1
    4a6e:	0e 94 18 11 	call	0x2230	; 0x2230 <_Z11addMenuItemPK19__FlashStringHelperPFvvE>
    4a72:	87 e3       	ldi	r24, 0x37	; 55
    4a74:	80 93 52 02 	sts	0x0252, r24	; 0x800252 <_ZL5menuX>
    4a78:	8d e3       	ldi	r24, 0x3D	; 61
    4a7a:	80 93 51 02 	sts	0x0251, r24	; 0x800251 <_ZL5menuY>
    4a7e:	81 e1       	ldi	r24, 0x11	; 17
    4a80:	80 93 50 02 	sts	0x0250, r24	; 0x800250 <_ZL5menuW>
    4a84:	8b e3       	ldi	r24, 0x3B	; 59
    4a86:	80 93 4f 02 	sts	0x024F, r24	; 0x80024f <_ZL5menuH>
    4a8a:	81 e0       	ldi	r24, 0x01	; 1
    4a8c:	80 93 4e 02 	sts	0x024E, r24	; 0x80024e <_ZL8isFramed>
    4a90:	80 93 4d 02 	sts	0x024D, r24	; 0x80024d <_ZL14isControlSound>
    4a94:	10 92 72 02 	sts	0x0272, r1	; 0x800272 <_ZL11menuItemPos>
    4a98:	80 93 71 02 	sts	0x0271, r24	; 0x800271 <_ZL13isInvalidMenu>
    4a9c:	80 91 47 02 	lds	r24, 0x0247	; 0x800247 <isRecordDirty>
    4aa0:	81 11       	cpse	r24, r1
    4aa2:	0e 94 04 24 	call	0x4808	; 0x4808 <_Z11writeRecordv.part.1>
    4aa6:	83 e0       	ldi	r24, 0x03	; 3
    4aa8:	90 e0       	ldi	r25, 0x00	; 0
    4aaa:	60 cf       	rjmp	.-320    	; 0x496c <_Z10updateGamev+0xac>
    4aac:	9a e0       	ldi	r25, 0x0A	; 10
    4aae:	8c cf       	rjmp	.-232    	; 0x49c8 <_Z10updateGamev+0x108>
    4ab0:	10 92 3a 01 	sts	0x013A, r1	; 0x80013a <__data_end>
    4ab4:	a9 cf       	rjmp	.-174    	; 0x4a08 <_Z10updateGamev+0x148>
    4ab6:	0e 94 a8 16 	call	0x2d50	; 0x2d50 <_Z10handleMenuv>
    4aba:	0d cf       	rjmp	.-486    	; 0x48d6 <_Z10updateGamev+0x16>
    4abc:	81 e0       	ldi	r24, 0x01	; 1
    4abe:	90 e0       	ldi	r25, 0x00	; 0
    4ac0:	08 95       	ret

00004ac2 <_ZL15forwardGameFallv>:
    4ac2:	8f 92       	push	r8
    4ac4:	9f 92       	push	r9
    4ac6:	af 92       	push	r10
    4ac8:	bf 92       	push	r11
    4aca:	cf 92       	push	r12
    4acc:	df 92       	push	r13
    4ace:	ef 92       	push	r14
    4ad0:	ff 92       	push	r15
    4ad2:	1f 93       	push	r17
    4ad4:	cf 93       	push	r28
    4ad6:	df 93       	push	r29
    4ad8:	c0 91 76 01 	lds	r28, 0x0176	; 0x800176 <_ZL11gameCounter>
    4adc:	d0 91 77 01 	lds	r29, 0x0177	; 0x800177 <_ZL11gameCounter+0x1>
    4ae0:	1c 16       	cp	r1, r28
    4ae2:	1d 06       	cpc	r1, r29
    4ae4:	0c f0       	brlt	.+2      	; 0x4ae8 <_ZL15forwardGameFallv+0x26>
    4ae6:	3f c0       	rjmp	.+126    	; 0x4b66 <_ZL15forwardGameFallv+0xa4>
    4ae8:	21 97       	sbiw	r28, 0x01	; 1
    4aea:	d0 93 77 01 	sts	0x0177, r29	; 0x800177 <_ZL11gameCounter+0x1>
    4aee:	c0 93 76 01 	sts	0x0176, r28	; 0x800176 <_ZL11gameCounter>
    4af2:	80 91 7c 01 	lds	r24, 0x017C	; 0x80017c <_ZL5ballE>
    4af6:	87 30       	cpi	r24, 0x07	; 7
    4af8:	89 f4       	brne	.+34     	; 0x4b1c <_ZL15forwardGameFallv+0x5a>
    4afa:	80 91 25 02 	lds	r24, 0x0225	; 0x800225 <_ZL5ballG>
    4afe:	90 91 44 01 	lds	r25, 0x0144	; 0x800144 <_ZL9ballSpeed>
    4b02:	89 1b       	sub	r24, r25
    4b04:	80 93 25 02 	sts	0x0225, r24	; 0x800225 <_ZL5ballG>
    4b08:	80 91 25 02 	lds	r24, 0x0225	; 0x800225 <_ZL5ballG>
    4b0c:	87 ff       	sbrs	r24, 7
    4b0e:	06 c0       	rjmp	.+12     	; 0x4b1c <_ZL15forwardGameFallv+0x5a>
    4b10:	80 5c       	subi	r24, 0xC0	; 192
    4b12:	80 93 25 02 	sts	0x0225, r24	; 0x800225 <_ZL5ballG>
    4b16:	0e 94 5c 11 	call	0x22b8	; 0x22b8 <_ZL17decayDyingEnemiesv>
    4b1a:	f6 cf       	rjmp	.-20     	; 0x4b08 <_ZL15forwardGameFallv+0x46>
    4b1c:	cd 2b       	or	r28, r29
    4b1e:	b9 f4       	brne	.+46     	; 0x4b4e <_ZL15forwardGameFallv+0x8c>
    4b20:	80 91 72 01 	lds	r24, 0x0172	; 0x800172 <_ZL13obtainedScore>
    4b24:	90 91 73 01 	lds	r25, 0x0173	; 0x800173 <_ZL13obtainedScore+0x1>
    4b28:	a0 91 74 01 	lds	r26, 0x0174	; 0x800174 <_ZL13obtainedScore+0x2>
    4b2c:	b0 91 75 01 	lds	r27, 0x0175	; 0x800175 <_ZL13obtainedScore+0x3>
    4b30:	89 2b       	or	r24, r25
    4b32:	8a 2b       	or	r24, r26
    4b34:	8b 2b       	or	r24, r27
    4b36:	59 f0       	breq	.+22     	; 0x4b4e <_ZL15forwardGameFallv+0x8c>
    4b38:	10 92 72 01 	sts	0x0172, r1	; 0x800172 <_ZL13obtainedScore>
    4b3c:	10 92 73 01 	sts	0x0173, r1	; 0x800173 <_ZL13obtainedScore+0x1>
    4b40:	10 92 74 01 	sts	0x0174, r1	; 0x800174 <_ZL13obtainedScore+0x2>
    4b44:	10 92 75 01 	sts	0x0175, r1	; 0x800175 <_ZL13obtainedScore+0x3>
    4b48:	81 e0       	ldi	r24, 0x01	; 1
    4b4a:	80 93 76 02 	sts	0x0276, r24	; 0x800276 <isInvalid>
    4b4e:	df 91       	pop	r29
    4b50:	cf 91       	pop	r28
    4b52:	1f 91       	pop	r17
    4b54:	ff 90       	pop	r15
    4b56:	ef 90       	pop	r14
    4b58:	df 90       	pop	r13
    4b5a:	cf 90       	pop	r12
    4b5c:	bf 90       	pop	r11
    4b5e:	af 90       	pop	r10
    4b60:	9f 90       	pop	r9
    4b62:	8f 90       	pop	r8
    4b64:	08 95       	ret
    4b66:	29 e8       	ldi	r18, 0x89	; 137
    4b68:	31 e0       	ldi	r19, 0x01	; 1
    4b6a:	81 e0       	ldi	r24, 0x01	; 1
    4b6c:	90 e0       	ldi	r25, 0x00	; 0
    4b6e:	60 e0       	ldi	r22, 0x00	; 0
    4b70:	f9 01       	movw	r30, r18
    4b72:	50 e0       	ldi	r21, 0x00	; 0
    4b74:	40 e0       	ldi	r20, 0x00	; 0
    4b76:	c0 81       	ld	r28, Z
    4b78:	d1 81       	ldd	r29, Z+1	; 0x01
    4b7a:	20 97       	sbiw	r28, 0x00	; 0
    4b7c:	69 f0       	breq	.+26     	; 0x4b98 <_ZL15forwardGameFallv+0xd6>
    4b7e:	df 01       	movw	r26, r30
    4b80:	1c 97       	sbiw	r26, 0x0c	; 12
    4b82:	ed 90       	ld	r14, X+
    4b84:	fc 90       	ld	r15, X
    4b86:	11 97       	sbiw	r26, 0x01	; 1
    4b88:	98 2f       	mov	r25, r24
    4b8a:	ef 28       	or	r14, r15
    4b8c:	29 f4       	brne	.+10     	; 0x4b98 <_ZL15forwardGameFallv+0xd6>
    4b8e:	cd 93       	st	X+, r28
    4b90:	dc 93       	st	X, r29
    4b92:	11 82       	std	Z+1, r1	; 0x01
    4b94:	10 82       	st	Z, r1
    4b96:	61 e0       	ldi	r22, 0x01	; 1
    4b98:	4f 5f       	subi	r20, 0xFF	; 255
    4b9a:	5f 4f       	sbci	r21, 0xFF	; 255
    4b9c:	32 96       	adiw	r30, 0x02	; 2
    4b9e:	46 30       	cpi	r20, 0x06	; 6
    4ba0:	51 05       	cpc	r21, r1
    4ba2:	49 f7       	brne	.-46     	; 0x4b76 <_ZL15forwardGameFallv+0xb4>
    4ba4:	8f 5f       	subi	r24, 0xFF	; 255
    4ba6:	24 5f       	subi	r18, 0xF4	; 244
    4ba8:	3f 4f       	sbci	r19, 0xFF	; 255
    4baa:	8e 30       	cpi	r24, 0x0E	; 14
    4bac:	09 f7       	brne	.-62     	; 0x4b70 <_ZL15forwardGameFallv+0xae>
    4bae:	90 93 3f 01 	sts	0x013F, r25	; 0x80013f <_ZL9maxHeight>
    4bb2:	66 23       	and	r22, r22
    4bb4:	21 f0       	breq	.+8      	; 0x4bbe <_ZL15forwardGameFallv+0xfc>
    4bb6:	81 e0       	ldi	r24, 0x01	; 1
    4bb8:	80 93 42 01 	sts	0x0142, r24	; 0x800142 <_ZL13isFieldFalled>
    4bbc:	c6 cf       	rjmp	.-116    	; 0x4b4a <_ZL15forwardGameFallv+0x88>
    4bbe:	80 91 42 01 	lds	r24, 0x0142	; 0x800142 <_ZL13isFieldFalled>
    4bc2:	88 23       	and	r24, r24
    4bc4:	39 f0       	breq	.+14     	; 0x4bd4 <_ZL15forwardGameFallv+0x112>
    4bc6:	63 e0       	ldi	r22, 0x03	; 3
    4bc8:	8b e1       	ldi	r24, 0x1B	; 27
    4bca:	93 e0       	ldi	r25, 0x03	; 3
    4bcc:	0e 94 02 0f 	call	0x1e04	; 0x1e04 <_ZN10MyArduboyV10playScore2EPKhh.constprop.39>
    4bd0:	10 92 42 01 	sts	0x0142, r1	; 0x800142 <_ZL13isFieldFalled>
    4bd4:	10 91 27 02 	lds	r17, 0x0227	; 0x800227 <_ZL5ballX>
    4bd8:	ad e7       	ldi	r26, 0x7D	; 125
    4bda:	b1 e0       	ldi	r27, 0x01	; 1
    4bdc:	ee e0       	ldi	r30, 0x0E	; 14
    4bde:	70 e0       	ldi	r23, 0x00	; 0
    4be0:	60 e0       	ldi	r22, 0x00	; 0
    4be2:	90 e0       	ldi	r25, 0x00	; 0
    4be4:	80 e0       	ldi	r24, 0x00	; 0
    4be6:	c1 2c       	mov	r12, r1
    4be8:	d1 2c       	mov	r13, r1
    4bea:	76 01       	movw	r14, r12
    4bec:	c3 94       	inc	r12
    4bee:	f1 e0       	ldi	r31, 0x01	; 1
    4bf0:	30 e0       	ldi	r19, 0x00	; 0
    4bf2:	20 e0       	ldi	r18, 0x00	; 0
    4bf4:	b8 2e       	mov	r11, r24
    4bf6:	a9 01       	movw	r20, r18
    4bf8:	44 0f       	add	r20, r20
    4bfa:	55 1f       	adc	r21, r21
    4bfc:	4a 0f       	add	r20, r26
    4bfe:	5b 1f       	adc	r21, r27
    4c00:	ea 01       	movw	r28, r20
    4c02:	48 81       	ld	r20, Y
    4c04:	59 81       	ldd	r21, Y+1	; 0x01
    4c06:	41 30       	cpi	r20, 0x01	; 1
    4c08:	51 05       	cpc	r21, r1
    4c0a:	49 f0       	breq	.+18     	; 0x4c1e <_ZL15forwardGameFallv+0x15c>
    4c0c:	38 f0       	brcs	.+14     	; 0x4c1c <_ZL15forwardGameFallv+0x15a>
    4c0e:	43 50       	subi	r20, 0x03	; 3
    4c10:	51 09       	sbc	r21, r1
    4c12:	43 30       	cpi	r20, 0x03	; 3
    4c14:	51 05       	cpc	r21, r1
    4c16:	10 f4       	brcc	.+4      	; 0x4c1c <_ZL15forwardGameFallv+0x15a>
    4c18:	12 2f       	mov	r17, r18
    4c1a:	eb 2d       	mov	r30, r11
    4c1c:	f0 e0       	ldi	r31, 0x00	; 0
    4c1e:	2f 5f       	subi	r18, 0xFF	; 255
    4c20:	3f 4f       	sbci	r19, 0xFF	; 255
    4c22:	26 30       	cpi	r18, 0x06	; 6
    4c24:	31 05       	cpc	r19, r1
    4c26:	39 f7       	brne	.-50     	; 0x4bf6 <_ZL15forwardGameFallv+0x134>
    4c28:	ff 23       	and	r31, r31
    4c2a:	19 f1       	breq	.+70     	; 0x4c72 <_ZL15forwardGameFallv+0x1b0>
    4c2c:	46 01       	movw	r8, r12
    4c2e:	57 01       	movw	r10, r14
    4c30:	08 2e       	mov	r0, r24
    4c32:	04 c0       	rjmp	.+8      	; 0x4c3c <_ZL15forwardGameFallv+0x17a>
    4c34:	88 0c       	add	r8, r8
    4c36:	99 1c       	adc	r9, r9
    4c38:	aa 1c       	adc	r10, r10
    4c3a:	bb 1c       	adc	r11, r11
    4c3c:	0a 94       	dec	r0
    4c3e:	d2 f7       	brpl	.-12     	; 0x4c34 <_ZL15forwardGameFallv+0x172>
    4c40:	68 29       	or	r22, r8
    4c42:	79 29       	or	r23, r9
    4c44:	11 96       	adiw	r26, 0x01	; 1
    4c46:	1c 92       	st	X, r1
    4c48:	1e 92       	st	-X, r1
    4c4a:	13 96       	adiw	r26, 0x03	; 3
    4c4c:	1c 92       	st	X, r1
    4c4e:	1e 92       	st	-X, r1
    4c50:	12 97       	sbiw	r26, 0x02	; 2
    4c52:	15 96       	adiw	r26, 0x05	; 5
    4c54:	1c 92       	st	X, r1
    4c56:	1e 92       	st	-X, r1
    4c58:	14 97       	sbiw	r26, 0x04	; 4
    4c5a:	17 96       	adiw	r26, 0x07	; 7
    4c5c:	1c 92       	st	X, r1
    4c5e:	1e 92       	st	-X, r1
    4c60:	16 97       	sbiw	r26, 0x06	; 6
    4c62:	19 96       	adiw	r26, 0x09	; 9
    4c64:	1c 92       	st	X, r1
    4c66:	1e 92       	st	-X, r1
    4c68:	18 97       	sbiw	r26, 0x08	; 8
    4c6a:	1b 96       	adiw	r26, 0x0b	; 11
    4c6c:	1c 92       	st	X, r1
    4c6e:	1e 92       	st	-X, r1
    4c70:	1a 97       	sbiw	r26, 0x0a	; 10
    4c72:	01 96       	adiw	r24, 0x01	; 1
    4c74:	1c 96       	adiw	r26, 0x0c	; 12
    4c76:	8e 30       	cpi	r24, 0x0E	; 14
    4c78:	91 05       	cpc	r25, r1
    4c7a:	09 f0       	breq	.+2      	; 0x4c7e <_ZL15forwardGameFallv+0x1bc>
    4c7c:	b8 cf       	rjmp	.-144    	; 0x4bee <_ZL15forwardGameFallv+0x12c>
    4c7e:	10 93 27 02 	sts	0x0227, r17	; 0x800227 <_ZL5ballX>
    4c82:	e0 93 28 02 	sts	0x0228, r30	; 0x800228 <_ZL5ballY>
    4c86:	70 93 79 01 	sts	0x0179, r23	; 0x800179 <_ZL11filledLines+0x1>
    4c8a:	60 93 78 01 	sts	0x0178, r22	; 0x800178 <_ZL11filledLines>
    4c8e:	67 2b       	or	r22, r23
    4c90:	91 f0       	breq	.+36     	; 0x4cb6 <_ZL15forwardGameFallv+0x1f4>
    4c92:	62 e0       	ldi	r22, 0x02	; 2
    4c94:	81 e0       	ldi	r24, 0x01	; 1
    4c96:	93 e0       	ldi	r25, 0x03	; 3
    4c98:	0e 94 02 0f 	call	0x1e04	; 0x1e04 <_ZN10MyArduboyV10playScore2EPKhh.constprop.39>
    4c9c:	83 e0       	ldi	r24, 0x03	; 3
    4c9e:	90 e0       	ldi	r25, 0x00	; 0
    4ca0:	90 93 4d 01 	sts	0x014D, r25	; 0x80014d <_ZL8gameMode+0x1>
    4ca4:	80 93 4c 01 	sts	0x014C, r24	; 0x80014c <_ZL8gameMode>
    4ca8:	8e e1       	ldi	r24, 0x1E	; 30
    4caa:	90 e0       	ldi	r25, 0x00	; 0
    4cac:	90 93 77 01 	sts	0x0177, r25	; 0x800177 <_ZL11gameCounter+0x1>
    4cb0:	80 93 76 01 	sts	0x0176, r24	; 0x800176 <_ZL11gameCounter>
    4cb4:	4c cf       	rjmp	.-360    	; 0x4b4e <_ZL15forwardGameFallv+0x8c>
    4cb6:	ee 30       	cpi	r30, 0x0E	; 14
    4cb8:	79 f1       	breq	.+94     	; 0x4d18 <_ZL15forwardGameFallv+0x256>
    4cba:	d6 e0       	ldi	r29, 0x06	; 6
    4cbc:	ed 02       	muls	r30, r29
    4cbe:	f0 01       	movw	r30, r0
    4cc0:	11 24       	eor	r1, r1
    4cc2:	e1 0f       	add	r30, r17
    4cc4:	f1 1d       	adc	r31, r1
    4cc6:	17 fd       	sbrc	r17, 7
    4cc8:	fa 95       	dec	r31
    4cca:	ee 0f       	add	r30, r30
    4ccc:	ff 1f       	adc	r31, r31
    4cce:	e3 58       	subi	r30, 0x83	; 131
    4cd0:	fe 4f       	sbci	r31, 0xFE	; 254
    4cd2:	80 81       	ld	r24, Z
    4cd4:	91 81       	ldd	r25, Z+1	; 0x01
    4cd6:	85 30       	cpi	r24, 0x05	; 5
    4cd8:	91 05       	cpc	r25, r1
    4cda:	51 f4       	brne	.+20     	; 0x4cf0 <_ZL15forwardGameFallv+0x22e>
    4cdc:	90 93 4d 01 	sts	0x014D, r25	; 0x80014d <_ZL8gameMode+0x1>
    4ce0:	80 93 4c 01 	sts	0x014C, r24	; 0x80014c <_ZL8gameMode>
    4ce4:	10 92 26 02 	sts	0x0226, r1	; 0x800226 <_ZL5ballV>
    4ce8:	88 e3       	ldi	r24, 0x38	; 56
    4cea:	80 93 25 02 	sts	0x0225, r24	; 0x800225 <_ZL5ballG>
    4cee:	2f cf       	rjmp	.-418    	; 0x4b4e <_ZL15forwardGameFallv+0x8c>
    4cf0:	24 e0       	ldi	r18, 0x04	; 4
    4cf2:	30 e0       	ldi	r19, 0x00	; 0
    4cf4:	30 93 4d 01 	sts	0x014D, r19	; 0x80014d <_ZL8gameMode+0x1>
    4cf8:	20 93 4c 01 	sts	0x014C, r18	; 0x80014c <_ZL8gameMode>
    4cfc:	03 97       	sbiw	r24, 0x03	; 3
    4cfe:	51 f4       	brne	.+20     	; 0x4d14 <_ZL15forwardGameFallv+0x252>
    4d00:	8f ef       	ldi	r24, 0xFF	; 255
    4d02:	80 93 26 02 	sts	0x0226, r24	; 0x800226 <_ZL5ballV>
    4d06:	10 92 25 02 	sts	0x0225, r1	; 0x800225 <_ZL5ballG>
    4d0a:	10 92 7c 01 	sts	0x017C, r1	; 0x80017c <_ZL5ballE>
    4d0e:	10 92 7b 01 	sts	0x017B, r1	; 0x80017b <_ZL5lastX>
    4d12:	1d cf       	rjmp	.-454    	; 0x4b4e <_ZL15forwardGameFallv+0x8c>
    4d14:	81 e0       	ldi	r24, 0x01	; 1
    4d16:	f5 cf       	rjmp	.-22     	; 0x4d02 <_ZL15forwardGameFallv+0x240>
    4d18:	80 91 11 02 	lds	r24, 0x0211	; 0x800211 <_ZL5field+0x94>
    4d1c:	90 91 12 02 	lds	r25, 0x0212	; 0x800212 <_ZL5field+0x95>
    4d20:	89 2b       	or	r24, r25
    4d22:	99 f5       	brne	.+102    	; 0x4d8a <_ZL15forwardGameFallv+0x2c8>
    4d24:	80 91 50 01 	lds	r24, 0x0150	; 0x800150 <_ZL9nextBunch+0x2>
    4d28:	90 91 51 01 	lds	r25, 0x0151	; 0x800151 <_ZL9nextBunch+0x3>
    4d2c:	89 2b       	or	r24, r25
    4d2e:	31 f0       	breq	.+12     	; 0x4d3c <_ZL15forwardGameFallv+0x27a>
    4d30:	80 91 13 02 	lds	r24, 0x0213	; 0x800213 <_ZL5field+0x96>
    4d34:	90 91 14 02 	lds	r25, 0x0214	; 0x800214 <_ZL5field+0x97>
    4d38:	89 2b       	or	r24, r25
    4d3a:	39 f5       	brne	.+78     	; 0x4d8a <_ZL15forwardGameFallv+0x2c8>
    4d3c:	80 91 41 01 	lds	r24, 0x0141	; 0x800141 <_ZL10bunchCount>
    4d40:	8f 5f       	subi	r24, 0xFF	; 255
    4d42:	80 93 41 01 	sts	0x0141, r24	; 0x800141 <_ZL10bunchCount>
    4d46:	8f 30       	cpi	r24, 0x0F	; 15
    4d48:	b0 f0       	brcs	.+44     	; 0x4d76 <_ZL15forwardGameFallv+0x2b4>
    4d4a:	c0 91 55 01 	lds	r28, 0x0155	; 0x800155 <_ZL5level>
    4d4e:	c3 36       	cpi	r28, 0x63	; 99
    4d50:	90 f4       	brcc	.+36     	; 0x4d76 <_ZL15forwardGameFallv+0x2b4>
    4d52:	cf 5f       	subi	r28, 0xFF	; 255
    4d54:	c0 93 55 01 	sts	0x0155, r28	; 0x800155 <_ZL5level>
    4d58:	10 92 41 01 	sts	0x0141, r1	; 0x800141 <_ZL10bunchCount>
    4d5c:	0e 94 ff 15 	call	0x2bfe	; 0x2bfe <_ZL14tuneParametersv>
    4d60:	8c 2f       	mov	r24, r28
    4d62:	65 e0       	ldi	r22, 0x05	; 5
    4d64:	0e 94 8d 2f 	call	0x5f1a	; 0x5f1a <__udivmodqi4>
    4d68:	91 11       	cpse	r25, r1
    4d6a:	0c c0       	rjmp	.+24     	; 0x4d84 <_ZL15forwardGameFallv+0x2c2>
    4d6c:	8e ed       	ldi	r24, 0xDE	; 222
    4d6e:	92 e0       	ldi	r25, 0x02	; 2
    4d70:	62 e0       	ldi	r22, 0x02	; 2
    4d72:	0e 94 02 0f 	call	0x1e04	; 0x1e04 <_ZN10MyArduboyV10playScore2EPKhh.constprop.39>
    4d76:	10 92 4d 01 	sts	0x014D, r1	; 0x80014d <_ZL8gameMode+0x1>
    4d7a:	10 92 4c 01 	sts	0x014C, r1	; 0x80014c <_ZL8gameMode>
    4d7e:	84 e1       	ldi	r24, 0x14	; 20
    4d80:	90 e0       	ldi	r25, 0x00	; 0
    4d82:	94 cf       	rjmp	.-216    	; 0x4cac <_ZL15forwardGameFallv+0x1ea>
    4d84:	81 ed       	ldi	r24, 0xD1	; 209
    4d86:	92 e0       	ldi	r25, 0x02	; 2
    4d88:	f3 cf       	rjmp	.-26     	; 0x4d70 <_ZL15forwardGameFallv+0x2ae>
    4d8a:	a0 91 55 01 	lds	r26, 0x0155	; 0x800155 <_ZL5level>
    4d8e:	40 91 45 01 	lds	r20, 0x0145	; 0x800145 <_ZL5score>
    4d92:	50 91 46 01 	lds	r21, 0x0146	; 0x800146 <_ZL5score+0x1>
    4d96:	60 91 47 01 	lds	r22, 0x0147	; 0x800147 <_ZL5score+0x2>
    4d9a:	70 91 48 01 	lds	r23, 0x0148	; 0x800148 <_ZL5score+0x3>
    4d9e:	e7 e5       	ldi	r30, 0x57	; 87
    4da0:	f2 e0       	ldi	r31, 0x02	; 2
    4da2:	85 e0       	ldi	r24, 0x05	; 5
    4da4:	90 e0       	ldi	r25, 0x00	; 0
    4da6:	9c 01       	movw	r18, r24
    4da8:	21 50       	subi	r18, 0x01	; 1
    4daa:	31 09       	sbc	r19, r1
    4dac:	80 88       	ldd	r8, Z+16	; 0x10
    4dae:	91 88       	ldd	r9, Z+17	; 0x11
    4db0:	a2 88       	ldd	r10, Z+18	; 0x12
    4db2:	b3 88       	ldd	r11, Z+19	; 0x13
    4db4:	c0 88       	ldd	r12, Z+16	; 0x10
    4db6:	d1 88       	ldd	r13, Z+17	; 0x11
    4db8:	e2 88       	ldd	r14, Z+18	; 0x12
    4dba:	f1 2c       	mov	r15, r1
    4dbc:	c4 16       	cp	r12, r20
    4dbe:	d5 06       	cpc	r13, r21
    4dc0:	e6 06       	cpc	r14, r22
    4dc2:	f7 06       	cpc	r15, r23
    4dc4:	80 f4       	brcc	.+32     	; 0x4de6 <_ZL15forwardGameFallv+0x324>
    4dc6:	24 30       	cpi	r18, 0x04	; 4
    4dc8:	31 05       	cpc	r19, r1
    4dca:	51 f0       	breq	.+20     	; 0x4de0 <_ZL15forwardGameFallv+0x31e>
    4dcc:	84 8a       	std	Z+20, r8	; 0x14
    4dce:	95 8a       	std	Z+21, r9	; 0x15
    4dd0:	a6 8a       	std	Z+22, r10	; 0x16
    4dd2:	b7 8a       	std	Z+23, r11	; 0x17
    4dd4:	21 15       	cp	r18, r1
    4dd6:	31 05       	cpc	r19, r1
    4dd8:	19 f4       	brne	.+6      	; 0x4de0 <_ZL15forwardGameFallv+0x31e>
    4dda:	90 e0       	ldi	r25, 0x00	; 0
    4ddc:	80 e0       	ldi	r24, 0x00	; 0
    4dde:	06 c0       	rjmp	.+12     	; 0x4dec <_ZL15forwardGameFallv+0x32a>
    4de0:	34 97       	sbiw	r30, 0x04	; 4
    4de2:	c9 01       	movw	r24, r18
    4de4:	e0 cf       	rjmp	.-64     	; 0x4da6 <_ZL15forwardGameFallv+0x2e4>
    4de6:	85 30       	cpi	r24, 0x05	; 5
    4de8:	91 05       	cpc	r25, r1
    4dea:	59 f0       	breq	.+22     	; 0x4e02 <_ZL15forwardGameFallv+0x340>
    4dec:	fc 01       	movw	r30, r24
    4dee:	ee 0f       	add	r30, r30
    4df0:	ff 1f       	adc	r31, r31
    4df2:	ee 0f       	add	r30, r30
    4df4:	ff 1f       	adc	r31, r31
    4df6:	e9 5a       	subi	r30, 0xA9	; 169
    4df8:	fd 4f       	sbci	r31, 0xFD	; 253
    4dfa:	40 83       	st	Z, r20
    4dfc:	51 83       	std	Z+1, r21	; 0x01
    4dfe:	62 83       	std	Z+2, r22	; 0x02
    4e00:	a3 83       	std	Z+3, r26	; 0x03
    4e02:	40 93 53 02 	sts	0x0253, r20	; 0x800253 <lastScore>
    4e06:	50 93 54 02 	sts	0x0254, r21	; 0x800254 <lastScore+0x1>
    4e0a:	60 93 55 02 	sts	0x0255, r22	; 0x800255 <lastScore+0x2>
    4e0e:	70 93 56 02 	sts	0x0256, r23	; 0x800256 <lastScore+0x3>
    4e12:	21 e0       	ldi	r18, 0x01	; 1
    4e14:	89 2b       	or	r24, r25
    4e16:	09 f0       	breq	.+2      	; 0x4e1a <_ZL15forwardGameFallv+0x358>
    4e18:	20 e0       	ldi	r18, 0x00	; 0
    4e1a:	20 93 40 01 	sts	0x0140, r18	; 0x800140 <_ZL9isHiscore>
    4e1e:	80 91 47 02 	lds	r24, 0x0247	; 0x800247 <isRecordDirty>
    4e22:	81 11       	cpse	r24, r1
    4e24:	0e 94 04 24 	call	0x4808	; 0x4808 <_Z11writeRecordv.part.1>
    4e28:	88 e5       	ldi	r24, 0x58	; 88
    4e2a:	92 e0       	ldi	r25, 0x02	; 2
    4e2c:	90 93 77 01 	sts	0x0177, r25	; 0x800177 <_ZL11gameCounter+0x1>
    4e30:	80 93 76 01 	sts	0x0176, r24	; 0x800176 <_ZL11gameCounter>
    4e34:	84 e0       	ldi	r24, 0x04	; 4
    4e36:	90 e0       	ldi	r25, 0x00	; 0
    4e38:	90 93 5c 01 	sts	0x015C, r25	; 0x80015c <_ZL5state.lto_priv.67+0x1>
    4e3c:	80 93 5b 01 	sts	0x015B, r24	; 0x80015b <_ZL5state.lto_priv.67>
    4e40:	81 e0       	ldi	r24, 0x01	; 1
    4e42:	80 93 76 02 	sts	0x0276, r24	; 0x800276 <isInvalid>
    4e46:	61 e0       	ldi	r22, 0x01	; 1
    4e48:	8f ea       	ldi	r24, 0xAF	; 175
    4e4a:	92 e0       	ldi	r25, 0x02	; 2
    4e4c:	df 91       	pop	r29
    4e4e:	cf 91       	pop	r28
    4e50:	1f 91       	pop	r17
    4e52:	ff 90       	pop	r15
    4e54:	ef 90       	pop	r14
    4e56:	df 90       	pop	r13
    4e58:	cf 90       	pop	r12
    4e5a:	bf 90       	pop	r11
    4e5c:	af 90       	pop	r10
    4e5e:	9f 90       	pop	r9
    4e60:	8f 90       	pop	r8
    4e62:	0c 94 02 0f 	jmp	0x1e04	; 0x1e04 <_ZN10MyArduboyV10playScore2EPKhh.constprop.39>

00004e66 <__vector_10>:
#endif
}

//	General interrupt
ISR(USB_GEN_vect)
{
    4e66:	1f 92       	push	r1
    4e68:	0f 92       	push	r0
    4e6a:	0f b6       	in	r0, 0x3f	; 63
    4e6c:	0f 92       	push	r0
    4e6e:	11 24       	eor	r1, r1
    4e70:	8f 93       	push	r24
    4e72:	9f 93       	push	r25
	u8 udint = UDINT;
    4e74:	80 91 e1 00 	lds	r24, 0x00E1	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
	UDINT &= ~((1<<EORSTI) | (1<<SOFI)); // clear the IRQ flags for the IRQs which are handled here, except WAKEUPI and SUSPI (see below)
    4e78:	90 91 e1 00 	lds	r25, 0x00E1	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
    4e7c:	93 7f       	andi	r25, 0xF3	; 243
    4e7e:	90 93 e1 00 	sts	0x00E1, r25	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>

	//	End of Reset
	if (udint & (1<<EORSTI))
    4e82:	83 ff       	sbrs	r24, 3
    4e84:	0f c0       	rjmp	.+30     	; 0x4ea4 <__vector_10+0x3e>
#define EP_SINGLE_16 0x12

static
void InitEP(u8 index, u8 type, u8 size)
{
	UENUM = index;
    4e86:	10 92 e9 00 	sts	0x00E9, r1	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
	UECONX = (1<<EPEN);
    4e8a:	91 e0       	ldi	r25, 0x01	; 1
    4e8c:	90 93 eb 00 	sts	0x00EB, r25	; 0x8000eb <__DATA_REGION_ORIGIN__+0x8b>
	UECFG0X = type;
    4e90:	10 92 ec 00 	sts	0x00EC, r1	; 0x8000ec <__DATA_REGION_ORIGIN__+0x8c>
	UECFG1X = size;
    4e94:	92 e3       	ldi	r25, 0x32	; 50
    4e96:	90 93 ed 00 	sts	0x00ED, r25	; 0x8000ed <__DATA_REGION_ORIGIN__+0x8d>

	//	End of Reset
	if (udint & (1<<EORSTI))
	{
		InitEP(0,EP_TYPE_CONTROL,EP_SINGLE_64);	// init ep0
		_usbConfiguration = 0;			// not configured yet
    4e9a:	10 92 b2 02 	sts	0x02B2, r1	; 0x8002b2 <_usbConfiguration>
		UEIENX = 1 << RXSTPE;			// Enable interrupts for ep0
    4e9e:	98 e0       	ldi	r25, 0x08	; 8
    4ea0:	90 93 f0 00 	sts	0x00F0, r25	; 0x8000f0 <__DATA_REGION_ORIGIN__+0x90>
	}

	//	Start of Frame - happens every millisecond so we use it for TX and RX LED one-shot timing, too
	if (udint & (1<<SOFI))
    4ea4:	82 ff       	sbrs	r24, 2
    4ea6:	22 c0       	rjmp	.+68     	; 0x4eec <__vector_10+0x86>
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    4ea8:	93 e0       	ldi	r25, 0x03	; 3
    4eaa:	90 93 e9 00 	sts	0x00E9, r25	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
}

static inline u8 FifoByteCount()
{
	return UEBCLX;
    4eae:	90 91 f2 00 	lds	r25, 0x00F2	; 0x8000f2 <__DATA_REGION_ORIGIN__+0x92>
}

void USB_Flush(u8 ep)
{
	SetEP(ep);
	if (FifoByteCount())
    4eb2:	99 23       	and	r25, r25
    4eb4:	19 f0       	breq	.+6      	; 0x4ebc <__vector_10+0x56>
	UEINTX = 0x6B;	// FIFOCON=0 NAKINI=1 RWAL=1 NAKOUTI=0 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=1
}

static inline void ReleaseTX()
{
	UEINTX = 0x3A;	// FIFOCON=0 NAKINI=0 RWAL=1 NAKOUTI=1 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=0
    4eb6:	9a e3       	ldi	r25, 0x3A	; 58
    4eb8:	90 93 e8 00 	sts	0x00E8, r25	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
	if (udint & (1<<SOFI))
	{
		USB_Flush(CDC_TX);				// Send a tx frame if found
		
		// check whether the one-shot period has elapsed.  if so, turn off the LED
		if (TxLEDPulse && !(--TxLEDPulse))
    4ebc:	90 91 a3 02 	lds	r25, 0x02A3	; 0x8002a3 <TxLEDPulse>
    4ec0:	99 23       	and	r25, r25
    4ec2:	41 f0       	breq	.+16     	; 0x4ed4 <__vector_10+0x6e>
    4ec4:	90 91 a3 02 	lds	r25, 0x02A3	; 0x8002a3 <TxLEDPulse>
    4ec8:	91 50       	subi	r25, 0x01	; 1
    4eca:	90 93 a3 02 	sts	0x02A3, r25	; 0x8002a3 <TxLEDPulse>
    4ece:	91 11       	cpse	r25, r1
    4ed0:	01 c0       	rjmp	.+2      	; 0x4ed4 <__vector_10+0x6e>
			TXLED0;
    4ed2:	5d 9a       	sbi	0x0b, 5	; 11
		if (RxLEDPulse && !(--RxLEDPulse))
    4ed4:	90 91 b1 02 	lds	r25, 0x02B1	; 0x8002b1 <RxLEDPulse>
    4ed8:	99 23       	and	r25, r25
    4eda:	41 f0       	breq	.+16     	; 0x4eec <__vector_10+0x86>
    4edc:	90 91 b1 02 	lds	r25, 0x02B1	; 0x8002b1 <RxLEDPulse>
    4ee0:	91 50       	subi	r25, 0x01	; 1
    4ee2:	90 93 b1 02 	sts	0x02B1, r25	; 0x8002b1 <RxLEDPulse>
    4ee6:	91 11       	cpse	r25, r1
    4ee8:	01 c0       	rjmp	.+2      	; 0x4eec <__vector_10+0x86>
			RXLED0;
    4eea:	28 9a       	sbi	0x05, 0	; 5
	}

	// the WAKEUPI interrupt is triggered as soon as there are non-idle patterns on the data
	// lines. Thus, the WAKEUPI interrupt can occur even if the controller is not in the "suspend" mode.
	// Therefore the we enable it only when USB is suspended
	if (udint & (1<<WAKEUPI))
    4eec:	84 ff       	sbrs	r24, 4
    4eee:	18 c0       	rjmp	.+48     	; 0x4f20 <__vector_10+0xba>
	{
		UDIEN = (UDIEN & ~(1<<WAKEUPE)) | (1<<SUSPE); // Disable interrupts for WAKEUP and enable interrupts for SUSPEND
    4ef0:	80 91 e2 00 	lds	r24, 0x00E2	; 0x8000e2 <__DATA_REGION_ORIGIN__+0x82>
    4ef4:	8e 7e       	andi	r24, 0xEE	; 238
    4ef6:	81 60       	ori	r24, 0x01	; 1
    4ef8:	80 93 e2 00 	sts	0x00E2, r24	; 0x8000e2 <__DATA_REGION_ORIGIN__+0x82>

		//TODO
		// WAKEUPI shall be cleared by software (USB clock inputs must be enabled before).
		//USB_ClockEnable();
		UDINT &= ~(1<<WAKEUPI);
    4efc:	80 91 e1 00 	lds	r24, 0x00E1	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
    4f00:	8f 7e       	andi	r24, 0xEF	; 239
    4f02:	80 93 e1 00 	sts	0x00E1, r24	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
		_usbSuspendState = (_usbSuspendState & ~(1<<SUSPI)) | (1<<WAKEUPI);
    4f06:	80 91 a4 02 	lds	r24, 0x02A4	; 0x8002a4 <_usbSuspendState>
    4f0a:	8e 7e       	andi	r24, 0xEE	; 238
    4f0c:	80 61       	ori	r24, 0x10	; 16

		//TODO
		//USB_ClockDisable();

		UDINT &= ~((1<<WAKEUPI) | (1<<SUSPI)); // clear any already pending WAKEUP IRQs and the SUSPI request
		_usbSuspendState = (_usbSuspendState & ~(1<<WAKEUPI)) | (1<<SUSPI);
    4f0e:	80 93 a4 02 	sts	0x02A4, r24	; 0x8002a4 <_usbSuspendState>
	}
}
    4f12:	9f 91       	pop	r25
    4f14:	8f 91       	pop	r24
    4f16:	0f 90       	pop	r0
    4f18:	0f be       	out	0x3f, r0	; 63
    4f1a:	0f 90       	pop	r0
    4f1c:	1f 90       	pop	r1
    4f1e:	18 95       	reti
		// WAKEUPI shall be cleared by software (USB clock inputs must be enabled before).
		//USB_ClockEnable();
		UDINT &= ~(1<<WAKEUPI);
		_usbSuspendState = (_usbSuspendState & ~(1<<SUSPI)) | (1<<WAKEUPI);
	}
	else if (udint & (1<<SUSPI)) // only one of the WAKEUPI / SUSPI bits can be active at time
    4f20:	80 ff       	sbrs	r24, 0
    4f22:	f7 cf       	rjmp	.-18     	; 0x4f12 <__vector_10+0xac>
	{
		UDIEN = (UDIEN & ~(1<<SUSPE)) | (1<<WAKEUPE); // Disable interrupts for SUSPEND and enable interrupts for WAKEUP
    4f24:	80 91 e2 00 	lds	r24, 0x00E2	; 0x8000e2 <__DATA_REGION_ORIGIN__+0x82>
    4f28:	8e 7e       	andi	r24, 0xEE	; 238
    4f2a:	80 61       	ori	r24, 0x10	; 16
    4f2c:	80 93 e2 00 	sts	0x00E2, r24	; 0x8000e2 <__DATA_REGION_ORIGIN__+0x82>

		//TODO
		//USB_ClockDisable();

		UDINT &= ~((1<<WAKEUPI) | (1<<SUSPI)); // clear any already pending WAKEUP IRQs and the SUSPI request
    4f30:	80 91 e1 00 	lds	r24, 0x00E1	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
    4f34:	8e 7e       	andi	r24, 0xEE	; 238
    4f36:	80 93 e1 00 	sts	0x00E1, r24	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
		_usbSuspendState = (_usbSuspendState & ~(1<<WAKEUPI)) | (1<<SUSPI);
    4f3a:	80 91 a4 02 	lds	r24, 0x02A4	; 0x8002a4 <_usbSuspendState>
    4f3e:	8e 7e       	andi	r24, 0xEE	; 238
    4f40:	81 60       	ori	r24, 0x01	; 1
    4f42:	e5 cf       	rjmp	.-54     	; 0x4f0e <__vector_10+0xa8>

00004f44 <__vector_11>:
	return true;
}

//	Endpoint 0 interrupt
ISR(USB_COM_vect)
{
    4f44:	1f 92       	push	r1
    4f46:	0f 92       	push	r0
    4f48:	0f b6       	in	r0, 0x3f	; 63
    4f4a:	0f 92       	push	r0
    4f4c:	11 24       	eor	r1, r1
    4f4e:	cf 92       	push	r12
    4f50:	df 92       	push	r13
    4f52:	ef 92       	push	r14
    4f54:	ff 92       	push	r15
    4f56:	0f 93       	push	r16
    4f58:	1f 93       	push	r17
    4f5a:	2f 93       	push	r18
    4f5c:	3f 93       	push	r19
    4f5e:	4f 93       	push	r20
    4f60:	5f 93       	push	r21
    4f62:	6f 93       	push	r22
    4f64:	7f 93       	push	r23
    4f66:	8f 93       	push	r24
    4f68:	9f 93       	push	r25
    4f6a:	af 93       	push	r26
    4f6c:	bf 93       	push	r27
    4f6e:	ef 93       	push	r30
    4f70:	ff 93       	push	r31
    4f72:	cf 93       	push	r28
    4f74:	df 93       	push	r29
    4f76:	cd b7       	in	r28, 0x3d	; 61
    4f78:	de b7       	in	r29, 0x3e	; 62
    4f7a:	6c 97       	sbiw	r28, 0x1c	; 28
    4f7c:	de bf       	out	0x3e, r29	; 62
    4f7e:	cd bf       	out	0x3d, r28	; 61
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    4f80:	10 92 e9 00 	sts	0x00E9, r1	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
	return UEBCLX;
}

static inline u8 ReceivedSetupInt()
{
	return UEINTX & (1<<RXSTPI);
    4f84:	80 91 e8 00 	lds	r24, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>

//	Endpoint 0 interrupt
ISR(USB_COM_vect)
{
    SetEP(0);
	if (!ReceivedSetupInt())
    4f88:	83 ff       	sbrs	r24, 3
    4f8a:	25 c0       	rjmp	.+74     	; 0x4fd6 <__vector_11+0x92>
		return;

	USBSetup setup;
	Recv((u8*)&setup,8);
    4f8c:	68 e0       	ldi	r22, 0x08	; 8
    4f8e:	ce 01       	movw	r24, r28
    4f90:	45 96       	adiw	r24, 0x15	; 21
    4f92:	0e 94 26 0b 	call	0x164c	; 0x164c <_ZL4RecvPVhh>
	return UEINTX & (1<<RXSTPI);
}

static inline void ClearSetupInt()
{
	UEINTX = ~((1<<RXSTPI) | (1<<RXOUTI) | (1<<TXINI));
    4f96:	82 ef       	ldi	r24, 0xF2	; 242
    4f98:	80 93 e8 00 	sts	0x00E8, r24	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>

	USBSetup setup;
	Recv((u8*)&setup,8);
	ClearSetupInt();

	u8 requestType = setup.bmRequestType;
    4f9c:	8d 89       	ldd	r24, Y+21	; 0x15
	if (requestType & REQUEST_DEVICETOHOST)
    4f9e:	87 ff       	sbrs	r24, 7
    4fa0:	39 c0       	rjmp	.+114    	; 0x5014 <__vector_11+0xd0>
volatile u8 _usbCurrentStatus = 0; // meaning of bits see usb_20.pdf, Figure 9-4. Information Returned by a GetStatus() Request to a Device
volatile u8 _usbSuspendState = 0; // copy of UDINT to check SUSPI and WAKEUPI bits

static inline void WaitIN(void)
{
	while (!(UEINTX & (1<<TXINI)))
    4fa2:	90 91 e8 00 	lds	r25, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
    4fa6:	90 ff       	sbrs	r25, 0
    4fa8:	fc cf       	rjmp	.-8      	; 0x4fa2 <__vector_11+0x5e>
		WaitIN();
	else
		ClearIN();

    bool ok = true;
	if (REQUEST_STANDARD == (requestType & REQUEST_TYPE))
    4faa:	98 2f       	mov	r25, r24
    4fac:	90 76       	andi	r25, 0x60	; 96
    4fae:	09 f0       	breq	.+2      	; 0x4fb2 <__vector_11+0x6e>
    4fb0:	34 c1       	rjmp	.+616    	; 0x521a <__vector_11+0x2d6>
	{
		//	Standard Requests
		u8 r = setup.bRequest;
    4fb2:	9e 89       	ldd	r25, Y+22	; 0x16
    4fb4:	4f 89       	ldd	r20, Y+23	; 0x17
    4fb6:	58 8d       	ldd	r21, Y+24	; 0x18
		u16 wValue = setup.wValueL | (setup.wValueH << 8);
    4fb8:	2f 89       	ldd	r18, Y+23	; 0x17
    4fba:	f8 8c       	ldd	r15, Y+24	; 0x18
		if (GET_STATUS == r)
    4fbc:	91 11       	cpse	r25, r1
    4fbe:	31 c0       	rjmp	.+98     	; 0x5022 <__vector_11+0xde>
		{
			if (requestType == (REQUEST_DEVICETOHOST | REQUEST_STANDARD | REQUEST_DEVICE))
    4fc0:	80 38       	cpi	r24, 0x80	; 128
    4fc2:	61 f5       	brne	.+88     	; 0x501c <__vector_11+0xd8>
			{
				Send8(_usbCurrentStatus);
    4fc4:	80 91 a2 02 	lds	r24, 0x02A2	; 0x8002a2 <_usbCurrentStatus>
	return UEDATX;	
}

static inline void Send8(u8 d)
{
	UEDATX = d;
    4fc8:	80 93 f1 00 	sts	0x00F1, r24	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
    4fcc:	10 92 f1 00 	sts	0x00F1, r1	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
		;
}

static inline void ClearIN(void)
{
	UEINTX = ~(1<<TXINI);
    4fd0:	8e ef       	ldi	r24, 0xFE	; 254
    4fd2:	80 93 e8 00 	sts	0x00E8, r24	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
		ClearIN();
	else
	{
		Stall();
	}
}
    4fd6:	6c 96       	adiw	r28, 0x1c	; 28
    4fd8:	0f b6       	in	r0, 0x3f	; 63
    4fda:	f8 94       	cli
    4fdc:	de bf       	out	0x3e, r29	; 62
    4fde:	0f be       	out	0x3f, r0	; 63
    4fe0:	cd bf       	out	0x3d, r28	; 61
    4fe2:	df 91       	pop	r29
    4fe4:	cf 91       	pop	r28
    4fe6:	ff 91       	pop	r31
    4fe8:	ef 91       	pop	r30
    4fea:	bf 91       	pop	r27
    4fec:	af 91       	pop	r26
    4fee:	9f 91       	pop	r25
    4ff0:	8f 91       	pop	r24
    4ff2:	7f 91       	pop	r23
    4ff4:	6f 91       	pop	r22
    4ff6:	5f 91       	pop	r21
    4ff8:	4f 91       	pop	r20
    4ffa:	3f 91       	pop	r19
    4ffc:	2f 91       	pop	r18
    4ffe:	1f 91       	pop	r17
    5000:	0f 91       	pop	r16
    5002:	ff 90       	pop	r15
    5004:	ef 90       	pop	r14
    5006:	df 90       	pop	r13
    5008:	cf 90       	pop	r12
    500a:	0f 90       	pop	r0
    500c:	0f be       	out	0x3f, r0	; 63
    500e:	0f 90       	pop	r0
    5010:	1f 90       	pop	r1
    5012:	18 95       	reti
		;
}

static inline void ClearIN(void)
{
	UEINTX = ~(1<<TXINI);
    5014:	9e ef       	ldi	r25, 0xFE	; 254
    5016:	90 93 e8 00 	sts	0x00E8, r25	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
    501a:	c7 cf       	rjmp	.-114    	; 0x4faa <__vector_11+0x66>
	return UEDATX;	
}

static inline void Send8(u8 d)
{
	UEDATX = d;
    501c:	10 92 f1 00 	sts	0x00F1, r1	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
    5020:	d5 cf       	rjmp	.-86     	; 0x4fcc <__vector_11+0x88>
				// see "Figure 9-6. Information Returned by a GetStatus() Request to an Endpoint" in usb_20.pdf for more information
				Send8(0);
				Send8(0);
			}
		}
		else if (CLEAR_FEATURE == r)
    5022:	91 30       	cpi	r25, 0x01	; 1
    5024:	59 f4       	brne	.+22     	; 0x503c <__vector_11+0xf8>
		{
			if((requestType == (REQUEST_HOSTTODEVICE | REQUEST_STANDARD | REQUEST_DEVICE))
    5026:	81 11       	cpse	r24, r1
    5028:	d3 cf       	rjmp	.-90     	; 0x4fd0 <__vector_11+0x8c>
				&& (wValue == DEVICE_REMOTE_WAKEUP))
    502a:	41 30       	cpi	r20, 0x01	; 1
    502c:	51 05       	cpc	r21, r1
    502e:	81 f6       	brne	.-96     	; 0x4fd0 <__vector_11+0x8c>
			{
				_usbCurrentStatus &= ~FEATURE_REMOTE_WAKEUP_ENABLED;
    5030:	80 91 a2 02 	lds	r24, 0x02A2	; 0x8002a2 <_usbCurrentStatus>
    5034:	8d 7f       	andi	r24, 0xFD	; 253
		else if (SET_FEATURE == r)
		{
			if((requestType == (REQUEST_HOSTTODEVICE | REQUEST_STANDARD | REQUEST_DEVICE))
				&& (wValue == DEVICE_REMOTE_WAKEUP))
			{
				_usbCurrentStatus |= FEATURE_REMOTE_WAKEUP_ENABLED;
    5036:	80 93 a2 02 	sts	0x02A2, r24	; 0x8002a2 <_usbCurrentStatus>
    503a:	ca cf       	rjmp	.-108    	; 0x4fd0 <__vector_11+0x8c>
				&& (wValue == DEVICE_REMOTE_WAKEUP))
			{
				_usbCurrentStatus &= ~FEATURE_REMOTE_WAKEUP_ENABLED;
			}
		}
		else if (SET_FEATURE == r)
    503c:	93 30       	cpi	r25, 0x03	; 3
    503e:	49 f4       	brne	.+18     	; 0x5052 <__vector_11+0x10e>
		{
			if((requestType == (REQUEST_HOSTTODEVICE | REQUEST_STANDARD | REQUEST_DEVICE))
    5040:	81 11       	cpse	r24, r1
    5042:	c6 cf       	rjmp	.-116    	; 0x4fd0 <__vector_11+0x8c>
				&& (wValue == DEVICE_REMOTE_WAKEUP))
    5044:	41 30       	cpi	r20, 0x01	; 1
    5046:	51 05       	cpc	r21, r1
    5048:	19 f6       	brne	.-122    	; 0x4fd0 <__vector_11+0x8c>
			{
				_usbCurrentStatus |= FEATURE_REMOTE_WAKEUP_ENABLED;
    504a:	80 91 a2 02 	lds	r24, 0x02A2	; 0x8002a2 <_usbCurrentStatus>
    504e:	82 60       	ori	r24, 0x02	; 2
    5050:	f2 cf       	rjmp	.-28     	; 0x5036 <__vector_11+0xf2>
			}
		}
		else if (SET_ADDRESS == r)
    5052:	95 30       	cpi	r25, 0x05	; 5
    5054:	41 f4       	brne	.+16     	; 0x5066 <__vector_11+0x122>
volatile u8 _usbCurrentStatus = 0; // meaning of bits see usb_20.pdf, Figure 9-4. Information Returned by a GetStatus() Request to a Device
volatile u8 _usbSuspendState = 0; // copy of UDINT to check SUSPI and WAKEUPI bits

static inline void WaitIN(void)
{
	while (!(UEINTX & (1<<TXINI)))
    5056:	80 91 e8 00 	lds	r24, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
    505a:	80 ff       	sbrs	r24, 0
    505c:	fc cf       	rjmp	.-8      	; 0x5056 <__vector_11+0x112>
			}
		}
		else if (SET_ADDRESS == r)
		{
			WaitIN();
			UDADDR = setup.wValueL | (1<<ADDEN);
    505e:	20 68       	ori	r18, 0x80	; 128
    5060:	20 93 e3 00 	sts	0x00E3, r18	; 0x8000e3 <__DATA_REGION_ORIGIN__+0x83>
    5064:	b5 cf       	rjmp	.-150    	; 0x4fd0 <__vector_11+0x8c>
		}
		else if (GET_DESCRIPTOR == r)
    5066:	96 30       	cpi	r25, 0x06	; 6
    5068:	09 f0       	breq	.+2      	; 0x506c <__vector_11+0x128>
    506a:	a9 c0       	rjmp	.+338    	; 0x51be <__vector_11+0x27a>
    506c:	0b 8d       	ldd	r16, Y+27	; 0x1b
    506e:	1c 8d       	ldd	r17, Y+28	; 0x1c

static
bool SendDescriptor(USBSetup& setup)
{
	u8 t = setup.wValueH;
	if (USB_CONFIGURATION_DESCRIPTOR_TYPE == t)
    5070:	22 e0       	ldi	r18, 0x02	; 2
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    5072:	10 92 e9 00 	sts	0x00E9, r1	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
static int _cmark;
static int _cend;
void InitControl(int end)
{
	SetEP(0);
	_cmark = 0;
    5076:	10 92 a0 02 	sts	0x02A0, r1	; 0x8002a0 <_ZL6_cmark+0x1>
    507a:	10 92 9f 02 	sts	0x029F, r1	; 0x80029f <_ZL6_cmark>

static
bool SendDescriptor(USBSetup& setup)
{
	u8 t = setup.wValueH;
	if (USB_CONFIGURATION_DESCRIPTOR_TYPE == t)
    507e:	f2 12       	cpse	r15, r18
    5080:	2e c0       	rjmp	.+92     	; 0x50de <__vector_11+0x19a>
static int _cend;
void InitControl(int end)
{
	SetEP(0);
	_cmark = 0;
	_cend = end;
    5082:	10 92 9e 02 	sts	0x029E, r1	; 0x80029e <_ZL5_cend+0x1>
    5086:	10 92 9d 02 	sts	0x029D, r1	; 0x80029d <_ZL5_cend>
static
bool SendConfiguration(int maxlen)
{
	//	Count and measure interfaces
	InitControl(0);
	u8 interfaces = SendInterfaces();
    508a:	0e 94 f5 0a 	call	0x15ea	; 0x15ea <_ZL14SendInterfacesv>
	ConfigDescriptor config = D_CONFIG(_cmark + sizeof(ConfigDescriptor),interfaces);
    508e:	1f 82       	std	Y+7, r1	; 0x07
    5090:	99 e0       	ldi	r25, 0x09	; 9
    5092:	99 83       	std	Y+1, r25	; 0x01
    5094:	fa 82       	std	Y+2, r15	; 0x02
    5096:	91 e0       	ldi	r25, 0x01	; 1
    5098:	9e 83       	std	Y+6, r25	; 0x06
    509a:	90 ea       	ldi	r25, 0xA0	; 160
    509c:	98 87       	std	Y+8, r25	; 0x08
    509e:	9a ef       	ldi	r25, 0xFA	; 250
    50a0:	99 87       	std	Y+9, r25	; 0x09
    50a2:	20 91 9f 02 	lds	r18, 0x029F	; 0x80029f <_ZL6_cmark>
    50a6:	30 91 a0 02 	lds	r19, 0x02A0	; 0x8002a0 <_ZL6_cmark+0x1>
    50aa:	27 5f       	subi	r18, 0xF7	; 247
    50ac:	3f 4f       	sbci	r19, 0xFF	; 255
    50ae:	3c 83       	std	Y+4, r19	; 0x04
    50b0:	2b 83       	std	Y+3, r18	; 0x03
    50b2:	8d 83       	std	Y+5, r24	; 0x05
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    50b4:	10 92 e9 00 	sts	0x00E9, r1	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
static int _cmark;
static int _cend;
void InitControl(int end)
{
	SetEP(0);
	_cmark = 0;
    50b8:	10 92 a0 02 	sts	0x02A0, r1	; 0x8002a0 <_ZL6_cmark+0x1>
    50bc:	10 92 9f 02 	sts	0x029F, r1	; 0x80029f <_ZL6_cmark>
	_cend = end;
    50c0:	10 93 9e 02 	sts	0x029E, r17	; 0x80029e <_ZL5_cend+0x1>
    50c4:	00 93 9d 02 	sts	0x029D, r16	; 0x80029d <_ZL5_cend>
	u8 interfaces = SendInterfaces();
	ConfigDescriptor config = D_CONFIG(_cmark + sizeof(ConfigDescriptor),interfaces);

	//	Now send them
	InitControl(maxlen);
	USB_SendControl(0,&config,sizeof(ConfigDescriptor));
    50c8:	49 e0       	ldi	r20, 0x09	; 9
    50ca:	50 e0       	ldi	r21, 0x00	; 0
    50cc:	be 01       	movw	r22, r28
    50ce:	6f 5f       	subi	r22, 0xFF	; 255
    50d0:	7f 4f       	sbci	r23, 0xFF	; 255
    50d2:	80 e0       	ldi	r24, 0x00	; 0
    50d4:	0e 94 cf 0a 	call	0x159e	; 0x159e <_Z15USB_SendControlhPKvi>
	SendInterfaces();
    50d8:	0e 94 f5 0a 	call	0x15ea	; 0x15ea <_ZL14SendInterfacesv>
    50dc:	79 cf       	rjmp	.-270    	; 0x4fd0 <__vector_11+0x8c>
static int _cend;
void InitControl(int end)
{
	SetEP(0);
	_cmark = 0;
	_cend = end;
    50de:	10 93 9e 02 	sts	0x029E, r17	; 0x80029e <_ZL5_cend+0x1>
    50e2:	00 93 9d 02 	sts	0x029D, r16	; 0x80029d <_ZL5_cend>
	if (USB_CONFIGURATION_DESCRIPTOR_TYPE == t)
		return SendConfiguration(setup.wLength);

	InitControl(setup.wLength);
#ifdef PLUGGABLE_USB_ENABLED
	int ret = PluggableUSB().getDescriptor(setup);
    50e6:	0e 94 d9 09 	call	0x13b2	; 0x13b2 <_Z12PluggableUSBv>
}

int PluggableUSB_::getDescriptor(USBSetup& setup)
{
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
    50ea:	dc 01       	movw	r26, r24
    50ec:	12 96       	adiw	r26, 0x02	; 2
    50ee:	0d 91       	ld	r16, X+
    50f0:	1c 91       	ld	r17, X
    50f2:	01 15       	cp	r16, r1
    50f4:	11 05       	cpc	r17, r1
    50f6:	09 f4       	brne	.+2      	; 0x50fa <__vector_11+0x1b6>
    50f8:	51 c1       	rjmp	.+674    	; 0x539c <__vector_11+0x458>
		int ret = node->getDescriptor(setup);
    50fa:	d8 01       	movw	r26, r16
    50fc:	ed 91       	ld	r30, X+
    50fe:	fc 91       	ld	r31, X
    5100:	04 80       	ldd	r0, Z+4	; 0x04
    5102:	f5 81       	ldd	r31, Z+5	; 0x05
    5104:	e0 2d       	mov	r30, r0
    5106:	be 01       	movw	r22, r28
    5108:	6b 5e       	subi	r22, 0xEB	; 235
    510a:	7f 4f       	sbci	r23, 0xFF	; 255
    510c:	c8 01       	movw	r24, r16
    510e:	09 95       	icall
		// ret!=0 -> request has been processed
		if (ret)
    5110:	00 97       	sbiw	r24, 0x00	; 0
    5112:	09 f0       	breq	.+2      	; 0x5116 <__vector_11+0x1d2>
    5114:	3e c1       	rjmp	.+636    	; 0x5392 <__vector_11+0x44e>
}

int PluggableUSB_::getDescriptor(USBSetup& setup)
{
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
    5116:	f8 01       	movw	r30, r16
    5118:	00 85       	ldd	r16, Z+8	; 0x08
    511a:	11 85       	ldd	r17, Z+9	; 0x09
    511c:	ea cf       	rjmp	.-44     	; 0x50f2 <__vector_11+0x1ae>
	const u8* desc_addr = 0;
	if (USB_DEVICE_DESCRIPTOR_TYPE == t)
	{
		desc_addr = (const u8*)&USB_DeviceDescriptorIAD;
	}
	else if (USB_STRING_DESCRIPTOR_TYPE == t)
    511e:	f3 e0       	ldi	r31, 0x03	; 3
    5120:	ff 12       	cpse	r15, r31
    5122:	0e c0       	rjmp	.+28     	; 0x5140 <__vector_11+0x1fc>
	{
		if (setup.wValueL == 0) {
    5124:	8f 89       	ldd	r24, Y+23	; 0x17
    5126:	88 23       	and	r24, r24
    5128:	09 f4       	brne	.+2      	; 0x512c <__vector_11+0x1e8>
    512a:	40 c0       	rjmp	.+128    	; 0x51ac <__vector_11+0x268>
			desc_addr = (const u8*)&STRING_LANGUAGE;
		}
		else if (setup.wValueL == IPRODUCT) {
    512c:	82 30       	cpi	r24, 0x02	; 2
    512e:	61 f4       	brne	.+24     	; 0x5148 <__vector_11+0x204>
			return USB_SendStringDescriptor(STRING_PRODUCT, strlen(USB_PRODUCT), TRANSFER_PGM);
    5130:	40 e8       	ldi	r20, 0x80	; 128
    5132:	60 e1       	ldi	r22, 0x10	; 16
    5134:	8a ec       	ldi	r24, 0xCA	; 202
    5136:	9e e0       	ldi	r25, 0x0E	; 14
		}
		else if (setup.wValueL == ISERIAL) {
#ifdef PLUGGABLE_USB_ENABLED
			char name[ISERIAL_MAX_LEN];
			PluggableUSB().getShortName(name);
			return USB_SendStringDescriptor((uint8_t*)name, strlen(name), 0);
    5138:	0e 94 9c 0a 	call	0x1538	; 0x1538 <_ZL24USB_SendStringDescriptorPKhhh>
	{
		InitControl(setup.wLength);		//	Max length of transfer
		ok = ClassInterfaceRequest(setup);
	}

	if (ok)
    513c:	81 11       	cpse	r24, r1
    513e:	48 cf       	rjmp	.-368    	; 0x4fd0 <__vector_11+0x8c>
	UEINTX = ~((1<<RXSTPI) | (1<<RXOUTI) | (1<<TXINI));
}

static inline void Stall()
{
	UECONX = (1<<STALLRQ) | (1<<EPEN);
    5140:	81 e2       	ldi	r24, 0x21	; 33
    5142:	80 93 eb 00 	sts	0x00EB, r24	; 0x8000eb <__DATA_REGION_ORIGIN__+0x8b>
    5146:	47 cf       	rjmp	.-370    	; 0x4fd6 <__vector_11+0x92>
			desc_addr = (const u8*)&STRING_LANGUAGE;
		}
		else if (setup.wValueL == IPRODUCT) {
			return USB_SendStringDescriptor(STRING_PRODUCT, strlen(USB_PRODUCT), TRANSFER_PGM);
		}
		else if (setup.wValueL == IMANUFACTURER) {
    5148:	81 30       	cpi	r24, 0x01	; 1
    514a:	29 f4       	brne	.+10     	; 0x5156 <__vector_11+0x212>
			return USB_SendStringDescriptor(STRING_MANUFACTURER, strlen(USB_MANUFACTURER), TRANSFER_PGM);
    514c:	40 e8       	ldi	r20, 0x80	; 128
    514e:	6b e0       	ldi	r22, 0x0B	; 11
    5150:	8e eb       	ldi	r24, 0xBE	; 190
    5152:	9e e0       	ldi	r25, 0x0E	; 14
    5154:	f1 cf       	rjmp	.-30     	; 0x5138 <__vector_11+0x1f4>
		}
		else if (setup.wValueL == ISERIAL) {
    5156:	83 30       	cpi	r24, 0x03	; 3
    5158:	99 f7       	brne	.-26     	; 0x5140 <__vector_11+0x1fc>
#ifdef PLUGGABLE_USB_ENABLED
			char name[ISERIAL_MAX_LEN];
			PluggableUSB().getShortName(name);
    515a:	0e 94 d9 09 	call	0x13b2	; 0x13b2 <_Z12PluggableUSBv>
}

void PluggableUSB_::getShortName(char *iSerialNum)
{
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
    515e:	dc 01       	movw	r26, r24
    5160:	12 96       	adiw	r26, 0x02	; 2
    5162:	ed 90       	ld	r14, X+
    5164:	fc 90       	ld	r15, X
    5166:	8e 01       	movw	r16, r28
    5168:	0f 5f       	subi	r16, 0xFF	; 255
    516a:	1f 4f       	sbci	r17, 0xFF	; 255
    516c:	68 01       	movw	r12, r16
    516e:	e1 14       	cp	r14, r1
    5170:	f1 04       	cpc	r15, r1
    5172:	79 f0       	breq	.+30     	; 0x5192 <__vector_11+0x24e>
		iSerialNum += node->getShortName(iSerialNum);
    5174:	d7 01       	movw	r26, r14
    5176:	ed 91       	ld	r30, X+
    5178:	fc 91       	ld	r31, X
    517a:	06 80       	ldd	r0, Z+6	; 0x06
    517c:	f7 81       	ldd	r31, Z+7	; 0x07
    517e:	e0 2d       	mov	r30, r0
    5180:	b8 01       	movw	r22, r16
    5182:	c7 01       	movw	r24, r14
    5184:	09 95       	icall
    5186:	08 0f       	add	r16, r24
    5188:	11 1d       	adc	r17, r1
}

void PluggableUSB_::getShortName(char *iSerialNum)
{
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
    518a:	f7 01       	movw	r30, r14
    518c:	e0 84       	ldd	r14, Z+8	; 0x08
    518e:	f1 84       	ldd	r15, Z+9	; 0x09
    5190:	ee cf       	rjmp	.-36     	; 0x516e <__vector_11+0x22a>
		iSerialNum += node->getShortName(iSerialNum);
	}
	*iSerialNum = 0;
    5192:	d8 01       	movw	r26, r16
    5194:	1c 92       	st	X, r1
			return USB_SendStringDescriptor((uint8_t*)name, strlen(name), 0);
    5196:	f6 01       	movw	r30, r12
    5198:	01 90       	ld	r0, Z+
    519a:	00 20       	and	r0, r0
    519c:	e9 f7       	brne	.-6      	; 0x5198 <__vector_11+0x254>
    519e:	31 97       	sbiw	r30, 0x01	; 1
    51a0:	bf 01       	movw	r22, r30
    51a2:	6c 19       	sub	r22, r12
    51a4:	7d 09       	sbc	r23, r13
    51a6:	40 e0       	ldi	r20, 0x00	; 0
    51a8:	c6 01       	movw	r24, r12
    51aa:	c6 cf       	rjmp	.-116    	; 0x5138 <__vector_11+0x1f4>
		desc_addr = (const u8*)&USB_DeviceDescriptorIAD;
	}
	else if (USB_STRING_DESCRIPTOR_TYPE == t)
	{
		if (setup.wValueL == 0) {
			desc_addr = (const u8*)&STRING_LANGUAGE;
    51ac:	68 ea       	ldi	r22, 0xA8	; 168
    51ae:	7e e0       	ldi	r23, 0x0E	; 14
			return false;
	}

	if (desc_addr == 0)
		return false;
	u8 desc_length = pgm_read_byte(desc_addr);
    51b0:	fb 01       	movw	r30, r22
    51b2:	44 91       	lpm	r20, Z

	USB_SendControl(TRANSFER_PGM,desc_addr,desc_length);
    51b4:	50 e0       	ldi	r21, 0x00	; 0
    51b6:	80 e8       	ldi	r24, 0x80	; 128

	if (REQUEST_DEVICETOHOST_CLASS_INTERFACE == requestType)
	{
		if (CDC_GET_LINE_CODING == r)
		{
			USB_SendControl(0,(void*)&_usbLineInfo,7);
    51b8:	0e 94 cf 0a 	call	0x159e	; 0x159e <_Z15USB_SendControlhPKvi>
    51bc:	09 cf       	rjmp	.-494    	; 0x4fd0 <__vector_11+0x8c>
		}
		else if (GET_DESCRIPTOR == r)
		{
			ok = SendDescriptor(setup);
		}
		else if (SET_DESCRIPTOR == r)
    51be:	97 30       	cpi	r25, 0x07	; 7
    51c0:	09 f4       	brne	.+2      	; 0x51c4 <__vector_11+0x280>
    51c2:	be cf       	rjmp	.-132    	; 0x5140 <__vector_11+0x1fc>
		{
			ok = false;
		}
		else if (GET_CONFIGURATION == r)
    51c4:	98 30       	cpi	r25, 0x08	; 8
    51c6:	21 f4       	brne	.+8      	; 0x51d0 <__vector_11+0x28c>
	return UEDATX;	
}

static inline void Send8(u8 d)
{
	UEDATX = d;
    51c8:	81 e0       	ldi	r24, 0x01	; 1
    51ca:	80 93 f1 00 	sts	0x00F1, r24	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
    51ce:	00 cf       	rjmp	.-512    	; 0x4fd0 <__vector_11+0x8c>
		}
		else if (GET_CONFIGURATION == r)
		{
			Send8(1);
		}
		else if (SET_CONFIGURATION == r)
    51d0:	99 30       	cpi	r25, 0x09	; 9
    51d2:	09 f0       	breq	.+2      	; 0x51d6 <__vector_11+0x292>
    51d4:	fd ce       	rjmp	.-518    	; 0x4fd0 <__vector_11+0x8c>
		{
			if (REQUEST_DEVICE == (requestType & REQUEST_RECIPIENT))
    51d6:	83 70       	andi	r24, 0x03	; 3
    51d8:	09 f0       	breq	.+2      	; 0x51dc <__vector_11+0x298>
    51da:	b2 cf       	rjmp	.-156    	; 0x5140 <__vector_11+0x1fc>
    51dc:	e5 e1       	ldi	r30, 0x15	; 21
    51de:	f1 e0       	ldi	r31, 0x01	; 1
}

static
void InitEndpoints()
{
	for (u8 i = 1; i < sizeof(_initEndpoints) && _initEndpoints[i] != 0; i++)
    51e0:	81 e0       	ldi	r24, 0x01	; 1
	{
		UENUM = i;
		UECONX = (1<<EPEN);
    51e2:	31 e0       	ldi	r19, 0x01	; 1
		UECFG0X = _initEndpoints[i];
#if USB_EP_SIZE == 16
		UECFG1X = EP_SINGLE_16;
#elif USB_EP_SIZE == 64
		UECFG1X = EP_DOUBLE_64;
    51e4:	96 e3       	ldi	r25, 0x36	; 54
}

static
void InitEndpoints()
{
	for (u8 i = 1; i < sizeof(_initEndpoints) && _initEndpoints[i] != 0; i++)
    51e6:	21 91       	ld	r18, Z+
    51e8:	22 23       	and	r18, r18
    51ea:	71 f0       	breq	.+28     	; 0x5208 <__vector_11+0x2c4>
	{
		UENUM = i;
    51ec:	80 93 e9 00 	sts	0x00E9, r24	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
		UECONX = (1<<EPEN);
    51f0:	30 93 eb 00 	sts	0x00EB, r19	; 0x8000eb <__DATA_REGION_ORIGIN__+0x8b>
		UECFG0X = _initEndpoints[i];
    51f4:	df 01       	movw	r26, r30
    51f6:	11 97       	sbiw	r26, 0x01	; 1
    51f8:	2c 91       	ld	r18, X
    51fa:	20 93 ec 00 	sts	0x00EC, r18	; 0x8000ec <__DATA_REGION_ORIGIN__+0x8c>
#if USB_EP_SIZE == 16
		UECFG1X = EP_SINGLE_16;
#elif USB_EP_SIZE == 64
		UECFG1X = EP_DOUBLE_64;
    51fe:	90 93 ed 00 	sts	0x00ED, r25	; 0x8000ed <__DATA_REGION_ORIGIN__+0x8d>
}

static
void InitEndpoints()
{
	for (u8 i = 1; i < sizeof(_initEndpoints) && _initEndpoints[i] != 0; i++)
    5202:	8f 5f       	subi	r24, 0xFF	; 255
    5204:	87 30       	cpi	r24, 0x07	; 7
    5206:	79 f7       	brne	.-34     	; 0x51e6 <__vector_11+0x2a2>
		UECFG1X = EP_DOUBLE_64;
#else
#error Unsupported value for USB_EP_SIZE
#endif
	}
	UERST = 0x7E;	// And reset them
    5208:	8e e7       	ldi	r24, 0x7E	; 126
    520a:	80 93 ea 00 	sts	0x00EA, r24	; 0x8000ea <__DATA_REGION_ORIGIN__+0x8a>
	UERST = 0;
    520e:	10 92 ea 00 	sts	0x00EA, r1	; 0x8000ea <__DATA_REGION_ORIGIN__+0x8a>
		else if (SET_CONFIGURATION == r)
		{
			if (REQUEST_DEVICE == (requestType & REQUEST_RECIPIENT))
			{
				InitEndpoints();
				_usbConfiguration = setup.wValueL;
    5212:	8f 89       	ldd	r24, Y+23	; 0x17
    5214:	80 93 b2 02 	sts	0x02B2, r24	; 0x8002b2 <_usbConfiguration>
    5218:	db ce       	rjmp	.-586    	; 0x4fd0 <__vector_11+0x8c>
		{
		}
	}
	else
	{
		InitControl(setup.wLength);		//	Max length of transfer
    521a:	8b 8d       	ldd	r24, Y+27	; 0x1b
    521c:	9c 8d       	ldd	r25, Y+28	; 0x1c
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    521e:	10 92 e9 00 	sts	0x00E9, r1	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
static int _cmark;
static int _cend;
void InitControl(int end)
{
	SetEP(0);
	_cmark = 0;
    5222:	10 92 a0 02 	sts	0x02A0, r1	; 0x8002a0 <_ZL6_cmark+0x1>
    5226:	10 92 9f 02 	sts	0x029F, r1	; 0x80029f <_ZL6_cmark>
	_cend = end;
    522a:	90 93 9e 02 	sts	0x029E, r25	; 0x80029e <_ZL5_cend+0x1>
    522e:	80 93 9d 02 	sts	0x029D, r24	; 0x80029d <_ZL5_cend>
static
bool ClassInterfaceRequest(USBSetup& setup)
{
	u8 i = setup.wIndex;

	if (CDC_ACM_INTERFACE == i)
    5232:	89 8d       	ldd	r24, Y+25	; 0x19
    5234:	81 11       	cpse	r24, r1
    5236:	92 c0       	rjmp	.+292    	; 0x535c <__vector_11+0x418>
	return USB_SendControl(TRANSFER_PGM,&_cdcInterface,sizeof(_cdcInterface));
}

bool CDC_Setup(USBSetup& setup)
{
	u8 r = setup.bRequest;
    5238:	8e 89       	ldd	r24, Y+22	; 0x16
	u8 requestType = setup.bmRequestType;
    523a:	9d 89       	ldd	r25, Y+21	; 0x15

	if (REQUEST_DEVICETOHOST_CLASS_INTERFACE == requestType)
    523c:	91 3a       	cpi	r25, 0xA1	; 161
    523e:	49 f4       	brne	.+18     	; 0x5252 <__vector_11+0x30e>
	{
		if (CDC_GET_LINE_CODING == r)
    5240:	81 32       	cpi	r24, 0x21	; 33
    5242:	09 f0       	breq	.+2      	; 0x5246 <__vector_11+0x302>
    5244:	7d cf       	rjmp	.-262    	; 0x5140 <__vector_11+0x1fc>
		{
			USB_SendControl(0,(void*)&_usbLineInfo,7);
    5246:	47 e0       	ldi	r20, 0x07	; 7
    5248:	50 e0       	ldi	r21, 0x00	; 0
    524a:	64 e0       	ldi	r22, 0x04	; 4
    524c:	71 e0       	ldi	r23, 0x01	; 1
    524e:	80 e0       	ldi	r24, 0x00	; 0
    5250:	b3 cf       	rjmp	.-154    	; 0x51b8 <__vector_11+0x274>
			return true;
		}
	}

	if (REQUEST_HOSTTODEVICE_CLASS_INTERFACE == requestType)
    5252:	91 32       	cpi	r25, 0x21	; 33
    5254:	09 f0       	breq	.+2      	; 0x5258 <__vector_11+0x314>
    5256:	74 cf       	rjmp	.-280    	; 0x5140 <__vector_11+0x1fc>
	{
		if (CDC_SEND_BREAK == r)
    5258:	83 32       	cpi	r24, 0x23	; 35
    525a:	69 f4       	brne	.+26     	; 0x5276 <__vector_11+0x332>
		{
			breakValue = ((uint16_t)setup.wValueH << 8) | setup.wValueL;
    525c:	8f 89       	ldd	r24, Y+23	; 0x17
    525e:	98 8d       	ldd	r25, Y+24	; 0x18
    5260:	b0 e0       	ldi	r27, 0x00	; 0
    5262:	a0 e0       	ldi	r26, 0x00	; 0
    5264:	80 93 00 01 	sts	0x0100, r24	; 0x800100 <__data_start>
    5268:	90 93 01 01 	sts	0x0101, r25	; 0x800101 <__data_start+0x1>
    526c:	a0 93 02 01 	sts	0x0102, r26	; 0x800102 <__data_start+0x2>
    5270:	b0 93 03 01 	sts	0x0103, r27	; 0x800103 <__data_start+0x3>
    5274:	ad ce       	rjmp	.-678    	; 0x4fd0 <__vector_11+0x8c>
		}

		if (CDC_SET_LINE_CODING == r)
    5276:	80 32       	cpi	r24, 0x20	; 32
    5278:	69 f4       	brne	.+26     	; 0x5294 <__vector_11+0x350>
	UEINTX = ~(1<<TXINI);
}

static inline void WaitOUT(void)
{
	while (!(UEINTX & (1<<RXOUTI)))
    527a:	80 91 e8 00 	lds	r24, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
    527e:	82 ff       	sbrs	r24, 2
    5280:	fc cf       	rjmp	.-8      	; 0x527a <__vector_11+0x336>
			recvLength = 64;
		}

		// Write data to fit to the end (not the beginning) of the array
		WaitOUT();
		Recv((u8*)d + len - length, recvLength);
    5282:	67 e0       	ldi	r22, 0x07	; 7
    5284:	84 e0       	ldi	r24, 0x04	; 4
    5286:	91 e0       	ldi	r25, 0x01	; 1
    5288:	0e 94 26 0b 	call	0x164c	; 0x164c <_ZL4RecvPVhh>
	return (UEINTX & (1<<RXOUTI)) == 0;
}

static inline void ClearOUT(void)
{
	UEINTX = ~(1<<RXOUTI);
    528c:	8b ef       	ldi	r24, 0xFB	; 251
    528e:	80 93 e8 00 	sts	0x00E8, r24	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
    5292:	9e ce       	rjmp	.-708    	; 0x4fd0 <__vector_11+0x8c>
		{
			USB_RecvControl((void*)&_usbLineInfo,7);
		}

		if (CDC_SET_CONTROL_LINE_STATE == r)
    5294:	82 32       	cpi	r24, 0x22	; 34
    5296:	09 f0       	breq	.+2      	; 0x529a <__vector_11+0x356>
    5298:	9b ce       	rjmp	.-714    	; 0x4fd0 <__vector_11+0x8c>
		{
			_usbLineInfo.lineState = setup.wValueL;
    529a:	8f 89       	ldd	r24, Y+23	; 0x17
    529c:	80 93 0b 01 	sts	0x010B, r24	; 0x80010b <_ZL12_usbLineInfo+0x7>
	D_ENDPOINT(USB_ENDPOINT_IN (CDC_ENDPOINT_IN ),USB_ENDPOINT_TYPE_BULK,USB_EP_SIZE,0)
};

bool isLUFAbootloader()
{
	return pgm_read_word(FLASHEND - 1) == NEW_LUFA_SIGNATURE;
    52a0:	ee ef       	ldi	r30, 0xFE	; 254
    52a2:	ff e7       	ldi	r31, 0x7F	; 127
    52a4:	85 91       	lpm	r24, Z+
    52a6:	94 91       	lpm	r25, Z
// This is used to keep compatible with the old leonardo bootloaders.
// You are still able to set the magic key position manually to RAMEND-1 to save a few bytes for this check.
#if MAGIC_KEY_POS != (RAMEND-1)
			// For future boards save the key in the inproblematic RAMEND
			// Which is reserved for the main() return value (which will never return)
			if (isLUFAbootloader()) {
    52a8:	8b 3f       	cpi	r24, 0xFB	; 251
    52aa:	9c 4d       	sbci	r25, 0xDC	; 220
    52ac:	51 f1       	breq	.+84     	; 0x5302 <__vector_11+0x3be>
			// auto-reset into the bootloader is triggered when the port, already 
			// open at 1200 bps, is closed.  this is the signal to start the watchdog
			// with a relatively long period so it can finish housekeeping tasks
			// like servicing endpoints before the sketch ends

			uint16_t magic_key_pos = MAGIC_KEY_POS;
    52ae:	e0 e0       	ldi	r30, 0x00	; 0
    52b0:	f8 e0       	ldi	r31, 0x08	; 8
				magic_key_pos = (RAMEND-1);
			}
#endif

			// We check DTR state to determine if host port is open (bit 0 of lineState).
			if (1200 == _usbLineInfo.dwDTERate && (_usbLineInfo.lineState & 0x01) == 0)
    52b2:	80 91 04 01 	lds	r24, 0x0104	; 0x800104 <_ZL12_usbLineInfo>
    52b6:	90 91 05 01 	lds	r25, 0x0105	; 0x800105 <_ZL12_usbLineInfo+0x1>
    52ba:	a0 91 06 01 	lds	r26, 0x0106	; 0x800106 <_ZL12_usbLineInfo+0x2>
    52be:	b0 91 07 01 	lds	r27, 0x0107	; 0x800107 <_ZL12_usbLineInfo+0x3>
    52c2:	80 3b       	cpi	r24, 0xB0	; 176
    52c4:	94 40       	sbci	r25, 0x04	; 4
    52c6:	a1 05       	cpc	r26, r1
    52c8:	b1 05       	cpc	r27, r1
    52ca:	f1 f4       	brne	.+60     	; 0x5308 <__vector_11+0x3c4>
    52cc:	80 91 0b 01 	lds	r24, 0x010B	; 0x80010b <_ZL12_usbLineInfo+0x7>
    52d0:	80 fd       	sbrc	r24, 0
    52d2:	1a c0       	rjmp	.+52     	; 0x5308 <__vector_11+0x3c4>
			{
#if MAGIC_KEY_POS != (RAMEND-1)
				// Backup ram value if its not a newer bootloader and it hasn't already been saved.
				// This should avoid memory corruption at least a bit, not fully
				if (magic_key_pos != (RAMEND-1) && *(uint16_t *)magic_key_pos != MAGIC_KEY) {
    52d4:	ee 3f       	cpi	r30, 0xFE	; 254
    52d6:	8a e0       	ldi	r24, 0x0A	; 10
    52d8:	f8 07       	cpc	r31, r24
    52da:	89 f5       	brne	.+98     	; 0x533e <__vector_11+0x3fa>
					*(uint16_t *)(RAMEND-1) = *(uint16_t *)magic_key_pos;
				}
#endif
				// Store boot key
				*(uint16_t *)magic_key_pos = MAGIC_KEY;
    52dc:	87 e7       	ldi	r24, 0x77	; 119
    52de:	97 e7       	ldi	r25, 0x77	; 119
    52e0:	91 83       	std	Z+1, r25	; 0x01
    52e2:	80 83       	st	Z, r24
				// Save the watchdog state in case the reset is aborted.
				wdtcsr_save = WDTCSR;
    52e4:	80 91 60 00 	lds	r24, 0x0060	; 0x800060 <__DATA_REGION_ORIGIN__>
    52e8:	80 93 a1 02 	sts	0x02A1, r24	; 0x8002a1 <_ZL11wdtcsr_save>
				: "n" (_SFR_MEM_ADDR(_WD_CONTROL_REG)),
				"r" ((uint8_t)(_BV(_WD_CHANGE_BIT) | _BV(WDE))),
				"r" ((uint8_t) ((value & 0x08 ? _WD_PS3_MASK : 0x00) |
						_BV(WDE) | (value & 0x07)) )
				: "r0"
		);
    52ec:	88 e1       	ldi	r24, 0x18	; 24
    52ee:	9b e0       	ldi	r25, 0x0B	; 11
    52f0:	0f b6       	in	r0, 0x3f	; 63
    52f2:	f8 94       	cli
    52f4:	a8 95       	wdr
    52f6:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
    52fa:	0f be       	out	0x3f, r0	; 63
    52fc:	90 93 60 00 	sts	0x0060, r25	; 0x800060 <__DATA_REGION_ORIGIN__>
    5300:	67 ce       	rjmp	.-818    	; 0x4fd0 <__vector_11+0x8c>
#if MAGIC_KEY_POS != (RAMEND-1)
			// For future boards save the key in the inproblematic RAMEND
			// Which is reserved for the main() return value (which will never return)
			if (isLUFAbootloader()) {
				// horray, we got a new bootloader!
				magic_key_pos = (RAMEND-1);
    5302:	ee ef       	ldi	r30, 0xFE	; 254
    5304:	fa e0       	ldi	r31, 0x0A	; 10
    5306:	d5 cf       	rjmp	.-86     	; 0x52b2 <__vector_11+0x36e>
				*(uint16_t *)magic_key_pos = MAGIC_KEY;
				// Save the watchdog state in case the reset is aborted.
				wdtcsr_save = WDTCSR;
				wdt_enable(WDTO_120MS);
			}
			else if (*(uint16_t *)magic_key_pos == MAGIC_KEY)
    5308:	80 81       	ld	r24, Z
    530a:	91 81       	ldd	r25, Z+1	; 0x01
    530c:	87 37       	cpi	r24, 0x77	; 119
    530e:	97 47       	sbci	r25, 0x77	; 119
    5310:	09 f0       	breq	.+2      	; 0x5314 <__vector_11+0x3d0>
    5312:	5e ce       	rjmp	.-836    	; 0x4fd0 <__vector_11+0x8c>
				// To avoid spurious resets we set the watchdog to 120ms and eventually
				// cancel if DTR goes back high.
				// Cancellation is only done if an auto-reset was started, which is
				// indicated by the magic key having been set.

				wdt_reset();
    5314:	a8 95       	wdr
				// Restore the watchdog state in case the sketch was using it.
				WDTCSR |= (1<<WDCE) | (1<<WDE);
    5316:	80 91 60 00 	lds	r24, 0x0060	; 0x800060 <__DATA_REGION_ORIGIN__>
    531a:	88 61       	ori	r24, 0x18	; 24
    531c:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
				WDTCSR = wdtcsr_save;
    5320:	80 91 a1 02 	lds	r24, 0x02A1	; 0x8002a1 <_ZL11wdtcsr_save>
    5324:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
#if MAGIC_KEY_POS != (RAMEND-1)
				// Restore backed up (old bootloader) magic key data
				if (magic_key_pos != (RAMEND-1)) {
    5328:	ee 3f       	cpi	r30, 0xFE	; 254
    532a:	2a e0       	ldi	r18, 0x0A	; 10
    532c:	f2 07       	cpc	r31, r18
    532e:	89 f0       	breq	.+34     	; 0x5352 <__vector_11+0x40e>
					*(uint16_t *)magic_key_pos = *(uint16_t *)(RAMEND-1);
    5330:	80 91 fe 0a 	lds	r24, 0x0AFE	; 0x800afe <__bss_end+0x3d4>
    5334:	90 91 ff 0a 	lds	r25, 0x0AFF	; 0x800aff <__bss_end+0x3d5>
    5338:	91 83       	std	Z+1, r25	; 0x01
    533a:	80 83       	st	Z, r24
    533c:	49 ce       	rjmp	.-878    	; 0x4fd0 <__vector_11+0x8c>
			if (1200 == _usbLineInfo.dwDTERate && (_usbLineInfo.lineState & 0x01) == 0)
			{
#if MAGIC_KEY_POS != (RAMEND-1)
				// Backup ram value if its not a newer bootloader and it hasn't already been saved.
				// This should avoid memory corruption at least a bit, not fully
				if (magic_key_pos != (RAMEND-1) && *(uint16_t *)magic_key_pos != MAGIC_KEY) {
    533e:	80 81       	ld	r24, Z
    5340:	91 81       	ldd	r25, Z+1	; 0x01
    5342:	87 37       	cpi	r24, 0x77	; 119
    5344:	98 07       	cpc	r25, r24
    5346:	51 f2       	breq	.-108    	; 0x52dc <__vector_11+0x398>
					*(uint16_t *)(RAMEND-1) = *(uint16_t *)magic_key_pos;
    5348:	90 93 ff 0a 	sts	0x0AFF, r25	; 0x800aff <__bss_end+0x3d5>
    534c:	80 93 fe 0a 	sts	0x0AFE, r24	; 0x800afe <__bss_end+0x3d4>
    5350:	c5 cf       	rjmp	.-118    	; 0x52dc <__vector_11+0x398>
					*(uint16_t *)magic_key_pos = *(uint16_t *)(RAMEND-1);
				} else
#endif
				{
				// Clean up RAMEND key
					*(uint16_t *)magic_key_pos = 0x0000;
    5352:	10 92 ff 0a 	sts	0x0AFF, r1	; 0x800aff <__bss_end+0x3d5>
    5356:	10 92 fe 0a 	sts	0x0AFE, r1	; 0x800afe <__bss_end+0x3d4>
    535a:	3a ce       	rjmp	.-908    	; 0x4fd0 <__vector_11+0x8c>

	if (CDC_ACM_INTERFACE == i)
		return CDC_Setup(setup);

#ifdef PLUGGABLE_USB_ENABLED
	return PluggableUSB().setup(setup);
    535c:	0e 94 d9 09 	call	0x13b2	; 0x13b2 <_Z12PluggableUSBv>
}

bool PluggableUSB_::setup(USBSetup& setup)
{
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
    5360:	dc 01       	movw	r26, r24
    5362:	12 96       	adiw	r26, 0x02	; 2
    5364:	0d 91       	ld	r16, X+
    5366:	1c 91       	ld	r17, X
    5368:	01 15       	cp	r16, r1
    536a:	11 05       	cpc	r17, r1
    536c:	09 f4       	brne	.+2      	; 0x5370 <__vector_11+0x42c>
    536e:	e8 ce       	rjmp	.-560    	; 0x5140 <__vector_11+0x1fc>
		if (node->setup(setup)) {
    5370:	d8 01       	movw	r26, r16
    5372:	ed 91       	ld	r30, X+
    5374:	fc 91       	ld	r31, X
    5376:	01 90       	ld	r0, Z+
    5378:	f0 81       	ld	r31, Z
    537a:	e0 2d       	mov	r30, r0
    537c:	be 01       	movw	r22, r28
    537e:	6b 5e       	subi	r22, 0xEB	; 235
    5380:	7f 4f       	sbci	r23, 0xFF	; 255
    5382:	c8 01       	movw	r24, r16
    5384:	09 95       	icall
    5386:	81 11       	cpse	r24, r1
    5388:	23 ce       	rjmp	.-954    	; 0x4fd0 <__vector_11+0x8c>
}

bool PluggableUSB_::setup(USBSetup& setup)
{
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
    538a:	f8 01       	movw	r30, r16
    538c:	00 85       	ldd	r16, Z+8	; 0x08
    538e:	11 85       	ldd	r17, Z+9	; 0x09
    5390:	eb cf       	rjmp	.-42     	; 0x5368 <__vector_11+0x424>

	InitControl(setup.wLength);
#ifdef PLUGGABLE_USB_ENABLED
	int ret = PluggableUSB().getDescriptor(setup);
	if (ret != 0) {
		return (ret > 0 ? true : false);
    5392:	18 16       	cp	r1, r24
    5394:	19 06       	cpc	r1, r25
    5396:	0c f4       	brge	.+2      	; 0x539a <__vector_11+0x456>
    5398:	1b ce       	rjmp	.-970    	; 0x4fd0 <__vector_11+0x8c>
    539a:	d2 ce       	rjmp	.-604    	; 0x5140 <__vector_11+0x1fc>
	}
#endif

	const u8* desc_addr = 0;
	if (USB_DEVICE_DESCRIPTOR_TYPE == t)
    539c:	f1 e0       	ldi	r31, 0x01	; 1
    539e:	ff 12       	cpse	r15, r31
    53a0:	be ce       	rjmp	.-644    	; 0x511e <__vector_11+0x1da>
	{
		desc_addr = (const u8*)&USB_DeviceDescriptorIAD;
    53a2:	6c ea       	ldi	r22, 0xAC	; 172
    53a4:	7e e0       	ldi	r23, 0x0E	; 14
    53a6:	04 cf       	rjmp	.-504    	; 0x51b0 <__vector_11+0x26c>

000053a8 <__vector_23>:
#if defined(TIM0_OVF_vect)
ISR(TIM0_OVF_vect)
#else
ISR(TIMER0_OVF_vect)
#endif
{
    53a8:	1f 92       	push	r1
    53aa:	0f 92       	push	r0
    53ac:	0f b6       	in	r0, 0x3f	; 63
    53ae:	0f 92       	push	r0
    53b0:	11 24       	eor	r1, r1
    53b2:	2f 93       	push	r18
    53b4:	3f 93       	push	r19
    53b6:	8f 93       	push	r24
    53b8:	9f 93       	push	r25
    53ba:	af 93       	push	r26
    53bc:	bf 93       	push	r27
	// copy these to local variables so they can be stored in registers
	// (volatile variables must be read from memory on every access)
	unsigned long m = timer0_millis;
    53be:	80 91 97 02 	lds	r24, 0x0297	; 0x800297 <timer0_millis>
    53c2:	90 91 98 02 	lds	r25, 0x0298	; 0x800298 <timer0_millis+0x1>
    53c6:	a0 91 99 02 	lds	r26, 0x0299	; 0x800299 <timer0_millis+0x2>
    53ca:	b0 91 9a 02 	lds	r27, 0x029A	; 0x80029a <timer0_millis+0x3>
	unsigned char f = timer0_fract;
    53ce:	30 91 85 02 	lds	r19, 0x0285	; 0x800285 <timer0_fract>

	m += MILLIS_INC;
	f += FRACT_INC;
    53d2:	23 e0       	ldi	r18, 0x03	; 3
    53d4:	23 0f       	add	r18, r19
	if (f >= FRACT_MAX) {
    53d6:	2d 37       	cpi	r18, 0x7D	; 125
    53d8:	58 f5       	brcc	.+86     	; 0x5430 <__vector_23+0x88>
	// copy these to local variables so they can be stored in registers
	// (volatile variables must be read from memory on every access)
	unsigned long m = timer0_millis;
	unsigned char f = timer0_fract;

	m += MILLIS_INC;
    53da:	01 96       	adiw	r24, 0x01	; 1
    53dc:	a1 1d       	adc	r26, r1
    53de:	b1 1d       	adc	r27, r1
	if (f >= FRACT_MAX) {
		f -= FRACT_MAX;
		m += 1;
	}

	timer0_fract = f;
    53e0:	20 93 85 02 	sts	0x0285, r18	; 0x800285 <timer0_fract>
	timer0_millis = m;
    53e4:	80 93 97 02 	sts	0x0297, r24	; 0x800297 <timer0_millis>
    53e8:	90 93 98 02 	sts	0x0298, r25	; 0x800298 <timer0_millis+0x1>
    53ec:	a0 93 99 02 	sts	0x0299, r26	; 0x800299 <timer0_millis+0x2>
    53f0:	b0 93 9a 02 	sts	0x029A, r27	; 0x80029a <timer0_millis+0x3>
	timer0_overflow_count++;
    53f4:	80 91 86 02 	lds	r24, 0x0286	; 0x800286 <timer0_overflow_count>
    53f8:	90 91 87 02 	lds	r25, 0x0287	; 0x800287 <timer0_overflow_count+0x1>
    53fc:	a0 91 88 02 	lds	r26, 0x0288	; 0x800288 <timer0_overflow_count+0x2>
    5400:	b0 91 89 02 	lds	r27, 0x0289	; 0x800289 <timer0_overflow_count+0x3>
    5404:	01 96       	adiw	r24, 0x01	; 1
    5406:	a1 1d       	adc	r26, r1
    5408:	b1 1d       	adc	r27, r1
    540a:	80 93 86 02 	sts	0x0286, r24	; 0x800286 <timer0_overflow_count>
    540e:	90 93 87 02 	sts	0x0287, r25	; 0x800287 <timer0_overflow_count+0x1>
    5412:	a0 93 88 02 	sts	0x0288, r26	; 0x800288 <timer0_overflow_count+0x2>
    5416:	b0 93 89 02 	sts	0x0289, r27	; 0x800289 <timer0_overflow_count+0x3>
}
    541a:	bf 91       	pop	r27
    541c:	af 91       	pop	r26
    541e:	9f 91       	pop	r25
    5420:	8f 91       	pop	r24
    5422:	3f 91       	pop	r19
    5424:	2f 91       	pop	r18
    5426:	0f 90       	pop	r0
    5428:	0f be       	out	0x3f, r0	; 63
    542a:	0f 90       	pop	r0
    542c:	1f 90       	pop	r1
    542e:	18 95       	reti
	unsigned char f = timer0_fract;

	m += MILLIS_INC;
	f += FRACT_INC;
	if (f >= FRACT_MAX) {
		f -= FRACT_MAX;
    5430:	26 e8       	ldi	r18, 0x86	; 134
    5432:	23 0f       	add	r18, r19
		m += 1;
    5434:	02 96       	adiw	r24, 0x02	; 2
    5436:	a1 1d       	adc	r26, r1
    5438:	b1 1d       	adc	r27, r1
    543a:	d2 cf       	rjmp	.-92     	; 0x53e0 <__vector_23+0x38>

0000543c <__vector_32>:
  }
}

// TIMER 3
ISR(TIMER3_COMPA_vect)
{
    543c:	1f 92       	push	r1
    543e:	0f 92       	push	r0
    5440:	0f b6       	in	r0, 0x3f	; 63
    5442:	0f 92       	push	r0
    5444:	11 24       	eor	r1, r1
    5446:	2f 93       	push	r18
    5448:	3f 93       	push	r19
    544a:	4f 93       	push	r20
    544c:	5f 93       	push	r21
    544e:	6f 93       	push	r22
    5450:	7f 93       	push	r23
    5452:	8f 93       	push	r24
    5454:	9f 93       	push	r25
    5456:	af 93       	push	r26
    5458:	bf 93       	push	r27
    545a:	ef 93       	push	r30
    545c:	ff 93       	push	r31
  tune_playing = false;
}

void ArduboyTunes::soundOutput()
{
  if (wait_timer_playing) { // toggle the pin if we're sounding a note
    545e:	80 91 82 02 	lds	r24, 0x0282	; 0x800282 <wait_timer_playing>
    5462:	88 23       	and	r24, r24
    5464:	49 f0       	breq	.+18     	; 0x5478 <__vector_32+0x3c>
    *_tunes_timer3_pin_port ^= _tunes_timer3_pin_mask;
    5466:	80 91 8a 02 	lds	r24, 0x028A	; 0x80028a <_tunes_timer3_pin_mask>
    546a:	e0 91 8b 02 	lds	r30, 0x028B	; 0x80028b <_tunes_timer3_pin_port>
    546e:	f0 91 8c 02 	lds	r31, 0x028C	; 0x80028c <_tunes_timer3_pin_port+0x1>
    5472:	90 81       	ld	r25, Z
    5474:	89 27       	eor	r24, r25
    5476:	80 83       	st	Z, r24
  }
  if (tune_playing && wait_toggle_count && --wait_toggle_count == 0) {
    5478:	80 91 b4 02 	lds	r24, 0x02B4	; 0x8002b4 <tune_playing>
    547c:	88 23       	and	r24, r24
    547e:	29 f1       	breq	.+74     	; 0x54ca <__vector_32+0x8e>
    5480:	80 91 7e 02 	lds	r24, 0x027E	; 0x80027e <wait_toggle_count>
    5484:	90 91 7f 02 	lds	r25, 0x027F	; 0x80027f <wait_toggle_count+0x1>
    5488:	a0 91 80 02 	lds	r26, 0x0280	; 0x800280 <wait_toggle_count+0x2>
    548c:	b0 91 81 02 	lds	r27, 0x0281	; 0x800281 <wait_toggle_count+0x3>
    5490:	89 2b       	or	r24, r25
    5492:	8a 2b       	or	r24, r26
    5494:	8b 2b       	or	r24, r27
    5496:	c9 f0       	breq	.+50     	; 0x54ca <__vector_32+0x8e>
    5498:	80 91 7e 02 	lds	r24, 0x027E	; 0x80027e <wait_toggle_count>
    549c:	90 91 7f 02 	lds	r25, 0x027F	; 0x80027f <wait_toggle_count+0x1>
    54a0:	a0 91 80 02 	lds	r26, 0x0280	; 0x800280 <wait_toggle_count+0x2>
    54a4:	b0 91 81 02 	lds	r27, 0x0281	; 0x800281 <wait_toggle_count+0x3>
    54a8:	01 97       	sbiw	r24, 0x01	; 1
    54aa:	a1 09       	sbc	r26, r1
    54ac:	b1 09       	sbc	r27, r1
    54ae:	80 93 7e 02 	sts	0x027E, r24	; 0x80027e <wait_toggle_count>
    54b2:	90 93 7f 02 	sts	0x027F, r25	; 0x80027f <wait_toggle_count+0x1>
    54b6:	a0 93 80 02 	sts	0x0280, r26	; 0x800280 <wait_toggle_count+0x2>
    54ba:	b0 93 81 02 	sts	0x0281, r27	; 0x800281 <wait_toggle_count+0x3>
    54be:	89 2b       	or	r24, r25
    54c0:	8a 2b       	or	r24, r26
    54c2:	8b 2b       	or	r24, r27
    54c4:	11 f4       	brne	.+4      	; 0x54ca <__vector_32+0x8e>
    // end of a score wait, so execute more score commands
    ArduboyTunes::step();  // execute commands
    54c6:	0e 94 8f 0e 	call	0x1d1e	; 0x1d1e <_ZN12ArduboyTunes4stepEv>
ISR(TIMER3_COMPA_vect)
{
  // Timer 3 is the one assigned first, so we keep it running always
  // and use it to time score waits, whether or not it is playing a note.
  ArduboyTunes::soundOutput();
}
    54ca:	ff 91       	pop	r31
    54cc:	ef 91       	pop	r30
    54ce:	bf 91       	pop	r27
    54d0:	af 91       	pop	r26
    54d2:	9f 91       	pop	r25
    54d4:	8f 91       	pop	r24
    54d6:	7f 91       	pop	r23
    54d8:	6f 91       	pop	r22
    54da:	5f 91       	pop	r21
    54dc:	4f 91       	pop	r20
    54de:	3f 91       	pop	r19
    54e0:	2f 91       	pop	r18
    54e2:	0f 90       	pop	r0
    54e4:	0f be       	out	0x3f, r0	; 63
    54e6:	0f 90       	pop	r0
    54e8:	1f 90       	pop	r1
    54ea:	18 95       	reti

000054ec <__vector_17>:
  bitWrite(TIMSK1, OCIE1A, 1);
}

// TIMER 1
ISR(TIMER1_COMPA_vect)
{
    54ec:	1f 92       	push	r1
    54ee:	0f 92       	push	r0
    54f0:	0f b6       	in	r0, 0x3f	; 63
    54f2:	0f 92       	push	r0
    54f4:	11 24       	eor	r1, r1
    54f6:	8f 93       	push	r24
    54f8:	9f 93       	push	r25
    54fa:	af 93       	push	r26
    54fc:	bf 93       	push	r27
    54fe:	ef 93       	push	r30
    5500:	ff 93       	push	r31
  if (tonePlaying) {
    5502:	80 91 7d 02 	lds	r24, 0x027D	; 0x80027d <tonePlaying>
    5506:	88 23       	and	r24, r24
    5508:	09 f4       	brne	.+2      	; 0x550c <__vector_17+0x20>
    550a:	52 c0       	rjmp	.+164    	; 0x55b0 <__vector_17+0xc4>
    if (timer1_toggle_count != 0) {
    550c:	80 91 79 02 	lds	r24, 0x0279	; 0x800279 <timer1_toggle_count>
    5510:	90 91 7a 02 	lds	r25, 0x027A	; 0x80027a <timer1_toggle_count+0x1>
    5514:	a0 91 7b 02 	lds	r26, 0x027B	; 0x80027b <timer1_toggle_count+0x2>
    5518:	b0 91 7c 02 	lds	r27, 0x027C	; 0x80027c <timer1_toggle_count+0x3>
    551c:	89 2b       	or	r24, r25
    551e:	8a 2b       	or	r24, r26
    5520:	8b 2b       	or	r24, r27
    5522:	a1 f1       	breq	.+104    	; 0x558c <__vector_17+0xa0>
      // toggle the pin
      *_tunes_timer1_pin_port ^= _tunes_timer1_pin_mask;
    5524:	90 91 8d 02 	lds	r25, 0x028D	; 0x80028d <_tunes_timer1_pin_mask>
    5528:	e0 91 8e 02 	lds	r30, 0x028E	; 0x80028e <_tunes_timer1_pin_port>
    552c:	f0 91 8f 02 	lds	r31, 0x028F	; 0x80028f <_tunes_timer1_pin_port+0x1>
    5530:	80 81       	ld	r24, Z
    5532:	89 27       	eor	r24, r25
    5534:	80 83       	st	Z, r24
      if (timer1_toggle_count > 0) timer1_toggle_count--;
    5536:	80 91 79 02 	lds	r24, 0x0279	; 0x800279 <timer1_toggle_count>
    553a:	90 91 7a 02 	lds	r25, 0x027A	; 0x80027a <timer1_toggle_count+0x1>
    553e:	a0 91 7b 02 	lds	r26, 0x027B	; 0x80027b <timer1_toggle_count+0x2>
    5542:	b0 91 7c 02 	lds	r27, 0x027C	; 0x80027c <timer1_toggle_count+0x3>
    5546:	18 16       	cp	r1, r24
    5548:	19 06       	cpc	r1, r25
    554a:	1a 06       	cpc	r1, r26
    554c:	1b 06       	cpc	r1, r27
    554e:	9c f4       	brge	.+38     	; 0x5576 <__vector_17+0x8a>
    5550:	80 91 79 02 	lds	r24, 0x0279	; 0x800279 <timer1_toggle_count>
    5554:	90 91 7a 02 	lds	r25, 0x027A	; 0x80027a <timer1_toggle_count+0x1>
    5558:	a0 91 7b 02 	lds	r26, 0x027B	; 0x80027b <timer1_toggle_count+0x2>
    555c:	b0 91 7c 02 	lds	r27, 0x027C	; 0x80027c <timer1_toggle_count+0x3>
    5560:	01 97       	sbiw	r24, 0x01	; 1
    5562:	a1 09       	sbc	r26, r1
    5564:	b1 09       	sbc	r27, r1
    5566:	80 93 79 02 	sts	0x0279, r24	; 0x800279 <timer1_toggle_count>
    556a:	90 93 7a 02 	sts	0x027A, r25	; 0x80027a <timer1_toggle_count+0x1>
    556e:	a0 93 7b 02 	sts	0x027B, r26	; 0x80027b <timer1_toggle_count+0x2>
    5572:	b0 93 7c 02 	sts	0x027C, r27	; 0x80027c <timer1_toggle_count+0x3>
    }
  }
  else {
    *_tunes_timer1_pin_port ^= _tunes_timer1_pin_mask;  // toggle the pin
  }
}
    5576:	ff 91       	pop	r31
    5578:	ef 91       	pop	r30
    557a:	bf 91       	pop	r27
    557c:	af 91       	pop	r26
    557e:	9f 91       	pop	r25
    5580:	8f 91       	pop	r24
    5582:	0f 90       	pop	r0
    5584:	0f be       	out	0x3f, r0	; 63
    5586:	0f 90       	pop	r0
    5588:	1f 90       	pop	r1
    558a:	18 95       	reti
      // toggle the pin
      *_tunes_timer1_pin_port ^= _tunes_timer1_pin_mask;
      if (timer1_toggle_count > 0) timer1_toggle_count--;
    }
    else {
      tonePlaying = false;
    558c:	10 92 7d 02 	sts	0x027D, r1	; 0x80027d <tonePlaying>
      TIMSK1 &= ~(1 << OCIE1A);                 // disable the interrupt
    5590:	80 91 6f 00 	lds	r24, 0x006F	; 0x80006f <__DATA_REGION_ORIGIN__+0xf>
    5594:	8d 7f       	andi	r24, 0xFD	; 253
    5596:	80 93 6f 00 	sts	0x006F, r24	; 0x80006f <__DATA_REGION_ORIGIN__+0xf>
      *_tunes_timer1_pin_port &= ~(_tunes_timer1_pin_mask);   // keep pin low after stop
    559a:	80 91 8d 02 	lds	r24, 0x028D	; 0x80028d <_tunes_timer1_pin_mask>
    559e:	e0 91 8e 02 	lds	r30, 0x028E	; 0x80028e <_tunes_timer1_pin_port>
    55a2:	f0 91 8f 02 	lds	r31, 0x028F	; 0x80028f <_tunes_timer1_pin_port+0x1>
    55a6:	90 81       	ld	r25, Z
    55a8:	80 95       	com	r24
    55aa:	89 23       	and	r24, r25
    }
  }
  else {
    *_tunes_timer1_pin_port ^= _tunes_timer1_pin_mask;  // toggle the pin
    55ac:	80 83       	st	Z, r24
    55ae:	e3 cf       	rjmp	.-58     	; 0x5576 <__vector_17+0x8a>
    55b0:	90 91 8d 02 	lds	r25, 0x028D	; 0x80028d <_tunes_timer1_pin_mask>
    55b4:	e0 91 8e 02 	lds	r30, 0x028E	; 0x80028e <_tunes_timer1_pin_port>
    55b8:	f0 91 8f 02 	lds	r31, 0x028F	; 0x80028f <_tunes_timer1_pin_port+0x1>
    55bc:	80 81       	ld	r24, Z
    55be:	89 27       	eor	r24, r25
    55c0:	f5 cf       	rjmp	.-22     	; 0x55ac <__vector_17+0xc0>

000055c2 <_GLOBAL__I_65535_0_MyArduboyV.cpp.o.3154>:
    55c2:	ea eb       	ldi	r30, 0xBA	; 186
    55c4:	f2 e0       	ldi	r31, 0x02	; 2
    55c6:	13 82       	std	Z+3, r1	; 0x03
    55c8:	12 82       	std	Z+2, r1	; 0x02
    55ca:	88 ee       	ldi	r24, 0xE8	; 232
    55cc:	93 e0       	ldi	r25, 0x03	; 3
    55ce:	a0 e0       	ldi	r26, 0x00	; 0
    55d0:	b0 e0       	ldi	r27, 0x00	; 0
    55d2:	84 83       	std	Z+4, r24	; 0x04
    55d4:	95 83       	std	Z+5, r25	; 0x05
    55d6:	a6 83       	std	Z+6, r26	; 0x06
    55d8:	b7 83       	std	Z+7, r27	; 0x07
    55da:	8f e1       	ldi	r24, 0x1F	; 31
    55dc:	91 e0       	ldi	r25, 0x01	; 1
    55de:	91 83       	std	Z+1, r25	; 0x01
    55e0:	80 83       	st	Z, r24
    55e2:	8f ef       	ldi	r24, 0xFF	; 255
    55e4:	9f ef       	ldi	r25, 0xFF	; 255
    55e6:	95 87       	std	Z+13, r25	; 0x0d
    55e8:	84 87       	std	Z+12, r24	; 0x0c
    55ea:	ea e0       	ldi	r30, 0x0A	; 10
    55ec:	f3 e0       	ldi	r31, 0x03	; 3
    55ee:	13 82       	std	Z+3, r1	; 0x03
    55f0:	12 82       	std	Z+2, r1	; 0x02
    55f2:	8c e3       	ldi	r24, 0x3C	; 60
    55f4:	86 83       	std	Z+6, r24	; 0x06
    55f6:	80 e1       	ldi	r24, 0x10	; 16
    55f8:	81 87       	std	Z+9, r24	; 0x09
    55fa:	10 86       	std	Z+8, r1	; 0x08
    55fc:	17 82       	std	Z+7, r1	; 0x07
    55fe:	16 86       	std	Z+14, r1	; 0x0e
    5600:	17 86       	std	Z+15, r1	; 0x0f
    5602:	10 8a       	std	Z+16, r1	; 0x10
    5604:	11 8a       	std	Z+17, r1	; 0x11
    5606:	12 8a       	std	Z+18, r1	; 0x12
    5608:	10 92 1f 07 	sts	0x071F, r1	; 0x80071f <arduboy+0x415>
    560c:	10 92 1e 07 	sts	0x071E, r1	; 0x80071e <arduboy+0x414>
    5610:	10 92 21 07 	sts	0x0721, r1	; 0x800721 <arduboy+0x417>
    5614:	10 92 20 07 	sts	0x0720, r1	; 0x800720 <arduboy+0x416>
    5618:	81 e0       	ldi	r24, 0x01	; 1
    561a:	80 93 22 07 	sts	0x0722, r24	; 0x800722 <arduboy+0x418>
    561e:	21 e3       	ldi	r18, 0x31	; 49
    5620:	31 e0       	ldi	r19, 0x01	; 1
    5622:	31 83       	std	Z+1, r19	; 0x01
    5624:	20 83       	st	Z, r18
    5626:	80 93 24 07 	sts	0x0724, r24	; 0x800724 <arduboy+0x41a>
    562a:	10 92 25 07 	sts	0x0725, r1	; 0x800725 <arduboy+0x41b>
    562e:	08 95       	ret

00005630 <main>:

void init()
{
	// this needs to be called before setup() or some functions won't
	// work there
	sei();
    5630:	78 94       	sei
	
	// on the ATmega168, timer 0 is also used for fast hardware pwm
	// (using phase-correct PWM would mean that timer 0 overflowed half as often
	// resulting in different millis() behavior on the ATmega8 and ATmega168)
#if defined(TCCR0A) && defined(WGM01)
	sbi(TCCR0A, WGM01);
    5632:	84 b5       	in	r24, 0x24	; 36
    5634:	82 60       	ori	r24, 0x02	; 2
    5636:	84 bd       	out	0x24, r24	; 36
	sbi(TCCR0A, WGM00);
    5638:	84 b5       	in	r24, 0x24	; 36
    563a:	81 60       	ori	r24, 0x01	; 1
    563c:	84 bd       	out	0x24, r24	; 36
	// this combination is for the standard atmega8
	sbi(TCCR0, CS01);
	sbi(TCCR0, CS00);
#elif defined(TCCR0B) && defined(CS01) && defined(CS00)
	// this combination is for the standard 168/328/1280/2560
	sbi(TCCR0B, CS01);
    563e:	85 b5       	in	r24, 0x25	; 37
    5640:	82 60       	ori	r24, 0x02	; 2
    5642:	85 bd       	out	0x25, r24	; 37
	sbi(TCCR0B, CS00);
    5644:	85 b5       	in	r24, 0x25	; 37
    5646:	81 60       	ori	r24, 0x01	; 1
    5648:	85 bd       	out	0x25, r24	; 37

	// enable timer 0 overflow interrupt
#if defined(TIMSK) && defined(TOIE0)
	sbi(TIMSK, TOIE0);
#elif defined(TIMSK0) && defined(TOIE0)
	sbi(TIMSK0, TOIE0);
    564a:	80 91 6e 00 	lds	r24, 0x006E	; 0x80006e <__DATA_REGION_ORIGIN__+0xe>
    564e:	81 60       	ori	r24, 0x01	; 1
    5650:	80 93 6e 00 	sts	0x006E, r24	; 0x80006e <__DATA_REGION_ORIGIN__+0xe>
	// this is better for motors as it ensures an even waveform
	// note, however, that fast pwm mode can achieve a frequency of up
	// 8 MHz (with a 16 MHz clock) at 50% duty cycle

#if defined(TCCR1B) && defined(CS11) && defined(CS10)
	TCCR1B = 0;
    5654:	10 92 81 00 	sts	0x0081, r1	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>

	// set timer 1 prescale factor to 64
	sbi(TCCR1B, CS11);
    5658:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
    565c:	82 60       	ori	r24, 0x02	; 2
    565e:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
#if F_CPU >= 8000000L
	sbi(TCCR1B, CS10);
    5662:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
    5666:	81 60       	ori	r24, 0x01	; 1
    5668:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
	sbi(TCCR1, CS10);
#endif
#endif
	// put timer 1 in 8-bit phase correct pwm mode
#if defined(TCCR1A) && defined(WGM10)
	sbi(TCCR1A, WGM10);
    566c:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
    5670:	81 60       	ori	r24, 0x01	; 1
    5672:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
//#else
	// Timer 2 not finished (may not be present on this CPU)
#endif

#if defined(TCCR3B) && defined(CS31) && defined(WGM30)
	sbi(TCCR3B, CS31);		// set timer 3 prescale factor to 64
    5676:	80 91 91 00 	lds	r24, 0x0091	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
    567a:	82 60       	ori	r24, 0x02	; 2
    567c:	80 93 91 00 	sts	0x0091, r24	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
	sbi(TCCR3B, CS30);
    5680:	80 91 91 00 	lds	r24, 0x0091	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
    5684:	81 60       	ori	r24, 0x01	; 1
    5686:	80 93 91 00 	sts	0x0091, r24	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
	sbi(TCCR3A, WGM30);		// put timer 3 in 8-bit phase correct pwm mode
    568a:	80 91 90 00 	lds	r24, 0x0090	; 0x800090 <__DATA_REGION_ORIGIN__+0x30>
    568e:	81 60       	ori	r24, 0x01	; 1
    5690:	80 93 90 00 	sts	0x0090, r24	; 0x800090 <__DATA_REGION_ORIGIN__+0x30>
#endif

#if defined(TCCR4A) && defined(TCCR4B) && defined(TCCR4D) /* beginning of timer4 block for 32U4 and similar */
	sbi(TCCR4B, CS42);		// set timer4 prescale factor to 64
    5694:	80 91 c1 00 	lds	r24, 0x00C1	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
    5698:	84 60       	ori	r24, 0x04	; 4
    569a:	80 93 c1 00 	sts	0x00C1, r24	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
	sbi(TCCR4B, CS41);
    569e:	80 91 c1 00 	lds	r24, 0x00C1	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
    56a2:	82 60       	ori	r24, 0x02	; 2
    56a4:	80 93 c1 00 	sts	0x00C1, r24	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
	sbi(TCCR4B, CS40);
    56a8:	80 91 c1 00 	lds	r24, 0x00C1	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
    56ac:	81 60       	ori	r24, 0x01	; 1
    56ae:	80 93 c1 00 	sts	0x00C1, r24	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
	sbi(TCCR4D, WGM40);		// put timer 4 in phase- and frequency-correct PWM mode	
    56b2:	80 91 c3 00 	lds	r24, 0x00C3	; 0x8000c3 <__DATA_REGION_ORIGIN__+0x63>
    56b6:	81 60       	ori	r24, 0x01	; 1
    56b8:	80 93 c3 00 	sts	0x00C3, r24	; 0x8000c3 <__DATA_REGION_ORIGIN__+0x63>
	sbi(TCCR4A, PWM4A);		// enable PWM mode for comparator OCR4A
    56bc:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__DATA_REGION_ORIGIN__+0x60>
    56c0:	82 60       	ori	r24, 0x02	; 2
    56c2:	80 93 c0 00 	sts	0x00C0, r24	; 0x8000c0 <__DATA_REGION_ORIGIN__+0x60>
	sbi(TCCR4C, PWM4D);		// enable PWM mode for comparator OCR4D
    56c6:	80 91 c2 00 	lds	r24, 0x00C2	; 0x8000c2 <__DATA_REGION_ORIGIN__+0x62>
    56ca:	81 60       	ori	r24, 0x01	; 1
    56cc:	80 93 c2 00 	sts	0x00C2, r24	; 0x8000c2 <__DATA_REGION_ORIGIN__+0x62>
#endif

#if defined(ADCSRA)
	// set a2d prescaler so we are inside the desired 50-200 KHz range.
	#if F_CPU >= 16000000 // 16 MHz / 128 = 125 KHz
		sbi(ADCSRA, ADPS2);
    56d0:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
    56d4:	84 60       	ori	r24, 0x04	; 4
    56d6:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
		sbi(ADCSRA, ADPS1);
    56da:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
    56de:	82 60       	ori	r24, 0x02	; 2
    56e0:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
		sbi(ADCSRA, ADPS0);
    56e4:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
    56e8:	81 60       	ori	r24, 0x01	; 1
    56ea:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
		cbi(ADCSRA, ADPS2);
		cbi(ADCSRA, ADPS1);
		sbi(ADCSRA, ADPS0);
	#endif
	// enable a2d conversions
	sbi(ADCSRA, ADEN);
    56ee:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
    56f2:	80 68       	ori	r24, 0x80	; 128
    56f4:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
{
}

void USBDevice_::attach()
{
	_usbConfiguration = 0;
    56f8:	10 92 b2 02 	sts	0x02B2, r1	; 0x8002b2 <_usbConfiguration>
	_usbCurrentStatus = 0;
    56fc:	10 92 a2 02 	sts	0x02A2, r1	; 0x8002a2 <_usbCurrentStatus>
	_usbSuspendState = 0;
    5700:	10 92 a4 02 	sts	0x02A4, r1	; 0x8002a4 <_usbSuspendState>
}

static inline void USB_ClockEnable()
{
#if defined(UHWCON)
	UHWCON |= (1<<UVREGE);			// power internal reg
    5704:	80 91 d7 00 	lds	r24, 0x00D7	; 0x8000d7 <__DATA_REGION_ORIGIN__+0x77>
    5708:	81 60       	ori	r24, 0x01	; 1
    570a:	80 93 d7 00 	sts	0x00D7, r24	; 0x8000d7 <__DATA_REGION_ORIGIN__+0x77>
#endif
	USBCON = (1<<USBE) | (1<<FRZCLK);	// clock frozen, usb enabled
    570e:	80 ea       	ldi	r24, 0xA0	; 160
    5710:	80 93 d8 00 	sts	0x00D8, r24	; 0x8000d8 <__DATA_REGION_ORIGIN__+0x78>

// ATmega32U4
#if defined(PINDIV)
#if F_CPU == 16000000UL
	PLLCSR |= (1<<PINDIV);                   // Need 16 MHz xtal
    5714:	89 b5       	in	r24, 0x29	; 41
    5716:	80 61       	ori	r24, 0x10	; 16
    5718:	89 bd       	out	0x29, r24	; 41
#endif
#else
#error "USB Chip not supported, please defined method of USB PLL initialization"
#endif

	PLLCSR |= (1<<PLLE);
    571a:	89 b5       	in	r24, 0x29	; 41
    571c:	82 60       	ori	r24, 0x02	; 2
    571e:	89 bd       	out	0x29, r24	; 41
	while (!(PLLCSR & (1<<PLOCK)))		// wait for lock pll
    5720:	09 b4       	in	r0, 0x29	; 41
    5722:	00 fe       	sbrs	r0, 0
    5724:	fd cf       	rjmp	.-6      	; 0x5720 <main+0xf0>
	}

	// Some tests on specific versions of macosx (10.7.3), reported some
	// strange behaviors when the board is reset using the serial
	// port touch at 1200 bps. This delay fixes this behavior.
	delay(1);
    5726:	61 e0       	ldi	r22, 0x01	; 1
    5728:	70 e0       	ldi	r23, 0x00	; 0
    572a:	80 e0       	ldi	r24, 0x00	; 0
    572c:	90 e0       	ldi	r25, 0x00	; 0
    572e:	0e 94 f3 0c 	call	0x19e6	; 0x19e6 <delay>
#if defined(OTGPADE)
	USBCON = (USBCON & ~(1<<FRZCLK)) | (1<<OTGPADE);	// start USB clock, enable VBUS Pad
    5732:	80 91 d8 00 	lds	r24, 0x00D8	; 0x8000d8 <__DATA_REGION_ORIGIN__+0x78>
    5736:	8f 7c       	andi	r24, 0xCF	; 207
    5738:	80 61       	ori	r24, 0x10	; 16
    573a:	80 93 d8 00 	sts	0x00D8, r24	; 0x8000d8 <__DATA_REGION_ORIGIN__+0x78>
	USBCON &= ~(1 << FRZCLK);	// start USB clock
#endif

#if defined(RSTCPU)
#if defined(LSM)
	UDCON &= ~((1<<RSTCPU) | (1<<LSM) | (1<<RMWKUP) | (1<<DETACH));	// enable attach resistor, set full speed mode
    573e:	80 91 e0 00 	lds	r24, 0x00E0	; 0x8000e0 <__DATA_REGION_ORIGIN__+0x80>
    5742:	80 7f       	andi	r24, 0xF0	; 240
    5744:	80 93 e0 00 	sts	0x00E0, r24	; 0x8000e0 <__DATA_REGION_ORIGIN__+0x80>
	_usbConfiguration = 0;
	_usbCurrentStatus = 0;
	_usbSuspendState = 0;
	USB_ClockEnable();

	UDINT &= ~((1<<WAKEUPI) | (1<<SUSPI)); // clear already pending WAKEUP / SUSPEND requests
    5748:	80 91 e1 00 	lds	r24, 0x00E1	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
    574c:	8e 7e       	andi	r24, 0xEE	; 238
    574e:	80 93 e1 00 	sts	0x00E1, r24	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
	UDIEN = (1<<EORSTE) | (1<<SOFE) | (1<<SUSPE);	// Enable interrupts for EOR (End of Reset), SOF (start of frame) and SUSPEND
    5752:	8d e0       	ldi	r24, 0x0D	; 13
    5754:	80 93 e2 00 	sts	0x00E2, r24	; 0x8000e2 <__DATA_REGION_ORIGIN__+0x82>
	
	TX_RX_LED_INIT;
    5758:	55 9a       	sbi	0x0a, 5	; 10
    575a:	20 9a       	sbi	0x04, 0	; 4
uint8_t SPIClass::inTransactionFlag = 0;
#endif

void SPIClass::begin()
{
  uint8_t sreg = SREG;
    575c:	cf b7       	in	r28, 0x3f	; 63
  noInterrupts(); // Protect from a scheduler and prevent transactionBegin
    575e:	f8 94       	cli
  if (!initialized) {
    5760:	80 91 90 02 	lds	r24, 0x0290	; 0x800290 <_ZN8SPIClass11initializedE>
    5764:	81 11       	cpse	r24, r1
    5766:	27 c0       	rjmp	.+78     	; 0x57b6 <main+0x186>
    // Set SS to high so a connected chip will be "deselected" by default
    uint8_t port = digitalPinToPort(SS);
    5768:	e3 e3       	ldi	r30, 0x33	; 51
    576a:	fe e0       	ldi	r31, 0x0E	; 14
    576c:	84 91       	lpm	r24, Z
    uint8_t bit = digitalPinToBitMask(SS);
    576e:	e6 e0       	ldi	r30, 0x06	; 6
    5770:	fe e0       	ldi	r31, 0x0E	; 14
    5772:	94 91       	lpm	r25, Z
    volatile uint8_t *reg = portModeRegister(port);
    5774:	e8 2f       	mov	r30, r24
    5776:	f0 e0       	ldi	r31, 0x00	; 0
    5778:	ee 0f       	add	r30, r30
    577a:	ff 1f       	adc	r31, r31
    577c:	e6 52       	subi	r30, 0x26	; 38
    577e:	f2 4f       	sbci	r31, 0xF2	; 242
    5780:	a5 91       	lpm	r26, Z+
    5782:	b4 91       	lpm	r27, Z

    // if the SS pin is not already configured as an output
    // then set it high (to enable the internal pull-up resistor)
    if(!(*reg & bit)){
    5784:	ec 91       	ld	r30, X
    5786:	e9 23       	and	r30, r25
    5788:	21 f4       	brne	.+8      	; 0x5792 <main+0x162>
      digitalWrite(SS, HIGH);
    578a:	61 e0       	ldi	r22, 0x01	; 1
    578c:	81 e1       	ldi	r24, 0x11	; 17
    578e:	0e 94 60 0b 	call	0x16c0	; 0x16c0 <digitalWrite>
    }

    // When the SS pin is set as OUTPUT, it can be used as
    // a general purpose output port (it doesn't influence
    // SPI operations).
    pinMode(SS, OUTPUT);
    5792:	61 e0       	ldi	r22, 0x01	; 1
    5794:	81 e1       	ldi	r24, 0x11	; 17
    5796:	0e 94 d1 0b 	call	0x17a2	; 0x17a2 <pinMode>

    // Warning: if the SS pin ever becomes a LOW INPUT then SPI
    // automatically switches to Slave, so the data direction of
    // the SS pin MUST be kept as OUTPUT.
    SPCR |= _BV(MSTR);
    579a:	8c b5       	in	r24, 0x2c	; 44
    579c:	80 61       	ori	r24, 0x10	; 16
    579e:	8c bd       	out	0x2c, r24	; 44
    SPCR |= _BV(SPE);
    57a0:	8c b5       	in	r24, 0x2c	; 44
    57a2:	80 64       	ori	r24, 0x40	; 64
    57a4:	8c bd       	out	0x2c, r24	; 44
    // MISO pin automatically overrides to INPUT.
    // By doing this AFTER enabling SPI, we avoid accidentally
    // clocking in a single bit since the lines go directly
    // from "input" to SPI control.
    // http://code.google.com/p/arduino/issues/detail?id=888
    pinMode(SCK, OUTPUT);
    57a6:	61 e0       	ldi	r22, 0x01	; 1
    57a8:	8f e0       	ldi	r24, 0x0F	; 15
    57aa:	0e 94 d1 0b 	call	0x17a2	; 0x17a2 <pinMode>
    pinMode(MOSI, OUTPUT);
    57ae:	61 e0       	ldi	r22, 0x01	; 1
    57b0:	80 e1       	ldi	r24, 0x10	; 16
    57b2:	0e 94 d1 0b 	call	0x17a2	; 0x17a2 <pinMode>
  }
  initialized++; // reference count
    57b6:	80 91 90 02 	lds	r24, 0x0290	; 0x800290 <_ZN8SPIClass11initializedE>
    57ba:	8f 5f       	subi	r24, 0xFF	; 255
    57bc:	80 93 90 02 	sts	0x0290, r24	; 0x800290 <_ZN8SPIClass11initializedE>
  SREG = sreg;
    57c0:	cf bf       	out	0x3f, r28	; 63
#endif

void ArduboyCore::bootPins()
{
  uint8_t pin, mode;
  const uint8_t *i = pinBootProgram;
    57c2:	c1 e4       	ldi	r28, 0x41	; 65
    57c4:	de e0       	ldi	r29, 0x0E	; 14

  while(true) {
    pin = pgm_read_byte(i++);
    57c6:	be 01       	movw	r22, r28
    57c8:	fe 01       	movw	r30, r28
    57ca:	84 91       	lpm	r24, Z
    mode = pgm_read_byte(i++);
    57cc:	6f 5f       	subi	r22, 0xFF	; 255
    57ce:	7f 4f       	sbci	r23, 0xFF	; 255
    57d0:	22 96       	adiw	r28, 0x02	; 2
    57d2:	fb 01       	movw	r30, r22
    57d4:	64 91       	lpm	r22, Z
    if (pin==0) break;
    57d6:	88 23       	and	r24, r24
    57d8:	19 f0       	breq	.+6      	; 0x57e0 <main+0x1b0>
    pinMode(pin, mode);
    57da:	0e 94 d1 0b 	call	0x17a2	; 0x17a2 <pinMode>
    57de:	f3 cf       	rjmp	.-26     	; 0x57c6 <main+0x196>
  }

  digitalWrite(RST, HIGH);
    57e0:	61 e0       	ldi	r22, 0x01	; 1
    57e2:	86 e0       	ldi	r24, 0x06	; 6
    57e4:	0e 94 60 0b 	call	0x16c0	; 0x16c0 <digitalWrite>
  delay(1);           // VDD (3.3V) goes high at start, lets just chill for a ms
    57e8:	61 e0       	ldi	r22, 0x01	; 1
    57ea:	70 e0       	ldi	r23, 0x00	; 0
    57ec:	80 e0       	ldi	r24, 0x00	; 0
    57ee:	90 e0       	ldi	r25, 0x00	; 0
    57f0:	0e 94 f3 0c 	call	0x19e6	; 0x19e6 <delay>
  digitalWrite(RST, LOW);   // bring reset low
    57f4:	60 e0       	ldi	r22, 0x00	; 0
    57f6:	86 e0       	ldi	r24, 0x06	; 6
    57f8:	0e 94 60 0b 	call	0x16c0	; 0x16c0 <digitalWrite>
  delay(10);          // wait 10ms
    57fc:	6a e0       	ldi	r22, 0x0A	; 10
    57fe:	70 e0       	ldi	r23, 0x00	; 0
    5800:	80 e0       	ldi	r24, 0x00	; 0
    5802:	90 e0       	ldi	r25, 0x00	; 0
    5804:	0e 94 f3 0c 	call	0x19e6	; 0x19e6 <delay>
  digitalWrite(RST, HIGH);  // bring out of reset
    5808:	61 e0       	ldi	r22, 0x01	; 1
    580a:	86 e0       	ldi	r24, 0x06	; 6
    580c:	0e 94 60 0b 	call	0x16c0	; 0x16c0 <digitalWrite>
}

void ArduboyCore::bootLCD()
{
  // setup the ports we need to talk to the OLED
  csport = portOutputRegister(digitalPinToPort(CS));
    5810:	ee e2       	ldi	r30, 0x2E	; 46
    5812:	fe e0       	ldi	r31, 0x0E	; 14
    5814:	e4 91       	lpm	r30, Z
    5816:	f0 e0       	ldi	r31, 0x00	; 0
    5818:	ee 0f       	add	r30, r30
    581a:	ff 1f       	adc	r31, r31
    581c:	ec 5e       	subi	r30, 0xEC	; 236
    581e:	f1 4f       	sbci	r31, 0xF1	; 241
    5820:	85 91       	lpm	r24, Z+
    5822:	94 91       	lpm	r25, Z
    5824:	90 93 96 02 	sts	0x0296, r25	; 0x800296 <_ZN11ArduboyCore6csportE+0x1>
    5828:	80 93 95 02 	sts	0x0295, r24	; 0x800295 <_ZN11ArduboyCore6csportE>
  cspinmask = digitalPinToBitMask(CS);
    582c:	e1 e0       	ldi	r30, 0x01	; 1
    582e:	fe e0       	ldi	r31, 0x0E	; 14
    5830:	e4 91       	lpm	r30, Z
    5832:	e0 93 94 02 	sts	0x0294, r30	; 0x800294 <_ZN11ArduboyCore9cspinmaskE>
  dcport = portOutputRegister(digitalPinToPort(DC));
    5836:	e6 e2       	ldi	r30, 0x26	; 38
    5838:	fe e0       	ldi	r31, 0x0E	; 14
    583a:	e4 91       	lpm	r30, Z
    583c:	f0 e0       	ldi	r31, 0x00	; 0
    583e:	ee 0f       	add	r30, r30
    5840:	ff 1f       	adc	r31, r31
    5842:	ec 5e       	subi	r30, 0xEC	; 236
    5844:	f1 4f       	sbci	r31, 0xF1	; 241
    5846:	85 91       	lpm	r24, Z+
    5848:	94 91       	lpm	r25, Z
    584a:	90 93 93 02 	sts	0x0293, r25	; 0x800293 <_ZN11ArduboyCore6dcportE+0x1>
    584e:	80 93 92 02 	sts	0x0292, r24	; 0x800292 <_ZN11ArduboyCore6dcportE>
  dcpinmask = digitalPinToBitMask(DC);
    5852:	e9 ef       	ldi	r30, 0xF9	; 249
    5854:	fd e0       	ldi	r31, 0x0D	; 13
    5856:	e4 91       	lpm	r30, Z
    5858:	e0 93 91 02 	sts	0x0291, r30	; 0x800291 <_ZN11ArduboyCore9dcpinmaskE>
    SPCR = (SPCR & ~SPI_MODE_MASK) | dataMode;
  }
  // This function is deprecated.  New applications should use
  // beginTransaction() to configure SPI settings.
  inline static void setClockDivider(uint8_t clockDiv) {
    SPCR = (SPCR & ~SPI_CLOCK_MASK) | (clockDiv & SPI_CLOCK_MASK);
    585c:	8c b5       	in	r24, 0x2c	; 44
    585e:	8c 7f       	andi	r24, 0xFC	; 252
    5860:	8c bd       	out	0x2c, r24	; 44
    SPSR = (SPSR & ~SPI_2XCLOCK_MASK) | ((clockDiv >> 2) & SPI_2XCLOCK_MASK);
    5862:	8d b5       	in	r24, 0x2d	; 45
    5864:	81 60       	ori	r24, 0x01	; 1
    5866:	8d bd       	out	0x2d, r24	; 45

  SPI.setClockDivider(SPI_CLOCK_DIV2);

  LCDCommandMode();
    5868:	0e 94 cf 0d 	call	0x1b9e	; 0x1b9e <_ZN11ArduboyCore14LCDCommandModeEv>
    586c:	e8 ee       	ldi	r30, 0xE8	; 232
    586e:	fd e0       	ldi	r31, 0x0D	; 13
    5870:	85 ef       	ldi	r24, 0xF5	; 245
    5872:	9d e0       	ldi	r25, 0x0D	; 13
  // run our customized boot-up command sequence against the
  // OLED to initialize it properly for Arduboy
  for (int8_t i=0; i < sizeof(lcdBootProgram); i++) {
    5874:	8e 17       	cp	r24, r30
    5876:	9f 07       	cpc	r25, r31
    5878:	49 f0       	breq	.+18     	; 0x588c <main+0x25c>
    SPI.transfer(pgm_read_byte(lcdBootProgram + i));
    587a:	24 91       	lpm	r18, Z
    SPSR = settings.spsr;
  }

  // Write to the SPI bus (MOSI pin) and also receive (MISO pin)
  inline static uint8_t transfer(uint8_t data) {
    SPDR = data;
    587c:	2e bd       	out	0x2e, r18	; 46
     * The following NOP introduces a small delay that can prevent the wait
     * loop form iterating when running at the maximum speed. This gives
     * about 10% more speed, even if it seems counter-intuitive. At lower
     * speeds it is unnoticed.
     */
    asm volatile("nop");
    587e:	00 00       	nop
    while (!(SPSR & _BV(SPIF))) ; // wait
    5880:	0d b4       	in	r0, 0x2d	; 45
    5882:	07 fe       	sbrs	r0, 7
    5884:	fd cf       	rjmp	.-6      	; 0x5880 <main+0x250>
    return SPDR;
    5886:	2e b5       	in	r18, 0x2e	; 46
    5888:	31 96       	adiw	r30, 0x01	; 1
    588a:	f4 cf       	rjmp	.-24     	; 0x5874 <main+0x244>
  }
  LCDDataMode();
    588c:	0e 94 e7 0d 	call	0x1bce	; 0x1bce <_ZN11ArduboyCore11LCDDataModeEv>
  sleep_mode();
}

void ArduboyCore::saveMuchPower()
{
  power_adc_disable();
    5890:	80 91 64 00 	lds	r24, 0x0064	; 0x800064 <__DATA_REGION_ORIGIN__+0x4>
    5894:	81 60       	ori	r24, 0x01	; 1
    5896:	80 93 64 00 	sts	0x0064, r24	; 0x800064 <__DATA_REGION_ORIGIN__+0x4>
  power_usart0_disable();
    589a:	80 91 64 00 	lds	r24, 0x0064	; 0x800064 <__DATA_REGION_ORIGIN__+0x4>
    589e:	82 60       	ori	r24, 0x02	; 2
    58a0:	80 93 64 00 	sts	0x0064, r24	; 0x800064 <__DATA_REGION_ORIGIN__+0x4>
  power_twi_disable();
    58a4:	80 91 64 00 	lds	r24, 0x0064	; 0x800064 <__DATA_REGION_ORIGIN__+0x4>
    58a8:	80 68       	ori	r24, 0x80	; 128
    58aa:	80 93 64 00 	sts	0x0064, r24	; 0x800064 <__DATA_REGION_ORIGIN__+0x4>
  // timer 0 is for millis()
  // timers 1 and 3 are for music and sounds
  power_timer2_disable();
    58ae:	80 91 64 00 	lds	r24, 0x0064	; 0x800064 <__DATA_REGION_ORIGIN__+0x4>
    58b2:	80 64       	ori	r24, 0x40	; 64
    58b4:	80 93 64 00 	sts	0x0064, r24	; 0x800064 <__DATA_REGION_ORIGIN__+0x4>
  power_usart1_disable();
    58b8:	80 91 65 00 	lds	r24, 0x0065	; 0x800065 <__DATA_REGION_ORIGIN__+0x5>
    58bc:	81 60       	ori	r24, 0x01	; 1
    58be:	80 93 65 00 	sts	0x0065, r24	; 0x800065 <__DATA_REGION_ORIGIN__+0x5>
}


boolean Arduboy::pressed(uint8_t buttons)
{
  return (buttonsState() & buttons) == buttons;
    58c2:	0e 94 aa 0d 	call	0x1b54	; 0x1b54 <_ZN11ArduboyCore12buttonsStateEv>
    58c6:	87 ff       	sbrs	r24, 7
    58c8:	18 c0       	rjmp	.+48     	; 0x58fa <main+0x2ca>
    SPI.transfer(0x00);
}

void ArduboyCore::sendLCDCommand(uint8_t command)
{
  LCDCommandMode();
    58ca:	0e 94 cf 0d 	call	0x1b9e	; 0x1b9e <_ZN11ArduboyCore14LCDCommandModeEv>
    SPSR = settings.spsr;
  }

  // Write to the SPI bus (MOSI pin) and also receive (MISO pin)
  inline static uint8_t transfer(uint8_t data) {
    SPDR = data;
    58ce:	85 ea       	ldi	r24, 0xA5	; 165
    58d0:	8e bd       	out	0x2e, r24	; 46
     * The following NOP introduces a small delay that can prevent the wait
     * loop form iterating when running at the maximum speed. This gives
     * about 10% more speed, even if it seems counter-intuitive. At lower
     * speeds it is unnoticed.
     */
    asm volatile("nop");
    58d2:	00 00       	nop
    while (!(SPSR & _BV(SPIF))) ; // wait
    58d4:	0d b4       	in	r0, 0x2d	; 45
    58d6:	07 fe       	sbrs	r0, 7
    58d8:	fd cf       	rjmp	.-6      	; 0x58d4 <main+0x2a4>
    return SPDR;
    58da:	8e b5       	in	r24, 0x2e	; 46
  SPI.transfer(command);
  LCDDataMode();
    58dc:	0e 94 e7 0d 	call	0x1bce	; 0x1bce <_ZN11ArduboyCore11LCDDataModeEv>
    58e0:	4f ef       	ldi	r20, 0xFF	; 255
    58e2:	6f ef       	ldi	r22, 0xFF	; 255
    58e4:	8f ef       	ldi	r24, 0xFF	; 255
    58e6:	0e 94 b0 0c 	call	0x1960	; 0x1960 <_ZN11ArduboyCore9setRGBledEhhh.constprop.59>
    58ea:	80 91 64 00 	lds	r24, 0x0064	; 0x800064 <__DATA_REGION_ORIGIN__+0x4>
    58ee:	80 62       	ori	r24, 0x20	; 32
    58f0:	80 93 64 00 	sts	0x0064, r24	; 0x800064 <__DATA_REGION_ORIGIN__+0x4>
    58f4:	0e 94 c4 0d 	call	0x1b88	; 0x1b88 <_ZN11ArduboyCore4idleEv>
    58f8:	fd cf       	rjmp	.-6      	; 0x58f4 <main+0x2c4>
void ArduboyTunes::initChannel(byte pin)
{
  byte timer_num;

  // we are all out of timers
  if (_tune_num_chans == AVAILABLE_TIMERS)
    58fa:	80 91 b3 02 	lds	r24, 0x02B3	; 0x8002b3 <_tune_num_chans>
    58fe:	82 30       	cpi	r24, 0x02	; 2
    5900:	91 f0       	breq	.+36     	; 0x5926 <main+0x2f6>
    return;

  timer_num = pgm_read_byte(tune_pin_to_timer_PGM + _tune_num_chans);
    5902:	e8 2f       	mov	r30, r24
    5904:	f0 e0       	ldi	r31, 0x00	; 0
    5906:	e8 52       	subi	r30, 0x28	; 40
    5908:	f2 4f       	sbci	r31, 0xF2	; 242
    590a:	c4 91       	lpm	r28, Z
  _tune_pins[_tune_num_chans] = pin;
  _tune_num_chans++;
    590c:	8f 5f       	subi	r24, 0xFF	; 255
    590e:	80 93 b3 02 	sts	0x02B3, r24	; 0x8002b3 <_tune_num_chans>
  pinMode(pin, OUTPUT);
    5912:	61 e0       	ldi	r22, 0x01	; 1
    5914:	85 e0       	ldi	r24, 0x05	; 5
    5916:	0e 94 d1 0b 	call	0x17a2	; 0x17a2 <pinMode>
  switch (timer_num) {
    591a:	c1 30       	cpi	r28, 0x01	; 1
    591c:	09 f4       	brne	.+2      	; 0x5920 <main+0x2f0>
    591e:	6d c0       	rjmp	.+218    	; 0x59fa <main+0x3ca>
    5920:	c3 30       	cpi	r28, 0x03	; 3
    5922:	09 f4       	brne	.+2      	; 0x5926 <main+0x2f6>
    5924:	8c c0       	rjmp	.+280    	; 0x5a3e <main+0x40e>
    5926:	61 e0       	ldi	r22, 0x01	; 1
    5928:	8d e0       	ldi	r24, 0x0D	; 13
    592a:	0e 94 d1 0b 	call	0x17a2	; 0x17a2 <pinMode>

    EERef( const int index )
        : index( index )                 {}
    
    //Access/read members.
    uint8_t operator*() const            { return eeprom_read_byte( (uint8_t*) index ); }
    592e:	82 e0       	ldi	r24, 0x02	; 2
    5930:	90 e0       	ldi	r25, 0x00	; 0
    5932:	0e 94 e1 2e 	call	0x5dc2	; 0x5dc2 <eeprom_read_byte>
    5936:	88 23       	and	r24, r24
    5938:	09 f4       	brne	.+2      	; 0x593c <main+0x30c>
    593a:	ae c0       	rjmp	.+348    	; 0x5a98 <main+0x468>
    593c:	80 91 65 00 	lds	r24, 0x0065	; 0x800065 <__DATA_REGION_ORIGIN__+0x5>
    5940:	87 7f       	andi	r24, 0xF7	; 247
    5942:	80 93 65 00 	sts	0x0065, r24	; 0x800065 <__DATA_REGION_ORIGIN__+0x5>
    5946:	81 e0       	ldi	r24, 0x01	; 1
    5948:	80 93 b9 02 	sts	0x02B9, r24	; 0x8002b9 <_ZN12ArduboyAudio13audio_enabledE>

/* Frame management */

void Arduboy::setFrameRate(uint8_t rate)
{
  frameRate = rate;
    594c:	8c e3       	ldi	r24, 0x3C	; 60
    594e:	80 93 10 03 	sts	0x0310, r24	; 0x800310 <arduboy+0x6>
  eachFrameMillis = 1000/rate;
    5952:	80 e1       	ldi	r24, 0x10	; 16
    5954:	80 93 13 03 	sts	0x0313, r24	; 0x800313 <arduboy+0x9>
    5958:	81 e0       	ldi	r24, 0x01	; 1
    595a:	80 93 24 07 	sts	0x0724, r24	; 0x800724 <arduboy+0x41a>
    595e:	80 93 25 07 	sts	0x0725, r24	; 0x800725 <arduboy+0x41b>
    arduboy.sendLCDCommand(0xA0); // Flip horizontal
    arduboy.sendLCDCommand(0xC0); // Flip vertical
#endif
    arduboy.setFrameRate(FPS);
    arduboy.setTextColor(WHITE, WHITE);
    mode = MODE_LOGO;
    5962:	10 92 9c 02 	sts	0x029C, r1	; 0x80029c <_ZL4mode+0x1>
    5966:	10 92 9b 02 	sts	0x029B, r1	; 0x80029b <_ZL4mode>
    callInitFunc(mode);
    596a:	e4 e5       	ldi	r30, 0x54	; 84
    596c:	fe e0       	ldi	r31, 0x0E	; 14
    596e:	85 91       	lpm	r24, Z+
    5970:	94 91       	lpm	r25, Z
    5972:	fc 01       	movw	r30, r24
    5974:	09 95       	icall
{
#ifdef DEBUG
    dbgCheckSerialRecv();
#endif
    if (!(arduboy.nextFrame())) return;
    MODE_T nextMode = callUpdateFunc(mode);
    5976:	86 e0       	ldi	r24, 0x06	; 6
    5978:	d8 2e       	mov	r13, r24
    597a:	ce e1       	ldi	r28, 0x1E	; 30
    597c:	d7 e0       	ldi	r29, 0x07	; 7
	
	setup();
    
	for (;;) {
		loop();
		if (serialEventRun) serialEventRun();
    597e:	00 e0       	ldi	r16, 0x00	; 0
    5980:	10 e0       	ldi	r17, 0x00	; 0
  // running a slow render we would constnatly be behind the clock
  // keep an eye on this and see how it works.  If it works well the
  // lastFrameStart variable could be eliminated completely
  nextFrameStart = now + eachFrameMillis;
  lastFrameStart = now;
  post_render = true;
    5982:	cc 24       	eor	r12, r12
    5984:	c3 94       	inc	r12
}

unsigned long millis()
{
	unsigned long m;
	uint8_t oldSREG = SREG;
    5986:	2f b7       	in	r18, 0x3f	; 63

	// disable interrupts while we read timer0_millis or we might get an
	// inconsistent value (e.g. in the middle of a write to timer0_millis)
	cli();
    5988:	f8 94       	cli
	m = timer0_millis;
    598a:	80 91 97 02 	lds	r24, 0x0297	; 0x800297 <timer0_millis>
    598e:	90 91 98 02 	lds	r25, 0x0298	; 0x800298 <timer0_millis+0x1>
    5992:	a0 91 99 02 	lds	r26, 0x0299	; 0x800299 <timer0_millis+0x2>
    5996:	b0 91 9a 02 	lds	r27, 0x029A	; 0x80029a <timer0_millis+0x3>
	SREG = oldSREG;
    599a:	2f bf       	out	0x3f, r18	; 63
{
  long now = millis();
  uint8_t remaining;

  // post render
  if (post_render) {
    599c:	20 91 1c 03 	lds	r18, 0x031C	; 0x80031c <arduboy+0x12>
    59a0:	22 23       	and	r18, r18
    59a2:	91 f0       	breq	.+36     	; 0x59c8 <main+0x398>
    lastFrameDurationMs = now - lastFrameStart;
    59a4:	20 91 14 03 	lds	r18, 0x0314	; 0x800314 <arduboy+0xa>
    59a8:	f8 2f       	mov	r31, r24
    59aa:	f2 1b       	sub	r31, r18
    59ac:	f0 93 1d 03 	sts	0x031D, r31	; 0x80031d <arduboy+0x13>
    frameCount++;
    59b0:	20 91 11 03 	lds	r18, 0x0311	; 0x800311 <arduboy+0x7>
    59b4:	30 91 12 03 	lds	r19, 0x0312	; 0x800312 <arduboy+0x8>
    59b8:	2f 5f       	subi	r18, 0xFF	; 255
    59ba:	3f 4f       	sbci	r19, 0xFF	; 255
    59bc:	30 93 12 03 	sts	0x0312, r19	; 0x800312 <arduboy+0x8>
    59c0:	20 93 11 03 	sts	0x0311, r18	; 0x800311 <arduboy+0x7>
    post_render = false;
    59c4:	10 92 1c 03 	sts	0x031C, r1	; 0x80031c <arduboy+0x12>
  }

  // if it's not time for the next frame yet
  if (now < nextFrameStart) {
    59c8:	40 91 18 03 	lds	r20, 0x0318	; 0x800318 <arduboy+0xe>
    59cc:	50 91 19 03 	lds	r21, 0x0319	; 0x800319 <arduboy+0xf>
    59d0:	60 91 1a 03 	lds	r22, 0x031A	; 0x80031a <arduboy+0x10>
    59d4:	70 91 1b 03 	lds	r23, 0x031B	; 0x80031b <arduboy+0x11>
    59d8:	84 17       	cp	r24, r20
    59da:	95 07       	cpc	r25, r21
    59dc:	a6 07       	cpc	r26, r22
    59de:	b7 07       	cpc	r27, r23
    59e0:	0c f0       	brlt	.+2      	; 0x59e4 <main+0x3b4>
    59e2:	62 c0       	rjmp	.+196    	; 0x5aa8 <main+0x478>
    remaining = nextFrameStart - now;
    59e4:	48 1b       	sub	r20, r24
    // if we have more than 1ms to spare, lets sleep
    // we should be woken up by timer0 every 1ms, so this should be ok
    if (remaining > 1)
    59e6:	42 30       	cpi	r20, 0x02	; 2
    59e8:	10 f0       	brcs	.+4      	; 0x59ee <main+0x3be>
      idle();
    59ea:	0e 94 c4 0d 	call	0x1b88	; 0x1b88 <_ZN11ArduboyCore4idleEv>
    59ee:	01 15       	cp	r16, r1
    59f0:	11 05       	cpc	r17, r1
    59f2:	49 f2       	breq	.-110    	; 0x5986 <main+0x356>
    59f4:	0e 94 00 00 	call	0	; 0x0 <__vectors>
    59f8:	c6 cf       	rjmp	.-116    	; 0x5986 <main+0x356>
    case 1: // 16 bit timer
      TCCR1A = 0;
    59fa:	10 92 80 00 	sts	0x0080, r1	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
      TCCR1B = 0;
    59fe:	10 92 81 00 	sts	0x0081, r1	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
      bitWrite(TCCR1B, WGM12, 1);
    5a02:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
    5a06:	88 60       	ori	r24, 0x08	; 8
    5a08:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
      bitWrite(TCCR1B, CS10, 1);
    5a0c:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
    5a10:	81 60       	ori	r24, 0x01	; 1
    5a12:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
      _tunes_timer1_pin_port = portOutputRegister(digitalPinToPort(pin));
    5a16:	e7 e2       	ldi	r30, 0x27	; 39
    5a18:	fe e0       	ldi	r31, 0x0E	; 14
    5a1a:	e4 91       	lpm	r30, Z
    5a1c:	f0 e0       	ldi	r31, 0x00	; 0
    5a1e:	ee 0f       	add	r30, r30
    5a20:	ff 1f       	adc	r31, r31
    5a22:	ec 5e       	subi	r30, 0xEC	; 236
    5a24:	f1 4f       	sbci	r31, 0xF1	; 241
    5a26:	85 91       	lpm	r24, Z+
    5a28:	94 91       	lpm	r25, Z
    5a2a:	90 93 8f 02 	sts	0x028F, r25	; 0x80028f <_tunes_timer1_pin_port+0x1>
    5a2e:	80 93 8e 02 	sts	0x028E, r24	; 0x80028e <_tunes_timer1_pin_port>
      _tunes_timer1_pin_mask = digitalPinToBitMask(pin);
    5a32:	ea ef       	ldi	r30, 0xFA	; 250
    5a34:	fd e0       	ldi	r31, 0x0D	; 13
    5a36:	e4 91       	lpm	r30, Z
    5a38:	e0 93 8d 02 	sts	0x028D, r30	; 0x80028d <_tunes_timer1_pin_mask>
    5a3c:	74 cf       	rjmp	.-280    	; 0x5926 <main+0x2f6>
      break;
    case 3: // 16 bit timer
      TCCR3A = 0;
    5a3e:	10 92 90 00 	sts	0x0090, r1	; 0x800090 <__DATA_REGION_ORIGIN__+0x30>
      TCCR3B = 0;
    5a42:	10 92 91 00 	sts	0x0091, r1	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
      bitWrite(TCCR3B, WGM32, 1);
    5a46:	80 91 91 00 	lds	r24, 0x0091	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
    5a4a:	88 60       	ori	r24, 0x08	; 8
    5a4c:	80 93 91 00 	sts	0x0091, r24	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
      bitWrite(TCCR3B, CS30, 1);
    5a50:	80 91 91 00 	lds	r24, 0x0091	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
    5a54:	81 60       	ori	r24, 0x01	; 1
    5a56:	80 93 91 00 	sts	0x0091, r24	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
      _tunes_timer3_pin_port = portOutputRegister(digitalPinToPort(pin));
    5a5a:	e7 e2       	ldi	r30, 0x27	; 39
    5a5c:	fe e0       	ldi	r31, 0x0E	; 14
    5a5e:	e4 91       	lpm	r30, Z
    5a60:	f0 e0       	ldi	r31, 0x00	; 0
    5a62:	ee 0f       	add	r30, r30
    5a64:	ff 1f       	adc	r31, r31
    5a66:	ec 5e       	subi	r30, 0xEC	; 236
    5a68:	f1 4f       	sbci	r31, 0xF1	; 241
    5a6a:	85 91       	lpm	r24, Z+
    5a6c:	94 91       	lpm	r25, Z
    5a6e:	90 93 8c 02 	sts	0x028C, r25	; 0x80028c <_tunes_timer3_pin_port+0x1>
    5a72:	80 93 8b 02 	sts	0x028B, r24	; 0x80028b <_tunes_timer3_pin_port>
      _tunes_timer3_pin_mask = digitalPinToBitMask(pin);
    5a76:	ea ef       	ldi	r30, 0xFA	; 250
    5a78:	fd e0       	ldi	r31, 0x0D	; 13
    5a7a:	e4 91       	lpm	r30, Z
    5a7c:	e0 93 8a 02 	sts	0x028A, r30	; 0x80028a <_tunes_timer3_pin_mask>
  byte prescalar_bits;
  unsigned int frequency2; /* frequency times 2 */
  unsigned long ocr;

  // we can't plan on a channel that does not exist
  if (chan >= _tune_num_chans)
    5a80:	80 91 b3 02 	lds	r24, 0x02B3	; 0x8002b3 <_tune_num_chans>
    5a84:	88 23       	and	r24, r24
    5a86:	21 f0       	breq	.+8      	; 0x5a90 <main+0x460>
    5a88:	6c e3       	ldi	r22, 0x3C	; 60
    5a8a:	80 e0       	ldi	r24, 0x00	; 0
    5a8c:	0e 94 fb 0d 	call	0x1bf6	; 0x1bf6 <_ZN12ArduboyTunes8playNoteEhh.part.2>
      bitWrite(TCCR3B, WGM32, 1);
      bitWrite(TCCR3B, CS30, 1);
      _tunes_timer3_pin_port = portOutputRegister(digitalPinToPort(pin));
      _tunes_timer3_pin_mask = digitalPinToBitMask(pin);
      playNote(0, 60);  /* start and stop channel 0 (timer 3) on middle C so wait/delay works */
      stopNote(0);
    5a90:	80 e0       	ldi	r24, 0x00	; 0
    5a92:	0e 94 6c 0e 	call	0x1cd8	; 0x1cd8 <_ZN12ArduboyTunes8stopNoteEh>
    5a96:	47 cf       	rjmp	.-370    	; 0x5926 <main+0x2f6>
    5a98:	10 92 b9 02 	sts	0x02B9, r1	; 0x8002b9 <_ZN12ArduboyAudio13audio_enabledE>
    5a9c:	80 91 65 00 	lds	r24, 0x0065	; 0x800065 <__DATA_REGION_ORIGIN__+0x5>
    5aa0:	88 60       	ori	r24, 0x08	; 8
    5aa2:	80 93 65 00 	sts	0x0065, r24	; 0x800065 <__DATA_REGION_ORIGIN__+0x5>
    5aa6:	52 cf       	rjmp	.-348    	; 0x594c <main+0x31c>

  // technically next frame should be last frame + each frame but if we're
  // running a slow render we would constnatly be behind the clock
  // keep an eye on this and see how it works.  If it works well the
  // lastFrameStart variable could be eliminated completely
  nextFrameStart = now + eachFrameMillis;
    5aa8:	20 91 13 03 	lds	r18, 0x0313	; 0x800313 <arduboy+0x9>
    5aac:	ac 01       	movw	r20, r24
    5aae:	bd 01       	movw	r22, r26
    5ab0:	42 0f       	add	r20, r18
    5ab2:	51 1d       	adc	r21, r1
    5ab4:	61 1d       	adc	r22, r1
    5ab6:	71 1d       	adc	r23, r1
    5ab8:	40 93 18 03 	sts	0x0318, r20	; 0x800318 <arduboy+0xe>
    5abc:	50 93 19 03 	sts	0x0319, r21	; 0x800319 <arduboy+0xf>
    5ac0:	60 93 1a 03 	sts	0x031A, r22	; 0x80031a <arduboy+0x10>
    5ac4:	70 93 1b 03 	sts	0x031B, r23	; 0x80031b <arduboy+0x11>
  lastFrameStart = now;
    5ac8:	80 93 14 03 	sts	0x0314, r24	; 0x800314 <arduboy+0xa>
    5acc:	90 93 15 03 	sts	0x0315, r25	; 0x800315 <arduboy+0xb>
    5ad0:	a0 93 16 03 	sts	0x0316, r26	; 0x800316 <arduboy+0xc>
    5ad4:	b0 93 17 03 	sts	0x0317, r27	; 0x800317 <arduboy+0xd>
  post_render = true;
    5ad8:	c0 92 1c 03 	sts	0x031C, r12	; 0x80031c <arduboy+0x12>
    5adc:	80 91 27 07 	lds	r24, 0x0727	; 0x800727 <arduboy+0x41d>
    5ae0:	80 93 26 07 	sts	0x0726, r24	; 0x800726 <arduboy+0x41c>
    5ae4:	0e 94 aa 0d 	call	0x1b54	; 0x1b54 <_ZN11ArduboyCore12buttonsStateEv>
    5ae8:	80 93 27 07 	sts	0x0727, r24	; 0x800727 <arduboy+0x41d>
    5aec:	80 91 9b 02 	lds	r24, 0x029B	; 0x80029b <_ZL4mode>
    5af0:	90 91 9c 02 	lds	r25, 0x029C	; 0x80029c <_ZL4mode+0x1>
    5af4:	d8 9e       	mul	r13, r24
    5af6:	f0 01       	movw	r30, r0
    5af8:	d9 9e       	mul	r13, r25
    5afa:	f0 0d       	add	r31, r0
    5afc:	11 24       	eor	r1, r1
    5afe:	ea 5a       	subi	r30, 0xAA	; 170
    5b00:	f1 4f       	sbci	r31, 0xF1	; 241
    5b02:	85 91       	lpm	r24, Z+
    5b04:	94 91       	lpm	r25, Z
    5b06:	fc 01       	movw	r30, r24
    5b08:	09 95       	icall
    5b0a:	7c 01       	movw	r14, r24
    callDrawFunc(mode);
    5b0c:	80 91 9b 02 	lds	r24, 0x029B	; 0x80029b <_ZL4mode>
    5b10:	90 91 9c 02 	lds	r25, 0x029C	; 0x80029c <_ZL4mode+0x1>
    5b14:	d8 9e       	mul	r13, r24
    5b16:	f0 01       	movw	r30, r0
    5b18:	d9 9e       	mul	r13, r25
    5b1a:	f0 0d       	add	r31, r0
    5b1c:	11 24       	eor	r1, r1
    5b1e:	e8 5a       	subi	r30, 0xA8	; 168
    5b20:	f1 4f       	sbci	r31, 0xF1	; 241
    5b22:	85 91       	lpm	r24, Z+
    5b24:	94 91       	lpm	r25, Z
    5b26:	fc 01       	movw	r30, r24
    5b28:	09 95       	icall
void ArduboyCore::paintScreen(unsigned char image[])
{
  uint8_t c;
  int i = 0;

  SPDR = image[i++]; // set the first SPI data byte to get things started
    5b2a:	80 91 1e 03 	lds	r24, 0x031E	; 0x80031e <arduboy+0x14>
    5b2e:	8e bd       	out	0x2e, r24	; 46
    5b30:	ef e1       	ldi	r30, 0x1F	; 31
    5b32:	f3 e0       	ldi	r31, 0x03	; 3
  // executed while the previous byte is being sent out by the SPI controller
  while (i < (HEIGHT * WIDTH) / 8)
  {
    // get the next byte. It's put in a local variable so it can be sent as
    // as soon as possible after the sending of the previous byte has completed
    c = image[i++];
    5b34:	81 91       	ld	r24, Z+

    while (!(SPSR & _BV(SPIF))) { } // wait for the previous byte to be sent
    5b36:	0d b4       	in	r0, 0x2d	; 45
    5b38:	07 fe       	sbrs	r0, 7
    5b3a:	fd cf       	rjmp	.-6      	; 0x5b36 <main+0x506>

    // put the next byte in the SPI data register. The SPI controller will
    // clock it out while the loop continues and gets the next byte ready
    SPDR = c;
    5b3c:	8e bd       	out	0x2e, r24	; 46

  SPDR = image[i++]; // set the first SPI data byte to get things started

  // the code to iterate the loop and get the next byte from the buffer is
  // executed while the previous byte is being sent out by the SPI controller
  while (i < (HEIGHT * WIDTH) / 8)
    5b3e:	ce 17       	cp	r28, r30
    5b40:	df 07       	cpc	r29, r31
    5b42:	c1 f7       	brne	.-16     	; 0x5b34 <main+0x504>

    // put the next byte in the SPI data register. The SPI controller will
    // clock it out while the loop continues and gets the next byte ready
    SPDR = c;
  }
  while (!(SPSR & _BV(SPIF))) { } // wait for the last byte to be sent
    5b44:	0d b4       	in	r0, 0x2d	; 45
    5b46:	07 fe       	sbrs	r0, 7
    5b48:	fd cf       	rjmp	.-6      	; 0x5b44 <main+0x514>
#ifdef DEBUG
    dbgRecvChar = '\0';
#endif
    arduboy.display();
    if (mode != nextMode) {
    5b4a:	80 91 9b 02 	lds	r24, 0x029B	; 0x80029b <_ZL4mode>
    5b4e:	90 91 9c 02 	lds	r25, 0x029C	; 0x80029c <_ZL4mode+0x1>
    5b52:	e8 16       	cp	r14, r24
    5b54:	f9 06       	cpc	r15, r25
    5b56:	09 f4       	brne	.+2      	; 0x5b5a <main+0x52a>
    5b58:	4a cf       	rjmp	.-364    	; 0x59ee <main+0x3be>
        mode = nextMode;
    5b5a:	f0 92 9c 02 	sts	0x029C, r15	; 0x80029c <_ZL4mode+0x1>
    5b5e:	e0 92 9b 02 	sts	0x029B, r14	; 0x80029b <_ZL4mode>
        dprint(F("mode="));
        dprintln(mode);
        callInitFunc(mode);
    5b62:	de 9c       	mul	r13, r14
    5b64:	f0 01       	movw	r30, r0
    5b66:	df 9c       	mul	r13, r15
    5b68:	f0 0d       	add	r31, r0
    5b6a:	11 24       	eor	r1, r1
    5b6c:	ec 5a       	subi	r30, 0xAC	; 172
    5b6e:	f1 4f       	sbci	r31, 0xF1	; 241
    5b70:	85 91       	lpm	r24, Z+
    5b72:	94 91       	lpm	r25, Z
    5b74:	fc 01       	movw	r30, r24
    5b76:	09 95       	icall
    5b78:	3a cf       	rjmp	.-396    	; 0x59ee <main+0x3be>

00005b7a <do_rand>:
    5b7a:	8f 92       	push	r8
    5b7c:	9f 92       	push	r9
    5b7e:	af 92       	push	r10
    5b80:	bf 92       	push	r11
    5b82:	cf 92       	push	r12
    5b84:	df 92       	push	r13
    5b86:	ef 92       	push	r14
    5b88:	ff 92       	push	r15
    5b8a:	cf 93       	push	r28
    5b8c:	df 93       	push	r29
    5b8e:	ec 01       	movw	r28, r24
    5b90:	68 81       	ld	r22, Y
    5b92:	79 81       	ldd	r23, Y+1	; 0x01
    5b94:	8a 81       	ldd	r24, Y+2	; 0x02
    5b96:	9b 81       	ldd	r25, Y+3	; 0x03
    5b98:	61 15       	cp	r22, r1
    5b9a:	71 05       	cpc	r23, r1
    5b9c:	81 05       	cpc	r24, r1
    5b9e:	91 05       	cpc	r25, r1
    5ba0:	21 f4       	brne	.+8      	; 0x5baa <do_rand+0x30>
    5ba2:	64 e2       	ldi	r22, 0x24	; 36
    5ba4:	79 ed       	ldi	r23, 0xD9	; 217
    5ba6:	8b e5       	ldi	r24, 0x5B	; 91
    5ba8:	97 e0       	ldi	r25, 0x07	; 7
    5baa:	2d e1       	ldi	r18, 0x1D	; 29
    5bac:	33 ef       	ldi	r19, 0xF3	; 243
    5bae:	41 e0       	ldi	r20, 0x01	; 1
    5bb0:	50 e0       	ldi	r21, 0x00	; 0
    5bb2:	0e 94 1a 2f 	call	0x5e34	; 0x5e34 <__divmodsi4>
    5bb6:	49 01       	movw	r8, r18
    5bb8:	5a 01       	movw	r10, r20
    5bba:	9b 01       	movw	r18, r22
    5bbc:	ac 01       	movw	r20, r24
    5bbe:	a7 ea       	ldi	r26, 0xA7	; 167
    5bc0:	b1 e4       	ldi	r27, 0x41	; 65
    5bc2:	0e 94 39 2f 	call	0x5e72	; 0x5e72 <__muluhisi3>
    5bc6:	6b 01       	movw	r12, r22
    5bc8:	7c 01       	movw	r14, r24
    5bca:	ac ee       	ldi	r26, 0xEC	; 236
    5bcc:	b4 ef       	ldi	r27, 0xF4	; 244
    5bce:	a5 01       	movw	r20, r10
    5bd0:	94 01       	movw	r18, r8
    5bd2:	0e 94 47 2f 	call	0x5e8e	; 0x5e8e <__mulohisi3>
    5bd6:	dc 01       	movw	r26, r24
    5bd8:	cb 01       	movw	r24, r22
    5bda:	8c 0d       	add	r24, r12
    5bdc:	9d 1d       	adc	r25, r13
    5bde:	ae 1d       	adc	r26, r14
    5be0:	bf 1d       	adc	r27, r15
    5be2:	b7 ff       	sbrs	r27, 7
    5be4:	03 c0       	rjmp	.+6      	; 0x5bec <do_rand+0x72>
    5be6:	01 97       	sbiw	r24, 0x01	; 1
    5be8:	a1 09       	sbc	r26, r1
    5bea:	b0 48       	sbci	r27, 0x80	; 128
    5bec:	88 83       	st	Y, r24
    5bee:	99 83       	std	Y+1, r25	; 0x01
    5bf0:	aa 83       	std	Y+2, r26	; 0x02
    5bf2:	bb 83       	std	Y+3, r27	; 0x03
    5bf4:	9f 77       	andi	r25, 0x7F	; 127
    5bf6:	df 91       	pop	r29
    5bf8:	cf 91       	pop	r28
    5bfa:	ff 90       	pop	r15
    5bfc:	ef 90       	pop	r14
    5bfe:	df 90       	pop	r13
    5c00:	cf 90       	pop	r12
    5c02:	bf 90       	pop	r11
    5c04:	af 90       	pop	r10
    5c06:	9f 90       	pop	r9
    5c08:	8f 90       	pop	r8
    5c0a:	08 95       	ret

00005c0c <rand_r>:
    5c0c:	0e 94 bd 2d 	call	0x5b7a	; 0x5b7a <do_rand>
    5c10:	08 95       	ret

00005c12 <rand>:
    5c12:	8c e0       	ldi	r24, 0x0C	; 12
    5c14:	91 e0       	ldi	r25, 0x01	; 1
    5c16:	0e 94 bd 2d 	call	0x5b7a	; 0x5b7a <do_rand>
    5c1a:	08 95       	ret

00005c1c <srand>:
    5c1c:	b0 e0       	ldi	r27, 0x00	; 0
    5c1e:	a0 e0       	ldi	r26, 0x00	; 0
    5c20:	80 93 0c 01 	sts	0x010C, r24	; 0x80010c <next>
    5c24:	90 93 0d 01 	sts	0x010D, r25	; 0x80010d <next+0x1>
    5c28:	a0 93 0e 01 	sts	0x010E, r26	; 0x80010e <next+0x2>
    5c2c:	b0 93 0f 01 	sts	0x010F, r27	; 0x80010f <next+0x3>
    5c30:	08 95       	ret

00005c32 <random_r>:
    5c32:	8f 92       	push	r8
    5c34:	9f 92       	push	r9
    5c36:	af 92       	push	r10
    5c38:	bf 92       	push	r11
    5c3a:	cf 92       	push	r12
    5c3c:	df 92       	push	r13
    5c3e:	ef 92       	push	r14
    5c40:	ff 92       	push	r15
    5c42:	cf 93       	push	r28
    5c44:	df 93       	push	r29
    5c46:	ec 01       	movw	r28, r24
    5c48:	68 81       	ld	r22, Y
    5c4a:	79 81       	ldd	r23, Y+1	; 0x01
    5c4c:	8a 81       	ldd	r24, Y+2	; 0x02
    5c4e:	9b 81       	ldd	r25, Y+3	; 0x03
    5c50:	61 15       	cp	r22, r1
    5c52:	71 05       	cpc	r23, r1
    5c54:	81 05       	cpc	r24, r1
    5c56:	91 05       	cpc	r25, r1
    5c58:	21 f4       	brne	.+8      	; 0x5c62 <random_r+0x30>
    5c5a:	64 e2       	ldi	r22, 0x24	; 36
    5c5c:	79 ed       	ldi	r23, 0xD9	; 217
    5c5e:	8b e5       	ldi	r24, 0x5B	; 91
    5c60:	97 e0       	ldi	r25, 0x07	; 7
    5c62:	2d e1       	ldi	r18, 0x1D	; 29
    5c64:	33 ef       	ldi	r19, 0xF3	; 243
    5c66:	41 e0       	ldi	r20, 0x01	; 1
    5c68:	50 e0       	ldi	r21, 0x00	; 0
    5c6a:	0e 94 1a 2f 	call	0x5e34	; 0x5e34 <__divmodsi4>
    5c6e:	49 01       	movw	r8, r18
    5c70:	5a 01       	movw	r10, r20
    5c72:	9b 01       	movw	r18, r22
    5c74:	ac 01       	movw	r20, r24
    5c76:	a7 ea       	ldi	r26, 0xA7	; 167
    5c78:	b1 e4       	ldi	r27, 0x41	; 65
    5c7a:	0e 94 39 2f 	call	0x5e72	; 0x5e72 <__muluhisi3>
    5c7e:	6b 01       	movw	r12, r22
    5c80:	7c 01       	movw	r14, r24
    5c82:	ac ee       	ldi	r26, 0xEC	; 236
    5c84:	b4 ef       	ldi	r27, 0xF4	; 244
    5c86:	a5 01       	movw	r20, r10
    5c88:	94 01       	movw	r18, r8
    5c8a:	0e 94 47 2f 	call	0x5e8e	; 0x5e8e <__mulohisi3>
    5c8e:	c6 0e       	add	r12, r22
    5c90:	d7 1e       	adc	r13, r23
    5c92:	e8 1e       	adc	r14, r24
    5c94:	f9 1e       	adc	r15, r25
    5c96:	f7 fe       	sbrs	r15, 7
    5c98:	06 c0       	rjmp	.+12     	; 0x5ca6 <random_r+0x74>
    5c9a:	81 e0       	ldi	r24, 0x01	; 1
    5c9c:	c8 1a       	sub	r12, r24
    5c9e:	d1 08       	sbc	r13, r1
    5ca0:	e1 08       	sbc	r14, r1
    5ca2:	80 e8       	ldi	r24, 0x80	; 128
    5ca4:	f8 0a       	sbc	r15, r24
    5ca6:	c8 82       	st	Y, r12
    5ca8:	d9 82       	std	Y+1, r13	; 0x01
    5caa:	ea 82       	std	Y+2, r14	; 0x02
    5cac:	fb 82       	std	Y+3, r15	; 0x03
    5cae:	c7 01       	movw	r24, r14
    5cb0:	b6 01       	movw	r22, r12
    5cb2:	9f 77       	andi	r25, 0x7F	; 127
    5cb4:	df 91       	pop	r29
    5cb6:	cf 91       	pop	r28
    5cb8:	ff 90       	pop	r15
    5cba:	ef 90       	pop	r14
    5cbc:	df 90       	pop	r13
    5cbe:	cf 90       	pop	r12
    5cc0:	bf 90       	pop	r11
    5cc2:	af 90       	pop	r10
    5cc4:	9f 90       	pop	r9
    5cc6:	8f 90       	pop	r8
    5cc8:	08 95       	ret

00005cca <random>:
    5cca:	8f 92       	push	r8
    5ccc:	9f 92       	push	r9
    5cce:	af 92       	push	r10
    5cd0:	bf 92       	push	r11
    5cd2:	cf 92       	push	r12
    5cd4:	df 92       	push	r13
    5cd6:	ef 92       	push	r14
    5cd8:	ff 92       	push	r15
    5cda:	60 91 10 01 	lds	r22, 0x0110	; 0x800110 <next>
    5cde:	70 91 11 01 	lds	r23, 0x0111	; 0x800111 <next+0x1>
    5ce2:	80 91 12 01 	lds	r24, 0x0112	; 0x800112 <next+0x2>
    5ce6:	90 91 13 01 	lds	r25, 0x0113	; 0x800113 <next+0x3>
    5cea:	61 15       	cp	r22, r1
    5cec:	71 05       	cpc	r23, r1
    5cee:	81 05       	cpc	r24, r1
    5cf0:	91 05       	cpc	r25, r1
    5cf2:	21 f4       	brne	.+8      	; 0x5cfc <random+0x32>
    5cf4:	64 e2       	ldi	r22, 0x24	; 36
    5cf6:	79 ed       	ldi	r23, 0xD9	; 217
    5cf8:	8b e5       	ldi	r24, 0x5B	; 91
    5cfa:	97 e0       	ldi	r25, 0x07	; 7
    5cfc:	2d e1       	ldi	r18, 0x1D	; 29
    5cfe:	33 ef       	ldi	r19, 0xF3	; 243
    5d00:	41 e0       	ldi	r20, 0x01	; 1
    5d02:	50 e0       	ldi	r21, 0x00	; 0
    5d04:	0e 94 1a 2f 	call	0x5e34	; 0x5e34 <__divmodsi4>
    5d08:	49 01       	movw	r8, r18
    5d0a:	5a 01       	movw	r10, r20
    5d0c:	9b 01       	movw	r18, r22
    5d0e:	ac 01       	movw	r20, r24
    5d10:	a7 ea       	ldi	r26, 0xA7	; 167
    5d12:	b1 e4       	ldi	r27, 0x41	; 65
    5d14:	0e 94 39 2f 	call	0x5e72	; 0x5e72 <__muluhisi3>
    5d18:	6b 01       	movw	r12, r22
    5d1a:	7c 01       	movw	r14, r24
    5d1c:	ac ee       	ldi	r26, 0xEC	; 236
    5d1e:	b4 ef       	ldi	r27, 0xF4	; 244
    5d20:	a5 01       	movw	r20, r10
    5d22:	94 01       	movw	r18, r8
    5d24:	0e 94 47 2f 	call	0x5e8e	; 0x5e8e <__mulohisi3>
    5d28:	c6 0e       	add	r12, r22
    5d2a:	d7 1e       	adc	r13, r23
    5d2c:	e8 1e       	adc	r14, r24
    5d2e:	f9 1e       	adc	r15, r25
    5d30:	f7 fe       	sbrs	r15, 7
    5d32:	06 c0       	rjmp	.+12     	; 0x5d40 <random+0x76>
    5d34:	81 e0       	ldi	r24, 0x01	; 1
    5d36:	c8 1a       	sub	r12, r24
    5d38:	d1 08       	sbc	r13, r1
    5d3a:	e1 08       	sbc	r14, r1
    5d3c:	80 e8       	ldi	r24, 0x80	; 128
    5d3e:	f8 0a       	sbc	r15, r24
    5d40:	c0 92 10 01 	sts	0x0110, r12	; 0x800110 <next>
    5d44:	d0 92 11 01 	sts	0x0111, r13	; 0x800111 <next+0x1>
    5d48:	e0 92 12 01 	sts	0x0112, r14	; 0x800112 <next+0x2>
    5d4c:	f0 92 13 01 	sts	0x0113, r15	; 0x800113 <next+0x3>
    5d50:	c7 01       	movw	r24, r14
    5d52:	b6 01       	movw	r22, r12
    5d54:	9f 77       	andi	r25, 0x7F	; 127
    5d56:	ff 90       	pop	r15
    5d58:	ef 90       	pop	r14
    5d5a:	df 90       	pop	r13
    5d5c:	cf 90       	pop	r12
    5d5e:	bf 90       	pop	r11
    5d60:	af 90       	pop	r10
    5d62:	9f 90       	pop	r9
    5d64:	8f 90       	pop	r8
    5d66:	08 95       	ret

00005d68 <srandom>:
    5d68:	60 93 10 01 	sts	0x0110, r22	; 0x800110 <next>
    5d6c:	70 93 11 01 	sts	0x0111, r23	; 0x800111 <next+0x1>
    5d70:	80 93 12 01 	sts	0x0112, r24	; 0x800112 <next+0x2>
    5d74:	90 93 13 01 	sts	0x0113, r25	; 0x800113 <next+0x3>
    5d78:	08 95       	ret

00005d7a <memcpy_P>:
    5d7a:	fb 01       	movw	r30, r22
    5d7c:	dc 01       	movw	r26, r24
    5d7e:	02 c0       	rjmp	.+4      	; 0x5d84 <memcpy_P+0xa>
    5d80:	05 90       	lpm	r0, Z+
    5d82:	0d 92       	st	X+, r0
    5d84:	41 50       	subi	r20, 0x01	; 1
    5d86:	50 40       	sbci	r21, 0x00	; 0
    5d88:	d8 f7       	brcc	.-10     	; 0x5d80 <memcpy_P+0x6>
    5d8a:	08 95       	ret

00005d8c <strnlen_P>:
    5d8c:	fc 01       	movw	r30, r24
    5d8e:	05 90       	lpm	r0, Z+
    5d90:	61 50       	subi	r22, 0x01	; 1
    5d92:	70 40       	sbci	r23, 0x00	; 0
    5d94:	01 10       	cpse	r0, r1
    5d96:	d8 f7       	brcc	.-10     	; 0x5d8e <strnlen_P+0x2>
    5d98:	80 95       	com	r24
    5d9a:	90 95       	com	r25
    5d9c:	8e 0f       	add	r24, r30
    5d9e:	9f 1f       	adc	r25, r31
    5da0:	08 95       	ret

00005da2 <eeprom_read_block>:
    5da2:	dc 01       	movw	r26, r24
    5da4:	cb 01       	movw	r24, r22

00005da6 <eeprom_read_blraw>:
    5da6:	fc 01       	movw	r30, r24
    5da8:	f9 99       	sbic	0x1f, 1	; 31
    5daa:	fe cf       	rjmp	.-4      	; 0x5da8 <eeprom_read_blraw+0x2>
    5dac:	06 c0       	rjmp	.+12     	; 0x5dba <eeprom_read_blraw+0x14>
    5dae:	f2 bd       	out	0x22, r31	; 34
    5db0:	e1 bd       	out	0x21, r30	; 33
    5db2:	f8 9a       	sbi	0x1f, 0	; 31
    5db4:	31 96       	adiw	r30, 0x01	; 1
    5db6:	00 b4       	in	r0, 0x20	; 32
    5db8:	0d 92       	st	X+, r0
    5dba:	41 50       	subi	r20, 0x01	; 1
    5dbc:	50 40       	sbci	r21, 0x00	; 0
    5dbe:	b8 f7       	brcc	.-18     	; 0x5dae <eeprom_read_blraw+0x8>
    5dc0:	08 95       	ret

00005dc2 <eeprom_read_byte>:
    5dc2:	f9 99       	sbic	0x1f, 1	; 31
    5dc4:	fe cf       	rjmp	.-4      	; 0x5dc2 <eeprom_read_byte>
    5dc6:	92 bd       	out	0x22, r25	; 34
    5dc8:	81 bd       	out	0x21, r24	; 33
    5dca:	f8 9a       	sbi	0x1f, 0	; 31
    5dcc:	99 27       	eor	r25, r25
    5dce:	80 b5       	in	r24, 0x20	; 32
    5dd0:	08 95       	ret

00005dd2 <eeprom_read_dword>:
    5dd2:	a6 e1       	ldi	r26, 0x16	; 22
    5dd4:	b0 e0       	ldi	r27, 0x00	; 0
    5dd6:	44 e0       	ldi	r20, 0x04	; 4
    5dd8:	50 e0       	ldi	r21, 0x00	; 0
    5dda:	0c 94 d3 2e 	jmp	0x5da6	; 0x5da6 <eeprom_read_blraw>

00005dde <eeprom_read_word>:
    5dde:	a8 e1       	ldi	r26, 0x18	; 24
    5de0:	b0 e0       	ldi	r27, 0x00	; 0
    5de2:	42 e0       	ldi	r20, 0x02	; 2
    5de4:	50 e0       	ldi	r21, 0x00	; 0
    5de6:	0c 94 d3 2e 	jmp	0x5da6	; 0x5da6 <eeprom_read_blraw>

00005dea <eeprom_write_block>:
    5dea:	dc 01       	movw	r26, r24
    5dec:	cb 01       	movw	r24, r22
    5dee:	03 c0       	rjmp	.+6      	; 0x5df6 <eeprom_write_block+0xc>
    5df0:	2d 91       	ld	r18, X+
    5df2:	0e 94 00 2f 	call	0x5e00	; 0x5e00 <eeprom_write_r18>
    5df6:	41 50       	subi	r20, 0x01	; 1
    5df8:	50 40       	sbci	r21, 0x00	; 0
    5dfa:	d0 f7       	brcc	.-12     	; 0x5df0 <eeprom_write_block+0x6>
    5dfc:	08 95       	ret

00005dfe <eeprom_write_byte>:
    5dfe:	26 2f       	mov	r18, r22

00005e00 <eeprom_write_r18>:
    5e00:	f9 99       	sbic	0x1f, 1	; 31
    5e02:	fe cf       	rjmp	.-4      	; 0x5e00 <eeprom_write_r18>
    5e04:	1f ba       	out	0x1f, r1	; 31
    5e06:	92 bd       	out	0x22, r25	; 34
    5e08:	81 bd       	out	0x21, r24	; 33
    5e0a:	20 bd       	out	0x20, r18	; 32
    5e0c:	0f b6       	in	r0, 0x3f	; 63
    5e0e:	f8 94       	cli
    5e10:	fa 9a       	sbi	0x1f, 2	; 31
    5e12:	f9 9a       	sbi	0x1f, 1	; 31
    5e14:	0f be       	out	0x3f, r0	; 63
    5e16:	01 96       	adiw	r24, 0x01	; 1
    5e18:	08 95       	ret

00005e1a <eeprom_write_dword>:
    5e1a:	24 2f       	mov	r18, r20
    5e1c:	0e 94 00 2f 	call	0x5e00	; 0x5e00 <eeprom_write_r18>
    5e20:	25 2f       	mov	r18, r21
    5e22:	0e 94 00 2f 	call	0x5e00	; 0x5e00 <eeprom_write_r18>
    5e26:	0c 94 15 2f 	jmp	0x5e2a	; 0x5e2a <eeprom_write_word>

00005e2a <eeprom_write_word>:
    5e2a:	0e 94 ff 2e 	call	0x5dfe	; 0x5dfe <eeprom_write_byte>
    5e2e:	27 2f       	mov	r18, r23
    5e30:	0c 94 00 2f 	jmp	0x5e00	; 0x5e00 <eeprom_write_r18>

00005e34 <__divmodsi4>:
    5e34:	05 2e       	mov	r0, r21
    5e36:	97 fb       	bst	r25, 7
    5e38:	1e f4       	brtc	.+6      	; 0x5e40 <__divmodsi4+0xc>
    5e3a:	00 94       	com	r0
    5e3c:	0e 94 31 2f 	call	0x5e62	; 0x5e62 <__negsi2>
    5e40:	57 fd       	sbrc	r21, 7
    5e42:	07 d0       	rcall	.+14     	; 0x5e52 <__divmodsi4_neg2>
    5e44:	0e 94 4c 2f 	call	0x5e98	; 0x5e98 <__udivmodsi4>
    5e48:	07 fc       	sbrc	r0, 7
    5e4a:	03 d0       	rcall	.+6      	; 0x5e52 <__divmodsi4_neg2>
    5e4c:	4e f4       	brtc	.+18     	; 0x5e60 <__divmodsi4_exit>
    5e4e:	0c 94 31 2f 	jmp	0x5e62	; 0x5e62 <__negsi2>

00005e52 <__divmodsi4_neg2>:
    5e52:	50 95       	com	r21
    5e54:	40 95       	com	r20
    5e56:	30 95       	com	r19
    5e58:	21 95       	neg	r18
    5e5a:	3f 4f       	sbci	r19, 0xFF	; 255
    5e5c:	4f 4f       	sbci	r20, 0xFF	; 255
    5e5e:	5f 4f       	sbci	r21, 0xFF	; 255

00005e60 <__divmodsi4_exit>:
    5e60:	08 95       	ret

00005e62 <__negsi2>:
    5e62:	90 95       	com	r25
    5e64:	80 95       	com	r24
    5e66:	70 95       	com	r23
    5e68:	61 95       	neg	r22
    5e6a:	7f 4f       	sbci	r23, 0xFF	; 255
    5e6c:	8f 4f       	sbci	r24, 0xFF	; 255
    5e6e:	9f 4f       	sbci	r25, 0xFF	; 255
    5e70:	08 95       	ret

00005e72 <__muluhisi3>:
    5e72:	0e 94 6e 2f 	call	0x5edc	; 0x5edc <__umulhisi3>
    5e76:	a5 9f       	mul	r26, r21
    5e78:	90 0d       	add	r25, r0
    5e7a:	b4 9f       	mul	r27, r20
    5e7c:	90 0d       	add	r25, r0
    5e7e:	a4 9f       	mul	r26, r20
    5e80:	80 0d       	add	r24, r0
    5e82:	91 1d       	adc	r25, r1
    5e84:	11 24       	eor	r1, r1
    5e86:	08 95       	ret

00005e88 <__mulshisi3>:
    5e88:	b7 ff       	sbrs	r27, 7
    5e8a:	0c 94 39 2f 	jmp	0x5e72	; 0x5e72 <__muluhisi3>

00005e8e <__mulohisi3>:
    5e8e:	0e 94 39 2f 	call	0x5e72	; 0x5e72 <__muluhisi3>
    5e92:	82 1b       	sub	r24, r18
    5e94:	93 0b       	sbc	r25, r19
    5e96:	08 95       	ret

00005e98 <__udivmodsi4>:
    5e98:	a1 e2       	ldi	r26, 0x21	; 33
    5e9a:	1a 2e       	mov	r1, r26
    5e9c:	aa 1b       	sub	r26, r26
    5e9e:	bb 1b       	sub	r27, r27
    5ea0:	fd 01       	movw	r30, r26
    5ea2:	0d c0       	rjmp	.+26     	; 0x5ebe <__udivmodsi4_ep>

00005ea4 <__udivmodsi4_loop>:
    5ea4:	aa 1f       	adc	r26, r26
    5ea6:	bb 1f       	adc	r27, r27
    5ea8:	ee 1f       	adc	r30, r30
    5eaa:	ff 1f       	adc	r31, r31
    5eac:	a2 17       	cp	r26, r18
    5eae:	b3 07       	cpc	r27, r19
    5eb0:	e4 07       	cpc	r30, r20
    5eb2:	f5 07       	cpc	r31, r21
    5eb4:	20 f0       	brcs	.+8      	; 0x5ebe <__udivmodsi4_ep>
    5eb6:	a2 1b       	sub	r26, r18
    5eb8:	b3 0b       	sbc	r27, r19
    5eba:	e4 0b       	sbc	r30, r20
    5ebc:	f5 0b       	sbc	r31, r21

00005ebe <__udivmodsi4_ep>:
    5ebe:	66 1f       	adc	r22, r22
    5ec0:	77 1f       	adc	r23, r23
    5ec2:	88 1f       	adc	r24, r24
    5ec4:	99 1f       	adc	r25, r25
    5ec6:	1a 94       	dec	r1
    5ec8:	69 f7       	brne	.-38     	; 0x5ea4 <__udivmodsi4_loop>
    5eca:	60 95       	com	r22
    5ecc:	70 95       	com	r23
    5ece:	80 95       	com	r24
    5ed0:	90 95       	com	r25
    5ed2:	9b 01       	movw	r18, r22
    5ed4:	ac 01       	movw	r20, r24
    5ed6:	bd 01       	movw	r22, r26
    5ed8:	cf 01       	movw	r24, r30
    5eda:	08 95       	ret

00005edc <__umulhisi3>:
    5edc:	a2 9f       	mul	r26, r18
    5ede:	b0 01       	movw	r22, r0
    5ee0:	b3 9f       	mul	r27, r19
    5ee2:	c0 01       	movw	r24, r0
    5ee4:	a3 9f       	mul	r26, r19
    5ee6:	70 0d       	add	r23, r0
    5ee8:	81 1d       	adc	r24, r1
    5eea:	11 24       	eor	r1, r1
    5eec:	91 1d       	adc	r25, r1
    5eee:	b2 9f       	mul	r27, r18
    5ef0:	70 0d       	add	r23, r0
    5ef2:	81 1d       	adc	r24, r1
    5ef4:	11 24       	eor	r1, r1
    5ef6:	91 1d       	adc	r25, r1
    5ef8:	08 95       	ret

00005efa <__mulsi3>:
    5efa:	db 01       	movw	r26, r22
    5efc:	8f 93       	push	r24
    5efe:	9f 93       	push	r25
    5f00:	0e 94 39 2f 	call	0x5e72	; 0x5e72 <__muluhisi3>
    5f04:	bf 91       	pop	r27
    5f06:	af 91       	pop	r26
    5f08:	a2 9f       	mul	r26, r18
    5f0a:	80 0d       	add	r24, r0
    5f0c:	91 1d       	adc	r25, r1
    5f0e:	a3 9f       	mul	r26, r19
    5f10:	90 0d       	add	r25, r0
    5f12:	b2 9f       	mul	r27, r18
    5f14:	90 0d       	add	r25, r0
    5f16:	11 24       	eor	r1, r1
    5f18:	08 95       	ret

00005f1a <__udivmodqi4>:
    5f1a:	99 1b       	sub	r25, r25
    5f1c:	79 e0       	ldi	r23, 0x09	; 9
    5f1e:	04 c0       	rjmp	.+8      	; 0x5f28 <__udivmodqi4_ep>

00005f20 <__udivmodqi4_loop>:
    5f20:	99 1f       	adc	r25, r25
    5f22:	96 17       	cp	r25, r22
    5f24:	08 f0       	brcs	.+2      	; 0x5f28 <__udivmodqi4_ep>
    5f26:	96 1b       	sub	r25, r22

00005f28 <__udivmodqi4_ep>:
    5f28:	88 1f       	adc	r24, r24
    5f2a:	7a 95       	dec	r23
    5f2c:	c9 f7       	brne	.-14     	; 0x5f20 <__udivmodqi4_loop>
    5f2e:	80 95       	com	r24
    5f30:	08 95       	ret

00005f32 <__divmodhi4>:
    5f32:	97 fb       	bst	r25, 7
    5f34:	07 2e       	mov	r0, r23
    5f36:	16 f4       	brtc	.+4      	; 0x5f3c <__divmodhi4+0xa>
    5f38:	00 94       	com	r0
    5f3a:	07 d0       	rcall	.+14     	; 0x5f4a <__divmodhi4_neg1>
    5f3c:	77 fd       	sbrc	r23, 7
    5f3e:	09 d0       	rcall	.+18     	; 0x5f52 <__divmodhi4_neg2>
    5f40:	0e 94 ba 2f 	call	0x5f74	; 0x5f74 <__udivmodhi4>
    5f44:	07 fc       	sbrc	r0, 7
    5f46:	05 d0       	rcall	.+10     	; 0x5f52 <__divmodhi4_neg2>
    5f48:	3e f4       	brtc	.+14     	; 0x5f58 <__divmodhi4_exit>

00005f4a <__divmodhi4_neg1>:
    5f4a:	90 95       	com	r25
    5f4c:	81 95       	neg	r24
    5f4e:	9f 4f       	sbci	r25, 0xFF	; 255
    5f50:	08 95       	ret

00005f52 <__divmodhi4_neg2>:
    5f52:	70 95       	com	r23
    5f54:	61 95       	neg	r22
    5f56:	7f 4f       	sbci	r23, 0xFF	; 255

00005f58 <__divmodhi4_exit>:
    5f58:	08 95       	ret

00005f5a <__tablejump2__>:
    5f5a:	ee 0f       	add	r30, r30
    5f5c:	ff 1f       	adc	r31, r31
    5f5e:	05 90       	lpm	r0, Z+
    5f60:	f4 91       	lpm	r31, Z
    5f62:	e0 2d       	mov	r30, r0
    5f64:	09 94       	ijmp

00005f66 <__usmulhisi3>:
    5f66:	0e 94 6e 2f 	call	0x5edc	; 0x5edc <__umulhisi3>

00005f6a <__usmulhisi3_tail>:
    5f6a:	b7 ff       	sbrs	r27, 7
    5f6c:	08 95       	ret
    5f6e:	82 1b       	sub	r24, r18
    5f70:	93 0b       	sbc	r25, r19
    5f72:	08 95       	ret

00005f74 <__udivmodhi4>:
    5f74:	aa 1b       	sub	r26, r26
    5f76:	bb 1b       	sub	r27, r27
    5f78:	51 e1       	ldi	r21, 0x11	; 17
    5f7a:	07 c0       	rjmp	.+14     	; 0x5f8a <__udivmodhi4_ep>

00005f7c <__udivmodhi4_loop>:
    5f7c:	aa 1f       	adc	r26, r26
    5f7e:	bb 1f       	adc	r27, r27
    5f80:	a6 17       	cp	r26, r22
    5f82:	b7 07       	cpc	r27, r23
    5f84:	10 f0       	brcs	.+4      	; 0x5f8a <__udivmodhi4_ep>
    5f86:	a6 1b       	sub	r26, r22
    5f88:	b7 0b       	sbc	r27, r23

00005f8a <__udivmodhi4_ep>:
    5f8a:	88 1f       	adc	r24, r24
    5f8c:	99 1f       	adc	r25, r25
    5f8e:	5a 95       	dec	r21
    5f90:	a9 f7       	brne	.-22     	; 0x5f7c <__udivmodhi4_loop>
    5f92:	80 95       	com	r24
    5f94:	90 95       	com	r25
    5f96:	bc 01       	movw	r22, r24
    5f98:	cd 01       	movw	r24, r26
    5f9a:	08 95       	ret

00005f9c <abort>:
    5f9c:	81 e0       	ldi	r24, 0x01	; 1
    5f9e:	90 e0       	ldi	r25, 0x00	; 0
    5fa0:	f8 94       	cli
    5fa2:	0c 94 d3 2f 	jmp	0x5fa6	; 0x5fa6 <_exit>

00005fa6 <_exit>:
    5fa6:	f8 94       	cli

00005fa8 <__stop_program>:
    5fa8:	ff cf       	rjmp	.-2      	; 0x5fa8 <__stop_program>
