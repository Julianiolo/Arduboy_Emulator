
ardubullets.ino.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
       0:	0c 94 bb 05 	jmp	0xb76	; 0xb76 <__ctors_end>
       4:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
       8:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
       c:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
      10:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
      14:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
      18:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
      1c:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
      20:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
      24:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
      28:	0c 94 ca 24 	jmp	0x4994	; 0x4994 <__vector_10>
      2c:	0c 94 39 25 	jmp	0x4a72	; 0x4a72 <__vector_11>
      30:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
      34:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
      38:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
      3c:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
      40:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
      44:	0c 94 2d 28 	jmp	0x505a	; 0x505a <__vector_17>
      48:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
      4c:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
      50:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
      54:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
      58:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
      5c:	0c 94 6b 27 	jmp	0x4ed6	; 0x4ed6 <__vector_23>
      60:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
      64:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
      68:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
      6c:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
      70:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
      74:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
      78:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
      7c:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
      80:	0c 94 b5 27 	jmp	0x4f6a	; 0x4f6a <__vector_32>
      84:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
      88:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
      8c:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
      90:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
      94:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
      98:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
      9c:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
      a0:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
      a4:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
      a8:	0c 94 e3 05 	jmp	0xbc6	; 0xbc6 <__bad_interrupt>
      ac:	08 4a       	sbci	r16, 0xA8	; 168
      ae:	d7 3b       	cpi	r29, 0xB7	; 183
      b0:	3b ce       	rjmp	.-906    	; 0xfffffd28 <__eeprom_end+0xff7efd28>
      b2:	01 6e       	ori	r16, 0xE1	; 225
      b4:	84 bc       	out	0x24, r8	; 36
      b6:	bf fd       	.word	0xfdbf	; ????
      b8:	c1 2f       	mov	r28, r17
      ba:	3d 6c       	ori	r19, 0xCD	; 205
      bc:	74 31       	cpi	r23, 0x14	; 20
      be:	9a bd       	out	0x2a, r25	; 42
      c0:	56 83       	std	Z+6, r21	; 0x06
      c2:	3d da       	rcall	.-2950   	; 0xfffff53e <__eeprom_end+0xff7ef53e>
      c4:	3d 00       	.word	0x003d	; ????
      c6:	c7 7f       	andi	r28, 0xF7	; 247
      c8:	11 be       	out	0x31, r1	; 49
      ca:	d9 e4       	ldi	r29, 0x49	; 73
      cc:	bb 4c       	sbci	r27, 0xCB	; 203
      ce:	3e 91       	ld	r19, -X
      d0:	6b aa       	std	Y+51, r6	; 0x33
      d2:	aa be       	out	0x3a, r10	; 58
      d4:	00 00       	nop
      d6:	00 80       	ld	r0, Z
      d8:	3f 00       	.word	0x003f	; ????

000000da <__trampolines_end>:
      da:	00 00       	nop
      dc:	00 00       	nop
      de:	00 70       	andi	r16, 0x00	; 0
      e0:	01 00       	.word	0x0001	; ????
      e2:	c0 00       	.word	0x00c0	; ????
      e4:	0c 00       	.word	0x000c	; ????
      e6:	ca a7       	std	Y+42, r28	; 0x2a
      e8:	7c 0a       	sbc	r7, r28
      ea:	42 f5       	brpl	.+80     	; 0x13c <__trampolines_end+0x62>
      ec:	55 08       	sbc	r5, r5
      ee:	53 42       	sbci	r21, 0x23	; 35
      f0:	48 19       	sub	r20, r8
      f2:	5e f5       	brtc	.+86     	; 0x14a <__trampolines_end+0x70>
      f4:	51 12       	cpse	r5, r17
      f6:	00 30       	cpi	r16, 0x00	; 0
      f8:	00 00       	nop
      fa:	00 27       	eor	r16, r16
      fc:	45 00       	.word	0x0045	; ????
      fe:	40 94       	com	r4
     100:	1c 00       	.word	0x001c	; ????
     102:	14 f3       	brlt	.-60     	; 0xc8 <__SREG__+0x89>
     104:	19 05       	cpc	r17, r9
     106:	04 f1       	brlt	.+64     	; 0x148 <__trampolines_end+0x6e>
     108:	11 04       	cpc	r1, r1
     10a:	20 04       	cpc	r2, r0
     10c:	00 00       	nop
     10e:	04 41       	sbci	r16, 0x14	; 20
     110:	10 04       	cpc	r1, r0
     112:	00 04       	cpc	r0, r0
     114:	00 00       	nop
     116:	10 42       	sbci	r17, 0x20	; 32
     118:	08 01       	movw	r0, r16
     11a:	5e 14       	cp	r5, r14
     11c:	45 0f       	add	r20, r21
     11e:	40 f0       	brcs	.+16     	; 0x130 <__trampolines_end+0x56>
     120:	01 00       	.word	0x0001	; ????
     122:	59 55       	subi	r21, 0x59	; 89
     124:	55 13       	cpse	r21, r21
     126:	51 55       	subi	r21, 0x51	; 81
     128:	5d 0d       	add	r21, r13
     12a:	8c 92       	st	X, r8
     12c:	7c 08       	sbc	r7, r12
     12e:	57 55       	subi	r21, 0x57	; 87
     130:	55 0d       	add	r21, r5
     132:	5e 55       	subi	r21, 0x5E	; 94
     134:	55 0d       	add	r21, r5
     136:	51 52       	subi	r21, 0x21	; 33
     138:	0c 01       	movw	r0, r24
     13a:	5e 55       	subi	r21, 0x5E	; 94
     13c:	55 0f       	add	r21, r21
     13e:	56 55       	subi	r21, 0x56	; 86
     140:	55 0f       	add	r21, r21
     142:	00 a0       	ldd	r0, Z+32	; 0x20
     144:	00 00       	nop
     146:	00 a4       	ldd	r0, Z+40	; 0x28
     148:	00 00       	nop
     14a:	00 c2       	rjmp	.+1024   	; 0x54c <_ZL8imgReady+0x5d>
     14c:	28 00       	.word	0x0028	; ????
     14e:	80 a2       	std	Z+32, r8	; 0x20
     150:	28 00       	.word	0x0028	; ????
     152:	80 62       	ori	r24, 0x20	; 32
     154:	08 00       	.word	0x0008	; ????
     156:	40 50       	subi	r20, 0x00	; 0
     158:	0d 00       	.word	0x000d	; ????
     15a:	5e 74       	andi	r21, 0x4E	; 78
     15c:	55 07       	cpc	r21, r21
     15e:	9c 92       	st	X, r9
     160:	24 1f       	adc	r18, r20
     162:	5f 55       	subi	r21, 0x5F	; 95
     164:	5d 0d       	add	r21, r13
     166:	9c 14       	cp	r9, r12
     168:	45 11       	cpse	r20, r5
     16a:	5f 14       	cp	r5, r15
     16c:	25 07       	cpc	r18, r21
     16e:	5f 55       	subi	r21, 0x5F	; 95
     170:	55 11       	cpse	r21, r5
     172:	5f 51       	subi	r21, 0x1F	; 31
     174:	14 01       	movw	r2, r8
     176:	5e 54       	subi	r21, 0x4E	; 78
     178:	55 1d       	adc	r21, r5
     17a:	1f 41       	sbci	r17, 0x1F	; 31
     17c:	10 1f       	adc	r17, r16
     17e:	40 f4       	brcc	.+16     	; 0x190 <__trampolines_end+0xb6>
     180:	45 00       	.word	0x0045	; ????
     182:	10 04       	cpc	r1, r0
     184:	21 07       	cpc	r18, r17
     186:	1f 41       	sbci	r17, 0x1F	; 31
     188:	18 1d       	adc	r17, r8
     18a:	1f 04       	cpc	r1, r15
     18c:	41 10       	cpse	r4, r1
     18e:	5e f0       	brts	.+22     	; 0x1a6 <__trampolines_end+0xcc>
     190:	04 1f       	adc	r16, r20
     192:	9c 10       	cpse	r9, r12
     194:	04 1f       	adc	r16, r20
     196:	5e 54       	subi	r21, 0x4E	; 78
     198:	45 0f       	add	r20, r21
     19a:	5f 92       	push	r5
     19c:	14 03       	mulsu	r17, r20
     19e:	5e d4       	rcall	.+2236   	; 0xa5c <_ZL8imgTitle+0xfd>
     1a0:	45 1f       	adc	r20, r21
     1a2:	5f 92       	push	r5
     1a4:	34 1b       	sub	r19, r20
     1a6:	56 55       	subi	r21, 0x56	; 86
     1a8:	55 0d       	add	r21, r5
     1aa:	41 f0       	breq	.+16     	; 0x1bc <__trampolines_end+0xe2>
     1ac:	05 01       	movw	r0, r10
     1ae:	1f 04       	cpc	r1, r15
     1b0:	21 07       	cpc	r18, r17
     1b2:	1f 42       	sbci	r17, 0x2F	; 47
     1b4:	08 01       	movw	r0, r16
     1b6:	1f e4       	ldi	r17, 0x4F	; 79
     1b8:	41 0f       	add	r20, r17
     1ba:	17 43       	sbci	r17, 0x37	; 55
     1bc:	18 1d       	adc	r17, r8
     1be:	07 c1       	rjmp	.+526    	; 0x3ce <_ZL8imgExplo+0x8b>
     1c0:	09 01       	movw	r0, r18
     1c2:	51 56       	subi	r21, 0x61	; 97
     1c4:	4d 11       	cpse	r20, r13
     1c6:	00 f0       	brcs	.+0      	; 0x1c8 <__trampolines_end+0xee>
     1c8:	45 00       	.word	0x0045	; ????
     1ca:	00 f0       	brcs	.+0      	; 0x1cc <__trampolines_end+0xf2>
     1cc:	01 00       	.word	0x0001	; ????
     1ce:	40 f4       	brcc	.+16     	; 0x1e0 <_ZL23midiWordNoteFrequencies+0x6>
     1d0:	01 00       	.word	0x0001	; ????
     1d2:	80 10       	cpse	r8, r0
     1d4:	0c 00       	.word	0x000c	; ????
     1d6:	10 04       	cpc	r1, r0
     1d8:	41 10       	cpse	r4, r1

000001da <_ZL23midiWordNoteFrequencies>:
     1da:	05 01 15 01 25 01 37 01 49 01 5d 01 72 01 88 01     ....%.7.I.].r...
     1ea:	9f 01 b8 01 d2 01 ee 01 0b 02 2a 02 4b 02 6e 02     ..........*.K.n.
     1fa:	93 02 ba 02 e4 02 10 03 3e 03 70 03 a4 03 dc 03     ........>.p.....
     20a:	16 04 54 04 96 04 dc 04 26 05 75 05 c8 05 20 06     ..T.....&.u... .
     21a:	7d 06 e0 06 48 07 b7 07 2d 08 a9 08 2d 09 b9 09     }...H...-...-...
     22a:	4d 0a ea 0a 90 0b 40 0c fa 0c c0 0d 91 0e 6f 0f     M.....@.......o.
     23a:	5a 10 53 11 5a 12 72 13 9a 14 d3 15 20 17 80 18     Z.S.Z.r..... ...
     24a:	f5 19 80 1b 22 1d de 1e b4 20 a6 22 b5 24 e4 26     ....".... .".$.&
     25a:	34 29 a7 2b 40 2e 00 31                             4).+@..1

00000262 <_ZL23midiByteNoteFrequencies>:
     262:	08 08 09 09 0a 0b 0b 0c 0d 0e 0e 0f 10 11 12 13     ................
     272:	14 16 17 18 1a 1b 1d 1f 20 22 24 27 29 2b 2e 31     ........ "$')+.1
     282:	34 37 3a 3d 41 45 49 4e 52 57 5c 62 68 6e 74 7b     47:=AEINRW\bhnt{
     292:	83 8a 93 9b a5 ae b9 c4 cf dc e9 f7                 ............

0000029e <_ZL13tuneNoteTable>:
     29e:	00 01 02 03 04 06 08 0c 00 f4 f8 fa fc fd fe ff     ................

000002ae <_ZL10imgButtons>:
     2ae:	3e 47 6b 6d 6d 41 3e 3e 41 55 55 51 65 3e           >GkmmA>>AUUQe>

000002bc <_ZL9sineTable>:
     2bc:	00 03 06 09 0c 0f 12 15 18 1c 1f 22 25 28 2b 2e     ..........."%(+.
     2cc:	30 33 36 39 3c 3f 41 44 47 49 4c 4e 51 53 55 58     0369<?ADGILNQSUX
     2dc:	5a 5c 5e 60 62 64 66 68 6a 6c 6d 6f 70 72 73 75     Z\^`bdfhjlmoprsu
     2ec:	76 77 78 79 7a 7b 7c 7c 7d 7e 7e 7f 7f 7f 7f 7f     vwxyz{||}~~.....
     2fc:	80                                                  .

000002fd <_ZL10soundStart>:
     2fd:	90 48 00 64 90 4a 00 64 90 4c 00 64 90 4d 00 64     .H.d.J.d.L.d.M.d
     30d:	90 4f 00 c8 80 f0                                   .O....

00000313 <_ZL16handlerFuncTable.lto_priv.54>:
     313:	a2 24 3b 24 ed 23                                   .$;$.#

00000319 <_ZL9imgPlayer>:
     319:	36 7f 77 55 14 08 08                                6.wU...

00000320 <_ZL8imgEnemy>:
     320:	08 2a 6b 7f 3e 2a 08 1c 3e 36 63 7f 63 41 08 1c     .*k.>*..>6c.cA..
     330:	49 5d 7f 2a 49 14 3e 7f 6b 63 22 14 77 5d 55 1c     I].*I.>.kc".w]U.
     340:	3e 36 22                                            >6"

00000343 <_ZL8imgExplo>:
     343:	00 00 00 c0 f0 f0 f8 f8 f8 f0 f0 c0 00 00 00 00     ................
     353:	00 00 01 07 07 0f 0f 0f 07 07 01 00 00 00 00 e0     ................
     363:	f8 fc fc fe fe fe fe fe fc fc f8 e0 00 00 03 0f     ................
     373:	1f 1f 3f 3f 3f 3f 3f 1f 1f 0f 03 00 e0 f8 fc fe     ..?????.........
     383:	fe ff 3f 3f 3f ff fe fe fc f8 e0 03 0f 1f 3f 3f     ..???.........??
     393:	7f 7e 7e 7e 7f 3f 3f 1f 0f 03 e0 f8 fc fe 3e 1f     .~~~.??.......>.
     3a3:	0f 0f 0f 1f 3e fe fc f8 e0 03 0f 1f 3f 3e 7c 78     ....>.......?>|x
     3b3:	78 78 7c 3e 3f 1f 0f 03 e0 f8 1c 0e 06 03 03 03     xx|>?...........
     3c3:	03 03 06 0e 1c f8 e0 03 0f 1c 38 30 60 60 60 60     ..........80````
     3d3:	60 30 38 1c 0f 03 e0 18 04 02 02 01 01 01 01 01     `08.............
     3e3:	02 02 04 18 e0 03 0c 10 20 20 40 40 40 40 40 20     ........  @@@@@ 
     3f3:	20 10 0c 03                                          ...

000003f7 <_ZZL11drawLettersvE3__c_0>:
     3f7:	54 49 54 4c 45 00                                   TITLE.

000003fd <_ZZL11drawLettersvE3__c>:
     3fd:	52 45 54 52 59 00                                   RETRY.

00000403 <_ZL12imgCompleted>:
     403:	fc fe fe 06 3e 3e 3c 00 e0 f0 f0 30 f0 f0 e0 00     ....>><....0....
     413:	f0 f0 f0 20 f0 f0 e0 20 f0 f0 e0 00 f0 f0 f0 20     ... ... ....... 
     423:	f0 f0 e0 00 fe fe fe 00 e0 f0 f0 b0 f0 f0 e0 00     ................
     433:	fc fc fc 30 00 e0 f0 f0 b0 f0 f0 e0 00 e0 f0 f0     ...0............
     443:	20 fe fe fe 00 fe fe fe 1f 3f 3f 30 3f 1f 0f 00      ........??0?...
     453:	1f 3f 3f 30 3f 3f 1f 00 3f 3f 3f 00 3f 3f 3f 00     .??0??..???.???.
     463:	3f 3f 3f 00 7f 7f 7f 10 3f 3f 1f 00 3f 3f 3f 00     ???.....??..???.
     473:	1f 3f 3f 31 3d 3d 1d 00 3f 3f 3f 30 00 1f 3f 3f     .??1==..???0..??
     483:	31 3d 3d 1d 00 1f 3f 3f 10 3f 3f 3f 00 3b 3b 3b     1==...??.???.;;;

00000493 <_ZL9imgFailed>:
     493:	fe fe fe c6 c6 00 e0 f0 f0 30 f0 f0 e0 00 f6 f6     .........0......
     4a3:	f6 00 fe fe fe 00 e0 f0 f0 b0 f0 f0 e0 00 e0 f0     ................
     4b3:	f0 20 fe fe fe 00 00 00 00 00 00 00 00 00 3f 3f     . ............??
     4c3:	3f 00 00 00 1e 3e 3e 13 3f 3f 3f 00 3f 3f 3f 00     ?....>>.???.???.
     4d3:	3f 3f 3f 00 1f 3f 3f 31 3d 3d 1d 00 1f 3f 3f 10     ???..??1==...??.
     4e3:	3f 3f 3f 00 38 38 00 38 38 00 38 38                 ???.88.88.88

000004ef <_ZL8imgReady>:
     4ef:	fe fe fe c6 fe fe 7c 00 e0 f0 f0 b0 f0 f0 e0 00     ......|.........
     4ff:	e0 f0 f0 30 f0 f0 e0 00 e0 f0 f0 20 fe fe fe 00     ...0....... ....
     50f:	70 f0 f0 80 00 f0 f0 70 00 dc de de 86 fe fc f8     p......p........
     51f:	3f 3f 3f 00 3f 3f 3f 00 1f 3f 3f 31 3d 3d 1d 00     ???.???..??1==..
     52f:	1e 3e 3e 13 3f 3f 3f 00 1f 3f 3f 10 3f 3f 3f 00     .>>.???..??.???.
     53f:	00 63 7f 7f 78 7f 1f 00 00 3b 3b 3b 01 01 01 00     .c..x....;;;....

0000054f <_ZL10soundClear>:
     54f:	90 51 00 28 80 00 28 90 56 00 28 80 00 28 90 5a     .Q.(..(.V.(..(.Z
     55f:	00 28 80 00 28 e3 f0                                .(..(..

00000566 <_ZL9soundOver>:
     566:	de 94 50 00 08 94 47 00 08 94 4c 00 08 94 43 00     ..P...G...L...C.
     576:	08 e4 80 f0                                         ....

0000057a <_ZZL12openGameMenuvE3__c_1>:
     57a:	42 41 43 4b 20 54 4f 20 54 49 54 4c 45 00           BACK TO TITLE.

00000588 <_ZZL12openGameMenuvE3__c_0>:
     588:	52 45 54 52 59 00                                   RETRY.

0000058e <_ZZL12openGameMenuvE3__c>:
     58e:	43 4f 4e 54 49 4e 55 45 00                          CONTINUE.

00000597 <_ZL9ledValues>:
     597:	55 0e 64 4f 0f 5d                                   U.dO.]

0000059d <_ZL11soundDefeat>:
     59d:	dd 9c 5d 00 0a 9c 51 00 0a e3 80 f0                 ..]...Q.....

000005a9 <_ZL10soundEntry>:
     5a9:	90 4c 00 0a 90 49 00 0a 80 f0                       .L...I....

000005b3 <_ZZ14setConfirmMenuaPFvvES0_E3__c_0>:
     5b3:	43 41 4e 43 45 4c 00                                CANCEL.

000005ba <_ZZ14setConfirmMenuaPFvvES0_E3__c>:
     5ba:	4f 4b 00                                            OK.

000005bd <_ZZL19drawLettersGameSeedvE3__c>:
     5bd:	50 41 54 54 45 52 4e 3a 00                          PATTERN:.

000005c6 <_ZZ8drawLogovE3__c>:
     5c6:	4f 42 4e 2d 59 31 33 20 56 45 52 20 30 2e 31 31     OBN-Y13 VER 0.11
	...

000005d7 <_ZL7imgSoft>:
     5d7:	c0 c6 cf df ff fb 73 03 7c fe ff c7 e3 ff 7f 3e     ......s.|......>
     5e7:	00 ff ff ff 1b 1b 1b 03 00 03 03 ff ff ff 03 03     ................

000005f7 <_ZL6imgOBN>:
	...
     5ff:	80 80 80 80 00 00 00 00 00 00 00 00 00 00 00 00     ................
     60f:	80 e0 f0 58 ac 56 ab 55 ab 55 00 ff 01 01 01 02     ...X.V.U.U......
     61f:	02 04 08 10 60 80 00 00 3f ff aa 55 aa 55 aa 55     ....`...?..U.U.U
     62f:	aa 55 a8 5f ac 5c ac 5c ac 5c ac 5c 0c cf 3c 00     .U._.\.\.\.\..<.
     63f:	00 00 01 03 06 0d 1a 15 2a 25 2a 25 2a 25 22 15     ........*%*%*%".
     64f:	12 09 04 02 01 00 00 00 ff ff 57 ab 57 ab 57 ab     ..........W.W.W.
     65f:	57 ab 03 ff 80 80 80 00 00 00 00 00 00 00 00 00     W...............
     66f:	ff ff 55 aa 55 aa 55 aa 55 aa 00 ff 00 00 00 01     ..U.U.U.U.......
     67f:	01 02 04 08 30 c0 00 00 1f 7f d5 aa 55 aa 55 aa     ....0.......U.U.
     68f:	55 aa 54 af 56 ae 56 ae 56 ae 56 2e 86 67 1e 00     U.T.V.V.V.V..g..
     69f:	00 00 00 01 03 06 0d 0a 15 12 15 12 15 12 11 0a     ................
     6af:	09 04 02 01 00 00 00 00 00 00 00 00 00 00 80 80     ................
     6bf:	c0 c0 c0 c0 80 80 80 00 00 00 00 00 00 00 00 00     ................
     6cf:	c0 f0 78 ac 56 ab 55 aa 55 aa 00 ff 00 00 00 01     ..x.V.U.U.......
     6df:	01 02 04 08 30 c0 00 00 ff ff 55 aa 55 aa 55 aa     ....0.....U.U.U.
     6ef:	55 aa 00 ff fe ae 56 ae 56 ae 56 ae 56 07 fe 00     U.....V.V.V.V...
     6ff:	1f 17 15 12 15 12 15 12 15 12 10 1f 17 12 15 12     ................
     70f:	15 12 15 12 15 10 1f 00                             ........

00000717 <_ZL13imgSoundOffOn>:
     717:	00 00 a0 40 a0 00 28 10 44 38 82 7c                 ...@..(.D8.|

00000723 <_ZL8imgSound>:
     723:	00 7c 8e d6 da da 82 7c 00 38 38 00 38 7c fe 00     .|.....|.88.8|..

00000733 <port_to_mode_PGM>:
     733:	00 00 00 00 24 00 27 00 2a 00 2d 00 30 00           ....$.'.*.-.0.

00000741 <port_to_output_PGM>:
     741:	00 00 00 00 25 00 28 00 2b 00 2e 00 31 00           ....%.(.+...1.

0000074f <digital_pin_to_bit_mask_PGM>:
     74f:	04 08 02 01 10 40 80 40 10 20 40 80 40 80 08 02     .....@.@. @.@...
     75f:	04 01 80 40 20 10 02 01 10 80 10 20 40 40 20        ...@ ...... @@ 

0000076e <digital_pin_to_port_PGM>:
     76e:	04 04 04 04 04 03 04 05 02 02 02 02 04 03 02 02     ................
     77e:	02 02 06 06 06 06 06 06 04 04 02 02 02 04 04        ...............

0000078d <_ZL16handlerFuncTable.lto_priv.55>:
     78d:	00 00 d3 10 42 11 79 0f 0d 10                       ....B.y...

00000797 <_ZL15drawerFuncTable>:
     797:	00 00 88 1b e4 1a d1 17 a9 14                       ..........

000007a1 <_ZZL5onTopvE3__c_2>:
     7a1:	43 52 45 44 49 54 00                                CREDIT.

000007a8 <_ZZL5onTopvE3__c_1>:
     7a8:	53 45 54 54 49 4e 47 53 00                          SETTINGS.

000007b1 <_ZZL5onTopvE3__c_0>:
     7b1:	4e 45 57 20 42 41 54 54 4c 45 00                    NEW BATTLE.

000007bc <_ZZL5onTopvE3__c>:
     7bc:	52 45 54 52 59 00                                   RETRY.

000007c2 <_ZZL10onSettingsvE3__c_3>:
     7c2:	45 58 49 54 00                                      EXIT.

000007c7 <_ZZL10onSettingsvE3__c_2>:
     7c7:	44 45 54 45 43 54 20 45 44 47 45 00                 DETECT EDGE.

000007d3 <_ZZL10onSettingsvE3__c_1>:
     7d3:	4c 45 44 20 42 4c 49 4e 4b 00                       LED BLINK.

000007dd <_ZZL10onSettingsvE3__c_0>:
     7dd:	50 41 54 54 45 52 4e 00                             PATTERN.

000007e5 <_ZZL10onSettingsvE3__c>:
     7e5:	44 49 46 46 49 43 55 4c 54 59 00                    DIFFICULTY.

000007f0 <_ZL7imgJetR>:
     7f0:	0c 0e 06 03 03 03 06 0e 04 0c 0e 1e 0f 0f 0f 0e     ................
     800:	0e 04 0c 0e 1e 1f 1f 1f 0e 0e 04                    ...........

0000080b <_ZL7imgJetL>:
     80b:	70 fc 0e 06 03 03 03 70 fc 7e 3e 0f 0f 0f 70 fc     p......p.~>...p.
     81b:	7e 3e 3f 1f 0f                                      ~>?..

00000820 <_ZL11imgSubTitle>:
	...
     828:	00 80 7e 1f bc 78 e0 c0 c0 80 80 80 80 40 40 20     ..~..x.......@@ 
     838:	b0 58 ac 5c b8 78 f0 e0 c0 00 00 00 00 80 40 20     .X.\.x........@ 
     848:	a0 10 88 47 a0 50 aa 55 aa f5 0b e7 06 0c 0a 1c     ...G.P.U........
     858:	7a f5 fa fd 7e 03 01 01 02 05 0b 07 0e 31 49 94     z...~........1I.
     868:	ba 7d fe ed c6 07 07 09 12 25 4a 55 8a 95 2b 56     .}.......%JU..+V
     878:	30 50 b8 7f ff ff fc e0 00 00 00 00 00 00 00 00     0P..............
     888:	00 00 00 01 02 05 07 03 00 00 00 00 00 00 00 00     ................
     898:	01 01 02 04 08 15 2a 55 6f df ff 78 00 00 00 00     ......*Uo..x....

000008a8 <_ZZL12drawSettingsvE3__c_5>:
     8a8:	4f 46 46 00                                         OFF.

000008ac <_ZZL12drawSettingsvE3__c_4>:
     8ac:	4f 4e 20 00                                         ON .

000008b0 <_ZZL12drawSettingsvE3__c_3>:
     8b0:	52 41 4e 44 4f 4d 20 00                             RANDOM .

000008b8 <_ZZL12drawSettingsvE3__c_2>:
     8b8:	53 50 45 43 49 46 59 00                             SPECIFY.

000008c0 <_ZZL12drawSettingsvE3__c_1>:
     8c0:	50 4c 41 59 20 54 49 4d 45 00                       PLAY TIME.

000008ca <_ZZL12drawSettingsvE3__c_0>:
     8ca:	50 4c 41 59 20 43 4f 55 4e 54 20 00                 PLAY COUNT .

000008d6 <_ZZL12drawSettingsvE3__c>:
     8d6:	5b 53 45 54 54 49 4e 47 53 5d 00                    [SETTINGS].

000008e1 <_ZL10creditText>:
     8e1:	2d 20 41 52 44 55 42 55 4c 4c 45 54 20 2d 00 00     - ARDUBULLET -..
     8f1:	00 4d 41 52 43 48 20 32 30 32 30 00 50 52 4f 47     .MARCH 2020.PROG
     901:	52 45 4d 4d 45 44 20 42 59 20 4f 42 4f 4e 4f 00     REMMED BY OBONO.
     911:	00 54 48 49 53 20 50 52 4f 47 52 41 4d 20 49 53     .THIS PROGRAM IS
     921:	00 52 45 4c 45 41 53 45 44 20 55 4e 44 45 52 00     .RELEASED UNDER.
     931:	54 48 45 20 4d 49 54 20 4c 49 43 45 4e 53 45 2e     THE MIT LICENSE.
     941:	00 1b 00                                            ...

00000944 <_ZL11imgSpinners>:
     944:	08 0c 0e 0e 0c 08 01 03 07 07 03 01                 ............

00000950 <_ZZL13drawCodeEntryvE3__c>:
     950:	43 41 4e 43 45 4c 20 20 20 53 54 41 52 54 00        CANCEL   START.

0000095f <_ZL8imgTitle>:
     95f:	00 00 f8 ff ff ff 0f ff ff ff f0 00 00 00 ff ff     ................
     96f:	ff ff ff 0f 0f ff ff ff fe fc 00 ff ff ff ff ff     ................
     97f:	0f 0f ff ff fe fe fc 00 ff ff ff ff ff 00 00 ff     ................
     98f:	ff ff ff ff 00 ff ff ff ff ff 0f 0f ff ff fe fe     ................
     99f:	f8 00 ff ff ff ff ff 00 00 ff ff ff ff ff 00 ff     ................
     9af:	ff ff ff ff 00 00 00 00 ff ff ff ff ff 00 00 00     ................
     9bf:	00 ff ff ff ff ff 0f 0f 0f 00 0f 0f 0f ff ff ff     ................
     9cf:	ff ff 0f 0f 0f e0 f0 f8 f8 f8 38 38 f8 f0 f0 e0     ..........88....
     9df:	80 fe ff ff ff e3 e0 e3 ff ff ff fc 80 00 ff ff     ................
     9ef:	ff ff ff 0f 0f ff ff ff fb f1 00 ff ff ff ff ff     ................
     9ff:	00 00 ff ff ff ff ff 00 ff ff ff ff ff 00 00 ff     ................
     a0f:	ff ff ff ff 00 ff ff ff ff ff 0f 0f ff ff fd fd     ................
     a1f:	f8 00 ff ff ff ff ff 00 00 ff ff ff ff ff 00 ff     ................
     a2f:	ff ff ff ff 00 00 00 00 ff ff ff ff ff 00 00 00     ................
     a3f:	00 ff ff ff ff ff 0f 0f 0f 00 00 00 00 ff ff ff     ................
     a4f:	ff ff 00 00 00 87 8f 9f 9f 3f 7e fc fd f9 f1 e1     .........?~.....
     a5f:	1f 1f 1f 1f 1f 01 01 01 1f 1f 1f 1f 1f 00 1f 1f     ................
     a6f:	1f 1f 1f 00 00 1f 1f 1f 1f 1f 00 1f 1f 1f 1f 1f     ................
     a7f:	1e 1e 1f 1f 1f 0f 07 00 03 07 0f 1f 1f 1e 1e 1f     ................
     a8f:	1f 0f 0f 03 00 1f 1f 1f 1f 1f 1e 1e 1f 1f 1f 0f     ................
     a9f:	07 00 03 07 0f 1f 1f 1e 1e 1f 1f 0f 0f 03 00 1f     ................
     aaf:	1f 1f 1f 1f 1e 1e 1e 00 1f 1f 1f 1f 1f 1e 1e 1e     ................
     abf:	00 1f 1f 1f 1f 1f 1e 1e 1e 1e 00 00 00 1f 1f 1f     ................
     acf:	1f 1f 00 00 00 07 0f 0f 1f 1c 1c 1f 1f 0f 0f 07     ................

00000adf <_ZN12Arduboy2Core14lcdBootProgramE>:
     adf:	d5 f0 8d 14 a1 c8 81 cf d9 f1 af 20 00              ........... .

00000aec <_ZL11moduleTable>:
     aec:	b1 0a a8 0a 20 15 24 19 94 18 7d 0a c9 18 7e 11     .... .$...}...~.
     afc:	f8 1b                                               ..

00000afe <_cdcInterface>:
     afe:	08 0b 00 02 02 02 00 00 09 04 00 00 01 02 02 00     ................
     b0e:	00 05 24 00 10 01 05 24 01 01 01 04 24 02 06 05     ..$....$....$...
     b1e:	24 06 00 01 07 05 81 03 10 00 40 09 04 01 00 02     $.........@.....
     b2e:	0a 00 00 00 07 05 02 02 40 00 00 07 05 83 02 40     ........@......@
	...

00000b40 <STRING_LANGUAGE>:
     b40:	04 03 09 04                                         ....

00000b44 <USB_DeviceDescriptorIAD>:
     b44:	12 01 00 02 ef 02 01 40 41 23 36 80 00 01 01 02     .......@A#6.....
     b54:	03 01                                               ..

00000b56 <STRING_MANUFACTURER>:
     b56:	41 72 64 75 69 6e 6f 20 4c 4c 43 00                 Arduino LLC.

00000b62 <STRING_PRODUCT>:
     b62:	41 72 64 75 69 6e 6f 20 4c 65 6f 6e 61 72 64 6f     Arduino Leonardo
	...

00000b74 <__ctors_start>:
     b74:	09 29       	or	r16, r9

00000b76 <__ctors_end>:
     b76:	11 24       	eor	r1, r1
     b78:	1f be       	out	0x3f, r1	; 63
     b7a:	cf ef       	ldi	r28, 0xFF	; 255
     b7c:	da e0       	ldi	r29, 0x0A	; 10
     b7e:	de bf       	out	0x3e, r29	; 62
     b80:	cd bf       	out	0x3d, r28	; 61

00000b82 <__do_copy_data>:
     b82:	11 e0       	ldi	r17, 0x01	; 1
     b84:	a0 e0       	ldi	r26, 0x00	; 0
     b86:	b1 e0       	ldi	r27, 0x01	; 1
     b88:	e0 ee       	ldi	r30, 0xE0	; 224
     b8a:	ff e5       	ldi	r31, 0x5F	; 95
     b8c:	02 c0       	rjmp	.+4      	; 0xb92 <__do_copy_data+0x10>
     b8e:	05 90       	lpm	r0, Z+
     b90:	0d 92       	st	X+, r0
     b92:	a0 34       	cpi	r26, 0x40	; 64
     b94:	b1 07       	cpc	r27, r17
     b96:	d9 f7       	brne	.-10     	; 0xb8e <__do_copy_data+0xc>

00000b98 <__do_clear_bss>:
     b98:	27 e0       	ldi	r18, 0x07	; 7
     b9a:	a0 e4       	ldi	r26, 0x40	; 64
     b9c:	b1 e0       	ldi	r27, 0x01	; 1
     b9e:	01 c0       	rjmp	.+2      	; 0xba2 <.do_clear_bss_start>

00000ba0 <.do_clear_bss_loop>:
     ba0:	1d 92       	st	X+, r1

00000ba2 <.do_clear_bss_start>:
     ba2:	a3 3e       	cpi	r26, 0xE3	; 227
     ba4:	b2 07       	cpc	r27, r18
     ba6:	e1 f7       	brne	.-8      	; 0xba0 <.do_clear_bss_loop>

00000ba8 <__do_global_ctors>:
     ba8:	15 e0       	ldi	r17, 0x05	; 5
     baa:	cb eb       	ldi	r28, 0xBB	; 187
     bac:	d5 e0       	ldi	r29, 0x05	; 5
     bae:	04 c0       	rjmp	.+8      	; 0xbb8 <__do_global_ctors+0x10>
     bb0:	21 97       	sbiw	r28, 0x01	; 1
     bb2:	fe 01       	movw	r30, r28
     bb4:	0e 94 e8 2f 	call	0x5fd0	; 0x5fd0 <__tablejump2__>
     bb8:	ca 3b       	cpi	r28, 0xBA	; 186
     bba:	d1 07       	cpc	r29, r17
     bbc:	c9 f7       	brne	.-14     	; 0xbb0 <__do_global_ctors+0x8>
     bbe:	0e 94 26 29 	call	0x524c	; 0x524c <main>
     bc2:	0c 94 ee 2f 	jmp	0x5fdc	; 0x5fdc <_exit>

00000bc6 <__bad_interrupt>:
     bc6:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

00000bca <_ZN12Arduboy2Core11paintScreenEPhb.constprop.46>:
    : [spdr]    "I"   (_SFR_IO_ADDR(SPDR)),
      [spsr]    "I"   (_SFR_IO_ADDR(SPSR)),
      [len_msb] "M"   (WIDTH * (HEIGHT / 8 * 2) >> 8),   // 8: pixels per byte
      [len_lsb] "M"   (WIDTH * (HEIGHT / 8 * 2) & 0xFF), // 2: for delay loop multiplier
      [clear]   "r"   (clear)
  );
     bca:	ed e8       	ldi	r30, 0x8D	; 141
     bcc:	f3 e0       	ldi	r31, 0x03	; 3
     bce:	80 e0       	ldi	r24, 0x00	; 0
     bd0:	a0 e0       	ldi	r26, 0x00	; 0
     bd2:	b8 e0       	ldi	r27, 0x08	; 8
     bd4:	00 80       	ld	r0, Z
     bd6:	0e bc       	out	0x2e, r0	; 46
     bd8:	81 11       	cpse	r24, r1
     bda:	01 2c       	mov	r0, r1
     bdc:	11 97       	sbiw	r26, 0x01	; 1
     bde:	a0 fd       	sbrc	r26, 0
     be0:	fd cf       	rjmp	.-6      	; 0xbdc <_ZN12Arduboy2Core11paintScreenEPhb.constprop.46+0x12>
     be2:	01 92       	st	Z+, r0
     be4:	b9 f7       	brne	.-18     	; 0xbd4 <_ZN12Arduboy2Core11paintScreenEPhb.constprop.46+0xa>
     be6:	0d b4       	in	r0, 0x2d	; 45
}
     be8:	08 95       	ret

00000bea <_ZN10MyArduboy210buttonDownEh.constprop.43>:
    return ret;
}

bool MyArduboy2::buttonDown(uint8_t buttons)
{
    return currentButtonState & ~lastButtonState & buttons;
     bea:	20 91 e1 07 	lds	r18, 0x07E1	; 0x8007e1 <arduboy+0x4>
     bee:	30 e0       	ldi	r19, 0x00	; 0
     bf0:	20 95       	com	r18
     bf2:	30 95       	com	r19
     bf4:	40 91 e2 07 	lds	r20, 0x07E2	; 0x8007e2 <arduboy+0x5>
     bf8:	50 e0       	ldi	r21, 0x00	; 0
     bfa:	24 23       	and	r18, r20
     bfc:	35 23       	and	r19, r21
     bfe:	90 e0       	ldi	r25, 0x00	; 0
     c00:	28 23       	and	r18, r24
     c02:	39 23       	and	r19, r25
     c04:	81 e0       	ldi	r24, 0x01	; 1
     c06:	23 2b       	or	r18, r19
     c08:	09 f4       	brne	.+2      	; 0xc0c <_ZN10MyArduboy210buttonDownEh.constprop.43+0x22>
     c0a:	80 e0       	ldi	r24, 0x00	; 0
}
     c0c:	08 95       	ret

00000c0e <_ZN10MyArduboy213drawFastVLineEiiah.constprop.41>:
    drawFastHLine(x, y + h - 1, w, color);
    drawFastVLine(x, y + 1, h - 2, color);
    drawFastVLine(x + w - 1, y + 1, h - 2, color);
}

void MyArduboy2::drawFastVLine(int16_t x, int16_t y, int8_t h, uint8_t color)
     c0e:	cf 93       	push	r28
     c10:	df 93       	push	r29
     c12:	dc 01       	movw	r26, r24
{
    /*  Check parameters  */
    if (y < 0) {
     c14:	77 ff       	sbrs	r23, 7
     c16:	13 c0       	rjmp	.+38     	; 0xc3e <_ZN10MyArduboy213drawFastVLineEiiah.constprop.41+0x30>
        if (h <= -y) return;
     c18:	22 27       	eor	r18, r18
     c1a:	33 27       	eor	r19, r19
     c1c:	26 1b       	sub	r18, r22
     c1e:	37 0b       	sbc	r19, r23
     c20:	84 2f       	mov	r24, r20
     c22:	04 2e       	mov	r0, r20
     c24:	00 0c       	add	r0, r0
     c26:	99 0b       	sbc	r25, r25
     c28:	28 17       	cp	r18, r24
     c2a:	39 07       	cpc	r19, r25
     c2c:	2c f4       	brge	.+10     	; 0xc38 <_ZN10MyArduboy213drawFastVLineEiiah.constprop.41+0x2a>
        h += y;
     c2e:	46 0f       	add	r20, r22
        y = 0;
     c30:	70 e0       	ldi	r23, 0x00	; 0
     c32:	60 e0       	ldi	r22, 0x00	; 0
    }
    if (h <= 0 || y >= HEIGHT || x < 0 || x >= WIDTH) return;
     c34:	14 16       	cp	r1, r20
     c36:	44 f0       	brlt	.+16     	; 0xc48 <_ZN10MyArduboy213drawFastVLineEiiah.constprop.41+0x3a>
        } else {
            *p |= d;
        }
        d = 0xFF;
    }
}
     c38:	df 91       	pop	r29
     c3a:	cf 91       	pop	r28
     c3c:	08 95       	ret
    if (y < 0) {
        if (h <= -y) return;
        h += y;
        y = 0;
    }
    if (h <= 0 || y >= HEIGHT || x < 0 || x >= WIDTH) return;
     c3e:	14 16       	cp	r1, r20
     c40:	dc f7       	brge	.-10     	; 0xc38 <_ZN10MyArduboy213drawFastVLineEiiah.constprop.41+0x2a>
     c42:	60 34       	cpi	r22, 0x40	; 64
     c44:	71 05       	cpc	r23, r1
     c46:	c4 f7       	brge	.-16     	; 0xc38 <_ZN10MyArduboy213drawFastVLineEiiah.constprop.41+0x2a>
     c48:	a0 38       	cpi	r26, 0x80	; 128
     c4a:	b1 05       	cpc	r27, r1
     c4c:	a8 f7       	brcc	.-22     	; 0xc38 <_ZN10MyArduboy213drawFastVLineEiiah.constprop.41+0x2a>
     c4e:	26 2f       	mov	r18, r22
    if (y + h > HEIGHT) h = HEIGHT - y;
     c50:	cb 01       	movw	r24, r22
     c52:	84 0f       	add	r24, r20
     c54:	91 1d       	adc	r25, r1
     c56:	47 fd       	sbrc	r20, 7
     c58:	9a 95       	dec	r25
     c5a:	81 34       	cpi	r24, 0x41	; 65
     c5c:	91 05       	cpc	r25, r1
     c5e:	14 f0       	brlt	.+4      	; 0xc64 <_ZN10MyArduboy213drawFastVLineEiiah.constprop.41+0x56>
     c60:	40 e4       	ldi	r20, 0x40	; 64
     c62:	46 1b       	sub	r20, r22

    /*  Draw a vertical line  */
    uint8_t yOdd = y & 7;
     c64:	27 70       	andi	r18, 0x07	; 7
    uint8_t d = 0xFF << yOdd;
     c66:	9f ef       	ldi	r25, 0xFF	; 255
     c68:	02 2e       	mov	r0, r18
     c6a:	01 c0       	rjmp	.+2      	; 0xc6e <_ZN10MyArduboy213drawFastVLineEiiah.constprop.41+0x60>
     c6c:	99 0f       	add	r25, r25
     c6e:	0a 94       	dec	r0
     c70:	ea f7       	brpl	.-6      	; 0xc6c <_ZN10MyArduboy213drawFastVLineEiiah.constprop.41+0x5e>
    y -= yOdd;
    h += yOdd;
     c72:	42 0f       	add	r20, r18
    for (uint8_t *p = getBuffer() + x + (y / 8) * WIDTH; h > 0; h -= 8, p += WIDTH) {
     c74:	62 1b       	sub	r22, r18
     c76:	71 09       	sbc	r23, r1
     c78:	77 ff       	sbrs	r23, 7
     c7a:	02 c0       	rjmp	.+4      	; 0xc80 <_ZN10MyArduboy213drawFastVLineEiiah.constprop.41+0x72>
     c7c:	69 5f       	subi	r22, 0xF9	; 249
     c7e:	7f 4f       	sbci	r23, 0xFF	; 255
     c80:	83 e0       	ldi	r24, 0x03	; 3
     c82:	75 95       	asr	r23
     c84:	67 95       	ror	r22
     c86:	8a 95       	dec	r24
     c88:	e1 f7       	brne	.-8      	; 0xc82 <_ZN10MyArduboy213drawFastVLineEiiah.constprop.41+0x74>
     c8a:	fb 01       	movw	r30, r22
     c8c:	f6 95       	lsr	r31
     c8e:	fe 2f       	mov	r31, r30
     c90:	ee 27       	eor	r30, r30
     c92:	f7 95       	ror	r31
     c94:	e7 95       	ror	r30
     c96:	ea 0f       	add	r30, r26
     c98:	fb 1f       	adc	r31, r27
     c9a:	e3 57       	subi	r30, 0x73	; 115
     c9c:	fc 4f       	sbci	r31, 0xFC	; 252
        if (h < 8) d &= 0xFF >> (8 - h);
     c9e:	28 e0       	ldi	r18, 0x08	; 8
     ca0:	30 e0       	ldi	r19, 0x00	; 0
     ca2:	6f ef       	ldi	r22, 0xFF	; 255
     ca4:	70 e0       	ldi	r23, 0x00	; 0
    /*  Draw a vertical line  */
    uint8_t yOdd = y & 7;
    uint8_t d = 0xFF << yOdd;
    y -= yOdd;
    h += yOdd;
    for (uint8_t *p = getBuffer() + x + (y / 8) * WIDTH; h > 0; h -= 8, p += WIDTH) {
     ca6:	14 16       	cp	r1, r20
     ca8:	3c f6       	brge	.-114    	; 0xc38 <_ZN10MyArduboy213drawFastVLineEiiah.constprop.41+0x2a>
        if (h < 8) d &= 0xFF >> (8 - h);
     caa:	48 30       	cpi	r20, 0x08	; 8
     cac:	64 f4       	brge	.+24     	; 0xcc6 <_ZN10MyArduboy213drawFastVLineEiiah.constprop.41+0xb8>
     cae:	d9 01       	movw	r26, r18
     cb0:	a4 1b       	sub	r26, r20
     cb2:	b1 09       	sbc	r27, r1
     cb4:	47 fd       	sbrc	r20, 7
     cb6:	b3 95       	inc	r27
     cb8:	eb 01       	movw	r28, r22
     cba:	02 c0       	rjmp	.+4      	; 0xcc0 <_ZN10MyArduboy213drawFastVLineEiiah.constprop.41+0xb2>
     cbc:	d5 95       	asr	r29
     cbe:	c7 95       	ror	r28
     cc0:	aa 95       	dec	r26
     cc2:	e2 f7       	brpl	.-8      	; 0xcbc <_ZN10MyArduboy213drawFastVLineEiiah.constprop.41+0xae>
     cc4:	9c 23       	and	r25, r28
        if (color == BLACK) {
            *p &= ~d;
        } else {
            *p |= d;
     cc6:	80 81       	ld	r24, Z
     cc8:	98 2b       	or	r25, r24
     cca:	90 83       	st	Z, r25
     ccc:	48 50       	subi	r20, 0x08	; 8
    /*  Draw a vertical line  */
    uint8_t yOdd = y & 7;
    uint8_t d = 0xFF << yOdd;
    y -= yOdd;
    h += yOdd;
    for (uint8_t *p = getBuffer() + x + (y / 8) * WIDTH; h > 0; h -= 8, p += WIDTH) {
     cce:	e0 58       	subi	r30, 0x80	; 128
     cd0:	ff 4f       	sbci	r31, 0xFF	; 255
        if (color == BLACK) {
            *p &= ~d;
        } else {
            *p |= d;
        }
        d = 0xFF;
     cd2:	9f ef       	ldi	r25, 0xFF	; 255
     cd4:	e8 cf       	rjmp	.-48     	; 0xca6 <_ZN10MyArduboy213drawFastVLineEiiah.constprop.41+0x98>

00000cd6 <_Z8USB_RecvhPvi.constprop.5>:
	return FifoByteCount();
}

//	Non Blocking receive
//	Return number of bytes read
int USB_Recv(u8 ep, void* d, int len)
     cd6:	fc 01       	movw	r30, r24
{
	if (!_usbConfiguration || len < 0)
     cd8:	80 91 70 03 	lds	r24, 0x0370	; 0x800370 <_usbConfiguration>
     cdc:	88 23       	and	r24, r24
     cde:	11 f1       	breq	.+68     	; 0xd24 <_Z8USB_RecvhPvi.constprop.5+0x4e>
#define USB_RECV_TIMEOUT
class LockEP
{
	u8 _sreg;
public:
	LockEP(u8 ep) : _sreg(SREG)
     ce0:	3f b7       	in	r19, 0x3f	; 63
	{
		cli();
     ce2:	f8 94       	cli
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
     ce4:	82 e0       	ldi	r24, 0x02	; 2
     ce6:	80 93 e9 00 	sts	0x00E9, r24	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
}

static inline u8 FifoByteCount()
{
	return UEBCLX;
     cea:	20 91 f2 00 	lds	r18, 0x00F2	; 0x8000f2 <__DATA_REGION_ORIGIN__+0x92>
	if (!_usbConfiguration || len < 0)
		return -1;
	
	LockEP lock(ep);
	u8 n = FifoByteCount();
	len = min(n,len);
     cee:	82 2f       	mov	r24, r18
     cf0:	90 e0       	ldi	r25, 0x00	; 0
     cf2:	18 16       	cp	r1, r24
     cf4:	19 06       	cpc	r1, r25
     cf6:	14 f4       	brge	.+4      	; 0xcfc <_Z8USB_RecvhPvi.constprop.5+0x26>
     cf8:	81 e0       	ldi	r24, 0x01	; 1
     cfa:	90 e0       	ldi	r25, 0x00	; 0
	n = len;
	u8* dst = (u8*)d;
	while (n--)
     cfc:	88 23       	and	r24, r24
     cfe:	39 f0       	breq	.+14     	; 0xd0e <_Z8USB_RecvhPvi.constprop.5+0x38>
	RxLEDPulse = TX_RX_LED_PULSE_MS;	
}

static inline u8 Recv8()
{
	RXLED1;					// light the RX LED
     d00:	28 98       	cbi	0x05, 0	; 5
	RxLEDPulse = TX_RX_LED_PULSE_MS;
     d02:	44 e6       	ldi	r20, 0x64	; 100
     d04:	40 93 6f 03 	sts	0x036F, r20	; 0x80036f <RxLEDPulse>

	return UEDATX;	
     d08:	40 91 f1 00 	lds	r20, 0x00F1	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
	u8 n = FifoByteCount();
	len = min(n,len);
	n = len;
	u8* dst = (u8*)d;
	while (n--)
		*dst++ = Recv8();
     d0c:	40 83       	st	Z, r20
	if (len && !FifoByteCount())	// release empty buffer
     d0e:	22 23       	and	r18, r18
     d10:	39 f0       	breq	.+14     	; 0xd20 <_Z8USB_RecvhPvi.constprop.5+0x4a>
	UENUM = ep;
}

static inline u8 FifoByteCount()
{
	return UEBCLX;
     d12:	20 91 f2 00 	lds	r18, 0x00F2	; 0x8000f2 <__DATA_REGION_ORIGIN__+0x92>
	len = min(n,len);
	n = len;
	u8* dst = (u8*)d;
	while (n--)
		*dst++ = Recv8();
	if (len && !FifoByteCount())	// release empty buffer
     d16:	21 11       	cpse	r18, r1
     d18:	03 c0       	rjmp	.+6      	; 0xd20 <_Z8USB_RecvhPvi.constprop.5+0x4a>
	return UEINTX & (1<<FIFOCON);
}

static inline void ReleaseRX()
{
	UEINTX = 0x6B;	// FIFOCON=0 NAKINI=1 RWAL=1 NAKOUTI=0 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=1
     d1a:	2b e6       	ldi	r18, 0x6B	; 107
     d1c:	20 93 e8 00 	sts	0x00E8, r18	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
		cli();
		SetEP(ep & 7);
	}
	~LockEP()
	{
		SREG = _sreg;
     d20:	3f bf       	out	0x3f, r19	; 63
     d22:	08 95       	ret
//	Non Blocking receive
//	Return number of bytes read
int USB_Recv(u8 ep, void* d, int len)
{
	if (!_usbConfiguration || len < 0)
		return -1;
     d24:	8f ef       	ldi	r24, 0xFF	; 255
     d26:	9f ef       	ldi	r25, 0xFF	; 255
		*dst++ = Recv8();
	if (len && !FifoByteCount())	// release empty buffer
		ReleaseRX();
	
	return len;
}
     d28:	08 95       	ret

00000d2a <_Z13USB_SendSpaceh.constprop.3>:
#define USB_RECV_TIMEOUT
class LockEP
{
	u8 _sreg;
public:
	LockEP(u8 ep) : _sreg(SREG)
     d2a:	2f b7       	in	r18, 0x3f	; 63
	{
		cli();
     d2c:	f8 94       	cli
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
     d2e:	83 e0       	ldi	r24, 0x03	; 3
     d30:	80 93 e9 00 	sts	0x00E9, r24	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
	UECONX = (1<<STALLRQ) | (1<<EPEN);
}

static inline u8 ReadWriteAllowed()
{
	return UEINTX & (1<<RWAL);
     d34:	90 91 e8 00 	lds	r25, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>

//	Space in send EP
u8 USB_SendSpace(u8 ep)
{
	LockEP lock(ep);
	if (!ReadWriteAllowed())
     d38:	89 2f       	mov	r24, r25
     d3a:	80 72       	andi	r24, 0x20	; 32
     d3c:	95 ff       	sbrs	r25, 5
     d3e:	04 c0       	rjmp	.+8      	; 0xd48 <_Z13USB_SendSpaceh.constprop.3+0x1e>
	UENUM = ep;
}

static inline u8 FifoByteCount()
{
	return UEBCLX;
     d40:	90 91 f2 00 	lds	r25, 0x00F2	; 0x8000f2 <__DATA_REGION_ORIGIN__+0x92>
u8 USB_SendSpace(u8 ep)
{
	LockEP lock(ep);
	if (!ReadWriteAllowed())
		return 0;
	return USB_EP_SIZE - FifoByteCount();
     d44:	80 e4       	ldi	r24, 0x40	; 64
     d46:	89 1b       	sub	r24, r25
		cli();
		SetEP(ep & 7);
	}
	~LockEP()
	{
		SREG = _sreg;
     d48:	2f bf       	out	0x3f, r18	; 63
{
	LockEP lock(ep);
	if (!ReadWriteAllowed())
		return 0;
	return USB_EP_SIZE - FifoByteCount();
}
     d4a:	08 95       	ret

00000d4c <_Z12PluggableUSBv>:
	// restart USB layer???
}

PluggableUSB_& PluggableUSB()
{
	static PluggableUSB_ obj;
     d4c:	80 91 67 03 	lds	r24, 0x0367	; 0x800367 <_ZGVZ12PluggableUSBvE3obj>
     d50:	81 11       	cpse	r24, r1
     d52:	0d c0       	rjmp	.+26     	; 0xd6e <_Z12PluggableUSBv+0x22>
	return obj;
}

PluggableUSB_::PluggableUSB_() : lastIf(CDC_ACM_INTERFACE + CDC_INTERFACE_COUNT),
                                 lastEp(CDC_FIRST_ENDPOINT + CDC_ENPOINT_COUNT),
                                 rootNode(NULL)
     d54:	82 e0       	ldi	r24, 0x02	; 2
     d56:	80 93 63 03 	sts	0x0363, r24	; 0x800363 <_ZZ12PluggableUSBvE3obj>
     d5a:	84 e0       	ldi	r24, 0x04	; 4
     d5c:	80 93 64 03 	sts	0x0364, r24	; 0x800364 <_ZZ12PluggableUSBvE3obj+0x1>
     d60:	10 92 66 03 	sts	0x0366, r1	; 0x800366 <_ZZ12PluggableUSBvE3obj+0x3>
     d64:	10 92 65 03 	sts	0x0365, r1	; 0x800365 <_ZZ12PluggableUSBvE3obj+0x2>
	// restart USB layer???
}

PluggableUSB_& PluggableUSB()
{
	static PluggableUSB_ obj;
     d68:	81 e0       	ldi	r24, 0x01	; 1
     d6a:	80 93 67 03 	sts	0x0367, r24	; 0x800367 <_ZGVZ12PluggableUSBvE3obj>
	return obj;
}
     d6e:	83 e6       	ldi	r24, 0x63	; 99
     d70:	93 e0       	ldi	r25, 0x03	; 3
     d72:	08 95       	ret

00000d74 <_ZN7Serial_5writeEh>:
{
	USB_Flush(CDC_TX);
}

size_t Serial_::write(uint8_t c)
{
     d74:	cf 93       	push	r28
     d76:	df 93       	push	r29
     d78:	1f 92       	push	r1
     d7a:	cd b7       	in	r28, 0x3d	; 61
     d7c:	de b7       	in	r29, 0x3e	; 62
     d7e:	69 83       	std	Y+1, r22	; 0x01
	return write(&c, 1);
     d80:	dc 01       	movw	r26, r24
     d82:	ed 91       	ld	r30, X+
     d84:	fc 91       	ld	r31, X
     d86:	02 80       	ldd	r0, Z+2	; 0x02
     d88:	f3 81       	ldd	r31, Z+3	; 0x03
     d8a:	e0 2d       	mov	r30, r0
     d8c:	41 e0       	ldi	r20, 0x01	; 1
     d8e:	50 e0       	ldi	r21, 0x00	; 0
     d90:	be 01       	movw	r22, r28
     d92:	6f 5f       	subi	r22, 0xFF	; 255
     d94:	7f 4f       	sbci	r23, 0xFF	; 255
     d96:	09 95       	icall
}
     d98:	0f 90       	pop	r0
     d9a:	df 91       	pop	r29
     d9c:	cf 91       	pop	r28
     d9e:	08 95       	ret

00000da0 <_ZN7Serial_5flushEv>:
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
     da0:	83 e0       	ldi	r24, 0x03	; 3
     da2:	80 93 e9 00 	sts	0x00E9, r24	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
}

static inline u8 FifoByteCount()
{
	return UEBCLX;
     da6:	80 91 f2 00 	lds	r24, 0x00F2	; 0x8000f2 <__DATA_REGION_ORIGIN__+0x92>
}

void USB_Flush(u8 ep)
{
	SetEP(ep);
	if (FifoByteCount())
     daa:	88 23       	and	r24, r24
     dac:	19 f0       	breq	.+6      	; 0xdb4 <_ZN7Serial_5flushEv+0x14>
	UEINTX = 0x6B;	// FIFOCON=0 NAKINI=1 RWAL=1 NAKOUTI=0 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=1
}

static inline void ReleaseTX()
{
	UEINTX = 0x3A;	// FIFOCON=0 NAKINI=0 RWAL=1 NAKOUTI=1 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=0
     dae:	8a e3       	ldi	r24, 0x3A	; 58
     db0:	80 93 e8 00 	sts	0x00E8, r24	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
}

void Serial_::flush(void)
{
	USB_Flush(CDC_TX);
}
     db4:	08 95       	ret

00000db6 <_ZN7Serial_17availableForWriteEv>:
	return USB_Recv(CDC_RX);
}

int Serial_::availableForWrite(void)
{
	return USB_SendSpace(CDC_TX);
     db6:	0e 94 95 06 	call	0xd2a	; 0xd2a <_Z13USB_SendSpaceh.constprop.3>
}
     dba:	90 e0       	ldi	r25, 0x00	; 0
     dbc:	08 95       	ret

00000dbe <_ZN7Serial_4readEv>:
		peek_buffer = USB_Recv(CDC_RX);
	return peek_buffer;
}

int Serial_::read(void)
{
     dbe:	cf 93       	push	r28
     dc0:	df 93       	push	r29
     dc2:	1f 92       	push	r1
     dc4:	cd b7       	in	r28, 0x3d	; 61
     dc6:	de b7       	in	r29, 0x3e	; 62
     dc8:	fc 01       	movw	r30, r24
	if (peek_buffer >= 0) {
     dca:	84 85       	ldd	r24, Z+12	; 0x0c
     dcc:	95 85       	ldd	r25, Z+13	; 0x0d
     dce:	97 fd       	sbrc	r25, 7
     dd0:	08 c0       	rjmp	.+16     	; 0xde2 <_ZN7Serial_4readEv+0x24>
		int c = peek_buffer;
		peek_buffer = -1;
     dd2:	2f ef       	ldi	r18, 0xFF	; 255
     dd4:	3f ef       	ldi	r19, 0xFF	; 255
     dd6:	35 87       	std	Z+13, r19	; 0x0d
     dd8:	24 87       	std	Z+12, r18	; 0x0c
		return c;
	}
	return USB_Recv(CDC_RX);
}
     dda:	0f 90       	pop	r0
     ddc:	df 91       	pop	r29
     dde:	cf 91       	pop	r28
     de0:	08 95       	ret

//	Recv 1 byte if ready
int USB_Recv(u8 ep)
{
	u8 c;
	if (USB_Recv(ep,&c,1) != 1)
     de2:	ce 01       	movw	r24, r28
     de4:	01 96       	adiw	r24, 0x01	; 1
     de6:	0e 94 6b 06 	call	0xcd6	; 0xcd6 <_Z8USB_RecvhPvi.constprop.5>
     dea:	01 97       	sbiw	r24, 0x01	; 1
     dec:	19 f4       	brne	.+6      	; 0xdf4 <_ZN7Serial_4readEv+0x36>
		return -1;
	return c;
     dee:	89 81       	ldd	r24, Y+1	; 0x01
     df0:	90 e0       	ldi	r25, 0x00	; 0
     df2:	f3 cf       	rjmp	.-26     	; 0xdda <_ZN7Serial_4readEv+0x1c>
//	Recv 1 byte if ready
int USB_Recv(u8 ep)
{
	u8 c;
	if (USB_Recv(ep,&c,1) != 1)
		return -1;
     df4:	8f ef       	ldi	r24, 0xFF	; 255
     df6:	9f ef       	ldi	r25, 0xFF	; 255
     df8:	f0 cf       	rjmp	.-32     	; 0xdda <_ZN7Serial_4readEv+0x1c>

00000dfa <_ZN7Serial_4peekEv>:
	}
	return USB_Available(CDC_RX);
}

int Serial_::peek(void)
{
     dfa:	0f 93       	push	r16
     dfc:	1f 93       	push	r17
     dfe:	cf 93       	push	r28
     e00:	df 93       	push	r29
     e02:	1f 92       	push	r1
     e04:	cd b7       	in	r28, 0x3d	; 61
     e06:	de b7       	in	r29, 0x3e	; 62
     e08:	8c 01       	movw	r16, r24
	if (peek_buffer < 0)
     e0a:	fc 01       	movw	r30, r24
     e0c:	84 85       	ldd	r24, Z+12	; 0x0c
     e0e:	95 85       	ldd	r25, Z+13	; 0x0d
     e10:	97 ff       	sbrs	r25, 7
     e12:	0b c0       	rjmp	.+22     	; 0xe2a <_ZN7Serial_4peekEv+0x30>

//	Recv 1 byte if ready
int USB_Recv(u8 ep)
{
	u8 c;
	if (USB_Recv(ep,&c,1) != 1)
     e14:	ce 01       	movw	r24, r28
     e16:	01 96       	adiw	r24, 0x01	; 1
     e18:	0e 94 6b 06 	call	0xcd6	; 0xcd6 <_Z8USB_RecvhPvi.constprop.5>
     e1c:	01 97       	sbiw	r24, 0x01	; 1
     e1e:	71 f4       	brne	.+28     	; 0xe3c <_ZN7Serial_4peekEv+0x42>
		return -1;
	return c;
     e20:	89 81       	ldd	r24, Y+1	; 0x01
     e22:	90 e0       	ldi	r25, 0x00	; 0
		peek_buffer = USB_Recv(CDC_RX);
     e24:	f8 01       	movw	r30, r16
     e26:	95 87       	std	Z+13, r25	; 0x0d
     e28:	84 87       	std	Z+12, r24	; 0x0c
	return peek_buffer;
}
     e2a:	f8 01       	movw	r30, r16
     e2c:	84 85       	ldd	r24, Z+12	; 0x0c
     e2e:	95 85       	ldd	r25, Z+13	; 0x0d
     e30:	0f 90       	pop	r0
     e32:	df 91       	pop	r29
     e34:	cf 91       	pop	r28
     e36:	1f 91       	pop	r17
     e38:	0f 91       	pop	r16
     e3a:	08 95       	ret
//	Recv 1 byte if ready
int USB_Recv(u8 ep)
{
	u8 c;
	if (USB_Recv(ep,&c,1) != 1)
		return -1;
     e3c:	8f ef       	ldi	r24, 0xFF	; 255
     e3e:	9f ef       	ldi	r25, 0xFF	; 255
     e40:	f1 cf       	rjmp	.-30     	; 0xe24 <_ZN7Serial_4peekEv+0x2a>

00000e42 <_ZN7Serial_9availableEv>:
{
}

int Serial_::available(void)
{
	if (peek_buffer >= 0) {
     e42:	fc 01       	movw	r30, r24
     e44:	84 85       	ldd	r24, Z+12	; 0x0c
     e46:	95 85       	ldd	r25, Z+13	; 0x0d
     e48:	97 fd       	sbrc	r25, 7
     e4a:	0b c0       	rjmp	.+22     	; 0xe62 <_ZN7Serial_9availableEv+0x20>
#define USB_RECV_TIMEOUT
class LockEP
{
	u8 _sreg;
public:
	LockEP(u8 ep) : _sreg(SREG)
     e4c:	9f b7       	in	r25, 0x3f	; 63
	{
		cli();
     e4e:	f8 94       	cli
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
     e50:	82 e0       	ldi	r24, 0x02	; 2
     e52:	80 93 e9 00 	sts	0x00E9, r24	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
}

static inline u8 FifoByteCount()
{
	return UEBCLX;
     e56:	80 91 f2 00 	lds	r24, 0x00F2	; 0x8000f2 <__DATA_REGION_ORIGIN__+0x92>
		cli();
		SetEP(ep & 7);
	}
	~LockEP()
	{
		SREG = _sreg;
     e5a:	9f bf       	out	0x3f, r25	; 63
		return 1 + USB_Available(CDC_RX);
     e5c:	90 e0       	ldi	r25, 0x00	; 0
     e5e:	01 96       	adiw	r24, 0x01	; 1
     e60:	08 95       	ret
#define USB_RECV_TIMEOUT
class LockEP
{
	u8 _sreg;
public:
	LockEP(u8 ep) : _sreg(SREG)
     e62:	9f b7       	in	r25, 0x3f	; 63
	{
		cli();
     e64:	f8 94       	cli
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
     e66:	82 e0       	ldi	r24, 0x02	; 2
     e68:	80 93 e9 00 	sts	0x00E9, r24	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
}

static inline u8 FifoByteCount()
{
	return UEBCLX;
     e6c:	80 91 f2 00 	lds	r24, 0x00F2	; 0x8000f2 <__DATA_REGION_ORIGIN__+0x92>
		cli();
		SetEP(ep & 7);
	}
	~LockEP()
	{
		SREG = _sreg;
     e70:	9f bf       	out	0x3f, r25	; 63
	}
	return USB_Available(CDC_RX);
     e72:	90 e0       	ldi	r25, 0x00	; 0
}
     e74:	08 95       	ret

00000e76 <_ZL11SendControlh>:
}

static
bool SendControl(u8 d)
{
	if (_cmark < _cend)
     e76:	40 91 5d 03 	lds	r20, 0x035D	; 0x80035d <_ZL6_cmark>
     e7a:	50 91 5e 03 	lds	r21, 0x035E	; 0x80035e <_ZL6_cmark+0x1>
     e7e:	20 91 5b 03 	lds	r18, 0x035B	; 0x80035b <_ZL5_cend>
     e82:	30 91 5c 03 	lds	r19, 0x035C	; 0x80035c <_ZL5_cend+0x1>
     e86:	42 17       	cp	r20, r18
     e88:	53 07       	cpc	r21, r19
     e8a:	b4 f4       	brge	.+44     	; 0xeb8 <_ZL11SendControlh+0x42>
		;
}

static inline u8 WaitForINOrOUT()
{
	while (!(UEINTX & ((1<<TXINI)|(1<<RXOUTI))))
     e8c:	90 91 e8 00 	lds	r25, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
     e90:	95 70       	andi	r25, 0x05	; 5
     e92:	e1 f3       	breq	.-8      	; 0xe8c <_ZL11SendControlh+0x16>
		;
	return (UEINTX & (1<<RXOUTI)) == 0;
     e94:	90 91 e8 00 	lds	r25, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
static
bool SendControl(u8 d)
{
	if (_cmark < _cend)
	{
		if (!WaitForINOrOUT())
     e98:	92 fd       	sbrc	r25, 2
     e9a:	19 c0       	rjmp	.+50     	; 0xece <_ZL11SendControlh+0x58>
	return UEDATX;	
}

static inline void Send8(u8 d)
{
	UEDATX = d;
     e9c:	80 93 f1 00 	sts	0x00F1, r24	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
	if (_cmark < _cend)
	{
		if (!WaitForINOrOUT())
			return false;
		Send8(d);
		if (!((_cmark + 1) & 0x3F))
     ea0:	80 91 5d 03 	lds	r24, 0x035D	; 0x80035d <_ZL6_cmark>
     ea4:	90 91 5e 03 	lds	r25, 0x035E	; 0x80035e <_ZL6_cmark+0x1>
     ea8:	01 96       	adiw	r24, 0x01	; 1
     eaa:	8f 73       	andi	r24, 0x3F	; 63
     eac:	99 27       	eor	r25, r25
     eae:	89 2b       	or	r24, r25
     eb0:	19 f4       	brne	.+6      	; 0xeb8 <_ZL11SendControlh+0x42>
		;
}

static inline void ClearIN(void)
{
	UEINTX = ~(1<<TXINI);
     eb2:	8e ef       	ldi	r24, 0xFE	; 254
     eb4:	80 93 e8 00 	sts	0x00E8, r24	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
			return false;
		Send8(d);
		if (!((_cmark + 1) & 0x3F))
			ClearIN();	// Fifo is full, release this packet
	}
	_cmark++;
     eb8:	80 91 5d 03 	lds	r24, 0x035D	; 0x80035d <_ZL6_cmark>
     ebc:	90 91 5e 03 	lds	r25, 0x035E	; 0x80035e <_ZL6_cmark+0x1>
     ec0:	01 96       	adiw	r24, 0x01	; 1
     ec2:	90 93 5e 03 	sts	0x035E, r25	; 0x80035e <_ZL6_cmark+0x1>
     ec6:	80 93 5d 03 	sts	0x035D, r24	; 0x80035d <_ZL6_cmark>
	return true;
     eca:	81 e0       	ldi	r24, 0x01	; 1
     ecc:	08 95       	ret
bool SendControl(u8 d)
{
	if (_cmark < _cend)
	{
		if (!WaitForINOrOUT())
			return false;
     ece:	80 e0       	ldi	r24, 0x00	; 0
		if (!((_cmark + 1) & 0x3F))
			ClearIN();	// Fifo is full, release this packet
	}
	_cmark++;
	return true;
}
     ed0:	08 95       	ret

00000ed2 <_Z15USB_SendControlhPKvi>:

//	Clipped by _cmark/_cend
int USB_SendControl(u8 flags, const void* d, int len)
{
     ed2:	df 92       	push	r13
     ed4:	ef 92       	push	r14
     ed6:	ff 92       	push	r15
     ed8:	0f 93       	push	r16
     eda:	1f 93       	push	r17
     edc:	cf 93       	push	r28
     ede:	df 93       	push	r29
     ee0:	d8 2e       	mov	r13, r24
     ee2:	8a 01       	movw	r16, r20
     ee4:	eb 01       	movw	r28, r22
     ee6:	7b 01       	movw	r14, r22
     ee8:	e4 0e       	add	r14, r20
     eea:	f5 1e       	adc	r15, r21
	int sent = len;
	const u8* data = (const u8*)d;
	bool pgm = flags & TRANSFER_PGM;
	while (len--)
     eec:	ce 15       	cp	r28, r14
     eee:	df 05       	cpc	r29, r15
     ef0:	59 f0       	breq	.+22     	; 0xf08 <_Z15USB_SendControlhPKvi+0x36>
	{
		u8 c = pgm ? pgm_read_byte(data++) : *data++;
     ef2:	d7 fe       	sbrs	r13, 7
     ef4:	12 c0       	rjmp	.+36     	; 0xf1a <_Z15USB_SendControlhPKvi+0x48>
     ef6:	fe 01       	movw	r30, r28
     ef8:	84 91       	lpm	r24, Z
		if (!SendControl(c))
     efa:	0e 94 3b 07 	call	0xe76	; 0xe76 <_ZL11SendControlh>
     efe:	21 96       	adiw	r28, 0x01	; 1
     f00:	81 11       	cpse	r24, r1
     f02:	f4 cf       	rjmp	.-24     	; 0xeec <_Z15USB_SendControlhPKvi+0x1a>
			return -1;
     f04:	0f ef       	ldi	r16, 0xFF	; 255
     f06:	1f ef       	ldi	r17, 0xFF	; 255
	}
	return sent;
}
     f08:	c8 01       	movw	r24, r16
     f0a:	df 91       	pop	r29
     f0c:	cf 91       	pop	r28
     f0e:	1f 91       	pop	r17
     f10:	0f 91       	pop	r16
     f12:	ff 90       	pop	r15
     f14:	ef 90       	pop	r14
     f16:	df 90       	pop	r13
     f18:	08 95       	ret
	int sent = len;
	const u8* data = (const u8*)d;
	bool pgm = flags & TRANSFER_PGM;
	while (len--)
	{
		u8 c = pgm ? pgm_read_byte(data++) : *data++;
     f1a:	88 81       	ld	r24, Y
     f1c:	ee cf       	rjmp	.-36     	; 0xefa <_Z15USB_SendControlhPKvi+0x28>

00000f1e <_ZL14SendInterfacesv>:
	}
	return len;
}

static u8 SendInterfaces()
{
     f1e:	0f 93       	push	r16
     f20:	1f 93       	push	r17
     f22:	cf 93       	push	r28
     f24:	df 93       	push	r29
     f26:	1f 92       	push	r1
     f28:	cd b7       	in	r28, 0x3d	; 61
     f2a:	de b7       	in	r29, 0x3e	; 62
	return pgm_read_word(FLASHEND - 1) == NEW_LUFA_SIGNATURE;
}

int CDC_GetInterface(u8* interfaceNum)
{
	interfaceNum[0] += 2;	// uses 2
     f2c:	82 e0       	ldi	r24, 0x02	; 2
     f2e:	89 83       	std	Y+1, r24	; 0x01
	return USB_SendControl(TRANSFER_PGM,&_cdcInterface,sizeof(_cdcInterface));
     f30:	42 e4       	ldi	r20, 0x42	; 66
     f32:	50 e0       	ldi	r21, 0x00	; 0
     f34:	6e ef       	ldi	r22, 0xFE	; 254
     f36:	7a e0       	ldi	r23, 0x0A	; 10
     f38:	80 e8       	ldi	r24, 0x80	; 128
     f3a:	0e 94 69 07 	call	0xed2	; 0xed2 <_Z15USB_SendControlhPKvi>
	u8 interfaces = 0;

	CDC_GetInterface(&interfaces);

#ifdef PLUGGABLE_USB_ENABLED
	PluggableUSB().getInterface(&interfaces);
     f3e:	0e 94 a6 06 	call	0xd4c	; 0xd4c <_Z12PluggableUSBv>

int PluggableUSB_::getInterface(uint8_t* interfaceCount)
{
	int sent = 0;
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
     f42:	dc 01       	movw	r26, r24
     f44:	12 96       	adiw	r26, 0x02	; 2
     f46:	0d 91       	ld	r16, X+
     f48:	1c 91       	ld	r17, X
     f4a:	01 15       	cp	r16, r1
     f4c:	11 05       	cpc	r17, r1
     f4e:	89 f0       	breq	.+34     	; 0xf72 <_ZL14SendInterfacesv+0x54>
		int res = node->getInterface(interfaceCount);
     f50:	d8 01       	movw	r26, r16
     f52:	ed 91       	ld	r30, X+
     f54:	fc 91       	ld	r31, X
     f56:	02 80       	ldd	r0, Z+2	; 0x02
     f58:	f3 81       	ldd	r31, Z+3	; 0x03
     f5a:	e0 2d       	mov	r30, r0
     f5c:	be 01       	movw	r22, r28
     f5e:	6f 5f       	subi	r22, 0xFF	; 255
     f60:	7f 4f       	sbci	r23, 0xFF	; 255
     f62:	c8 01       	movw	r24, r16
     f64:	09 95       	icall
		if (res < 0)
     f66:	97 fd       	sbrc	r25, 7
     f68:	04 c0       	rjmp	.+8      	; 0xf72 <_ZL14SendInterfacesv+0x54>

int PluggableUSB_::getInterface(uint8_t* interfaceCount)
{
	int sent = 0;
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
     f6a:	f8 01       	movw	r30, r16
     f6c:	00 85       	ldd	r16, Z+8	; 0x08
     f6e:	11 85       	ldd	r17, Z+9	; 0x09
     f70:	ec cf       	rjmp	.-40     	; 0xf4a <_ZL14SendInterfacesv+0x2c>
#endif

	return interfaces;
}
     f72:	89 81       	ldd	r24, Y+1	; 0x01
     f74:	0f 90       	pop	r0
     f76:	df 91       	pop	r29
     f78:	cf 91       	pop	r28
     f7a:	1f 91       	pop	r17
     f7c:	0f 91       	pop	r16
     f7e:	08 95       	ret

00000f80 <_ZL4RecvPVhh>:
	UEINTX = ~(1<<RXOUTI);
}

static inline void Recv(volatile u8* data, u8 count)
{
	while (count--)
     f80:	61 50       	subi	r22, 0x01	; 1
     f82:	30 f0       	brcs	.+12     	; 0xf90 <_ZL4RecvPVhh+0x10>
		*data++ = UEDATX;
     f84:	20 91 f1 00 	lds	r18, 0x00F1	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
     f88:	fc 01       	movw	r30, r24
     f8a:	20 83       	st	Z, r18
     f8c:	01 96       	adiw	r24, 0x01	; 1
     f8e:	f8 cf       	rjmp	.-16     	; 0xf80 <_ZL4RecvPVhh>
	
	RXLED1;					// light the RX LED
     f90:	28 98       	cbi	0x05, 0	; 5
	RxLEDPulse = TX_RX_LED_PULSE_MS;	
     f92:	84 e6       	ldi	r24, 0x64	; 100
     f94:	80 93 6f 03 	sts	0x036F, r24	; 0x80036f <RxLEDPulse>
}
     f98:	08 95       	ret

00000f9a <_ZN5Print5writeEPKhj>:

// Public Methods //////////////////////////////////////////////////////////////

/* default implementation: may be overridden */
size_t Print::write(const uint8_t *buffer, size_t size)
{
     f9a:	af 92       	push	r10
     f9c:	bf 92       	push	r11
     f9e:	cf 92       	push	r12
     fa0:	df 92       	push	r13
     fa2:	ef 92       	push	r14
     fa4:	ff 92       	push	r15
     fa6:	0f 93       	push	r16
     fa8:	1f 93       	push	r17
     faa:	cf 93       	push	r28
     fac:	df 93       	push	r29
     fae:	6c 01       	movw	r12, r24
     fb0:	7b 01       	movw	r14, r22
     fb2:	8b 01       	movw	r16, r22
     fb4:	04 0f       	add	r16, r20
     fb6:	15 1f       	adc	r17, r21
     fb8:	eb 01       	movw	r28, r22
     fba:	5e 01       	movw	r10, r28
     fbc:	ae 18       	sub	r10, r14
     fbe:	bf 08       	sbc	r11, r15
  size_t n = 0;
  while (size--) {
     fc0:	c0 17       	cp	r28, r16
     fc2:	d1 07       	cpc	r29, r17
     fc4:	59 f0       	breq	.+22     	; 0xfdc <_ZN5Print5writeEPKhj+0x42>
    if (write(*buffer++)) n++;
     fc6:	69 91       	ld	r22, Y+
     fc8:	d6 01       	movw	r26, r12
     fca:	ed 91       	ld	r30, X+
     fcc:	fc 91       	ld	r31, X
     fce:	01 90       	ld	r0, Z+
     fd0:	f0 81       	ld	r31, Z
     fd2:	e0 2d       	mov	r30, r0
     fd4:	c6 01       	movw	r24, r12
     fd6:	09 95       	icall
     fd8:	89 2b       	or	r24, r25
     fda:	79 f7       	brne	.-34     	; 0xfba <_ZN5Print5writeEPKhj+0x20>
    else break;
  }
  return n;
}
     fdc:	c5 01       	movw	r24, r10
     fde:	df 91       	pop	r29
     fe0:	cf 91       	pop	r28
     fe2:	1f 91       	pop	r17
     fe4:	0f 91       	pop	r16
     fe6:	ff 90       	pop	r15
     fe8:	ef 90       	pop	r14
     fea:	df 90       	pop	r13
     fec:	cf 90       	pop	r12
     fee:	bf 90       	pop	r11
     ff0:	af 90       	pop	r10
     ff2:	08 95       	ret

00000ff4 <micros>:
	return m;
}

unsigned long micros() {
	unsigned long m;
	uint8_t oldSREG = SREG, t;
     ff4:	3f b7       	in	r19, 0x3f	; 63
	
	cli();
     ff6:	f8 94       	cli
	m = timer0_overflow_count;
     ff8:	80 91 4e 03 	lds	r24, 0x034E	; 0x80034e <timer0_overflow_count>
     ffc:	90 91 4f 03 	lds	r25, 0x034F	; 0x80034f <timer0_overflow_count+0x1>
    1000:	a0 91 50 03 	lds	r26, 0x0350	; 0x800350 <timer0_overflow_count+0x2>
    1004:	b0 91 51 03 	lds	r27, 0x0351	; 0x800351 <timer0_overflow_count+0x3>
#if defined(TCNT0)
	t = TCNT0;
    1008:	26 b5       	in	r18, 0x26	; 38
#else
	#error TIMER 0 not defined
#endif

#ifdef TIFR0
	if ((TIFR0 & _BV(TOV0)) && (t < 255))
    100a:	a8 9b       	sbis	0x15, 0	; 21
    100c:	05 c0       	rjmp	.+10     	; 0x1018 <micros+0x24>
    100e:	2f 3f       	cpi	r18, 0xFF	; 255
    1010:	19 f0       	breq	.+6      	; 0x1018 <micros+0x24>
		m++;
    1012:	01 96       	adiw	r24, 0x01	; 1
    1014:	a1 1d       	adc	r26, r1
    1016:	b1 1d       	adc	r27, r1
#else
	if ((TIFR & _BV(TOV0)) && (t < 255))
		m++;
#endif

	SREG = oldSREG;
    1018:	3f bf       	out	0x3f, r19	; 63
	
	return ((m << 8) + t) * (64 / clockCyclesPerMicrosecond());
    101a:	ba 2f       	mov	r27, r26
    101c:	a9 2f       	mov	r26, r25
    101e:	98 2f       	mov	r25, r24
    1020:	88 27       	eor	r24, r24
    1022:	bc 01       	movw	r22, r24
    1024:	cd 01       	movw	r24, r26
    1026:	62 0f       	add	r22, r18
    1028:	71 1d       	adc	r23, r1
    102a:	81 1d       	adc	r24, r1
    102c:	91 1d       	adc	r25, r1
    102e:	42 e0       	ldi	r20, 0x02	; 2
    1030:	66 0f       	add	r22, r22
    1032:	77 1f       	adc	r23, r23
    1034:	88 1f       	adc	r24, r24
    1036:	99 1f       	adc	r25, r25
    1038:	4a 95       	dec	r20
    103a:	d1 f7       	brne	.-12     	; 0x1030 <micros+0x3c>
}
    103c:	08 95       	ret

0000103e <delay>:

void delay(unsigned long ms)
{
    103e:	8f 92       	push	r8
    1040:	9f 92       	push	r9
    1042:	af 92       	push	r10
    1044:	bf 92       	push	r11
    1046:	cf 92       	push	r12
    1048:	df 92       	push	r13
    104a:	ef 92       	push	r14
    104c:	ff 92       	push	r15
    104e:	6b 01       	movw	r12, r22
    1050:	7c 01       	movw	r14, r24
	uint32_t start = micros();
    1052:	0e 94 fa 07 	call	0xff4	; 0xff4 <micros>
    1056:	4b 01       	movw	r8, r22
    1058:	5c 01       	movw	r10, r24

	while (ms > 0) {
		yield();
		while ( ms > 0 && (micros() - start) >= 1000) {
    105a:	c1 14       	cp	r12, r1
    105c:	d1 04       	cpc	r13, r1
    105e:	e1 04       	cpc	r14, r1
    1060:	f1 04       	cpc	r15, r1
    1062:	b9 f0       	breq	.+46     	; 0x1092 <delay+0x54>
    1064:	0e 94 fa 07 	call	0xff4	; 0xff4 <micros>
    1068:	68 19       	sub	r22, r8
    106a:	79 09       	sbc	r23, r9
    106c:	8a 09       	sbc	r24, r10
    106e:	9b 09       	sbc	r25, r11
    1070:	68 3e       	cpi	r22, 0xE8	; 232
    1072:	73 40       	sbci	r23, 0x03	; 3
    1074:	81 05       	cpc	r24, r1
    1076:	91 05       	cpc	r25, r1
    1078:	80 f3       	brcs	.-32     	; 0x105a <delay+0x1c>
			ms--;
    107a:	21 e0       	ldi	r18, 0x01	; 1
    107c:	c2 1a       	sub	r12, r18
    107e:	d1 08       	sbc	r13, r1
    1080:	e1 08       	sbc	r14, r1
    1082:	f1 08       	sbc	r15, r1
			start += 1000;
    1084:	88 ee       	ldi	r24, 0xE8	; 232
    1086:	88 0e       	add	r8, r24
    1088:	83 e0       	ldi	r24, 0x03	; 3
    108a:	98 1e       	adc	r9, r24
    108c:	a1 1c       	adc	r10, r1
    108e:	b1 1c       	adc	r11, r1
    1090:	e4 cf       	rjmp	.-56     	; 0x105a <delay+0x1c>
		}
	}
}
    1092:	ff 90       	pop	r15
    1094:	ef 90       	pop	r14
    1096:	df 90       	pop	r13
    1098:	cf 90       	pop	r12
    109a:	bf 90       	pop	r11
    109c:	af 90       	pop	r10
    109e:	9f 90       	pop	r9
    10a0:	8f 90       	pop	r8
    10a2:	08 95       	ret

000010a4 <_ZN7Serial_5writeEPKhj>:
{
	return write(&c, 1);
}

size_t Serial_::write(const uint8_t *buffer, size_t size)
{
    10a4:	8f 92       	push	r8
    10a6:	9f 92       	push	r9
    10a8:	af 92       	push	r10
    10aa:	bf 92       	push	r11
    10ac:	cf 92       	push	r12
    10ae:	df 92       	push	r13
    10b0:	ef 92       	push	r14
    10b2:	ff 92       	push	r15
    10b4:	0f 93       	push	r16
    10b6:	1f 93       	push	r17
    10b8:	cf 93       	push	r28
    10ba:	df 93       	push	r29
    10bc:	6c 01       	movw	r12, r24
    10be:	7b 01       	movw	r14, r22
    10c0:	8a 01       	movw	r16, r20
	 the connection is closed are lost - just like with a UART. */
	
	// TODO - ZE - check behavior on different OSes and test what happens if an
	// open connection isn't broken cleanly (cable is yanked out, host dies
	// or locks up, or host virtual serial port hangs)
	if (_usbLineInfo.lineState > 0)	{
    10c2:	80 91 12 01 	lds	r24, 0x0112	; 0x800112 <_ZL12_usbLineInfo+0x7>
    10c6:	88 23       	and	r24, r24
    10c8:	09 f4       	brne	.+2      	; 0x10cc <_ZN7Serial_5writeEPKhj+0x28>
    10ca:	5c c0       	rjmp	.+184    	; 0x1184 <_ZN7Serial_5writeEPKhj+0xe0>
}

//	Blocking Send of data to an endpoint
int USB_Send(u8 ep, const void* d, int len)
{
	if (!_usbConfiguration)
    10cc:	80 91 70 03 	lds	r24, 0x0370	; 0x800370 <_usbConfiguration>
    10d0:	88 23       	and	r24, r24
    10d2:	09 f4       	brne	.+2      	; 0x10d6 <_ZN7Serial_5writeEPKhj+0x32>
    10d4:	57 c0       	rjmp	.+174    	; 0x1184 <_ZN7Serial_5writeEPKhj+0xe0>
		return -1;

	if (_usbSuspendState & (1<<SUSPI)) {
    10d6:	80 91 62 03 	lds	r24, 0x0362	; 0x800362 <_usbSuspendState>
    10da:	80 ff       	sbrs	r24, 0
    10dc:	05 c0       	rjmp	.+10     	; 0x10e8 <_ZN7Serial_5writeEPKhj+0x44>
		//send a remote wakeup
		UDCON |= (1 << RMWKUP);
    10de:	80 91 e0 00 	lds	r24, 0x00E0	; 0x8000e0 <__DATA_REGION_ORIGIN__+0x80>
    10e2:	82 60       	ori	r24, 0x02	; 2
    10e4:	80 93 e0 00 	sts	0x00E0, r24	; 0x8000e0 <__DATA_REGION_ORIGIN__+0x80>
{
	return write(&c, 1);
}

size_t Serial_::write(const uint8_t *buffer, size_t size)
{
    10e8:	e8 01       	movw	r28, r16
    10ea:	b1 2c       	mov	r11, r1
    10ec:	8a ef       	ldi	r24, 0xFA	; 250
    10ee:	a8 2e       	mov	r10, r24
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    10f0:	93 e0       	ldi	r25, 0x03	; 3
    10f2:	89 2e       	mov	r8, r25
	UEINTX = 0x6B;	// FIFOCON=0 NAKINI=1 RWAL=1 NAKOUTI=0 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=1
}

static inline void ReleaseTX()
{
	UEINTX = 0x3A;	// FIFOCON=0 NAKINI=0 RWAL=1 NAKOUTI=1 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=0
    10f4:	2a e3       	ldi	r18, 0x3A	; 58
    10f6:	92 2e       	mov	r9, r18
	int r = len;
	const u8* data = (const u8*)d;
	u8 timeout = 250;		// 250ms timeout on send? TODO
	bool sendZlp = false;

	while (len || sendZlp)
    10f8:	20 97       	sbiw	r28, 0x00	; 0
    10fa:	11 f4       	brne	.+4      	; 0x1100 <_ZN7Serial_5writeEPKhj+0x5c>
    10fc:	bb 20       	and	r11, r11
    10fe:	d9 f1       	breq	.+118    	; 0x1176 <_ZN7Serial_5writeEPKhj+0xd2>
	{
		u8 n = USB_SendSpace(ep);
    1100:	0e 94 95 06 	call	0xd2a	; 0xd2a <_Z13USB_SendSpaceh.constprop.3>
		if (n == 0)
    1104:	81 11       	cpse	r24, r1
    1106:	0a c0       	rjmp	.+20     	; 0x111c <_ZN7Serial_5writeEPKhj+0x78>
		{
			if (!(--timeout))
    1108:	aa 94       	dec	r10
    110a:	aa 20       	and	r10, r10
    110c:	d9 f1       	breq	.+118    	; 0x1184 <_ZN7Serial_5writeEPKhj+0xe0>
				return -1;
			delay(1);
    110e:	61 e0       	ldi	r22, 0x01	; 1
    1110:	70 e0       	ldi	r23, 0x00	; 0
    1112:	80 e0       	ldi	r24, 0x00	; 0
    1114:	90 e0       	ldi	r25, 0x00	; 0
    1116:	0e 94 1f 08 	call	0x103e	; 0x103e <delay>
    111a:	ee cf       	rjmp	.-36     	; 0x10f8 <_ZN7Serial_5writeEPKhj+0x54>
			continue;
		}

		if (n > len) {
    111c:	8c 17       	cp	r24, r28
    111e:	1d 06       	cpc	r1, r29
    1120:	11 f0       	breq	.+4      	; 0x1126 <_ZN7Serial_5writeEPKhj+0x82>
    1122:	0c f0       	brlt	.+2      	; 0x1126 <_ZN7Serial_5writeEPKhj+0x82>
			n = len;
    1124:	8c 2f       	mov	r24, r28
#define USB_RECV_TIMEOUT
class LockEP
{
	u8 _sreg;
public:
	LockEP(u8 ep) : _sreg(SREG)
    1126:	9f b7       	in	r25, 0x3f	; 63
	{
		cli();
    1128:	f8 94       	cli
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    112a:	80 92 e9 00 	sts	0x00E9, r8	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
	UECONX = (1<<STALLRQ) | (1<<EPEN);
}

static inline u8 ReadWriteAllowed()
{
	return UEINTX & (1<<RWAL);
    112e:	20 91 e8 00 	lds	r18, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
		}

		{
			LockEP lock(ep);
			// Frame may have been released by the SOF interrupt handler
			if (!ReadWriteAllowed())
    1132:	25 fd       	sbrc	r18, 5
    1134:	02 c0       	rjmp	.+4      	; 0x113a <_ZN7Serial_5writeEPKhj+0x96>
		cli();
		SetEP(ep & 7);
	}
	~LockEP()
	{
		SREG = _sreg;
    1136:	9f bf       	out	0x3f, r25	; 63
    1138:	df cf       	rjmp	.-66     	; 0x10f8 <_ZN7Serial_5writeEPKhj+0x54>
			LockEP lock(ep);
			// Frame may have been released by the SOF interrupt handler
			if (!ReadWriteAllowed())
				continue;

			len -= n;
    113a:	28 2f       	mov	r18, r24
    113c:	30 e0       	ldi	r19, 0x00	; 0
    113e:	c2 1b       	sub	r28, r18
    1140:	d3 0b       	sbc	r29, r19
    1142:	f7 01       	movw	r30, r14
				while (n--)
					Send8(pgm_read_byte(data++));
			}
			else
			{
				while (n--)
    1144:	81 50       	subi	r24, 0x01	; 1
    1146:	20 f0       	brcs	.+8      	; 0x1150 <_ZN7Serial_5writeEPKhj+0xac>
					Send8(*data++);
    1148:	41 91       	ld	r20, Z+
	return UEDATX;	
}

static inline void Send8(u8 d)
{
	UEDATX = d;
    114a:	40 93 f1 00 	sts	0x00F1, r20	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
    114e:	fa cf       	rjmp	.-12     	; 0x1144 <_ZN7Serial_5writeEPKhj+0xa0>
    1150:	e2 0e       	add	r14, r18
    1152:	f3 1e       	adc	r15, r19
			{
				while (n--)
					Send8(*data++);
			}

			if (sendZlp) {
    1154:	bb 20       	and	r11, r11
    1156:	21 f0       	breq	.+8      	; 0x1160 <_ZN7Serial_5writeEPKhj+0xbc>
	UEINTX = 0x6B;	// FIFOCON=0 NAKINI=1 RWAL=1 NAKOUTI=0 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=1
}

static inline void ReleaseTX()
{
	UEINTX = 0x3A;	// FIFOCON=0 NAKINI=0 RWAL=1 NAKOUTI=1 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=0
    1158:	90 92 e8 00 	sts	0x00E8, r9	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
			if (sendZlp) {
				ReleaseTX();
				sendZlp = false;
			} else if (!ReadWriteAllowed()) { // ...release if buffer is full...
				ReleaseTX();
				if (len == 0) sendZlp = true;
    115c:	b1 2c       	mov	r11, r1
    115e:	eb cf       	rjmp	.-42     	; 0x1136 <_ZN7Serial_5writeEPKhj+0x92>
	UECONX = (1<<STALLRQ) | (1<<EPEN);
}

static inline u8 ReadWriteAllowed()
{
	return UEINTX & (1<<RWAL);
    1160:	80 91 e8 00 	lds	r24, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
			}

			if (sendZlp) {
				ReleaseTX();
				sendZlp = false;
			} else if (!ReadWriteAllowed()) { // ...release if buffer is full...
    1164:	85 fd       	sbrc	r24, 5
    1166:	e7 cf       	rjmp	.-50     	; 0x1136 <_ZN7Serial_5writeEPKhj+0x92>
	UEINTX = 0x6B;	// FIFOCON=0 NAKINI=1 RWAL=1 NAKOUTI=0 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=1
}

static inline void ReleaseTX()
{
	UEINTX = 0x3A;	// FIFOCON=0 NAKINI=0 RWAL=1 NAKOUTI=1 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=0
    1168:	90 92 e8 00 	sts	0x00E8, r9	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
			if (sendZlp) {
				ReleaseTX();
				sendZlp = false;
			} else if (!ReadWriteAllowed()) { // ...release if buffer is full...
				ReleaseTX();
				if (len == 0) sendZlp = true;
    116c:	bb 24       	eor	r11, r11
    116e:	b3 94       	inc	r11
    1170:	20 97       	sbiw	r28, 0x00	; 0
    1172:	09 f3       	breq	.-62     	; 0x1136 <_ZN7Serial_5writeEPKhj+0x92>
    1174:	f3 cf       	rjmp	.-26     	; 0x115c <_ZN7Serial_5writeEPKhj+0xb8>
				// XXX: TRANSFER_RELEASE is never used can be removed?
				ReleaseTX();
			}
		}
	}
	TXLED1;					// light the TX LED
    1176:	5d 98       	cbi	0x0b, 5	; 11
	TxLEDPulse = TX_RX_LED_PULSE_MS;
    1178:	84 e6       	ldi	r24, 0x64	; 100
    117a:	80 93 61 03 	sts	0x0361, r24	; 0x800361 <TxLEDPulse>
	// TODO - ZE - check behavior on different OSes and test what happens if an
	// open connection isn't broken cleanly (cable is yanked out, host dies
	// or locks up, or host virtual serial port hangs)
	if (_usbLineInfo.lineState > 0)	{
		int r = USB_Send(CDC_TX,buffer,size);
		if (r > 0) {
    117e:	10 16       	cp	r1, r16
    1180:	11 06       	cpc	r1, r17
    1182:	3c f0       	brlt	.+14     	; 0x1192 <_ZN7Serial_5writeEPKhj+0xee>
  private:
    int write_error;
    size_t printNumber(unsigned long, uint8_t);
    size_t printFloat(double, uint8_t);
  protected:
    void setWriteError(int err = 1) { write_error = err; }
    1184:	81 e0       	ldi	r24, 0x01	; 1
    1186:	90 e0       	ldi	r25, 0x00	; 0
    1188:	f6 01       	movw	r30, r12
    118a:	93 83       	std	Z+3, r25	; 0x03
    118c:	82 83       	std	Z+2, r24	; 0x02
			return r;
		} else {
			setWriteError();
			return 0;
    118e:	10 e0       	ldi	r17, 0x00	; 0
    1190:	00 e0       	ldi	r16, 0x00	; 0
		}
	}
	setWriteError();
	return 0;
}
    1192:	c8 01       	movw	r24, r16
    1194:	df 91       	pop	r29
    1196:	cf 91       	pop	r28
    1198:	1f 91       	pop	r17
    119a:	0f 91       	pop	r16
    119c:	ff 90       	pop	r15
    119e:	ef 90       	pop	r14
    11a0:	df 90       	pop	r13
    11a2:	cf 90       	pop	r12
    11a4:	bf 90       	pop	r11
    11a6:	af 90       	pop	r10
    11a8:	9f 90       	pop	r9
    11aa:	8f 90       	pop	r8
    11ac:	08 95       	ret

000011ae <_ZN12Arduboy2Core10delayShortEj>:
}

// delay in ms with 16 bit duration
void Arduboy2Core::delayShort(uint16_t ms)
{
  delay((unsigned long) ms);
    11ae:	bc 01       	movw	r22, r24
    11b0:	90 e0       	ldi	r25, 0x00	; 0
    11b2:	80 e0       	ldi	r24, 0x00	; 0
    11b4:	0c 94 1f 08 	jmp	0x103e	; 0x103e <delay>

000011b8 <_ZN12Arduboy2Core12buttonsStateEv>:
{
  uint8_t buttons;

#ifdef ARDUBOY_10
  // up, right, left, down
  buttons = ((~PINF) &
    11b8:	8f b1       	in	r24, 0x0f	; 15
    11ba:	80 95       	com	r24
    11bc:	80 7f       	andi	r24, 0xF0	; 240
              (_BV(UP_BUTTON_BIT) | _BV(RIGHT_BUTTON_BIT) |
               _BV(LEFT_BUTTON_BIT) | _BV(DOWN_BUTTON_BIT)));
  // A
  if (bitRead(A_BUTTON_PORTIN, A_BUTTON_BIT) == 0) { buttons |= A_BUTTON; }
    11be:	66 9b       	sbis	0x0c, 6	; 12
    11c0:	88 60       	ori	r24, 0x08	; 8
  // B
  if (bitRead(B_BUTTON_PORTIN, B_BUTTON_BIT) == 0) { buttons |= B_BUTTON; }
    11c2:	1c 9b       	sbis	0x03, 4	; 3
    11c4:	84 60       	ori	r24, 0x04	; 4
  // B
  if (bitRead(B_BUTTON_PORTIN, B_BUTTON_BIT) == 0) { buttons |= B_BUTTON; }
#endif

  return buttons;
}
    11c6:	08 95       	ret

000011c8 <_ZN13Arduboy2Audio7enabledEv>:
}

bool Arduboy2Audio::enabled()
{
  return audio_enabled;
}
    11c8:	80 91 4c 03 	lds	r24, 0x034C	; 0x80034c <_ZN13Arduboy2Audio13audio_enabledE>
    11cc:	08 95       	ret

000011ce <_ZN13Arduboy2Audio3offEv>:
  audio_enabled = true;
}

void Arduboy2Audio::off()
{
  audio_enabled = false;
    11ce:	10 92 4c 03 	sts	0x034C, r1	; 0x80034c <_ZN13Arduboy2Audio13audio_enabledE>
  // shut off audio pins by setting them as inputs
#ifdef ARDUBOY_10
  bitClear(SPEAKER_1_DDR, SPEAKER_1_BIT);
    11d2:	3e 98       	cbi	0x07, 6	; 7
  bitClear(SPEAKER_2_DDR, SPEAKER_2_BIT);
    11d4:	3f 98       	cbi	0x07, 7	; 7
#else
  bitClear(SPEAKER_1_DDR, SPEAKER_1_BIT);
#endif
}
    11d6:	08 95       	ret

000011d8 <_ZN13Arduboy2Audio2onEv>:

void Arduboy2Audio::on()
{
  // fire up audio pins by seting them as outputs
#ifdef ARDUBOY_10
  bitSet(SPEAKER_1_DDR, SPEAKER_1_BIT);
    11d8:	3e 9a       	sbi	0x07, 6	; 7
  bitSet(SPEAKER_2_DDR, SPEAKER_2_BIT);
    11da:	3f 9a       	sbi	0x07, 7	; 7
#else
  bitSet(SPEAKER_1_DDR, SPEAKER_1_BIT);
#endif
  audio_enabled = true;
    11dc:	81 e0       	ldi	r24, 0x01	; 1
    11de:	80 93 4c 03 	sts	0x034C, r24	; 0x80034c <_ZN13Arduboy2Audio13audio_enabledE>
}
    11e2:	08 95       	ret

000011e4 <_ZN8Arduboy25clearEv>:
    "brne 1b\n"
    : [color] "+d" (color),
      "+z" (bPtr)
    :
    :
  );
    11e4:	80 e0       	ldi	r24, 0x00	; 0
    11e6:	ed e8       	ldi	r30, 0x8D	; 141
    11e8:	f3 e0       	ldi	r31, 0x03	; 3
    11ea:	81 11       	cpse	r24, r1
    11ec:	8f ef       	ldi	r24, 0xFF	; 255
    11ee:	00 24       	eor	r0, r0
    11f0:	81 93       	st	Z+, r24
    11f2:	81 93       	st	Z+, r24
    11f4:	81 93       	st	Z+, r24
    11f6:	81 93       	st	Z+, r24
    11f8:	03 94       	inc	r0
    11fa:	d1 f7       	brne	.-12     	; 0x11f0 <_ZN8Arduboy25clearEv+0xc>
}

void Arduboy2::clear()
{
    Arduboy2Base::clear();
    cursor_x = cursor_y = 0;
    11fc:	10 92 72 03 	sts	0x0372, r1	; 0x800372 <_ZN8Arduboy28cursor_yE+0x1>
    1200:	10 92 71 03 	sts	0x0371, r1	; 0x800371 <_ZN8Arduboy28cursor_yE>
    1204:	10 92 74 03 	sts	0x0374, r1	; 0x800374 <_ZN8Arduboy28cursor_xE+0x1>
    1208:	10 92 73 03 	sts	0x0373, r1	; 0x800373 <_ZN8Arduboy28cursor_xE>
}
    120c:	08 95       	ret

0000120e <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh>:
}

void Arduboy2Base::drawBitmap
(int16_t x, int16_t y, const uint8_t *bitmap, uint8_t w, uint8_t h,
 uint8_t color)
{
    120e:	3f 92       	push	r3
    1210:	4f 92       	push	r4
    1212:	5f 92       	push	r5
    1214:	6f 92       	push	r6
    1216:	7f 92       	push	r7
    1218:	8f 92       	push	r8
    121a:	9f 92       	push	r9
    121c:	af 92       	push	r10
    121e:	bf 92       	push	r11
    1220:	cf 92       	push	r12
    1222:	df 92       	push	r13
    1224:	ef 92       	push	r14
    1226:	ff 92       	push	r15
    1228:	0f 93       	push	r16
    122a:	1f 93       	push	r17
    122c:	cf 93       	push	r28
    122e:	df 93       	push	r29
  // no need to draw at all if we're offscreen
  if (x + w <= 0 || x > WIDTH - 1 || y + h <= 0 || y > HEIGHT - 1)
    1230:	30 e0       	ldi	r19, 0x00	; 0
    1232:	f9 01       	movw	r30, r18
    1234:	e8 0f       	add	r30, r24
    1236:	f9 1f       	adc	r31, r25
    1238:	1e 16       	cp	r1, r30
    123a:	1f 06       	cpc	r1, r31
    123c:	0c f0       	brlt	.+2      	; 0x1240 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x32>
    123e:	d7 c0       	rjmp	.+430    	; 0x13ee <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x1e0>
    1240:	80 38       	cpi	r24, 0x80	; 128
    1242:	91 05       	cpc	r25, r1
    1244:	0c f0       	brlt	.+2      	; 0x1248 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x3a>
    1246:	d3 c0       	rjmp	.+422    	; 0x13ee <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x1e0>
    1248:	fb 01       	movw	r30, r22
    124a:	e0 0f       	add	r30, r16
    124c:	f1 1d       	adc	r31, r1
    124e:	1e 16       	cp	r1, r30
    1250:	1f 06       	cpc	r1, r31
    1252:	0c f0       	brlt	.+2      	; 0x1256 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x48>
    1254:	cc c0       	rjmp	.+408    	; 0x13ee <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x1e0>
    1256:	60 34       	cpi	r22, 0x40	; 64
    1258:	71 05       	cpc	r23, r1
    125a:	0c f0       	brlt	.+2      	; 0x125e <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x50>
    125c:	c8 c0       	rjmp	.+400    	; 0x13ee <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x1e0>
    return;

  int yOffset = abs(y) % 8;
    125e:	db 01       	movw	r26, r22
    1260:	77 ff       	sbrs	r23, 7
    1262:	04 c0       	rjmp	.+8      	; 0x126c <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x5e>
    1264:	aa 27       	eor	r26, r26
    1266:	bb 27       	eor	r27, r27
    1268:	a6 1b       	sub	r26, r22
    126a:	b7 0b       	sbc	r27, r23
    126c:	a7 70       	andi	r26, 0x07	; 7
    126e:	bb 27       	eor	r27, r27
  int sRow = y / 8;
    1270:	fb 01       	movw	r30, r22
    1272:	77 fd       	sbrc	r23, 7
    1274:	37 96       	adiw	r30, 0x07	; 7
    1276:	c3 e0       	ldi	r28, 0x03	; 3
    1278:	f5 95       	asr	r31
    127a:	e7 95       	ror	r30
    127c:	ca 95       	dec	r28
    127e:	e1 f7       	brne	.-8      	; 0x1278 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x6a>
  if (y < 0) {
    1280:	77 ff       	sbrs	r23, 7
    1282:	07 c0       	rjmp	.+14     	; 0x1292 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x84>
    sRow--;
    1284:	31 97       	sbiw	r30, 0x01	; 1
    yOffset = 8 - yOffset;
    1286:	68 e0       	ldi	r22, 0x08	; 8
    1288:	70 e0       	ldi	r23, 0x00	; 0
    128a:	eb 01       	movw	r28, r22
    128c:	ca 1b       	sub	r28, r26
    128e:	db 0b       	sbc	r29, r27
    1290:	de 01       	movw	r26, r28
  }
  int rows = h/8;
    1292:	40 2e       	mov	r4, r16
    1294:	46 94       	lsr	r4
    1296:	46 94       	lsr	r4
    1298:	46 94       	lsr	r4
    129a:	51 2c       	mov	r5, r1
  if (h%8!=0) rows++;
    129c:	07 70       	andi	r16, 0x07	; 7
    129e:	19 f0       	breq	.+6      	; 0x12a6 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x98>
    12a0:	df ef       	ldi	r29, 0xFF	; 255
    12a2:	4d 1a       	sub	r4, r29
    12a4:	5d 0a       	sbc	r5, r29
    12a6:	bf 01       	movw	r22, r30
    12a8:	ef 01       	movw	r28, r30
    12aa:	d6 95       	lsr	r29
    12ac:	dc 2f       	mov	r29, r28
    12ae:	cc 27       	eor	r28, r28
    12b0:	d7 95       	ror	r29
    12b2:	c7 95       	ror	r28
    12b4:	c8 0f       	add	r28, r24
    12b6:	d9 1f       	adc	r29, r25
    12b8:	c3 57       	subi	r28, 0x73	; 115
    12ba:	dc 4f       	sbci	r29, 0xFC	; 252
    12bc:	8a 01       	movw	r16, r20
    12be:	46 0e       	add	r4, r22
    12c0:	57 1e       	adc	r5, r23
    12c2:	48 e0       	ldi	r20, 0x08	; 8
    12c4:	50 e0       	ldi	r21, 0x00	; 0
    12c6:	4a 01       	movw	r8, r20
    12c8:	8a 1a       	sub	r8, r26
    12ca:	9b 0a       	sbc	r9, r27
  for (int a = 0; a < rows; a++) {
    12cc:	64 15       	cp	r22, r4
    12ce:	75 05       	cpc	r23, r5
    12d0:	09 f4       	brne	.+2      	; 0x12d4 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0xc6>
    12d2:	8d c0       	rjmp	.+282    	; 0x13ee <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x1e0>
    int bRow = sRow + a;
    if (bRow > (HEIGHT/8)-1) break;
    12d4:	68 30       	cpi	r22, 0x08	; 8
    12d6:	71 05       	cpc	r23, r1
    12d8:	09 f4       	brne	.+2      	; 0x12dc <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0xce>
    12da:	89 c0       	rjmp	.+274    	; 0x13ee <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x1e0>
    if (bRow > -2) {
    12dc:	6f 3f       	cpi	r22, 0xFF	; 255
    12de:	ef ef       	ldi	r30, 0xFF	; 255
    12e0:	7e 07       	cpc	r23, r30
    12e2:	0c f4       	brge	.+2      	; 0x12e6 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0xd8>
    12e4:	4b c0       	rjmp	.+150    	; 0x137c <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x16e>
    12e6:	6c 01       	movw	r12, r24
      for (int iCol = 0; iCol<w; iCol++) {
    12e8:	50 e0       	ldi	r21, 0x00	; 0
    12ea:	40 e0       	ldi	r20, 0x00	; 0
    12ec:	3e 01       	movw	r6, r28
    12ee:	e0 e8       	ldi	r30, 0x80	; 128
    12f0:	6e 0e       	add	r6, r30
    12f2:	71 1c       	adc	r7, r1
        if (iCol + x > (WIDTH-1)) break;
        if (iCol + x >= 0) {
    12f4:	d7 fc       	sbrc	r13, 7
    12f6:	35 c0       	rjmp	.+106    	; 0x1362 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x154>
          if (bRow >= 0) {
    12f8:	6f 3f       	cpi	r22, 0xFF	; 255
    12fa:	76 07       	cpc	r23, r22
    12fc:	09 f4       	brne	.+2      	; 0x1300 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0xf2>
    12fe:	73 c0       	rjmp	.+230    	; 0x13e6 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x1d8>
    1300:	5e 01       	movw	r10, r28
    1302:	a4 0e       	add	r10, r20
    1304:	b5 1e       	adc	r11, r21
    1306:	f5 01       	movw	r30, r10
    1308:	f0 80       	ld	r15, Z
    130a:	fa 01       	movw	r30, r20
    130c:	e0 0f       	add	r30, r16
    130e:	f1 1f       	adc	r31, r17
            if (color == WHITE)
    1310:	33 24       	eor	r3, r3
    1312:	33 94       	inc	r3
    1314:	e3 10       	cpse	r14, r3
    1316:	39 c0       	rjmp	.+114    	; 0x138a <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x17c>
              sBuffer[(bRow*WIDTH) + x + iCol] |= pgm_read_byte(bitmap+(a*w)+iCol) << yOffset;
    1318:	e4 91       	lpm	r30, Z
    131a:	0a 2e       	mov	r0, r26
    131c:	01 c0       	rjmp	.+2      	; 0x1320 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x112>
    131e:	ee 0f       	add	r30, r30
    1320:	0a 94       	dec	r0
    1322:	ea f7       	brpl	.-6      	; 0x131e <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x110>
    1324:	fe 2a       	or	r15, r30
            else if (color == BLACK)
              sBuffer[(bRow*WIDTH) + x + iCol] &= ~(pgm_read_byte(bitmap+(a*w)+iCol) << yOffset);
            else
              sBuffer[(bRow*WIDTH) + x + iCol] ^= pgm_read_byte(bitmap+(a*w)+iCol) << yOffset;
    1326:	f5 01       	movw	r30, r10
    1328:	f0 82       	st	Z, r15
          }
          if (yOffset && bRow<(HEIGHT/8)-1 && bRow > -2) {
    132a:	10 97       	sbiw	r26, 0x00	; 0
    132c:	d1 f0       	breq	.+52     	; 0x1362 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x154>
    132e:	67 30       	cpi	r22, 0x07	; 7
    1330:	71 05       	cpc	r23, r1
    1332:	b9 f0       	breq	.+46     	; 0x1362 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x154>
    1334:	53 01       	movw	r10, r6
    1336:	a4 0e       	add	r10, r20
    1338:	b5 1e       	adc	r11, r21
    133a:	f5 01       	movw	r30, r10
    133c:	f0 80       	ld	r15, Z
    133e:	fa 01       	movw	r30, r20
    1340:	e0 0f       	add	r30, r16
    1342:	f1 1f       	adc	r31, r17
            if (color == WHITE)
    1344:	33 24       	eor	r3, r3
    1346:	33 94       	inc	r3
    1348:	e3 10       	cpse	r14, r3
    134a:	35 c0       	rjmp	.+106    	; 0x13b6 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x1a8>
              sBuffer[((bRow+1)*WIDTH) + x + iCol] |= pgm_read_byte(bitmap+(a*w)+iCol) >> (8-yOffset);
    134c:	e4 91       	lpm	r30, Z
    134e:	f0 e0       	ldi	r31, 0x00	; 0
    1350:	08 2c       	mov	r0, r8
    1352:	02 c0       	rjmp	.+4      	; 0x1358 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x14a>
    1354:	f5 95       	asr	r31
    1356:	e7 95       	ror	r30
    1358:	0a 94       	dec	r0
    135a:	e2 f7       	brpl	.-8      	; 0x1354 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x146>
    135c:	fe 2a       	or	r15, r30
            else if (color == BLACK)
              sBuffer[((bRow+1)*WIDTH) + x + iCol] &= ~(pgm_read_byte(bitmap+(a*w)+iCol) >> (8-yOffset));
            else
              sBuffer[((bRow+1)*WIDTH) + x + iCol] ^= pgm_read_byte(bitmap+(a*w)+iCol) >> (8-yOffset);
    135e:	f5 01       	movw	r30, r10
    1360:	f0 82       	st	Z, r15
  if (h%8!=0) rows++;
  for (int a = 0; a < rows; a++) {
    int bRow = sRow + a;
    if (bRow > (HEIGHT/8)-1) break;
    if (bRow > -2) {
      for (int iCol = 0; iCol<w; iCol++) {
    1362:	4f 5f       	subi	r20, 0xFF	; 255
    1364:	5f 4f       	sbci	r21, 0xFF	; 255
    1366:	ff ef       	ldi	r31, 0xFF	; 255
    1368:	cf 1a       	sub	r12, r31
    136a:	df 0a       	sbc	r13, r31
    136c:	42 17       	cp	r20, r18
    136e:	53 07       	cpc	r21, r19
    1370:	2c f4       	brge	.+10     	; 0x137c <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x16e>
        if (iCol + x > (WIDTH-1)) break;
    1372:	f0 e8       	ldi	r31, 0x80	; 128
    1374:	cf 16       	cp	r12, r31
    1376:	d1 04       	cpc	r13, r1
    1378:	09 f0       	breq	.+2      	; 0x137c <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x16e>
    137a:	bc cf       	rjmp	.-136    	; 0x12f4 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0xe6>
    137c:	6f 5f       	subi	r22, 0xFF	; 255
    137e:	7f 4f       	sbci	r23, 0xFF	; 255
    1380:	c0 58       	subi	r28, 0x80	; 128
    1382:	df 4f       	sbci	r29, 0xFF	; 255
    1384:	02 0f       	add	r16, r18
    1386:	13 1f       	adc	r17, r19
    1388:	a1 cf       	rjmp	.-190    	; 0x12cc <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0xbe>
        if (iCol + x >= 0) {
          if (bRow >= 0) {
            if (color == WHITE)
              sBuffer[(bRow*WIDTH) + x + iCol] |= pgm_read_byte(bitmap+(a*w)+iCol) << yOffset;
            else if (color == BLACK)
    138a:	e1 10       	cpse	r14, r1
    138c:	0c c0       	rjmp	.+24     	; 0x13a6 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x198>
              sBuffer[(bRow*WIDTH) + x + iCol] &= ~(pgm_read_byte(bitmap+(a*w)+iCol) << yOffset);
    138e:	e4 91       	lpm	r30, Z
    1390:	f0 e0       	ldi	r31, 0x00	; 0
    1392:	0a 2e       	mov	r0, r26
    1394:	02 c0       	rjmp	.+4      	; 0x139a <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x18c>
    1396:	ee 0f       	add	r30, r30
    1398:	ff 1f       	adc	r31, r31
    139a:	0a 94       	dec	r0
    139c:	e2 f7       	brpl	.-8      	; 0x1396 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x188>
    139e:	e0 95       	com	r30
    13a0:	f0 95       	com	r31
    13a2:	fe 22       	and	r15, r30
    13a4:	c0 cf       	rjmp	.-128    	; 0x1326 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x118>
            else
              sBuffer[(bRow*WIDTH) + x + iCol] ^= pgm_read_byte(bitmap+(a*w)+iCol) << yOffset;
    13a6:	e4 91       	lpm	r30, Z
    13a8:	0a 2e       	mov	r0, r26
    13aa:	01 c0       	rjmp	.+2      	; 0x13ae <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x1a0>
    13ac:	ee 0f       	add	r30, r30
    13ae:	0a 94       	dec	r0
    13b0:	ea f7       	brpl	.-6      	; 0x13ac <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x19e>
    13b2:	fe 26       	eor	r15, r30
    13b4:	b8 cf       	rjmp	.-144    	; 0x1326 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x118>
          }
          if (yOffset && bRow<(HEIGHT/8)-1 && bRow > -2) {
            if (color == WHITE)
              sBuffer[((bRow+1)*WIDTH) + x + iCol] |= pgm_read_byte(bitmap+(a*w)+iCol) >> (8-yOffset);
            else if (color == BLACK)
    13b6:	e1 10       	cpse	r14, r1
    13b8:	0c c0       	rjmp	.+24     	; 0x13d2 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x1c4>
              sBuffer[((bRow+1)*WIDTH) + x + iCol] &= ~(pgm_read_byte(bitmap+(a*w)+iCol) >> (8-yOffset));
    13ba:	e4 91       	lpm	r30, Z
    13bc:	f0 e0       	ldi	r31, 0x00	; 0
    13be:	08 2c       	mov	r0, r8
    13c0:	02 c0       	rjmp	.+4      	; 0x13c6 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x1b8>
    13c2:	f5 95       	asr	r31
    13c4:	e7 95       	ror	r30
    13c6:	0a 94       	dec	r0
    13c8:	e2 f7       	brpl	.-8      	; 0x13c2 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x1b4>
    13ca:	e0 95       	com	r30
    13cc:	f0 95       	com	r31
    13ce:	fe 22       	and	r15, r30
    13d0:	c6 cf       	rjmp	.-116    	; 0x135e <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x150>
            else
              sBuffer[((bRow+1)*WIDTH) + x + iCol] ^= pgm_read_byte(bitmap+(a*w)+iCol) >> (8-yOffset);
    13d2:	e4 91       	lpm	r30, Z
    13d4:	f0 e0       	ldi	r31, 0x00	; 0
    13d6:	08 2c       	mov	r0, r8
    13d8:	02 c0       	rjmp	.+4      	; 0x13de <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x1d0>
    13da:	f5 95       	asr	r31
    13dc:	e7 95       	ror	r30
    13de:	0a 94       	dec	r0
    13e0:	e2 f7       	brpl	.-8      	; 0x13da <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x1cc>
    13e2:	fe 26       	eor	r15, r30
    13e4:	bc cf       	rjmp	.-136    	; 0x135e <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x150>
            else if (color == BLACK)
              sBuffer[(bRow*WIDTH) + x + iCol] &= ~(pgm_read_byte(bitmap+(a*w)+iCol) << yOffset);
            else
              sBuffer[(bRow*WIDTH) + x + iCol] ^= pgm_read_byte(bitmap+(a*w)+iCol) << yOffset;
          }
          if (yOffset && bRow<(HEIGHT/8)-1 && bRow > -2) {
    13e6:	10 97       	sbiw	r26, 0x00	; 0
    13e8:	09 f0       	breq	.+2      	; 0x13ec <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x1de>
    13ea:	a4 cf       	rjmp	.-184    	; 0x1334 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x126>
    13ec:	ba cf       	rjmp	.-140    	; 0x1362 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh+0x154>
          }
        }
      }
    }
  }
}
    13ee:	df 91       	pop	r29
    13f0:	cf 91       	pop	r28
    13f2:	1f 91       	pop	r17
    13f4:	0f 91       	pop	r16
    13f6:	ff 90       	pop	r15
    13f8:	ef 90       	pop	r14
    13fa:	df 90       	pop	r13
    13fc:	cf 90       	pop	r12
    13fe:	bf 90       	pop	r11
    1400:	af 90       	pop	r10
    1402:	9f 90       	pop	r9
    1404:	8f 90       	pop	r8
    1406:	7f 90       	pop	r7
    1408:	6f 90       	pop	r6
    140a:	5f 90       	pop	r5
    140c:	4f 90       	pop	r4
    140e:	3f 90       	pop	r3
    1410:	08 95       	ret

00001412 <_ZL19drawLettersBigLabeliiPKhhh.constprop.15>:
    default:
        break;
    }
}

static void drawLettersBigLabel(int16_t x, int16_t y, const uint8_t *bitmap, uint8_t w, uint8_t h)
    1412:	6f 92       	push	r6
    1414:	7f 92       	push	r7
    1416:	8f 92       	push	r8
    1418:	9f 92       	push	r9
    141a:	af 92       	push	r10
    141c:	bf 92       	push	r11
    141e:	cf 92       	push	r12
    1420:	df 92       	push	r13
    1422:	ef 92       	push	r14
    1424:	0f 93       	push	r16
    1426:	1f 93       	push	r17
    1428:	cf 93       	push	r28
    142a:	df 93       	push	r29
    142c:	6c 01       	movw	r12, r24
    142e:	5b 01       	movw	r10, r22
    1430:	4a 01       	movw	r8, r20
    1432:	12 2f       	mov	r17, r18
{
    for (int i = 1; i <= 7; i += 2) {
    1434:	c1 e0       	ldi	r28, 0x01	; 1
    1436:	d0 e0       	ldi	r29, 0x00	; 0
        arduboy.drawBitmap(x + i % 3 - 1, y + i / 3 - 1, bitmap, w, h, BLACK);
    1438:	83 e0       	ldi	r24, 0x03	; 3
    143a:	68 2e       	mov	r6, r24
    143c:	71 2c       	mov	r7, r1
    143e:	ce 01       	movw	r24, r28
    1440:	b3 01       	movw	r22, r6
    1442:	0e 94 d4 2f 	call	0x5fa8	; 0x5fa8 <__divmodhi4>
    1446:	6a 0d       	add	r22, r10
    1448:	7b 1d       	adc	r23, r11
    144a:	61 50       	subi	r22, 0x01	; 1
    144c:	71 09       	sbc	r23, r1
    144e:	8c 0d       	add	r24, r12
    1450:	9d 1d       	adc	r25, r13
    1452:	e1 2c       	mov	r14, r1
    1454:	00 e1       	ldi	r16, 0x10	; 16
    1456:	21 2f       	mov	r18, r17
    1458:	a4 01       	movw	r20, r8
    145a:	01 97       	sbiw	r24, 0x01	; 1
    145c:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh>
    }
}

static void drawLettersBigLabel(int16_t x, int16_t y, const uint8_t *bitmap, uint8_t w, uint8_t h)
{
    for (int i = 1; i <= 7; i += 2) {
    1460:	22 96       	adiw	r28, 0x02	; 2
    1462:	c9 30       	cpi	r28, 0x09	; 9
    1464:	d1 05       	cpc	r29, r1
    1466:	59 f7       	brne	.-42     	; 0x143e <_ZL19drawLettersBigLabeliiPKhhh.constprop.15+0x2c>
        arduboy.drawBitmap(x + i % 3 - 1, y + i / 3 - 1, bitmap, w, h, BLACK);
    }
    arduboy.drawBitmap(x, y, bitmap, w, h);
    1468:	ee 24       	eor	r14, r14
    146a:	e3 94       	inc	r14
    146c:	21 2f       	mov	r18, r17
    146e:	a4 01       	movw	r20, r8
    1470:	b5 01       	movw	r22, r10
    1472:	c6 01       	movw	r24, r12
    1474:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh>
}
    1478:	df 91       	pop	r29
    147a:	cf 91       	pop	r28
    147c:	1f 91       	pop	r17
    147e:	0f 91       	pop	r16
    1480:	ef 90       	pop	r14
    1482:	df 90       	pop	r13
    1484:	cf 90       	pop	r12
    1486:	bf 90       	pop	r11
    1488:	af 90       	pop	r10
    148a:	9f 90       	pop	r9
    148c:	8f 90       	pop	r8
    148e:	7f 90       	pop	r7
    1490:	6f 90       	pop	r6
    1492:	08 95       	ret

00001494 <_ZN12Arduboy2Base9drawPixelEiih>:
  fillScreen(BLACK);
}

void Arduboy2Base::drawPixel(int16_t x, int16_t y, uint8_t color)
{
  if (x < 0 || x > (WIDTH-1) || y < 0 || y > (HEIGHT-1))
    1494:	80 38       	cpi	r24, 0x80	; 128
    1496:	91 05       	cpc	r25, r1
    1498:	b8 f4       	brcc	.+46     	; 0x14c8 <_ZN12Arduboy2Base9drawPixelEiih+0x34>
    149a:	60 34       	cpi	r22, 0x40	; 64
    149c:	71 05       	cpc	r23, r1
    149e:	a0 f4       	brcc	.+40     	; 0x14c8 <_ZN12Arduboy2Base9drawPixelEiih+0x34>
      [bit]          "=&d" (bit),          // upper register (LDI)
      [y]            "+d"  (y)             // upper register (ANDI), must be writable
    : [width_offset] "r"   ((uint8_t)(WIDTH/8)),
      [x]            "r"   ((uint8_t)x)
    :
  );
    14a0:	20 e1       	ldi	r18, 0x10	; 16
    14a2:	91 e0       	ldi	r25, 0x01	; 1
    14a4:	61 fd       	sbrc	r22, 1
    14a6:	94 e0       	ldi	r25, 0x04	; 4
    14a8:	60 fd       	sbrc	r22, 0
    14aa:	99 0f       	add	r25, r25
    14ac:	62 fd       	sbrc	r22, 2
    14ae:	92 95       	swap	r25
    14b0:	68 7f       	andi	r22, 0xF8	; 248
    14b2:	26 9f       	mul	r18, r22
    14b4:	d0 01       	movw	r26, r0
    14b6:	11 24       	eor	r1, r1
    14b8:	a8 0f       	add	r26, r24
  uint8_t data = sBuffer[row_offset] | bit;
    14ba:	a3 57       	subi	r26, 0x73	; 115
    14bc:	bc 4f       	sbci	r27, 0xFC	; 252
    14be:	8c 91       	ld	r24, X
  if (!(color & _BV(0))) data ^= bit;
    14c0:	40 ff       	sbrs	r20, 0
    14c2:	03 c0       	rjmp	.+6      	; 0x14ca <_ZN12Arduboy2Base9drawPixelEiih+0x36>
      [y]            "+d"  (y)             // upper register (ANDI), must be writable
    : [width_offset] "r"   ((uint8_t)(WIDTH/8)),
      [x]            "r"   ((uint8_t)x)
    :
  );
  uint8_t data = sBuffer[row_offset] | bit;
    14c4:	89 2b       	or	r24, r25
  if (!(color & _BV(0))) data ^= bit;
  sBuffer[row_offset] = data;
    14c6:	8c 93       	st	X, r24
}
    14c8:	08 95       	ret
    14ca:	90 95       	com	r25
    14cc:	89 23       	and	r24, r25
    14ce:	fb cf       	rjmp	.-10     	; 0x14c6 <_ZN12Arduboy2Base9drawPixelEiih+0x32>

000014d0 <_ZL13drawTitleLogov>:
    }
    isSettingChenged = false;
}

static void drawTitleLogo(void)
{
    14d0:	ef 92       	push	r14
    14d2:	0f 93       	push	r16
    arduboy.drawBitmap((WIDTH - IMG_TITLE_W) / 2, 8, imgTitle, IMG_TITLE_W, IMG_TITLE_H);
    14d4:	ee 24       	eor	r14, r14
    14d6:	e3 94       	inc	r14
    14d8:	05 e1       	ldi	r16, 0x15	; 21
    14da:	20 e8       	ldi	r18, 0x80	; 128
    14dc:	4f e5       	ldi	r20, 0x5F	; 95
    14de:	59 e0       	ldi	r21, 0x09	; 9
    14e0:	68 e0       	ldi	r22, 0x08	; 8
    14e2:	70 e0       	ldi	r23, 0x00	; 0
    14e4:	90 e0       	ldi	r25, 0x00	; 0
    14e6:	80 e0       	ldi	r24, 0x00	; 0
    14e8:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh>
#ifdef DEBUG
    arduboy.printEx(98, 30, F("DEBUG"));
#endif
}
    14ec:	0f 91       	pop	r16
    14ee:	ef 90       	pop	r14
    14f0:	08 95       	ret

000014f2 <_ZL7onStartv>:
    dprintln(F("Title screen"));
}

static void onStart(void)
{
    state = STATE_STARTED;
    14f2:	85 e0       	ldi	r24, 0x05	; 5
    14f4:	80 93 38 03 	sts	0x0338, r24	; 0x800338 <_ZL5state.lto_priv.53>
    dprintln(F("Game start"));
}
    14f8:	08 95       	ret

000014fa <_Z9drawTitlev>:
    randomSeed(rand() ^ micros()); // Shuffle random
    return (state == STATE_STARTED) ? MODE_GAME : MODE_TITLE;
}

void drawTitle(void)
{
    14fa:	cf 93       	push	r28
    if (state == STATE_STARTED) return;
    14fc:	c0 91 38 03 	lds	r28, 0x0338	; 0x800338 <_ZL5state.lto_priv.53>
    1500:	c5 30       	cpi	r28, 0x05	; 5
    1502:	89 f0       	breq	.+34     	; 0x1526 <_Z9drawTitlev+0x2c>
    if (isInvalid) arduboy.clear();
    1504:	80 91 4b 03 	lds	r24, 0x034B	; 0x80034b <isInvalid>
    1508:	81 11       	cpse	r24, r1
    150a:	0e 94 f2 08 	call	0x11e4	; 0x11e4 <_ZN8Arduboy25clearEv>
    callDrawerFunc(state);
    150e:	ec 2f       	mov	r30, r28
    1510:	f0 e0       	ldi	r31, 0x00	; 0
    1512:	ee 0f       	add	r30, r30
    1514:	ff 1f       	adc	r31, r31
    1516:	e9 56       	subi	r30, 0x69	; 105
    1518:	f8 4f       	sbci	r31, 0xF8	; 248
    151a:	85 91       	lpm	r24, Z+
    151c:	94 91       	lpm	r25, Z
    151e:	fc 01       	movw	r30, r24
    1520:	09 95       	icall
    isInvalid = false;
    1522:	10 92 4b 03 	sts	0x034B, r1	; 0x80034b <isInvalid>
}
    1526:	cf 91       	pop	r28
    1528:	08 95       	ret

0000152a <_Z11addMenuItemPK19__FlashStringHelperPFvvE>:
    menuItemCount = 0;
    dprintln(F("Clear menu items"));
}

void addMenuItem(const __FlashStringHelper *label, void (*func)(void))
{
    152a:	9c 01       	movw	r18, r24
    if (menuItemCount >= MENU_COUNT_MAX) return;
    152c:	90 91 30 03 	lds	r25, 0x0330	; 0x800330 <_ZL13menuItemCount>
    1530:	96 30       	cpi	r25, 0x06	; 6
    1532:	6c f4       	brge	.+26     	; 0x154e <_Z11addMenuItemPK19__FlashStringHelperPFvvE+0x24>
    ITEM_T *pItem = &menuItemAry[menuItemCount];
    pItem->label = label;
    1534:	84 e0       	ldi	r24, 0x04	; 4
    1536:	98 02       	muls	r25, r24
    1538:	f0 01       	movw	r30, r0
    153a:	11 24       	eor	r1, r1
    153c:	e5 5f       	subi	r30, 0xF5	; 245
    153e:	fc 4f       	sbci	r31, 0xFC	; 252
    1540:	33 83       	std	Z+3, r19	; 0x03
    1542:	22 83       	std	Z+2, r18	; 0x02
    pItem->func = func;
    1544:	71 83       	std	Z+1, r23	; 0x01
    1546:	60 83       	st	Z, r22
    menuItemCount++;
    1548:	9f 5f       	subi	r25, 0xFF	; 255
    154a:	90 93 30 03 	sts	0x0330, r25	; 0x800330 <_ZL13menuItemCount>
    if (label != NULL) {
        dprint(F("Add menu items: "));
        dprintln(label);
    }
}
    154e:	08 95       	ret

00001550 <_Z10updateLogov>:
    counter = COUNTER_MAX;
}

MODE_T updateLogo(void)
{
    if (--counter == 0) {
    1550:	90 91 45 03 	lds	r25, 0x0345	; 0x800345 <counter>
    1554:	91 50       	subi	r25, 0x01	; 1
    1556:	90 93 45 03 	sts	0x0345, r25	; 0x800345 <counter>
    155a:	81 e0       	ldi	r24, 0x01	; 1
    155c:	91 11       	cpse	r25, r1
    155e:	80 e0       	ldi	r24, 0x00	; 0
        dprintln(F("Start " APP_TITLE " Version " APP_VERSION));
        return MODE_TITLE;
    }
    return MODE_LOGO;
}
    1560:	08 95       	ret

00001562 <_Z8initLogov>:
/*                              Main Functions                               */
/*---------------------------------------------------------------------------*/

void initLogo(void)
{
    counter = COUNTER_MAX;
    1562:	88 e7       	ldi	r24, 0x78	; 120
    1564:	80 93 45 03 	sts	0x0345, r24	; 0x800345 <counter>
}
    1568:	08 95       	ret

0000156a <_ZL9newBulletiiaa>:

/*-----------------------------------------------------------------------------------------------*/

static void newBullet(int16_t x, int16_t y, int8_t deg, int8_t spd)
{
    if (bulletsNum == BULLET_MAX) return;
    156a:	90 91 c3 01 	lds	r25, 0x01C3	; 0x8001c3 <_ZL10bulletsNum>
    156e:	90 34       	cpi	r25, 0x40	; 64
    1570:	19 f1       	breq	.+70     	; 0x15b8 <_ZL9newBulletiiaa+0x4e>
    1572:	a0 91 02 01 	lds	r26, 0x0102	; 0x800102 <_ZZL9newBulletiiaaE2pB>
    1576:	b0 91 03 01 	lds	r27, 0x0103	; 0x800103 <_ZZL9newBulletiiaaE2pB+0x1>
    157a:	fd 01       	movw	r30, r26
    //if (!arduboy.collide(Point(x, y), screenRect)) return;

    static BULLET_T *pB = bullets;
    while (pB->spd) {
    157c:	30 81       	ld	r19, Z
    157e:	3f 71       	andi	r19, 0x1F	; 31
    1580:	41 f0       	breq	.+16     	; 0x1592 <_ZL9newBulletiiaa+0x28>
    1582:	35 96       	adiw	r30, 0x05	; 5
        if (++pB >= &bullets[BULLET_MAX]) pB = bullets;
    1584:	a4 ec       	ldi	r26, 0xC4	; 196
    1586:	b1 e0       	ldi	r27, 0x01	; 1
    1588:	33 e0       	ldi	r19, 0x03	; 3
    158a:	e4 30       	cpi	r30, 0x04	; 4
    158c:	f3 07       	cpc	r31, r19
    158e:	b0 f3       	brcs	.-20     	; 0x157c <_ZL9newBulletiiaa+0x12>
    1590:	f4 cf       	rjmp	.-24     	; 0x157a <_ZL9newBulletiiaa+0x10>
    1592:	f0 93 03 01 	sts	0x0103, r31	; 0x800103 <_ZZL9newBulletiiaaE2pB+0x1>
    1596:	e0 93 02 01 	sts	0x0102, r30	; 0x800102 <_ZZL9newBulletiiaaE2pB>
    }
    pB->bx = x;
    159a:	82 83       	std	Z+2, r24	; 0x02
    pB->by = y;
    159c:	63 83       	std	Z+3, r22	; 0x03
    pB->deg = deg;
    159e:	44 83       	std	Z+4, r20	; 0x04
    pB->spd = constrain(spd, BULLET_SPD_MIN, BULLET_SPD_MAX);
    15a0:	12 16       	cp	r1, r18
    15a2:	5c f4       	brge	.+22     	; 0x15ba <_ZL9newBulletiiaa+0x50>
    15a4:	20 32       	cpi	r18, 0x20	; 32
    15a6:	0c f0       	brlt	.+2      	; 0x15aa <_ZL9newBulletiiaa+0x40>
    15a8:	2f e1       	ldi	r18, 0x1F	; 31
    15aa:	2f 71       	andi	r18, 0x1F	; 31
    pB->rad = 0;
    15ac:	2f 71       	andi	r18, 0x1F	; 31
    15ae:	20 83       	st	Z, r18
    15b0:	11 82       	std	Z+1, r1	; 0x01
    bulletsNum++;
    15b2:	9f 5f       	subi	r25, 0xFF	; 255
    15b4:	90 93 c3 01 	sts	0x01C3, r25	; 0x8001c3 <_ZL10bulletsNum>
}
    15b8:	08 95       	ret
        if (++pB >= &bullets[BULLET_MAX]) pB = bullets;
    }
    pB->bx = x;
    pB->by = y;
    pB->deg = deg;
    pB->spd = constrain(spd, BULLET_SPD_MIN, BULLET_SPD_MAX);
    15ba:	21 e0       	ldi	r18, 0x01	; 1
    15bc:	f7 cf       	rjmp	.-18     	; 0x15ac <_ZL9newBulletiiaa+0x42>

000015be <_ZL17newFanwiseBulletsiiaaha>:
        if (spd >= BULLET_SPD_MIN) newBullet(x, y, deg, spd);
    }
}

static void newFanwiseBullets(int16_t x, int16_t y, int8_t deg, int8_t spd, uint8_t num,  int8_t gap)
{
    15be:	8f 92       	push	r8
    15c0:	9f 92       	push	r9
    15c2:	af 92       	push	r10
    15c4:	bf 92       	push	r11
    15c6:	cf 92       	push	r12
    15c8:	df 92       	push	r13
    15ca:	ef 92       	push	r14
    15cc:	0f 93       	push	r16
    15ce:	1f 93       	push	r17
    15d0:	cf 93       	push	r28
    15d2:	df 93       	push	r29
    15d4:	6c 01       	movw	r12, r24
    15d6:	5b 01       	movw	r10, r22
    15d8:	c4 2f       	mov	r28, r20
    15da:	d2 2f       	mov	r29, r18
    15dc:	80 2e       	mov	r8, r16
    15de:	91 2c       	mov	r9, r1
    if (num > 1) deg -= gap * (num - 1) / 2;
    15e0:	02 30       	cpi	r16, 0x02	; 2
    15e2:	70 f0       	brcs	.+28     	; 0x1600 <_ZL17newFanwiseBulletsiiaaha+0x42>
    15e4:	94 01       	movw	r18, r8
    15e6:	21 50       	subi	r18, 0x01	; 1
    15e8:	31 09       	sbc	r19, r1
    15ea:	4e 2d       	mov	r20, r14
    15ec:	42 03       	mulsu	r20, r18
    15ee:	c0 01       	movw	r24, r0
    15f0:	43 9f       	mul	r20, r19
    15f2:	90 0d       	add	r25, r0
    15f4:	11 24       	eor	r1, r1
    15f6:	97 fd       	sbrc	r25, 7
    15f8:	01 96       	adiw	r24, 0x01	; 1
    15fa:	95 95       	asr	r25
    15fc:	87 95       	ror	r24
    15fe:	c8 1b       	sub	r28, r24
        if (spd >= BULLET_SPD_MIN) newBullet(x, y, deg, spd);
    }
}

static void newFanwiseBullets(int16_t x, int16_t y, int8_t deg, int8_t spd, uint8_t num,  int8_t gap)
{
    1600:	10 e0       	ldi	r17, 0x00	; 0
    1602:	00 e0       	ldi	r16, 0x00	; 0
    if (num > 1) deg -= gap * (num - 1) / 2;
    for (int i = 0; i < num; i++, deg += gap) {
    1604:	08 15       	cp	r16, r8
    1606:	19 05       	cpc	r17, r9
    1608:	54 f4       	brge	.+20     	; 0x161e <_ZL17newFanwiseBulletsiiaaha+0x60>
        newBullet(x, y, deg, spd);
    160a:	2d 2f       	mov	r18, r29
    160c:	4c 2f       	mov	r20, r28
    160e:	b5 01       	movw	r22, r10
    1610:	c6 01       	movw	r24, r12
    1612:	0e 94 b5 0a 	call	0x156a	; 0x156a <_ZL9newBulletiiaa>
}

static void newFanwiseBullets(int16_t x, int16_t y, int8_t deg, int8_t spd, uint8_t num,  int8_t gap)
{
    if (num > 1) deg -= gap * (num - 1) / 2;
    for (int i = 0; i < num; i++, deg += gap) {
    1616:	0f 5f       	subi	r16, 0xFF	; 255
    1618:	1f 4f       	sbci	r17, 0xFF	; 255
    161a:	ce 0d       	add	r28, r14
    161c:	f3 cf       	rjmp	.-26     	; 0x1604 <_ZL17newFanwiseBulletsiiaaha+0x46>
        newBullet(x, y, deg, spd);
    }
}
    161e:	df 91       	pop	r29
    1620:	cf 91       	pop	r28
    1622:	1f 91       	pop	r17
    1624:	0f 91       	pop	r16
    1626:	ef 90       	pop	r14
    1628:	df 90       	pop	r13
    162a:	cf 90       	pop	r12
    162c:	bf 90       	pop	r11
    162e:	af 90       	pop	r10
    1630:	9f 90       	pop	r9
    1632:	8f 90       	pop	r8
    1634:	08 95       	ret

00001636 <_ZL11updateShotsv>:
    if (++pS >= &shots[SHOT_MAX]) pS = shots;
}

static void updateShots(void)
{
    for (SHOT_T *pS = shots; pS < &shots[SHOT_MAX]; pS++) {
    1636:	ee e4       	ldi	r30, 0x4E	; 78
    1638:	f1 e0       	ldi	r31, 0x01	; 1
        if (pS->x < WIDTH) pS->x += SHOT_SPD;
    163a:	80 81       	ld	r24, Z
    163c:	87 fd       	sbrc	r24, 7
    163e:	02 c0       	rjmp	.+4      	; 0x1644 <_ZL11updateShotsv+0xe>
    1640:	8b 5f       	subi	r24, 0xFB	; 251
    1642:	80 83       	st	Z, r24
    if (++pS >= &shots[SHOT_MAX]) pS = shots;
}

static void updateShots(void)
{
    for (SHOT_T *pS = shots; pS < &shots[SHOT_MAX]; pS++) {
    1644:	32 96       	adiw	r30, 0x02	; 2
    1646:	81 e0       	ldi	r24, 0x01	; 1
    1648:	e2 37       	cpi	r30, 0x72	; 114
    164a:	f8 07       	cpc	r31, r24
    164c:	b1 f7       	brne	.-20     	; 0x163a <_ZL11updateShotsv+0x4>
        if (pS->x < WIDTH) pS->x += SHOT_SPD;
    }
}
    164e:	08 95       	ret

00001650 <_ZL12updatePlayerv>:
    return currentButtonState & ~lastButtonState & buttons;
}

bool MyArduboy2::buttonPressed(uint8_t buttons)
{
    return currentButtonState & buttons;
    1650:	90 91 e2 07 	lds	r25, 0x07E2	; 0x8007e2 <arduboy+0x5>
    1654:	96 fb       	bst	r25, 6
    1656:	33 27       	eor	r19, r19
    1658:	30 f9       	bld	r19, 0
    165a:	95 fb       	bst	r25, 5
    165c:	88 27       	eor	r24, r24
    165e:	80 f9       	bld	r24, 0

/*-----------------------------------------------------------------------------------------------*/

static void updatePlayer(void)
{
    int8_t vx = arduboy.buttonPressed(RIGHT_BUTTON) - arduboy.buttonPressed(LEFT_BUTTON);
    1660:	38 1b       	sub	r19, r24
    1662:	94 fb       	bst	r25, 4
    1664:	55 27       	eor	r21, r21
    1666:	50 f9       	bld	r21, 0
    1668:	89 2f       	mov	r24, r25
    166a:	88 1f       	adc	r24, r24
    166c:	88 27       	eor	r24, r24
    166e:	88 1f       	adc	r24, r24
    int8_t vy = arduboy.buttonPressed(DOWN_BUTTON) - arduboy.buttonPressed(UP_BUTTON);
    1670:	58 1b       	sub	r21, r24
    int8_t vr = (playerSlow == PLAYER_SLOW_MAX) ? 2 : ((vx != 0 && vy != 0) ? 3 : 4);
    1672:	80 91 4b 01 	lds	r24, 0x014B	; 0x80014b <_ZL10playerSlow>
    1676:	42 e0       	ldi	r20, 0x02	; 2
    1678:	88 30       	cpi	r24, 0x08	; 8
    167a:	31 f0       	breq	.+12     	; 0x1688 <_ZL12updatePlayerv+0x38>
    167c:	33 23       	and	r19, r19
    167e:	19 f0       	breq	.+6      	; 0x1686 <_ZL12updatePlayerv+0x36>
    1680:	43 e0       	ldi	r20, 0x03	; 3
    1682:	51 11       	cpse	r21, r1
    1684:	01 c0       	rjmp	.+2      	; 0x1688 <_ZL12updatePlayerv+0x38>
    1686:	44 e0       	ldi	r20, 0x04	; 4
    playerX += vx * vr;
    1688:	20 91 06 03 	lds	r18, 0x0306	; 0x800306 <_ZL7playerX>
    168c:	34 9f       	mul	r19, r20
    168e:	20 0d       	add	r18, r0
    1690:	11 24       	eor	r1, r1
    playerX = constrain(playerX, 3 * PLAYER_SCALE, (WIDTH / 2 - 3) * PLAYER_SCALE - 1);
    1692:	24 3f       	cpi	r18, 0xF4	; 244
    1694:	d8 f0       	brcs	.+54     	; 0x16cc <_ZL12updatePlayerv+0x7c>
    1696:	23 ef       	ldi	r18, 0xF3	; 243
    1698:	20 93 06 03 	sts	0x0306, r18	; 0x800306 <_ZL7playerX>
    playerY += vy * vr;
    169c:	30 91 05 03 	lds	r19, 0x0305	; 0x800305 <_ZL7playerY>
    16a0:	54 9f       	mul	r21, r20
    16a2:	30 0d       	add	r19, r0
    16a4:	11 24       	eor	r1, r1
    playerY = constrain(playerY, 3 * PLAYER_SCALE, (HEIGHT - 3) * PLAYER_SCALE - 1);
    16a6:	34 3f       	cpi	r19, 0xF4	; 244
    16a8:	a8 f0       	brcs	.+42     	; 0x16d4 <_ZL12updatePlayerv+0x84>
    16aa:	33 ef       	ldi	r19, 0xF3	; 243
    16ac:	30 93 05 03 	sts	0x0305, r19	; 0x800305 <_ZL7playerY>

    if (arduboy.buttonPressed(B_BUTTON)) {
    16b0:	92 ff       	sbrs	r25, 2
    16b2:	45 c0       	rjmp	.+138    	; 0x173e <_ZL12updatePlayerv+0xee>
        if (playerFire == 0) playerFire = PLAYER_FIRE_MAX;
    16b4:	90 91 4a 01 	lds	r25, 0x014A	; 0x80014a <_ZL10playerFire>
    16b8:	91 11       	cpse	r25, r1
    16ba:	03 c0       	rjmp	.+6      	; 0x16c2 <_ZL12updatePlayerv+0x72>
    16bc:	9c e0       	ldi	r25, 0x0C	; 12
    16be:	90 93 4a 01 	sts	0x014A, r25	; 0x80014a <_ZL10playerFire>
        if (playerSlow < PLAYER_SLOW_MAX) playerSlow++;
    16c2:	88 30       	cpi	r24, 0x08	; 8
    16c4:	58 f0       	brcs	.+22     	; 0x16dc <_ZL12updatePlayerv+0x8c>
    16c6:	80 91 4a 01 	lds	r24, 0x014A	; 0x80014a <_ZL10playerFire>
    16ca:	0f c0       	rjmp	.+30     	; 0x16ea <_ZL12updatePlayerv+0x9a>
    16cc:	2c 30       	cpi	r18, 0x0C	; 12
    16ce:	20 f7       	brcc	.-56     	; 0x1698 <_ZL12updatePlayerv+0x48>
    16d0:	2c e0       	ldi	r18, 0x0C	; 12
    16d2:	e2 cf       	rjmp	.-60     	; 0x1698 <_ZL12updatePlayerv+0x48>
    16d4:	3c 30       	cpi	r19, 0x0C	; 12
    16d6:	50 f7       	brcc	.-44     	; 0x16ac <_ZL12updatePlayerv+0x5c>
    16d8:	3c e0       	ldi	r19, 0x0C	; 12
    16da:	e8 cf       	rjmp	.-48     	; 0x16ac <_ZL12updatePlayerv+0x5c>
    16dc:	8f 5f       	subi	r24, 0xFF	; 255
    } else {
        if (playerSlow > 0) playerSlow--;
    16de:	80 93 4b 01 	sts	0x014B, r24	; 0x80014b <_ZL10playerSlow>
    }
    if (playerFire > 0 && playerFire-- % PLAYER_FIRE_INT == 0) {
    16e2:	80 91 4a 01 	lds	r24, 0x014A	; 0x80014a <_ZL10playerFire>
    16e6:	88 23       	and	r24, r24
    16e8:	a9 f1       	breq	.+106    	; 0x1754 <_ZL12updatePlayerv+0x104>
    16ea:	4f ef       	ldi	r20, 0xFF	; 255
    16ec:	48 0f       	add	r20, r24
    16ee:	40 93 4a 01 	sts	0x014A, r20	; 0x80014a <_ZL10playerFire>
    16f2:	63 e0       	ldi	r22, 0x03	; 3
    16f4:	0e 94 b4 2f 	call	0x5f68	; 0x5f68 <__udivmodqi4>
    16f8:	91 11       	cpse	r25, r1
    16fa:	2c c0       	rjmp	.+88     	; 0x1754 <_ZL12updatePlayerv+0x104>
        newShot((PLAYER_FIRE_MAX / PLAYER_FIRE_INT) - playerFire / PLAYER_FIRE_INT);
    16fc:	8b ea       	ldi	r24, 0xAB	; 171
    16fe:	48 9f       	mul	r20, r24
    1700:	41 2d       	mov	r20, r1
    1702:	11 24       	eor	r1, r1
    1704:	46 95       	lsr	r20
    1706:	84 e0       	ldi	r24, 0x04	; 4
    1708:	84 1b       	sub	r24, r20
}

static void newShot(uint8_t g)
{
    static SHOT_T *pS = shots;
    uint8_t x = playerX / PLAYER_SCALE + SHOT_SPD, y = playerY / PLAYER_SCALE;
    170a:	26 95       	lsr	r18
    170c:	26 95       	lsr	r18
    170e:	2b 5f       	subi	r18, 0xFB	; 251
    1710:	36 95       	lsr	r19
    1712:	36 95       	lsr	r19
    pS->x = x;
    1714:	e0 91 00 01 	lds	r30, 0x0100	; 0x800100 <__data_start>
    1718:	f0 91 01 01 	lds	r31, 0x0101	; 0x800101 <__data_start+0x1>
    171c:	20 83       	st	Z, r18
    pS->y = y - g;
    171e:	93 2f       	mov	r25, r19
    1720:	98 1b       	sub	r25, r24
    1722:	91 83       	std	Z+1, r25	; 0x01
    pS++;
    pS->x = x;
    1724:	22 83       	std	Z+2, r18	; 0x02
    pS->y = y + g;
    1726:	38 0f       	add	r19, r24
    1728:	33 83       	std	Z+3, r19	; 0x03
    if (++pS >= &shots[SHOT_MAX]) pS = shots;
    172a:	34 96       	adiw	r30, 0x04	; 4
    172c:	81 e0       	ldi	r24, 0x01	; 1
    172e:	e2 37       	cpi	r30, 0x72	; 114
    1730:	f8 07       	cpc	r31, r24
    1732:	48 f4       	brcc	.+18     	; 0x1746 <_ZL12updatePlayerv+0xf6>
    1734:	f0 93 01 01 	sts	0x0101, r31	; 0x800101 <__data_start+0x1>
    1738:	e0 93 00 01 	sts	0x0100, r30	; 0x800100 <__data_start>
    173c:	08 95       	ret

    if (arduboy.buttonPressed(B_BUTTON)) {
        if (playerFire == 0) playerFire = PLAYER_FIRE_MAX;
        if (playerSlow < PLAYER_SLOW_MAX) playerSlow++;
    } else {
        if (playerSlow > 0) playerSlow--;
    173e:	88 23       	and	r24, r24
    1740:	81 f2       	breq	.-96     	; 0x16e2 <_ZL12updatePlayerv+0x92>
    1742:	81 50       	subi	r24, 0x01	; 1
    1744:	cc cf       	rjmp	.-104    	; 0x16de <_ZL12updatePlayerv+0x8e>
    pS->x = x;
    pS->y = y - g;
    pS++;
    pS->x = x;
    pS->y = y + g;
    if (++pS >= &shots[SHOT_MAX]) pS = shots;
    1746:	8e e4       	ldi	r24, 0x4E	; 78
    1748:	91 e0       	ldi	r25, 0x01	; 1
    174a:	90 93 01 01 	sts	0x0101, r25	; 0x800101 <__data_start+0x1>
    174e:	80 93 00 01 	sts	0x0100, r24	; 0x800100 <__data_start>
    1752:	08 95       	ret
        if (playerSlow > 0) playerSlow--;
    }
    if (playerFire > 0 && playerFire-- % PLAYER_FIRE_INT == 0) {
        newShot((PLAYER_FIRE_MAX / PLAYER_FIRE_INT) - playerFire / PLAYER_FIRE_INT);
    }
}
    1754:	08 95       	ret

00001756 <_ZL10sparkleLedh>:
    setMenuItemPos((state == STATE_OVER && !isDefeated) ? 1 : 0);
    isMenu = true;
}

static void sparkleLed(uint8_t idx)
{
    1756:	28 2f       	mov	r18, r24
    if (!record.isBlinkLED) return;
    1758:	80 91 3d 03 	lds	r24, 0x033D	; 0x80033d <record+0x3>
    175c:	85 ff       	sbrs	r24, 5
    175e:	1d c0       	rjmp	.+58     	; 0x179a <_ZL10sparkleLedh+0x44>
    uint8_t ledValue = pgm_read_byte(ledValues + idx);
    1760:	e2 2f       	mov	r30, r18
    1762:	f0 e0       	ldi	r31, 0x00	; 0
    1764:	e9 56       	subi	r30, 0x69	; 105
    1766:	fa 4f       	sbci	r31, 0xFA	; 250
    1768:	e4 91       	lpm	r30, Z
    ledRed = ledValue / 25;
    176a:	8e 2f       	mov	r24, r30
    176c:	69 e1       	ldi	r22, 0x19	; 25
    176e:	0e 94 b4 2f 	call	0x5f68	; 0x5f68 <__udivmodqi4>
    1772:	80 93 49 01 	sts	0x0149, r24	; 0x800149 <_ZL6ledRed>
    ledGreen = ledValue / 5 % 5;
    1776:	35 e0       	ldi	r19, 0x05	; 5
    1778:	8e 2f       	mov	r24, r30
    177a:	63 2f       	mov	r22, r19
    177c:	0e 94 b4 2f 	call	0x5f68	; 0x5f68 <__udivmodqi4>
    1780:	49 2f       	mov	r20, r25
    1782:	0e 94 b4 2f 	call	0x5f68	; 0x5f68 <__udivmodqi4>
    1786:	90 93 48 01 	sts	0x0148, r25	; 0x800148 <_ZL8ledGreen>
    ledBlue = ledValue % 5;
    178a:	40 93 47 01 	sts	0x0147, r20	; 0x800147 <_ZL7ledBlue>
    ledLevel = (idx == LED_IDX_OVER) ? LED_LEVEL_OVER : LED_LEVEL_NORMAL;
    178e:	88 e0       	ldi	r24, 0x08	; 8
    1790:	25 30       	cpi	r18, 0x05	; 5
    1792:	09 f4       	brne	.+2      	; 0x1796 <_ZL10sparkleLedh+0x40>
    1794:	80 e1       	ldi	r24, 0x10	; 16
    1796:	80 93 46 01 	sts	0x0146, r24	; 0x800146 <_ZL8ledLevel>
}
    179a:	08 95       	ret

0000179c <_ZL5mySinai>:
    73, 76, 78, 81, 83, 85, 88, 90, 92, 94, 96, 98, 100, 102, 104, 106, 108, 109, 111, 112, 114,
    115, 117, 118, 119, 120, 121, 122, 123, 124, 124, 125, 126, 126, 127, 127, 127, 127, 127, 128
};

static int16_t mySin(int8_t deg, int16_t rad)
{
    179c:	e8 2f       	mov	r30, r24
    if (deg < 0) rad = -rad, deg &= 127;
    179e:	87 ff       	sbrs	r24, 7
    17a0:	04 c0       	rjmp	.+8      	; 0x17aa <_ZL5mySinai+0xe>
    17a2:	71 95       	neg	r23
    17a4:	61 95       	neg	r22
    17a6:	71 09       	sbc	r23, r1
    17a8:	ef 77       	andi	r30, 0x7F	; 127
    if (deg > 64) deg = 128 - deg;
    17aa:	e1 34       	cpi	r30, 0x41	; 65
    17ac:	1c f0       	brlt	.+6      	; 0x17b4 <_ZL5mySinai+0x18>
    17ae:	80 e8       	ldi	r24, 0x80	; 128
    17b0:	8e 1b       	sub	r24, r30
    17b2:	e8 2f       	mov	r30, r24
    return pgm_read_byte(sineTable + deg) * rad >> 7;
    17b4:	0e 2e       	mov	r0, r30
    17b6:	00 0c       	add	r0, r0
    17b8:	ff 0b       	sbc	r31, r31
    17ba:	e4 54       	subi	r30, 0x44	; 68
    17bc:	fd 4f       	sbci	r31, 0xFD	; 253
    17be:	e4 91       	lpm	r30, Z
    17c0:	e6 9f       	mul	r30, r22
    17c2:	c0 01       	movw	r24, r0
    17c4:	e7 9f       	mul	r30, r23
    17c6:	90 0d       	add	r25, r0
    17c8:	11 24       	eor	r1, r1
}
    17ca:	88 0f       	add	r24, r24
    17cc:	89 2f       	mov	r24, r25
    17ce:	88 1f       	adc	r24, r24
    17d0:	99 0b       	sbc	r25, r25
    17d2:	08 95       	ret

000017d4 <_ZL15getBulletCoordsP8BULLET_T>:
    }
    return ret;
}

static Point getBulletCoords(BULLET_T *pB)
{
    17d4:	cf 92       	push	r12
    17d6:	df 92       	push	r13
    17d8:	ef 92       	push	r14
    17da:	ff 92       	push	r15
    17dc:	0f 93       	push	r16
    17de:	1f 93       	push	r17
    17e0:	cf 93       	push	r28
    17e2:	df 93       	push	r29
    17e4:	ec 01       	movw	r28, r24
    int16_t rad = pB->rad / BULLET_SCALE;
    17e6:	88 81       	ld	r24, Y
    17e8:	28 2f       	mov	r18, r24
    17ea:	22 95       	swap	r18
    17ec:	26 95       	lsr	r18
    17ee:	27 70       	andi	r18, 0x07	; 7
    17f0:	99 81       	ldd	r25, Y+1	; 0x01
    17f2:	89 2f       	mov	r24, r25
    17f4:	88 0f       	add	r24, r24
    17f6:	88 0f       	add	r24, r24
    17f8:	88 0f       	add	r24, r24
    17fa:	82 2b       	or	r24, r18
    17fc:	92 95       	swap	r25
    17fe:	96 95       	lsr	r25
    1800:	97 70       	andi	r25, 0x07	; 7
    1802:	6c e0       	ldi	r22, 0x0C	; 12
    1804:	70 e0       	ldi	r23, 0x00	; 0
    1806:	0e 94 d4 2f 	call	0x5fa8	; 0x5fa8 <__divmodhi4>
    180a:	6b 01       	movw	r12, r22
    return Point(pB->bx + myCos(pB->deg, rad), pB->by + mySin(pB->deg, rad));
    180c:	0b 81       	ldd	r16, Y+3	; 0x03
    180e:	10 e0       	ldi	r17, 0x00	; 0
    1810:	8c 81       	ldd	r24, Y+4	; 0x04
    1812:	0e 94 ce 0b 	call	0x179c	; 0x179c <_ZL5mySinai>
    1816:	08 0f       	add	r16, r24
    1818:	19 1f       	adc	r17, r25
    181a:	ea 80       	ldd	r14, Y+2	; 0x02
    181c:	f1 2c       	mov	r15, r1
    181e:	8c 81       	ldd	r24, Y+4	; 0x04
    1820:	b6 01       	movw	r22, r12
    1822:	80 5c       	subi	r24, 0xC0	; 192
    1824:	0e 94 ce 0b 	call	0x179c	; 0x179c <_ZL5mySinai>
    1828:	a7 01       	movw	r20, r14
    182a:	48 0f       	add	r20, r24
    182c:	59 1f       	adc	r21, r25
}
    182e:	c8 01       	movw	r24, r16
    1830:	ba 01       	movw	r22, r20
    1832:	df 91       	pop	r29
    1834:	cf 91       	pop	r28
    1836:	1f 91       	pop	r17
    1838:	0f 91       	pop	r16
    183a:	ff 90       	pop	r15
    183c:	ef 90       	pop	r14
    183e:	df 90       	pop	r13
    1840:	cf 90       	pop	r12
    1842:	08 95       	ret

00001844 <_ZL13updateBulletsv>:
        newBullet(x, y, deg, spd);
    }
}

static bool updateBullets(void)
{
    1844:	9f 92       	push	r9
    1846:	af 92       	push	r10
    1848:	bf 92       	push	r11
    184a:	cf 92       	push	r12
    184c:	df 92       	push	r13
    184e:	ef 92       	push	r14
    1850:	ff 92       	push	r15
    1852:	0f 93       	push	r16
    1854:	1f 93       	push	r17
    1856:	cf 93       	push	r28
    1858:	df 93       	push	r29
    bool ret = false;
    Rect playerRect = Rect(playerX / PLAYER_SCALE - 1, playerY / PLAYER_SCALE - 1, 3, 3);
    185a:	00 91 05 03 	lds	r16, 0x0305	; 0x800305 <_ZL7playerY>
    185e:	06 95       	lsr	r16
    1860:	06 95       	lsr	r16
    1862:	10 e0       	ldi	r17, 0x00	; 0
    1864:	78 01       	movw	r14, r16
    1866:	81 e0       	ldi	r24, 0x01	; 1
    1868:	e8 1a       	sub	r14, r24
    186a:	f1 08       	sbc	r15, r1
    186c:	c0 91 06 03 	lds	r28, 0x0306	; 0x800306 <_ZL7playerX>
    1870:	c6 95       	lsr	r28
    1872:	c6 95       	lsr	r28
    1874:	d0 e0       	ldi	r29, 0x00	; 0
    1876:	6e 01       	movw	r12, r28
    1878:	e1 e0       	ldi	r30, 0x01	; 1
    187a:	ce 1a       	sub	r12, r30
    187c:	d1 08       	sbc	r13, r1
    for (BULLET_T *pB = bullets; pB < &bullets[BULLET_MAX]; pB++) {
    187e:	84 ec       	ldi	r24, 0xC4	; 196
    1880:	a8 2e       	mov	r10, r24
    1882:	81 e0       	ldi	r24, 0x01	; 1
    1884:	b8 2e       	mov	r11, r24
    }
}

static bool updateBullets(void)
{
    bool ret = false;
    1886:	91 2c       	mov	r9, r1
  return ((previousButtonState & button) && !(currentButtonState & button));
}

bool Arduboy2Base::collide(Point point, Rect rect)
{
  return ((point.x >= rect.x) && (point.x < rect.x + rect.width) &&
    1888:	22 96       	adiw	r28, 0x02	; 2
      (point.y >= rect.y) && (point.y < rect.y + rect.height));
    188a:	0e 5f       	subi	r16, 0xFE	; 254
    188c:	1f 4f       	sbci	r17, 0xFF	; 255
    Rect playerRect = Rect(playerX / PLAYER_SCALE - 1, playerY / PLAYER_SCALE - 1, 3, 3);
    for (BULLET_T *pB = bullets; pB < &bullets[BULLET_MAX]; pB++) {
        if (pB->spd) {
    188e:	f5 01       	movw	r30, r10
    1890:	30 81       	ld	r19, Z
    1892:	23 2f       	mov	r18, r19
    1894:	2f 71       	andi	r18, 0x1F	; 31
    1896:	51 f1       	breq	.+84     	; 0x18ec <_ZL13updateBulletsv+0xa8>
            pB->rad += pB->spd;
    1898:	32 95       	swap	r19
    189a:	36 95       	lsr	r19
    189c:	37 70       	andi	r19, 0x07	; 7
    189e:	41 81       	ldd	r20, Z+1	; 0x01
    18a0:	54 2f       	mov	r21, r20
    18a2:	55 0f       	add	r21, r21
    18a4:	55 0f       	add	r21, r21
    18a6:	55 0f       	add	r21, r21
    18a8:	85 2f       	mov	r24, r21
    18aa:	83 2b       	or	r24, r19
    18ac:	94 2f       	mov	r25, r20
    18ae:	92 95       	swap	r25
    18b0:	96 95       	lsr	r25
    18b2:	97 70       	andi	r25, 0x07	; 7
    18b4:	82 0f       	add	r24, r18
    18b6:	91 1d       	adc	r25, r1
    18b8:	38 2f       	mov	r19, r24
    18ba:	32 95       	swap	r19
    18bc:	33 0f       	add	r19, r19
    18be:	30 7e       	andi	r19, 0xE0	; 224
    18c0:	23 2b       	or	r18, r19
    18c2:	20 83       	st	Z, r18
    18c4:	92 95       	swap	r25
    18c6:	99 0f       	add	r25, r25
    18c8:	90 7e       	andi	r25, 0xE0	; 224
    18ca:	86 95       	lsr	r24
    18cc:	86 95       	lsr	r24
    18ce:	86 95       	lsr	r24
    18d0:	89 2b       	or	r24, r25
    18d2:	81 83       	std	Z+1, r24	; 0x01
            Point bulletPoint = getBulletCoords(pB);
    18d4:	c5 01       	movw	r24, r10
    18d6:	0e 94 ea 0b 	call	0x17d4	; 0x17d4 <_ZL15getBulletCoordsP8BULLET_T>
  return ((previousButtonState & button) && !(currentButtonState & button));
}

bool Arduboy2Base::collide(Point point, Rect rect)
{
  return ((point.x >= rect.x) && (point.x < rect.x + rect.width) &&
    18da:	60 38       	cpi	r22, 0x80	; 128
    18dc:	71 05       	cpc	r23, r1
    18de:	d8 f4       	brcc	.+54     	; 0x1916 <_ZL13updateBulletsv+0xd2>
      (point.y >= rect.y) && (point.y < rect.y + rect.height));
    18e0:	80 34       	cpi	r24, 0x40	; 64
    18e2:	91 05       	cpc	r25, r1
    18e4:	c0 f4       	brcc	.+48     	; 0x1916 <_ZL13updateBulletsv+0xd2>
    18e6:	6c 15       	cp	r22, r12
    18e8:	7d 05       	cpc	r23, r13
    18ea:	fc f4       	brge	.+62     	; 0x192a <_ZL13updateBulletsv+0xe6>

static bool updateBullets(void)
{
    bool ret = false;
    Rect playerRect = Rect(playerX / PLAYER_SCALE - 1, playerY / PLAYER_SCALE - 1, 3, 3);
    for (BULLET_T *pB = bullets; pB < &bullets[BULLET_MAX]; pB++) {
    18ec:	f5 e0       	ldi	r31, 0x05	; 5
    18ee:	af 0e       	add	r10, r31
    18f0:	b1 1c       	adc	r11, r1
    18f2:	84 e0       	ldi	r24, 0x04	; 4
    18f4:	a8 16       	cp	r10, r24
    18f6:	83 e0       	ldi	r24, 0x03	; 3
    18f8:	b8 06       	cpc	r11, r24
    18fa:	49 f6       	brne	.-110    	; 0x188e <_ZL13updateBulletsv+0x4a>
#endif
            }
        }
    }
    return ret;
}
    18fc:	89 2d       	mov	r24, r9
    18fe:	df 91       	pop	r29
    1900:	cf 91       	pop	r28
    1902:	1f 91       	pop	r17
    1904:	0f 91       	pop	r16
    1906:	ff 90       	pop	r15
    1908:	ef 90       	pop	r14
    190a:	df 90       	pop	r13
    190c:	cf 90       	pop	r12
    190e:	bf 90       	pop	r11
    1910:	af 90       	pop	r10
    1912:	9f 90       	pop	r9
    1914:	08 95       	ret
    for (BULLET_T *pB = bullets; pB < &bullets[BULLET_MAX]; pB++) {
        if (pB->spd) {
            pB->rad += pB->spd;
            Point bulletPoint = getBulletCoords(pB);
            if (!arduboy.collide(bulletPoint, screenRect)) {
                pB->spd = 0;
    1916:	f5 01       	movw	r30, r10
    1918:	80 81       	ld	r24, Z
    191a:	80 7e       	andi	r24, 0xE0	; 224
    191c:	80 83       	st	Z, r24
                bulletsNum--;
    191e:	80 91 c3 01 	lds	r24, 0x01C3	; 0x8001c3 <_ZL10bulletsNum>
    1922:	81 50       	subi	r24, 0x01	; 1
    1924:	80 93 c3 01 	sts	0x01C3, r24	; 0x8001c3 <_ZL10bulletsNum>
    1928:	e1 cf       	rjmp	.-62     	; 0x18ec <_ZL13updateBulletsv+0xa8>
  return ((previousButtonState & button) && !(currentButtonState & button));
}

bool Arduboy2Base::collide(Point point, Rect rect)
{
  return ((point.x >= rect.x) && (point.x < rect.x + rect.width) &&
    192a:	6c 17       	cp	r22, r28
    192c:	7d 07       	cpc	r23, r29
    192e:	f4 f6       	brge	.-68     	; 0x18ec <_ZL13updateBulletsv+0xa8>
    1930:	8e 15       	cp	r24, r14
    1932:	9f 05       	cpc	r25, r15
    1934:	dc f2       	brlt	.-74     	; 0x18ec <_ZL13updateBulletsv+0xa8>
      (point.y >= rect.y) && (point.y < rect.y + rect.height));
    1936:	80 17       	cp	r24, r16
    1938:	91 07       	cpc	r25, r17
    193a:	c4 f6       	brge	.-80     	; 0x18ec <_ZL13updateBulletsv+0xa8>
            } else if (arduboy.collide(bulletPoint, playerRect)) {
                ret = true; // Game over...
    193c:	99 24       	eor	r9, r9
    193e:	93 94       	inc	r9
    1940:	d5 cf       	rjmp	.-86     	; 0x18ec <_ZL13updateBulletsv+0xa8>

00001942 <_ZL14getEnemyCoordsP7GROUP_TP7ENEMY_Tj>:
    if (isDamaged) arduboy.playTone(200, 10);
    return (enemyLives == 0 && gameFrames >= GAME_DURATION);
}

static Point getEnemyCoords(GROUP_T *pG, ENEMY_T *pE, uint16_t frames)
{
    1942:	cf 92       	push	r12
    1944:	df 92       	push	r13
    1946:	ef 92       	push	r14
    1948:	ff 92       	push	r15
    194a:	0f 93       	push	r16
    194c:	1f 93       	push	r17
    194e:	cf 93       	push	r28
    1950:	df 93       	push	r29
    1952:	7c 01       	movw	r14, r24
    1954:	8b 01       	movw	r16, r22
    frames += pE->framesGap;
    1956:	db 01       	movw	r26, r22
    1958:	12 96       	adiw	r26, 0x02	; 2
    195a:	ec 91       	ld	r30, X
    195c:	e4 0f       	add	r30, r20
    195e:	f5 2f       	mov	r31, r21
    1960:	f1 1d       	adc	r31, r1
    int8_t xDeg = (frames * pG->xCoef) / pG->xRad;
    1962:	dc 01       	movw	r26, r24
    1964:	12 96       	adiw	r26, 0x02	; 2
    1966:	cc 90       	ld	r12, X
    1968:	12 97       	sbiw	r26, 0x02	; 2
    196a:	8c 2d       	mov	r24, r12
    196c:	8f 73       	andi	r24, 0x3F	; 63
    196e:	8e 9f       	mul	r24, r30
    1970:	90 01       	movw	r18, r0
    1972:	8f 9f       	mul	r24, r31
    1974:	30 0d       	add	r19, r0
    1976:	11 24       	eor	r1, r1
    1978:	6c 91       	ld	r22, X
    197a:	96 2f       	mov	r25, r22
    197c:	92 95       	swap	r25
    197e:	9f 70       	andi	r25, 0x0F	; 15
    1980:	11 96       	adiw	r26, 0x01	; 1
    1982:	4c 91       	ld	r20, X
    1984:	64 2f       	mov	r22, r20
    1986:	63 70       	andi	r22, 0x03	; 3
    1988:	62 95       	swap	r22
    198a:	60 7f       	andi	r22, 0xF0	; 240
    198c:	69 2b       	or	r22, r25
    198e:	70 e0       	ldi	r23, 0x00	; 0
    1990:	c9 01       	movw	r24, r18
    1992:	0e 94 c0 2f 	call	0x5f80	; 0x5f80 <__udivmodhi4>
    1996:	d6 2e       	mov	r13, r22
    int8_t yDeg = (frames * pG->yCoef) / pG->yRad + pG->yFlip * 128;
    1998:	24 2f       	mov	r18, r20
    199a:	26 95       	lsr	r18
    199c:	26 95       	lsr	r18
    199e:	2f 71       	andi	r18, 0x1F	; 31
    return Point(pE->bx + WIDTH / 2 + myCos(xDeg, pG->xRad), pE->by + mySin(yDeg, pG->yRad));
    19a0:	d8 01       	movw	r26, r16
    19a2:	cc 91       	ld	r28, X
    19a4:	8c 2f       	mov	r24, r28
    19a6:	82 95       	swap	r24
    19a8:	86 95       	lsr	r24
    19aa:	86 95       	lsr	r24
    19ac:	83 70       	andi	r24, 0x03	; 3
    19ae:	11 96       	adiw	r26, 0x01	; 1
    19b0:	cc 91       	ld	r28, X
    19b2:	cf 70       	andi	r28, 0x0F	; 15
    19b4:	cc 0f       	add	r28, r28
    19b6:	cc 0f       	add	r28, r28
    19b8:	c8 2b       	or	r28, r24
    19ba:	d0 e0       	ldi	r29, 0x00	; 0
    19bc:	30 e0       	ldi	r19, 0x00	; 0

static Point getEnemyCoords(GROUP_T *pG, ENEMY_T *pE, uint16_t frames)
{
    frames += pE->framesGap;
    int8_t xDeg = (frames * pG->xCoef) / pG->xRad;
    int8_t yDeg = (frames * pG->yCoef) / pG->yRad + pG->yFlip * 128;
    19be:	c2 94       	swap	r12
    19c0:	c6 94       	lsr	r12
    19c2:	c6 94       	lsr	r12
    19c4:	83 e0       	ldi	r24, 0x03	; 3
    19c6:	c8 22       	and	r12, r24
    19c8:	d7 01       	movw	r26, r14
    19ca:	13 96       	adiw	r26, 0x03	; 3
    19cc:	9c 91       	ld	r25, X
    19ce:	9f 70       	andi	r25, 0x0F	; 15
    19d0:	99 0f       	add	r25, r25
    19d2:	99 0f       	add	r25, r25
    19d4:	9c 29       	or	r25, r12
    19d6:	9e 9f       	mul	r25, r30
    19d8:	b0 01       	movw	r22, r0
    19da:	9f 9f       	mul	r25, r31
    19dc:	70 0d       	add	r23, r0
    19de:	11 24       	eor	r1, r1
    19e0:	cb 01       	movw	r24, r22
    19e2:	b9 01       	movw	r22, r18
    19e4:	0e 94 c0 2f 	call	0x5f80	; 0x5f80 <__udivmodhi4>
    19e8:	86 2f       	mov	r24, r22
    19ea:	40 78       	andi	r20, 0x80	; 128
    return Point(pE->bx + WIDTH / 2 + myCos(xDeg, pG->xRad), pE->by + mySin(yDeg, pG->yRad));
    19ec:	b9 01       	movw	r22, r18
    19ee:	84 0f       	add	r24, r20
    19f0:	0e 94 ce 0b 	call	0x179c	; 0x179c <_ZL5mySinai>
    19f4:	c8 0f       	add	r28, r24
    19f6:	d9 1f       	adc	r29, r25
    19f8:	f8 01       	movw	r30, r16
    19fa:	00 81       	ld	r16, Z
    19fc:	0f 73       	andi	r16, 0x3F	; 63
    19fe:	10 e0       	ldi	r17, 0x00	; 0
    1a00:	00 5c       	subi	r16, 0xC0	; 192
    1a02:	1f 4f       	sbci	r17, 0xFF	; 255
    1a04:	d7 01       	movw	r26, r14
    1a06:	6c 91       	ld	r22, X
    1a08:	86 2f       	mov	r24, r22
    1a0a:	82 95       	swap	r24
    1a0c:	8f 70       	andi	r24, 0x0F	; 15
    1a0e:	11 96       	adiw	r26, 0x01	; 1
    1a10:	6c 91       	ld	r22, X
    1a12:	63 70       	andi	r22, 0x03	; 3
    1a14:	62 95       	swap	r22
    1a16:	60 7f       	andi	r22, 0xF0	; 240
    1a18:	68 2b       	or	r22, r24
    1a1a:	70 e0       	ldi	r23, 0x00	; 0
    1a1c:	80 e4       	ldi	r24, 0x40	; 64
    1a1e:	8d 0d       	add	r24, r13
    1a20:	0e 94 ce 0b 	call	0x179c	; 0x179c <_ZL5mySinai>
    1a24:	a8 01       	movw	r20, r16
    1a26:	48 0f       	add	r20, r24
    1a28:	59 1f       	adc	r21, r25
}
    1a2a:	ce 01       	movw	r24, r28
    1a2c:	ba 01       	movw	r22, r20
    1a2e:	df 91       	pop	r29
    1a30:	cf 91       	pop	r28
    1a32:	1f 91       	pop	r17
    1a34:	0f 91       	pop	r16
    1a36:	ff 90       	pop	r15
    1a38:	ef 90       	pop	r14
    1a3a:	df 90       	pop	r13
    1a3c:	cf 90       	pop	r12
    1a3e:	08 95       	ret

00001a40 <_Z14drawButtonIconiib>:
        seed /= GAME_SEED_TOKEN_VAL;
    }
}

void drawButtonIcon(int16_t x, int16_t y, bool isB)
{
    1a40:	ef 92       	push	r14
    1a42:	0f 93       	push	r16
    arduboy.drawBitmap(x, y, imgButtons[isB],
    1a44:	27 e0       	ldi	r18, 0x07	; 7
    1a46:	42 9f       	mul	r20, r18
    1a48:	a0 01       	movw	r20, r0
    1a4a:	11 24       	eor	r1, r1
    1a4c:	42 55       	subi	r20, 0x52	; 82
    1a4e:	5d 4f       	sbci	r21, 0xFD	; 253
    1a50:	e0 90 04 01 	lds	r14, 0x0104	; 0x800104 <_ZN8Arduboy29textColorE>
    1a54:	07 e0       	ldi	r16, 0x07	; 7
    1a56:	27 e0       	ldi	r18, 0x07	; 7
    1a58:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh>
            IMG_BUTTONS_W, IMG_BUTTONS_H, arduboy.getTextColor());
}
    1a5c:	0f 91       	pop	r16
    1a5e:	ef 90       	pop	r14
    1a60:	08 95       	ret

00001a62 <_Z10handleDPadv>:
    dprintln(F("Clear EEPROM"));
}

void handleDPad(void)
{
    padX = padY = 0;
    1a62:	10 92 2f 03 	sts	0x032F, r1	; 0x80032f <padY>
    1a66:	10 92 2e 03 	sts	0x032E, r1	; 0x80032e <padX>
    1a6a:	80 91 e2 07 	lds	r24, 0x07E2	; 0x8007e2 <arduboy+0x5>
    1a6e:	98 2f       	mov	r25, r24
    1a70:	90 7f       	andi	r25, 0xF0	; 240
    if (arduboy.buttonPressed(LEFT_BUTTON | RIGHT_BUTTON | UP_BUTTON | DOWN_BUTTON)) {
    1a72:	41 f1       	breq	.+80     	; 0x1ac4 <_Z10handleDPadv+0x62>
        if (++padRepeatCount >= (PAD_REPEAT_DELAY + PAD_REPEAT_INTERVAL)) {
    1a74:	90 91 44 01 	lds	r25, 0x0144	; 0x800144 <padRepeatCount>
    1a78:	9f 5f       	subi	r25, 0xFF	; 255
    1a7a:	94 31       	cpi	r25, 0x14	; 20
    1a7c:	0c f5       	brge	.+66     	; 0x1ac0 <_Z10handleDPadv+0x5e>
            padRepeatCount = PAD_REPEAT_DELAY;
    1a7e:	90 93 44 01 	sts	0x0144, r25	; 0x800144 <padRepeatCount>
        }
        if (padRepeatCount == 1 || padRepeatCount == PAD_REPEAT_DELAY) {
    1a82:	90 91 44 01 	lds	r25, 0x0144	; 0x800144 <padRepeatCount>
    1a86:	91 30       	cpi	r25, 0x01	; 1
    1a88:	11 f0       	breq	.+4      	; 0x1a8e <_Z10handleDPadv+0x2c>
    1a8a:	9f 30       	cpi	r25, 0x0F	; 15
    1a8c:	e9 f4       	brne	.+58     	; 0x1ac8 <_Z10handleDPadv+0x66>
            if (arduboy.buttonPressed(LEFT_BUTTON))  padX--;
    1a8e:	85 ff       	sbrs	r24, 5
    1a90:	03 c0       	rjmp	.+6      	; 0x1a98 <_Z10handleDPadv+0x36>
    1a92:	9f ef       	ldi	r25, 0xFF	; 255
    1a94:	90 93 2e 03 	sts	0x032E, r25	; 0x80032e <padX>
            if (arduboy.buttonPressed(RIGHT_BUTTON)) padX++;
    1a98:	86 ff       	sbrs	r24, 6
    1a9a:	05 c0       	rjmp	.+10     	; 0x1aa6 <_Z10handleDPadv+0x44>
    1a9c:	90 91 2e 03 	lds	r25, 0x032E	; 0x80032e <padX>
    1aa0:	9f 5f       	subi	r25, 0xFF	; 255
    1aa2:	90 93 2e 03 	sts	0x032E, r25	; 0x80032e <padX>
            if (arduboy.buttonPressed(UP_BUTTON))    padY--;
    1aa6:	87 ff       	sbrs	r24, 7
    1aa8:	03 c0       	rjmp	.+6      	; 0x1ab0 <_Z10handleDPadv+0x4e>
    1aaa:	9f ef       	ldi	r25, 0xFF	; 255
    1aac:	90 93 2f 03 	sts	0x032F, r25	; 0x80032f <padY>
            if (arduboy.buttonPressed(DOWN_BUTTON))  padY++;
    1ab0:	84 ff       	sbrs	r24, 4
    1ab2:	0a c0       	rjmp	.+20     	; 0x1ac8 <_Z10handleDPadv+0x66>
    1ab4:	80 91 2f 03 	lds	r24, 0x032F	; 0x80032f <padY>
    1ab8:	8f 5f       	subi	r24, 0xFF	; 255
    1aba:	80 93 2f 03 	sts	0x032F, r24	; 0x80032f <padY>
    1abe:	08 95       	ret
void handleDPad(void)
{
    padX = padY = 0;
    if (arduboy.buttonPressed(LEFT_BUTTON | RIGHT_BUTTON | UP_BUTTON | DOWN_BUTTON)) {
        if (++padRepeatCount >= (PAD_REPEAT_DELAY + PAD_REPEAT_INTERVAL)) {
            padRepeatCount = PAD_REPEAT_DELAY;
    1ac0:	9f e0       	ldi	r25, 0x0F	; 15
    1ac2:	dd cf       	rjmp	.-70     	; 0x1a7e <_Z10handleDPadv+0x1c>
            if (arduboy.buttonPressed(RIGHT_BUTTON)) padX++;
            if (arduboy.buttonPressed(UP_BUTTON))    padY--;
            if (arduboy.buttonPressed(DOWN_BUTTON))  padY++;
        }
    } else {
        padRepeatCount = 0;
    1ac4:	10 92 44 01 	sts	0x0144, r1	; 0x800144 <padRepeatCount>
    }
}
    1ac8:	08 95       	ret

00001aca <_ZL12calcCheckSumv>:
static uint16_t calcCheckSum()
{
    uint16_t checkSum = (EEPROM_SIGNATURE & 0xFFFF) + (EEPROM_SIGNATURE >> 16) * 3;
    uint16_t *p = (uint16_t *) &record;
    for (int i = 0; i < sizeof(record) / 2; i++) {
        checkSum += *p++ * (i * 2 + 5);
    1aca:	ea e3       	ldi	r30, 0x3A	; 58
    1acc:	f3 e0       	ldi	r31, 0x03	; 3
    1ace:	20 81       	ld	r18, Z
    1ad0:	31 81       	ldd	r19, Z+1	; 0x01
    1ad2:	45 e0       	ldi	r20, 0x05	; 5
    1ad4:	42 9f       	mul	r20, r18
    1ad6:	c0 01       	movw	r24, r0
    1ad8:	43 9f       	mul	r20, r19
    1ada:	90 0d       	add	r25, r0
    1adc:	11 24       	eor	r1, r1
    1ade:	42 81       	ldd	r20, Z+2	; 0x02
    1ae0:	53 81       	ldd	r21, Z+3	; 0x03
    1ae2:	67 e0       	ldi	r22, 0x07	; 7
    1ae4:	64 9f       	mul	r22, r20
    1ae6:	90 01       	movw	r18, r0
    1ae8:	65 9f       	mul	r22, r21
    1aea:	30 0d       	add	r19, r0
    1aec:	11 24       	eor	r1, r1
    1aee:	82 0f       	add	r24, r18
    1af0:	93 1f       	adc	r25, r19
    1af2:	87 5c       	subi	r24, 0xC7	; 199
    1af4:	93 48       	sbci	r25, 0x83	; 131
    1af6:	44 81       	ldd	r20, Z+4	; 0x04
    1af8:	55 81       	ldd	r21, Z+5	; 0x05
    1afa:	69 e0       	ldi	r22, 0x09	; 9
    1afc:	64 9f       	mul	r22, r20
    1afe:	90 01       	movw	r18, r0
    1b00:	65 9f       	mul	r22, r21
    1b02:	30 0d       	add	r19, r0
    1b04:	11 24       	eor	r1, r1
    1b06:	28 0f       	add	r18, r24
    1b08:	39 1f       	adc	r19, r25
    1b0a:	46 81       	ldd	r20, Z+6	; 0x06
    1b0c:	57 81       	ldd	r21, Z+7	; 0x07
    1b0e:	6b e0       	ldi	r22, 0x0B	; 11
    1b10:	64 9f       	mul	r22, r20
    1b12:	c0 01       	movw	r24, r0
    1b14:	65 9f       	mul	r22, r21
    1b16:	90 0d       	add	r25, r0
    1b18:	11 24       	eor	r1, r1
    1b1a:	82 0f       	add	r24, r18
    1b1c:	93 1f       	adc	r25, r19
    1b1e:	40 85       	ldd	r20, Z+8	; 0x08
    1b20:	51 85       	ldd	r21, Z+9	; 0x09
    1b22:	6d e0       	ldi	r22, 0x0D	; 13
    1b24:	64 9f       	mul	r22, r20
    1b26:	90 01       	movw	r18, r0
    1b28:	65 9f       	mul	r22, r21
    1b2a:	30 0d       	add	r19, r0
    1b2c:	11 24       	eor	r1, r1
    }
    return checkSum;
}
    1b2e:	82 0f       	add	r24, r18
    1b30:	93 1f       	adc	r25, r19
    1b32:	08 95       	ret

00001b34 <_ZL10setupTimerhjh>:
        break;
    }
}

static void setupTimer(uint8_t timerNum, uint16_t frequency, uint8_t dutyCycle)
{
    1b34:	cf 92       	push	r12
    1b36:	df 92       	push	r13
    1b38:	ef 92       	push	r14
    1b3a:	ff 92       	push	r15
    1b3c:	0f 93       	push	r16
    1b3e:	1f 93       	push	r17
    1b40:	cf 93       	push	r28
    1b42:	df 93       	push	r29
    1b44:	08 2f       	mov	r16, r24
    1b46:	14 2f       	mov	r17, r20
    frequency *= dutyCycle;
    1b48:	46 9f       	mul	r20, r22
    1b4a:	e0 01       	movw	r28, r0
    1b4c:	47 9f       	mul	r20, r23
    1b4e:	d0 0d       	add	r29, r0
    1b50:	11 24       	eor	r1, r1
    unsigned long ocr = F_CPU / frequency - 1;
    1b52:	f1 2c       	mov	r15, r1
    1b54:	e1 2c       	mov	r14, r1
    1b56:	60 e0       	ldi	r22, 0x00	; 0
    1b58:	74 e2       	ldi	r23, 0x24	; 36
    1b5a:	84 ef       	ldi	r24, 0xF4	; 244
    1b5c:	90 e0       	ldi	r25, 0x00	; 0
    1b5e:	a7 01       	movw	r20, r14
    1b60:	9e 01       	movw	r18, r28
    1b62:	0e 94 41 2c 	call	0x5882	; 0x5882 <__divmodsi4>
    1b66:	21 50       	subi	r18, 0x01	; 1
    1b68:	31 09       	sbc	r19, r1
    1b6a:	41 09       	sbc	r20, r1
    1b6c:	51 09       	sbc	r21, r1
    byte prescalarBits = 0b001;
    1b6e:	91 e0       	ldi	r25, 0x01	; 1
    if (ocr > 0xFFFF) {
    1b70:	21 15       	cp	r18, r1
    1b72:	31 05       	cpc	r19, r1
    1b74:	81 e0       	ldi	r24, 0x01	; 1
    1b76:	48 07       	cpc	r20, r24
    1b78:	51 05       	cpc	r21, r1
    1b7a:	6c f0       	brlt	.+26     	; 0x1b96 <_ZL10setupTimerhjh+0x62>
        ocr = F_CPU / 64 / frequency - 1;
    1b7c:	60 e9       	ldi	r22, 0x90	; 144
    1b7e:	70 ed       	ldi	r23, 0xD0	; 208
    1b80:	83 e0       	ldi	r24, 0x03	; 3
    1b82:	90 e0       	ldi	r25, 0x00	; 0
    1b84:	a7 01       	movw	r20, r14
    1b86:	9e 01       	movw	r18, r28
    1b88:	0e 94 41 2c 	call	0x5882	; 0x5882 <__divmodsi4>
    1b8c:	21 50       	subi	r18, 0x01	; 1
    1b8e:	31 09       	sbc	r19, r1
    1b90:	41 09       	sbc	r20, r1
    1b92:	51 09       	sbc	r21, r1
        prescalarBits = 0b011;
    1b94:	93 e0       	ldi	r25, 0x03	; 3
    }

    // Set the OCR for the given timer, then turn on the interrupts
    switch (timerNum) {
    1b96:	01 30       	cpi	r16, 0x01	; 1
    1b98:	59 f0       	breq	.+22     	; 0x1bb0 <_ZL10setupTimerhjh+0x7c>
    1b9a:	03 30       	cpi	r16, 0x03	; 3
    1b9c:	f9 f0       	breq	.+62     	; 0x1bdc <_ZL10setupTimerhjh+0xa8>
        timer3DutyCycle = dutyCycle;
        timer3Frequency = frequency;
        startTimer(3, ocr, prescalarBits);
        break;
    }
}
    1b9e:	df 91       	pop	r29
    1ba0:	cf 91       	pop	r28
    1ba2:	1f 91       	pop	r17
    1ba4:	0f 91       	pop	r16
    1ba6:	ff 90       	pop	r15
    1ba8:	ef 90       	pop	r14
    1baa:	df 90       	pop	r13
    1bac:	cf 90       	pop	r12
    1bae:	08 95       	ret
    }

    // Set the OCR for the given timer, then turn on the interrupts
    switch (timerNum) {
    case 1:
        timer1DutyCycle = dutyCycle;
    1bb0:	10 93 42 01 	sts	0x0142, r17	; 0x800142 <_ZL15timer1DutyCycle>
        startTimer(1, ocr, prescalarBits);
    1bb4:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
    1bb8:	88 7f       	andi	r24, 0xF8	; 248
    1bba:	89 2b       	or	r24, r25
    1bbc:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
    1bc0:	30 93 89 00 	sts	0x0089, r19	; 0x800089 <__DATA_REGION_ORIGIN__+0x29>
    1bc4:	20 93 88 00 	sts	0x0088, r18	; 0x800088 <__DATA_REGION_ORIGIN__+0x28>
    1bc8:	10 92 85 00 	sts	0x0085, r1	; 0x800085 <__DATA_REGION_ORIGIN__+0x25>
    1bcc:	10 92 84 00 	sts	0x0084, r1	; 0x800084 <__DATA_REGION_ORIGIN__+0x24>
    1bd0:	80 91 6f 00 	lds	r24, 0x006F	; 0x80006f <__DATA_REGION_ORIGIN__+0xf>
    1bd4:	82 60       	ori	r24, 0x02	; 2
    1bd6:	80 93 6f 00 	sts	0x006F, r24	; 0x80006f <__DATA_REGION_ORIGIN__+0xf>
    1bda:	e1 cf       	rjmp	.-62     	; 0x1b9e <_ZL10setupTimerhjh+0x6a>
        break;
    case 3:
        timer3DutyCycle = dutyCycle;
    1bdc:	10 93 43 01 	sts	0x0143, r17	; 0x800143 <_ZL15timer3DutyCycle>
        timer3Frequency = frequency;
    1be0:	d0 93 41 01 	sts	0x0141, r29	; 0x800141 <__data_end+0x1>
    1be4:	c0 93 40 01 	sts	0x0140, r28	; 0x800140 <__data_end>
        startTimer(3, ocr, prescalarBits);
    1be8:	80 91 91 00 	lds	r24, 0x0091	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
    1bec:	88 7f       	andi	r24, 0xF8	; 248
    1bee:	89 2b       	or	r24, r25
    1bf0:	80 93 91 00 	sts	0x0091, r24	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
    1bf4:	30 93 99 00 	sts	0x0099, r19	; 0x800099 <__DATA_REGION_ORIGIN__+0x39>
    1bf8:	20 93 98 00 	sts	0x0098, r18	; 0x800098 <__DATA_REGION_ORIGIN__+0x38>
    1bfc:	10 92 95 00 	sts	0x0095, r1	; 0x800095 <__DATA_REGION_ORIGIN__+0x35>
    1c00:	10 92 94 00 	sts	0x0094, r1	; 0x800094 <__DATA_REGION_ORIGIN__+0x34>
    1c04:	80 91 71 00 	lds	r24, 0x0071	; 0x800071 <__DATA_REGION_ORIGIN__+0x11>
    1c08:	82 60       	ori	r24, 0x02	; 2
    1c0a:	80 93 71 00 	sts	0x0071, r24	; 0x800071 <__DATA_REGION_ORIGIN__+0x11>
    1c0e:	c7 cf       	rjmp	.-114    	; 0x1b9e <_ZL10setupTimerhjh+0x6a>

00001c10 <_ZL8stopNoteh>:
    setupTimer(getTimerNum(chan), frequency, dutyCycle);
}

static void stopNote(uint8_t chan)
{
    switch (getTimerNum(chan)) {
    1c10:	81 11       	cpse	r24, r1
    1c12:	16 c0       	rjmp	.+44     	; 0x1c40 <_ZL8stopNoteh+0x30>
    case 1:
        if (!isTonePlaying) stopTimer(1);
        break;
    case 3:
        isWaitTimerPlaying = false;
    1c14:	10 92 86 03 	sts	0x0386, r1	; 0x800386 <_ZL18isWaitTimerPlaying>
        if (!isMuteScore) setLowTimerPin(3);
    1c18:	80 91 7c 03 	lds	r24, 0x037C	; 0x80037c <_ZL11isMuteScore>
    1c1c:	81 11       	cpse	r24, r1
    1c1e:	0a c0       	rjmp	.+20     	; 0x1c34 <_ZL8stopNoteh+0x24>
    1c20:	80 91 26 03 	lds	r24, 0x0326	; 0x800326 <_ZL13timer3PinMask>
    1c24:	e0 91 27 03 	lds	r30, 0x0327	; 0x800327 <_ZL13timer3PinPort>
    1c28:	f0 91 28 03 	lds	r31, 0x0328	; 0x800328 <_ZL13timer3PinPort+0x1>
    1c2c:	90 81       	ld	r25, Z
    1c2e:	80 95       	com	r24
    1c30:	89 23       	and	r24, r25
    1c32:	80 83       	st	Z, r24
        setupTimer(3, FREQUENCY_IDLE, DUTY_CYCLE_MIN);
    1c34:	42 e0       	ldi	r20, 0x02	; 2
    1c36:	64 ef       	ldi	r22, 0xF4	; 244
    1c38:	71 e0       	ldi	r23, 0x01	; 1
    1c3a:	83 e0       	ldi	r24, 0x03	; 3
    1c3c:	0c 94 9a 0d 	jmp	0x1b34	; 0x1b34 <_ZL10setupTimerhjh>

static void stopNote(uint8_t chan)
{
    switch (getTimerNum(chan)) {
    case 1:
        if (!isTonePlaying) stopTimer(1);
    1c40:	80 91 81 03 	lds	r24, 0x0381	; 0x800381 <_ZL13isTonePlaying>
    1c44:	81 11       	cpse	r24, r1
    1c46:	10 c0       	rjmp	.+32     	; 0x1c68 <_ZL8stopNoteh+0x58>
    1c48:	80 91 6f 00 	lds	r24, 0x006F	; 0x80006f <__DATA_REGION_ORIGIN__+0xf>
    1c4c:	8d 7f       	andi	r24, 0xFD	; 253
    1c4e:	80 93 6f 00 	sts	0x006F, r24	; 0x80006f <__DATA_REGION_ORIGIN__+0xf>
    1c52:	80 91 23 03 	lds	r24, 0x0323	; 0x800323 <_ZL13timer1PinMask>
    1c56:	e0 91 24 03 	lds	r30, 0x0324	; 0x800324 <_ZL13timer1PinPort>
    1c5a:	f0 91 25 03 	lds	r31, 0x0325	; 0x800325 <_ZL13timer1PinPort+0x1>
    1c5e:	90 81       	ld	r25, Z
    1c60:	80 95       	com	r24
    1c62:	89 23       	and	r24, r25
    1c64:	80 83       	st	Z, r24
    1c66:	08 95       	ret
        isWaitTimerPlaying = false;
        if (!isMuteScore) setLowTimerPin(3);
        setupTimer(3, FREQUENCY_IDLE, DUTY_CYCLE_MIN);
        break;
    }
}
    1c68:	08 95       	ret

00001c6a <_ZN10MyArduboy28playToneEjjhh.constprop.28>:

/*---------------------------------------------------------------------------*/
/*                                 Play sounds                               */
/*---------------------------------------------------------------------------*/

void MyArduboy2::playTone(uint16_t frequency, uint16_t duration,
    1c6a:	ff 92       	push	r15
    1c6c:	0f 93       	push	r16
    1c6e:	1f 93       	push	r17
    1c70:	cf 93       	push	r28
    1c72:	df 93       	push	r29
    1c74:	ec 01       	movw	r28, r24
        uint8_t priority = 0xFF, uint8_t dutyCycle = DUTY_CYCLE_MIN)
{
    if (numChans == 0) return;
    1c76:	90 91 8c 03 	lds	r25, 0x038C	; 0x80038c <_ZL8numChans>
    1c7a:	99 23       	and	r25, r25
    1c7c:	09 f4       	brne	.+2      	; 0x1c80 <_ZN10MyArduboy28playToneEjjhh.constprop.28+0x16>
    1c7e:	64 c0       	rjmp	.+200    	; 0x1d48 <_ZN10MyArduboy28playToneEjjhh.constprop.28+0xde>
    1c80:	8b 01       	movw	r16, r22
    if (numChans == 1 && isScorePlaying) {
    1c82:	91 30       	cpi	r25, 0x01	; 1
    1c84:	71 f4       	brne	.+28     	; 0x1ca2 <_ZN10MyArduboy28playToneEjjhh.constprop.28+0x38>
    1c86:	80 91 8b 03 	lds	r24, 0x038B	; 0x80038b <_ZL14isScorePlaying>
    1c8a:	88 23       	and	r24, r24
    1c8c:	51 f0       	breq	.+20     	; 0x1ca2 <_ZN10MyArduboy28playToneEjjhh.constprop.28+0x38>
        if (priority > audioPriority) return;
    1c8e:	80 91 8a 03 	lds	r24, 0x038A	; 0x80038a <_ZL13audioPriority>
    1c92:	8f 3f       	cpi	r24, 0xFF	; 255
    1c94:	09 f0       	breq	.+2      	; 0x1c98 <_ZN10MyArduboy28playToneEjjhh.constprop.28+0x2e>
    1c96:	58 c0       	rjmp	.+176    	; 0x1d48 <_ZN10MyArduboy28playToneEjjhh.constprop.28+0xde>
}

void MyArduboy2::stopScore(void)
{
    for (uint8_t chan = 0; chan < numChans; chan++) {
        stopNote(chan);
    1c98:	80 e0       	ldi	r24, 0x00	; 0
    1c9a:	0e 94 08 0e 	call	0x1c10	; 0x1c10 <_ZL8stopNoteh>
    }
    isScorePlaying = false;
    1c9e:	10 92 8b 03 	sts	0x038B, r1	; 0x80038b <_ZL14isScorePlaying>
    if (numChans == 1 && isScorePlaying) {
        if (priority > audioPriority) return;
        stopScore();
    }

    isAllMuted = !outputEnabled();
    1ca2:	e0 91 88 03 	lds	r30, 0x0388	; 0x800388 <_ZL13outputEnabled>
    1ca6:	f0 91 89 03 	lds	r31, 0x0389	; 0x800389 <_ZL13outputEnabled+0x1>
    1caa:	09 95       	icall
    1cac:	ff 24       	eor	r15, r15
    1cae:	f3 94       	inc	r15
    1cb0:	8f 25       	eor	r24, r15
    1cb2:	80 93 87 03 	sts	0x0387, r24	; 0x800387 <_ZL10isAllMuted>
    frequency = min(frequency, FREQUENCY_MAX);
    dutyCycle = constrain(dutyCycle, DUTY_CYCLE_MIN, DUTY_CYCLE_MAX);
    unsigned long toggle_count = ((unsigned long)duration * frequency * dutyCycle + 500) / 1000;
    1cb6:	30 e0       	ldi	r19, 0x00	; 0
    1cb8:	20 e0       	ldi	r18, 0x00	; 0
    1cba:	a9 01       	movw	r20, r18
    1cbc:	98 01       	movw	r18, r16
    1cbe:	22 0f       	add	r18, r18
    1cc0:	33 1f       	adc	r19, r19
    1cc2:	44 1f       	adc	r20, r20
    1cc4:	55 1f       	adc	r21, r21
    1cc6:	de 01       	movw	r26, r28
    1cc8:	0e 94 60 2c 	call	0x58c0	; 0x58c0 <__muluhisi3>
    1ccc:	6c 50       	subi	r22, 0x0C	; 12
    1cce:	7e 4f       	sbci	r23, 0xFE	; 254
    1cd0:	8f 4f       	sbci	r24, 0xFF	; 255
    1cd2:	9f 4f       	sbci	r25, 0xFF	; 255
    1cd4:	28 ee       	ldi	r18, 0xE8	; 232
    1cd6:	33 e0       	ldi	r19, 0x03	; 3
    1cd8:	40 e0       	ldi	r20, 0x00	; 0
    1cda:	50 e0       	ldi	r21, 0x00	; 0
    1cdc:	0e 94 73 2c 	call	0x58e6	; 0x58e6 <__udivmodsi4>
    if (toggle_count == 0) toggle_count = 1;

    uint8_t chan = numChans - 1;
    if (chan == 0) {
    1ce0:	80 91 8c 03 	lds	r24, 0x038C	; 0x80038c <_ZL8numChans>
    1ce4:	81 30       	cpi	r24, 0x01	; 1
    1ce6:	a1 f4       	brne	.+40     	; 0x1d10 <_ZN10MyArduboy28playToneEjjhh.constprop.28+0xa6>
        isWaitTimerPlaying = true;
    1ce8:	80 93 86 03 	sts	0x0386, r24	; 0x800386 <_ZL18isWaitTimerPlaying>
        timer3ToggleCount = toggle_count;
    1cec:	20 93 82 03 	sts	0x0382, r18	; 0x800382 <_ZL17timer3ToggleCount>
    1cf0:	30 93 83 03 	sts	0x0383, r19	; 0x800383 <_ZL17timer3ToggleCount+0x1>
    1cf4:	40 93 84 03 	sts	0x0384, r20	; 0x800384 <_ZL17timer3ToggleCount+0x2>
    1cf8:	50 93 85 03 	sts	0x0385, r21	; 0x800385 <_ZL17timer3ToggleCount+0x3>
            isMuteScore = (priority <= audioPriority);
        } else {
            audioPriority = priority;
        }
    }
    setupTimer(getTimerNum(chan), frequency, dutyCycle);
    1cfc:	83 e0       	ldi	r24, 0x03	; 3
    1cfe:	42 e0       	ldi	r20, 0x02	; 2
    1d00:	be 01       	movw	r22, r28
}
    1d02:	df 91       	pop	r29
    1d04:	cf 91       	pop	r28
    1d06:	1f 91       	pop	r17
    1d08:	0f 91       	pop	r16
    1d0a:	ff 90       	pop	r15
            isMuteScore = (priority <= audioPriority);
        } else {
            audioPriority = priority;
        }
    }
    setupTimer(getTimerNum(chan), frequency, dutyCycle);
    1d0c:	0c 94 9a 0d 	jmp	0x1b34	; 0x1b34 <_ZL10setupTimerhjh>
    uint8_t chan = numChans - 1;
    if (chan == 0) {
        isWaitTimerPlaying = true;
        timer3ToggleCount = toggle_count;
    } else {
        isTonePlaying = true;
    1d10:	f0 92 81 03 	sts	0x0381, r15	; 0x800381 <_ZL13isTonePlaying>
        timer1ToggleCount = toggle_count;
    1d14:	20 93 7d 03 	sts	0x037D, r18	; 0x80037d <_ZL17timer1ToggleCount>
    1d18:	30 93 7e 03 	sts	0x037E, r19	; 0x80037e <_ZL17timer1ToggleCount+0x1>
    1d1c:	40 93 7f 03 	sts	0x037F, r20	; 0x80037f <_ZL17timer1ToggleCount+0x2>
    1d20:	50 93 80 03 	sts	0x0380, r21	; 0x800380 <_ZL17timer1ToggleCount+0x3>
        if (isScorePlaying) {
    1d24:	80 91 8b 03 	lds	r24, 0x038B	; 0x80038b <_ZL14isScorePlaying>
    1d28:	88 23       	and	r24, r24
    1d2a:	51 f0       	breq	.+20     	; 0x1d40 <_ZN10MyArduboy28playToneEjjhh.constprop.28+0xd6>
            isMuteScore = (priority <= audioPriority);
    1d2c:	81 e0       	ldi	r24, 0x01	; 1
    1d2e:	90 91 8a 03 	lds	r25, 0x038A	; 0x80038a <_ZL13audioPriority>
    1d32:	9f 3f       	cpi	r25, 0xFF	; 255
    1d34:	09 f0       	breq	.+2      	; 0x1d38 <_ZN10MyArduboy28playToneEjjhh.constprop.28+0xce>
    1d36:	80 e0       	ldi	r24, 0x00	; 0
    1d38:	80 93 7c 03 	sts	0x037C, r24	; 0x80037c <_ZL11isMuteScore>
        } else {
            audioPriority = priority;
        }
    }
    setupTimer(getTimerNum(chan), frequency, dutyCycle);
    1d3c:	81 e0       	ldi	r24, 0x01	; 1
    1d3e:	df cf       	rjmp	.-66     	; 0x1cfe <_ZN10MyArduboy28playToneEjjhh.constprop.28+0x94>
        isTonePlaying = true;
        timer1ToggleCount = toggle_count;
        if (isScorePlaying) {
            isMuteScore = (priority <= audioPriority);
        } else {
            audioPriority = priority;
    1d40:	8f ef       	ldi	r24, 0xFF	; 255
    1d42:	80 93 8a 03 	sts	0x038A, r24	; 0x80038a <_ZL13audioPriority>
    1d46:	fa cf       	rjmp	.-12     	; 0x1d3c <_ZN10MyArduboy28playToneEjjhh.constprop.28+0xd2>
        }
    }
    setupTimer(getTimerNum(chan), frequency, dutyCycle);
}
    1d48:	df 91       	pop	r29
    1d4a:	cf 91       	pop	r28
    1d4c:	1f 91       	pop	r17
    1d4e:	0f 91       	pop	r16
    1d50:	ff 90       	pop	r15
    1d52:	08 95       	ret

00001d54 <_Z14playSoundClickv>:
    arduboy.playTone(440, 10);
}

void playSoundClick(void)
{
    arduboy.playTone(587, 20);
    1d54:	64 e1       	ldi	r22, 0x14	; 20
    1d56:	70 e0       	ldi	r23, 0x00	; 0
    1d58:	8b e4       	ldi	r24, 0x4B	; 75
    1d5a:	92 e0       	ldi	r25, 0x02	; 2
    1d5c:	0c 94 35 0e 	jmp	0x1c6a	; 0x1c6a <_ZN10MyArduboy28playToneEjjhh.constprop.28>

00001d60 <_ZL16onMenuToggleItemv>:
    isSettingChenged = true;
}

static void onMenuToggleItem(void)
{
    playSoundClick();
    1d60:	0e 94 aa 0e 	call	0x1d54	; 0x1d54 <_Z14playSoundClickv>
    bitToggle(*((uint8_t *)&record + 3), getMenuItemPos() + 3); // Trick!!
    1d64:	ea e3       	ldi	r30, 0x3A	; 58
    1d66:	f3 e0       	ldi	r31, 0x03	; 3
    1d68:	20 91 39 03 	lds	r18, 0x0339	; 0x800339 <_ZL11menuItemPos>
    1d6c:	2d 5f       	subi	r18, 0xFD	; 253
    1d6e:	81 e0       	ldi	r24, 0x01	; 1
    1d70:	90 e0       	ldi	r25, 0x00	; 0
    1d72:	a0 e0       	ldi	r26, 0x00	; 0
    1d74:	b0 e0       	ldi	r27, 0x00	; 0
    1d76:	04 c0       	rjmp	.+8      	; 0x1d80 <_ZL16onMenuToggleItemv+0x20>
    1d78:	88 0f       	add	r24, r24
    1d7a:	99 1f       	adc	r25, r25
    1d7c:	aa 1f       	adc	r26, r26
    1d7e:	bb 1f       	adc	r27, r27
    1d80:	2a 95       	dec	r18
    1d82:	d2 f7       	brpl	.-12     	; 0x1d78 <_ZL16onMenuToggleItemv+0x18>
    1d84:	23 81       	ldd	r18, Z+3	; 0x03
    1d86:	82 27       	eor	r24, r18
    1d88:	83 83       	std	Z+3, r24	; 0x03
    isSettingChenged = true;
    1d8a:	81 e0       	ldi	r24, 0x01	; 1
    1d8c:	80 93 4a 03 	sts	0x034A, r24	; 0x80034a <_ZL16isSettingChenged>
}
    1d90:	08 95       	ret

00001d92 <_ZL16onMenuDifficultyv>:
    dprintln(F("Show credit"));
}

static void onMenuDifficulty(void)
{
    playSoundClick();
    1d92:	0e 94 aa 0e 	call	0x1d54	; 0x1d54 <_Z14playSoundClickv>
    record.gameRank = record.gameRank % GAME_RANK_MAX + 1;
    1d96:	ed e3       	ldi	r30, 0x3D	; 61
    1d98:	f3 e0       	ldi	r31, 0x03	; 3
    1d9a:	20 81       	ld	r18, Z
    1d9c:	82 2f       	mov	r24, r18
    1d9e:	8f 70       	andi	r24, 0x0F	; 15
    1da0:	90 e0       	ldi	r25, 0x00	; 0
    1da2:	6a e0       	ldi	r22, 0x0A	; 10
    1da4:	70 e0       	ldi	r23, 0x00	; 0
    1da6:	0e 94 d4 2f 	call	0x5fa8	; 0x5fa8 <__divmodhi4>
    1daa:	8f 5f       	subi	r24, 0xFF	; 255
    1dac:	8f 70       	andi	r24, 0x0F	; 15
    1dae:	20 7f       	andi	r18, 0xF0	; 240
    1db0:	28 2b       	or	r18, r24
    1db2:	20 83       	st	Z, r18
    isSettingChenged = true;
    1db4:	81 e0       	ldi	r24, 0x01	; 1
    1db6:	80 93 4a 03 	sts	0x034A, r24	; 0x80034a <_ZL16isSettingChenged>
}
    1dba:	08 95       	ret

00001dbc <_ZL8onCreditv>:
    dprintln(F("Settings"));
}

static void onCredit(void)
{
    playSoundClick();
    1dbc:	0e 94 aa 0e 	call	0x1d54	; 0x1d54 <_Z14playSoundClickv>
    state = STATE_CREDIT;
    1dc0:	83 e0       	ldi	r24, 0x03	; 3
    1dc2:	80 93 38 03 	sts	0x0338, r24	; 0x800338 <_ZL5state.lto_priv.53>
    isInvalid = true;
    1dc6:	81 e0       	ldi	r24, 0x01	; 1
    1dc8:	80 93 4b 03 	sts	0x034B, r24	; 0x80034b <isInvalid>
    dprintln(F("Show credit"));
}
    1dcc:	08 95       	ret

00001dce <_ZL10onSettingsv>:
    }
}

static void onSettings(void)
{
    playSoundClick();
    1dce:	0e 94 aa 0e 	call	0x1d54	; 0x1d54 <_Z14playSoundClickv>

/*---------------------------------------------------------------------------*/

void clearMenuItems(void)
{
    menuItemCount = 0;
    1dd2:	10 92 30 03 	sts	0x0330, r1	; 0x800330 <_ZL13menuItemCount>
    clearMenuItems();
    addMenuItem(F("DIFFICULTY"), onMenuDifficulty);
    1dd6:	69 ec       	ldi	r22, 0xC9	; 201
    1dd8:	7e e0       	ldi	r23, 0x0E	; 14
    1dda:	85 ee       	ldi	r24, 0xE5	; 229
    1ddc:	97 e0       	ldi	r25, 0x07	; 7
    1dde:	0e 94 95 0a 	call	0x152a	; 0x152a <_Z11addMenuItemPK19__FlashStringHelperPFvvE>
    addMenuItem(F("PATTERN"), onMenuToggleItem);
    1de2:	60 eb       	ldi	r22, 0xB0	; 176
    1de4:	7e e0       	ldi	r23, 0x0E	; 14
    1de6:	8d ed       	ldi	r24, 0xDD	; 221
    1de8:	97 e0       	ldi	r25, 0x07	; 7
    1dea:	0e 94 95 0a 	call	0x152a	; 0x152a <_Z11addMenuItemPK19__FlashStringHelperPFvvE>
    addMenuItem(F("LED BLINK"), onMenuToggleItem);
    1dee:	60 eb       	ldi	r22, 0xB0	; 176
    1df0:	7e e0       	ldi	r23, 0x0E	; 14
    1df2:	83 ed       	ldi	r24, 0xD3	; 211
    1df4:	97 e0       	ldi	r25, 0x07	; 7
    1df6:	0e 94 95 0a 	call	0x152a	; 0x152a <_Z11addMenuItemPK19__FlashStringHelperPFvvE>
    addMenuItem(F("DETECT EDGE"), onMenuToggleItem);
    1dfa:	60 eb       	ldi	r22, 0xB0	; 176
    1dfc:	7e e0       	ldi	r23, 0x0E	; 14
    1dfe:	87 ec       	ldi	r24, 0xC7	; 199
    1e00:	97 e0       	ldi	r25, 0x07	; 7
    1e02:	0e 94 95 0a 	call	0x152a	; 0x152a <_Z11addMenuItemPK19__FlashStringHelperPFvvE>
    addMenuItem(F("EXIT"), onTop);
    1e06:	65 e2       	ldi	r22, 0x25	; 37
    1e08:	7f e0       	ldi	r23, 0x0F	; 15
    1e0a:	82 ec       	ldi	r24, 0xC2	; 194
    1e0c:	97 e0       	ldi	r25, 0x07	; 7
    1e0e:	0e 94 95 0a 	call	0x152a	; 0x152a <_Z11addMenuItemPK19__FlashStringHelperPFvvE>
    isControlSound = s;
}

void setMenuItemPos(int8_t pos)
{
    menuItemPos = pos;
    1e12:	10 92 39 03 	sts	0x0339, r1	; 0x800339 <_ZL11menuItemPos>
    isInvalidMenu = true;
    1e16:	81 e0       	ldi	r24, 0x01	; 1
    1e18:	80 93 31 03 	sts	0x0331, r24	; 0x800331 <_ZL13isInvalidMenu>
    return menuItemCount;
}

void setMenuCoords(int8_t x, int8_t y, int8_t w, int8_t h, bool f, bool s)
{
    menuX = x;
    1e1c:	92 e0       	ldi	r25, 0x02	; 2
    1e1e:	90 93 37 03 	sts	0x0337, r25	; 0x800337 <_ZL5menuX>
    menuY = y;
    1e22:	2c e0       	ldi	r18, 0x0C	; 12
    1e24:	20 93 36 03 	sts	0x0336, r18	; 0x800336 <_ZL5menuY>
    menuW = w;
    1e28:	2c e7       	ldi	r18, 0x7C	; 124
    1e2a:	20 93 35 03 	sts	0x0335, r18	; 0x800335 <_ZL5menuW>
    menuH = h;
    1e2e:	2e e1       	ldi	r18, 0x1E	; 30
    1e30:	20 93 34 03 	sts	0x0334, r18	; 0x800334 <_ZL5menuH>
    isFramed = f;
    1e34:	10 92 33 03 	sts	0x0333, r1	; 0x800333 <_ZL8isFramed>
    isControlSound = s;
    1e38:	10 92 32 03 	sts	0x0332, r1	; 0x800332 <_ZL14isControlSound>
    setMenuItemPos(0);
    setMenuCoords(2, 12, 124, 30, false, false);
    state = STATE_SETTINGS;
    1e3c:	90 93 38 03 	sts	0x0338, r25	; 0x800338 <_ZL5state.lto_priv.53>
    isInvalid = true;
    1e40:	80 93 4b 03 	sts	0x034B, r24	; 0x80034b <isInvalid>
    isSettingChenged = true;
    1e44:	80 93 4a 03 	sts	0x034A, r24	; 0x80034a <_ZL16isSettingChenged>
    dprintln(F("Settings"));
}
    1e48:	08 95       	ret

00001e4a <_ZL5onTopv>:
/*                               Menu Handlers                               */
/*---------------------------------------------------------------------------*/

static void onTop(void)
{
    if (state == STATE_SETTINGS) playSoundClick();
    1e4a:	80 91 38 03 	lds	r24, 0x0338	; 0x800338 <_ZL5state.lto_priv.53>
    1e4e:	82 30       	cpi	r24, 0x02	; 2
    1e50:	11 f4       	brne	.+4      	; 0x1e56 <_ZL5onTopv+0xc>
    1e52:	0e 94 aa 0e 	call	0x1d54	; 0x1d54 <_Z14playSoundClickv>

/*---------------------------------------------------------------------------*/

void clearMenuItems(void)
{
    menuItemCount = 0;
    1e56:	10 92 30 03 	sts	0x0330, r1	; 0x800330 <_ZL13menuItemCount>
    clearMenuItems();
    if (record.playCount > 0) {
    1e5a:	80 91 42 03 	lds	r24, 0x0342	; 0x800342 <record+0x8>
    1e5e:	90 91 43 03 	lds	r25, 0x0343	; 0x800343 <record+0x9>
    1e62:	89 2b       	or	r24, r25
    1e64:	61 f0       	breq	.+24     	; 0x1e7e <_ZL5onTopv+0x34>
        addMenuItem(F("RETRY"), onStart);
    1e66:	69 e7       	ldi	r22, 0x79	; 121
    1e68:	7a e0       	ldi	r23, 0x0A	; 10
    1e6a:	8c eb       	ldi	r24, 0xBC	; 188
    1e6c:	97 e0       	ldi	r25, 0x07	; 7
    1e6e:	0e 94 95 0a 	call	0x152a	; 0x152a <_Z11addMenuItemPK19__FlashStringHelperPFvvE>
        addMenuItem(NULL, NULL);
    1e72:	70 e0       	ldi	r23, 0x00	; 0
    1e74:	60 e0       	ldi	r22, 0x00	; 0
    1e76:	90 e0       	ldi	r25, 0x00	; 0
    1e78:	80 e0       	ldi	r24, 0x00	; 0
    1e7a:	0e 94 95 0a 	call	0x152a	; 0x152a <_Z11addMenuItemPK19__FlashStringHelperPFvvE>
    }
    addMenuItem(F("NEW BATTLE"), onNewBattle);
    1e7e:	6f e0       	ldi	r22, 0x0F	; 15
    1e80:	78 e1       	ldi	r23, 0x18	; 24
    1e82:	81 eb       	ldi	r24, 0xB1	; 177
    1e84:	97 e0       	ldi	r25, 0x07	; 7
    1e86:	0e 94 95 0a 	call	0x152a	; 0x152a <_Z11addMenuItemPK19__FlashStringHelperPFvvE>
    addMenuItem(F("SETTINGS"), onSettings);
    1e8a:	67 ee       	ldi	r22, 0xE7	; 231
    1e8c:	7e e0       	ldi	r23, 0x0E	; 14
    1e8e:	88 ea       	ldi	r24, 0xA8	; 168
    1e90:	97 e0       	ldi	r25, 0x07	; 7
    1e92:	0e 94 95 0a 	call	0x152a	; 0x152a <_Z11addMenuItemPK19__FlashStringHelperPFvvE>
    addMenuItem(F("CREDIT"), onCredit);
    1e96:	6e ed       	ldi	r22, 0xDE	; 222
    1e98:	7e e0       	ldi	r23, 0x0E	; 14
    1e9a:	81 ea       	ldi	r24, 0xA1	; 161
    1e9c:	97 e0       	ldi	r25, 0x07	; 7
    1e9e:	0e 94 95 0a 	call	0x152a	; 0x152a <_Z11addMenuItemPK19__FlashStringHelperPFvvE>
    setMenuItemPos((state == STATE_SETTINGS) ? getMenuItemCount() - 2 : record.isCleared * 2);
    1ea2:	80 91 38 03 	lds	r24, 0x0338	; 0x800338 <_ZL5state.lto_priv.53>
    1ea6:	82 30       	cpi	r24, 0x02	; 2
    1ea8:	e9 f4       	brne	.+58     	; 0x1ee4 <_ZL5onTopv+0x9a>
    1eaa:	80 91 30 03 	lds	r24, 0x0330	; 0x800330 <_ZL13menuItemCount>
    1eae:	82 50       	subi	r24, 0x02	; 2
    isControlSound = s;
}

void setMenuItemPos(int8_t pos)
{
    menuItemPos = pos;
    1eb0:	80 93 39 03 	sts	0x0339, r24	; 0x800339 <_ZL11menuItemPos>
    isInvalidMenu = true;
    1eb4:	81 e0       	ldi	r24, 0x01	; 1
    1eb6:	80 93 31 03 	sts	0x0331, r24	; 0x800331 <_ZL13isInvalidMenu>
    return menuItemCount;
}

void setMenuCoords(int8_t x, int8_t y, int8_t w, int8_t h, bool f, bool s)
{
    menuX = x;
    1eba:	9c e2       	ldi	r25, 0x2C	; 44
    1ebc:	90 93 37 03 	sts	0x0337, r25	; 0x800337 <_ZL5menuX>
    menuY = y;
    1ec0:	96 e2       	ldi	r25, 0x26	; 38
    1ec2:	90 93 36 03 	sts	0x0336, r25	; 0x800336 <_ZL5menuY>
    menuW = w;
    1ec6:	94 e5       	ldi	r25, 0x54	; 84
    1ec8:	90 93 35 03 	sts	0x0335, r25	; 0x800335 <_ZL5menuW>
    menuH = h;
    1ecc:	9a e1       	ldi	r25, 0x1A	; 26
    1ece:	90 93 34 03 	sts	0x0334, r25	; 0x800334 <_ZL5menuH>
    isFramed = f;
    1ed2:	10 92 33 03 	sts	0x0333, r1	; 0x800333 <_ZL8isFramed>
    isControlSound = s;
    1ed6:	80 93 32 03 	sts	0x0332, r24	; 0x800332 <_ZL14isControlSound>
    setMenuCoords(44, 38, 84, 26, false, true);
    state = STATE_TOP;
    1eda:	80 93 38 03 	sts	0x0338, r24	; 0x800338 <_ZL5state.lto_priv.53>
    isInvalid = true;
    1ede:	80 93 4b 03 	sts	0x034B, r24	; 0x80034b <isInvalid>
    dprintln(F("Title screen"));
}
    1ee2:	08 95       	ret
        addMenuItem(NULL, NULL);
    }
    addMenuItem(F("NEW BATTLE"), onNewBattle);
    addMenuItem(F("SETTINGS"), onSettings);
    addMenuItem(F("CREDIT"), onCredit);
    setMenuItemPos((state == STATE_SETTINGS) ? getMenuItemCount() - 2 : record.isCleared * 2);
    1ee4:	80 91 3d 03 	lds	r24, 0x033D	; 0x80033d <record+0x3>
    1ee8:	87 fb       	bst	r24, 7
    1eea:	88 27       	eor	r24, r24
    1eec:	80 f9       	bld	r24, 0
    1eee:	88 0f       	add	r24, r24
    1ef0:	df cf       	rjmp	.-66     	; 0x1eb0 <_ZL5onTopv+0x66>

00001ef2 <_ZL15handleAnyButtonv>:
    return ret;
}

static void handleAnyButton(void)
{
    if (arduboy.buttonDown(A_BUTTON | B_BUTTON)) {
    1ef2:	8c e0       	ldi	r24, 0x0C	; 12
    1ef4:	0e 94 f5 05 	call	0xbea	; 0xbea <_ZN10MyArduboy210buttonDownEh.constprop.43>
    1ef8:	88 23       	and	r24, r24
    1efa:	39 f0       	breq	.+14     	; 0x1f0a <_ZL15handleAnyButtonv+0x18>
        playSoundClick();
    1efc:	0e 94 aa 0e 	call	0x1d54	; 0x1d54 <_Z14playSoundClickv>
        state = STATE_TOP;
    1f00:	81 e0       	ldi	r24, 0x01	; 1
    1f02:	80 93 38 03 	sts	0x0338, r24	; 0x800338 <_ZL5state.lto_priv.53>
        isInvalid = true;
    1f06:	80 93 4b 03 	sts	0x034B, r24	; 0x80034b <isInvalid>
    }
}
    1f0a:	08 95       	ret

00001f0c <_ZL10onContinuev>:
/*                               Menu Handlers                               */
/*---------------------------------------------------------------------------*/

static void onContinue(void)
{
    playSoundClick();
    1f0c:	0e 94 aa 0e 	call	0x1d54	; 0x1d54 <_Z14playSoundClickv>
    isMenu = false;
    1f10:	10 92 04 03 	sts	0x0304, r1	; 0x800304 <_ZL6isMenu>
    isInvalid = true;
    1f14:	81 e0       	ldi	r24, 0x01	; 1
    1f16:	80 93 4b 03 	sts	0x034B, r24	; 0x80034b <isInvalid>
    dprintln(F("Menu: continue"));
}
    1f1a:	08 95       	ret

00001f1c <_ZL13onConfirmQuitv>:
    dprintln(F("Menu: retry"));
    initGame();
}

static void onConfirmQuit(void)
{
    1f1c:	cf 93       	push	r28
    1f1e:	df 93       	push	r29
    int16_t y = getMenuItemPos() * 6 + 38;
    1f20:	c0 91 39 03 	lds	r28, 0x0339	; 0x800339 <_ZL11menuItemPos>
    1f24:	86 e0       	ldi	r24, 0x06	; 6
    1f26:	c8 02       	muls	r28, r24
    1f28:	e0 01       	movw	r28, r0
    1f2a:	11 24       	eor	r1, r1
    1f2c:	a6 96       	adiw	r28, 0x26	; 38
    dprintln(menuItemPos);
}

void setConfirmMenu(int8_t y, void (*funcOk)(), void (*funcCancel)())
{
    playSoundClick();
    1f2e:	0e 94 aa 0e 	call	0x1d54	; 0x1d54 <_Z14playSoundClickv>

/*---------------------------------------------------------------------------*/

void clearMenuItems(void)
{
    menuItemCount = 0;
    1f32:	10 92 30 03 	sts	0x0330, r1	; 0x800330 <_ZL13menuItemCount>

void setConfirmMenu(int8_t y, void (*funcOk)(), void (*funcCancel)())
{
    playSoundClick();
    clearMenuItems();
    addMenuItem(F("OK"), funcOk);
    1f36:	63 ee       	ldi	r22, 0xE3	; 227
    1f38:	73 e2       	ldi	r23, 0x23	; 35
    1f3a:	8a eb       	ldi	r24, 0xBA	; 186
    1f3c:	95 e0       	ldi	r25, 0x05	; 5
    1f3e:	0e 94 95 0a 	call	0x152a	; 0x152a <_Z11addMenuItemPK19__FlashStringHelperPFvvE>
    addMenuItem(F("CANCEL"), funcCancel);
    1f42:	66 e8       	ldi	r22, 0x86	; 134
    1f44:	7f e0       	ldi	r23, 0x0F	; 15
    1f46:	83 eb       	ldi	r24, 0xB3	; 179
    1f48:	95 e0       	ldi	r25, 0x05	; 5
    1f4a:	0e 94 95 0a 	call	0x152a	; 0x152a <_Z11addMenuItemPK19__FlashStringHelperPFvvE>
    return menuItemCount;
}

void setMenuCoords(int8_t x, int8_t y, int8_t w, int8_t h, bool f, bool s)
{
    menuX = x;
    1f4e:	88 e2       	ldi	r24, 0x28	; 40
    1f50:	80 93 37 03 	sts	0x0337, r24	; 0x800337 <_ZL5menuX>
    menuY = y;
    1f54:	c0 93 36 03 	sts	0x0336, r28	; 0x800336 <_ZL5menuY>
    menuW = w;
    1f58:	8f e2       	ldi	r24, 0x2F	; 47
    1f5a:	80 93 35 03 	sts	0x0335, r24	; 0x800335 <_ZL5menuW>
    menuH = h;
    1f5e:	8b e0       	ldi	r24, 0x0B	; 11
    1f60:	80 93 34 03 	sts	0x0334, r24	; 0x800334 <_ZL5menuH>
    isFramed = f;
    1f64:	81 e0       	ldi	r24, 0x01	; 1
    1f66:	80 93 33 03 	sts	0x0333, r24	; 0x800333 <_ZL8isFramed>
    isControlSound = s;
    1f6a:	80 93 32 03 	sts	0x0332, r24	; 0x800332 <_ZL14isControlSound>
}

void setMenuItemPos(int8_t pos)
{
    menuItemPos = pos;
    1f6e:	80 93 39 03 	sts	0x0339, r24	; 0x800339 <_ZL11menuItemPos>
    isInvalidMenu = true;
    1f72:	80 93 31 03 	sts	0x0331, r24	; 0x800331 <_ZL13isInvalidMenu>
    setConfirmMenu(y, onQuit, onContinue);
    dprintln(F("Menu: confirm quit"));
}
    1f76:	df 91       	pop	r29
    1f78:	cf 91       	pop	r28
    1f7a:	08 95       	ret

00001f7c <_ZL12openGameMenuv>:
    }
    isInvalid = true;
}

static void openGameMenu(void)
{
    1f7c:	cf 93       	push	r28
    playSoundClick();
    1f7e:	0e 94 aa 0e 	call	0x1d54	; 0x1d54 <_Z14playSoundClickv>

/*---------------------------------------------------------------------------*/

void clearMenuItems(void)
{
    menuItemCount = 0;
    1f82:	10 92 30 03 	sts	0x0330, r1	; 0x800330 <_ZL13menuItemCount>
    clearMenuItems();
    if (state <= STATE_PLAYING) addMenuItem(F("CONTINUE"), onContinue);
    1f86:	c0 91 09 03 	lds	r28, 0x0309	; 0x800309 <_ZL5state.lto_priv.52>
    1f8a:	c2 30       	cpi	r28, 0x02	; 2
    1f8c:	b8 f1       	brcs	.+110    	; 0x1ffc <_ZL12openGameMenuv+0x80>
    if (state >= STATE_PLAYING) addMenuItem(F("RETRY"), onRetry);
    1f8e:	62 e2       	ldi	r22, 0x22	; 34
    1f90:	79 e1       	ldi	r23, 0x19	; 25
    1f92:	88 e8       	ldi	r24, 0x88	; 136
    1f94:	95 e0       	ldi	r25, 0x05	; 5
    1f96:	0e 94 95 0a 	call	0x152a	; 0x152a <_Z11addMenuItemPK19__FlashStringHelperPFvvE>
    addMenuItem(F("BACK TO TITLE"), (state == STATE_PLAYING) ? onConfirmQuit : onQuit);
    1f9a:	6e e8       	ldi	r22, 0x8E	; 142
    1f9c:	7f e0       	ldi	r23, 0x0F	; 15
    1f9e:	c1 30       	cpi	r28, 0x01	; 1
    1fa0:	11 f0       	breq	.+4      	; 0x1fa6 <_ZL12openGameMenuv+0x2a>
    1fa2:	63 ee       	ldi	r22, 0xE3	; 227
    1fa4:	73 e2       	ldi	r23, 0x23	; 35
    1fa6:	8a e7       	ldi	r24, 0x7A	; 122
    1fa8:	95 e0       	ldi	r25, 0x05	; 5
    1faa:	0e 94 95 0a 	call	0x152a	; 0x152a <_Z11addMenuItemPK19__FlashStringHelperPFvvE>
    uint8_t h = getMenuItemCount() * 6;
    1fae:	90 91 30 03 	lds	r25, 0x0330	; 0x800330 <_ZL13menuItemCount>
    1fb2:	89 2f       	mov	r24, r25
    1fb4:	88 0f       	add	r24, r24
    1fb6:	89 0f       	add	r24, r25
    1fb8:	88 0f       	add	r24, r24
    return menuItemCount;
}

void setMenuCoords(int8_t x, int8_t y, int8_t w, int8_t h, bool f, bool s)
{
    menuX = x;
    1fba:	93 e1       	ldi	r25, 0x13	; 19
    1fbc:	90 93 37 03 	sts	0x0337, r25	; 0x800337 <_ZL5menuX>
    setMenuCoords(19, 54 - h, 89, h - 1, true, true);
    1fc0:	96 e3       	ldi	r25, 0x36	; 54
    1fc2:	98 1b       	sub	r25, r24
    menuY = y;
    1fc4:	90 93 36 03 	sts	0x0336, r25	; 0x800336 <_ZL5menuY>
    menuW = w;
    1fc8:	99 e5       	ldi	r25, 0x59	; 89
    1fca:	90 93 35 03 	sts	0x0335, r25	; 0x800335 <_ZL5menuW>
    1fce:	81 50       	subi	r24, 0x01	; 1
    menuH = h;
    1fd0:	80 93 34 03 	sts	0x0334, r24	; 0x800334 <_ZL5menuH>
    isFramed = f;
    1fd4:	91 e0       	ldi	r25, 0x01	; 1
    1fd6:	90 93 33 03 	sts	0x0333, r25	; 0x800333 <_ZL8isFramed>
    isControlSound = s;
    1fda:	90 93 32 03 	sts	0x0332, r25	; 0x800332 <_ZL14isControlSound>
    setMenuItemPos((state == STATE_OVER && !isDefeated) ? 1 : 0);
    1fde:	80 91 45 01 	lds	r24, 0x0145	; 0x800145 <_ZL10isDefeated>
    1fe2:	89 27       	eor	r24, r25
    1fe4:	c2 30       	cpi	r28, 0x02	; 2
    1fe6:	09 f0       	breq	.+2      	; 0x1fea <_ZL12openGameMenuv+0x6e>
    1fe8:	80 e0       	ldi	r24, 0x00	; 0
}

void setMenuItemPos(int8_t pos)
{
    menuItemPos = pos;
    1fea:	80 93 39 03 	sts	0x0339, r24	; 0x800339 <_ZL11menuItemPos>
    isInvalidMenu = true;
    1fee:	81 e0       	ldi	r24, 0x01	; 1
    1ff0:	80 93 31 03 	sts	0x0331, r24	; 0x800331 <_ZL13isInvalidMenu>
    isMenu = true;
    1ff4:	80 93 04 03 	sts	0x0304, r24	; 0x800304 <_ZL6isMenu>
}
    1ff8:	cf 91       	pop	r28
    1ffa:	08 95       	ret

static void openGameMenu(void)
{
    playSoundClick();
    clearMenuItems();
    if (state <= STATE_PLAYING) addMenuItem(F("CONTINUE"), onContinue);
    1ffc:	66 e8       	ldi	r22, 0x86	; 134
    1ffe:	7f e0       	ldi	r23, 0x0F	; 15
    2000:	8e e8       	ldi	r24, 0x8E	; 142
    2002:	95 e0       	ldi	r25, 0x05	; 5
    2004:	0e 94 95 0a 	call	0x152a	; 0x152a <_Z11addMenuItemPK19__FlashStringHelperPFvvE>
    if (state >= STATE_PLAYING) addMenuItem(F("RETRY"), onRetry);
    2008:	cc 23       	and	r28, r28
    200a:	59 f2       	breq	.-106    	; 0x1fa2 <_ZL12openGameMenuv+0x26>
    200c:	c0 cf       	rjmp	.-128    	; 0x1f8e <_ZL12openGameMenuv+0x12>

0000200e <_Z13playSoundTickv>:
    dprintln(on);
}

void playSoundTick(void)
{
    arduboy.playTone(440, 10);
    200e:	6a e0       	ldi	r22, 0x0A	; 10
    2010:	70 e0       	ldi	r23, 0x00	; 0
    2012:	88 eb       	ldi	r24, 0xB8	; 184
    2014:	91 e0       	ldi	r25, 0x01	; 1
    2016:	0c 94 35 0e 	jmp	0x1c6a	; 0x1c6a <_ZN10MyArduboy28playToneEjjhh.constprop.28>

0000201a <_ZL15handleCodeEntryv>:
    handleMenu();
    if (arduboy.buttonDown(UP_BUTTON | DOWN_BUTTON)) isSettingChenged = true;
}

static void handleCodeEntry(void)
{
    201a:	8f 92       	push	r8
    201c:	9f 92       	push	r9
    201e:	af 92       	push	r10
    2020:	bf 92       	push	r11
    2022:	cf 92       	push	r12
    2024:	df 92       	push	r13
    2026:	ef 92       	push	r14
    2028:	ff 92       	push	r15
    202a:	cf 93       	push	r28
    202c:	df 93       	push	r29
    int8_t vx = arduboy.buttonDown(RIGHT_BUTTON) - arduboy.buttonDown(LEFT_BUTTON);
    202e:	80 e4       	ldi	r24, 0x40	; 64
    2030:	0e 94 f5 05 	call	0xbea	; 0xbea <_ZN10MyArduboy210buttonDownEh.constprop.43>
    2034:	f8 2e       	mov	r15, r24
    2036:	80 e2       	ldi	r24, 0x20	; 32
    2038:	0e 94 f5 05 	call	0xbea	; 0xbea <_ZN10MyArduboy210buttonDownEh.constprop.43>
    203c:	f8 1a       	sub	r15, r24
    if (vx != 0 && gameSeedX + vx >= 0 && gameSeedX + vx < GAME_SEED_TOKEN_MAX) {
    203e:	c1 f0       	breq	.+48     	; 0x2070 <_ZL15handleCodeEntryv+0x56>
    2040:	80 91 44 03 	lds	r24, 0x0344	; 0x800344 <_ZL9gameSeedX>
    2044:	2f 2d       	mov	r18, r15
    2046:	0f 2c       	mov	r0, r15
    2048:	00 0c       	add	r0, r0
    204a:	33 0b       	sbc	r19, r19
    204c:	82 0f       	add	r24, r18
    204e:	93 2f       	mov	r25, r19
    2050:	91 1d       	adc	r25, r1
    2052:	8f 3f       	cpi	r24, 0xFF	; 255
    2054:	98 07       	cpc	r25, r24
    2056:	61 f0       	breq	.+24     	; 0x2070 <_ZL15handleCodeEntryv+0x56>
    2058:	05 97       	sbiw	r24, 0x05	; 5
    205a:	54 f4       	brge	.+20     	; 0x2070 <_ZL15handleCodeEntryv+0x56>
        playSoundTick();
    205c:	0e 94 07 10 	call	0x200e	; 0x200e <_Z13playSoundTickv>
        gameSeedX += vx;
    2060:	80 91 44 03 	lds	r24, 0x0344	; 0x800344 <_ZL9gameSeedX>
    2064:	f8 0e       	add	r15, r24
    2066:	f0 92 44 03 	sts	0x0344, r15	; 0x800344 <_ZL9gameSeedX>
        isSettingChenged = true;
    206a:	81 e0       	ldi	r24, 0x01	; 1
    206c:	80 93 4a 03 	sts	0x034A, r24	; 0x80034a <_ZL16isSettingChenged>
    }
    if (padY != 0) {
    2070:	80 91 2f 03 	lds	r24, 0x032F	; 0x80032f <padY>
    2074:	88 23       	and	r24, r24
    2076:	09 f4       	brne	.+2      	; 0x207a <_ZL15handleCodeEntryv+0x60>
    2078:	57 c0       	rjmp	.+174    	; 0x2128 <_ZL15handleCodeEntryv+0x10e>
        playSoundTick();
    207a:	0e 94 07 10 	call	0x200e	; 0x200e <_Z13playSoundTickv>
        int32_t k = 1;
        for (int i = 0; i < gameSeedX; i++, k *= GAME_SEED_TOKEN_VAL) { ; }
    207e:	c0 91 44 03 	lds	r28, 0x0344	; 0x800344 <_ZL9gameSeedX>
    2082:	d0 e0       	ldi	r29, 0x00	; 0
    2084:	f0 e0       	ldi	r31, 0x00	; 0
    2086:	e0 e0       	ldi	r30, 0x00	; 0
        gameSeedX += vx;
        isSettingChenged = true;
    }
    if (padY != 0) {
        playSoundTick();
        int32_t k = 1;
    2088:	c1 2c       	mov	r12, r1
    208a:	d1 2c       	mov	r13, r1
    208c:	76 01       	movw	r14, r12
    208e:	c3 94       	inc	r12
        for (int i = 0; i < gameSeedX; i++, k *= GAME_SEED_TOKEN_VAL) { ; }
    2090:	ec 17       	cp	r30, r28
    2092:	fd 07       	cpc	r31, r29
    2094:	54 f4       	brge	.+20     	; 0x20aa <_ZL15handleCodeEntryv+0x90>
    2096:	31 96       	adiw	r30, 0x01	; 1
    2098:	ab e1       	ldi	r26, 0x1B	; 27
    209a:	b0 e0       	ldi	r27, 0x00	; 0
    209c:	a7 01       	movw	r20, r14
    209e:	96 01       	movw	r18, r12
    20a0:	0e 94 60 2c 	call	0x58c0	; 0x58c0 <__muluhisi3>
    20a4:	6b 01       	movw	r12, r22
    20a6:	7c 01       	movw	r14, r24
    20a8:	f3 cf       	rjmp	.-26     	; 0x2090 <_ZL15handleCodeEntryv+0x76>
        int8_t token = (gameSeedTmp / k) % GAME_SEED_TOKEN_VAL;
    20aa:	80 90 46 03 	lds	r8, 0x0346	; 0x800346 <_ZL11gameSeedTmp>
    20ae:	90 90 47 03 	lds	r9, 0x0347	; 0x800347 <_ZL11gameSeedTmp+0x1>
    20b2:	a0 90 48 03 	lds	r10, 0x0348	; 0x800348 <_ZL11gameSeedTmp+0x2>
    20b6:	b0 90 49 03 	lds	r11, 0x0349	; 0x800349 <_ZL11gameSeedTmp+0x3>
        if (token + padY < 0 || token + padY >= GAME_SEED_TOKEN_VAL) {
    20ba:	c0 91 2f 03 	lds	r28, 0x032F	; 0x80032f <padY>
    }
    if (padY != 0) {
        playSoundTick();
        int32_t k = 1;
        for (int i = 0; i < gameSeedX; i++, k *= GAME_SEED_TOKEN_VAL) { ; }
        int8_t token = (gameSeedTmp / k) % GAME_SEED_TOKEN_VAL;
    20be:	c5 01       	movw	r24, r10
    20c0:	b4 01       	movw	r22, r8
    20c2:	a7 01       	movw	r20, r14
    20c4:	96 01       	movw	r18, r12
    20c6:	0e 94 41 2c 	call	0x5882	; 0x5882 <__divmodsi4>
    20ca:	ca 01       	movw	r24, r20
    20cc:	b9 01       	movw	r22, r18
    20ce:	2b e1       	ldi	r18, 0x1B	; 27
    20d0:	30 e0       	ldi	r19, 0x00	; 0
    20d2:	40 e0       	ldi	r20, 0x00	; 0
    20d4:	50 e0       	ldi	r21, 0x00	; 0
    20d6:	0e 94 41 2c 	call	0x5882	; 0x5882 <__divmodsi4>
        if (token + padY < 0 || token + padY >= GAME_SEED_TOKEN_VAL) {
    20da:	2c 2f       	mov	r18, r28
    20dc:	0c 2e       	mov	r0, r28
    20de:	00 0c       	add	r0, r0
    20e0:	33 0b       	sbc	r19, r19
    20e2:	c9 01       	movw	r24, r18
    20e4:	86 0f       	add	r24, r22
    20e6:	97 1f       	adc	r25, r23
    20e8:	4b 97       	sbiw	r24, 0x1b	; 27
    20ea:	40 f0       	brcs	.+16     	; 0x20fc <_ZL15handleCodeEntryv+0xe2>
            k = (1 - GAME_SEED_TOKEN_VAL) * k;
    20ec:	a6 ee       	ldi	r26, 0xE6	; 230
    20ee:	bf ef       	ldi	r27, 0xFF	; 255
    20f0:	a7 01       	movw	r20, r14
    20f2:	96 01       	movw	r18, r12
    20f4:	0e 94 6e 2c 	call	0x58dc	; 0x58dc <__mulohisi3>
    20f8:	6b 01       	movw	r12, r22
    20fa:	7c 01       	movw	r14, r24
        }
        gameSeedTmp += padY * k;
    20fc:	ac 2f       	mov	r26, r28
    20fe:	cc 0f       	add	r28, r28
    2100:	bb 0b       	sbc	r27, r27
    2102:	a7 01       	movw	r20, r14
    2104:	96 01       	movw	r18, r12
    2106:	0e 94 6b 2c 	call	0x58d6	; 0x58d6 <__mulshisi3>
    210a:	86 0e       	add	r8, r22
    210c:	97 1e       	adc	r9, r23
    210e:	a8 1e       	adc	r10, r24
    2110:	b9 1e       	adc	r11, r25
    2112:	80 92 46 03 	sts	0x0346, r8	; 0x800346 <_ZL11gameSeedTmp>
    2116:	90 92 47 03 	sts	0x0347, r9	; 0x800347 <_ZL11gameSeedTmp+0x1>
    211a:	a0 92 48 03 	sts	0x0348, r10	; 0x800348 <_ZL11gameSeedTmp+0x2>
    211e:	b0 92 49 03 	sts	0x0349, r11	; 0x800349 <_ZL11gameSeedTmp+0x3>
        isSettingChenged = true;
    2122:	81 e0       	ldi	r24, 0x01	; 1
    2124:	80 93 4a 03 	sts	0x034A, r24	; 0x80034a <_ZL16isSettingChenged>
    }
    if (arduboy.buttonDown(A_BUTTON)) {
    2128:	88 e0       	ldi	r24, 0x08	; 8
    212a:	0e 94 f5 05 	call	0xbea	; 0xbea <_ZN10MyArduboy210buttonDownEh.constprop.43>
    212e:	88 23       	and	r24, r24
    2130:	91 f0       	breq	.+36     	; 0x2156 <_ZL15handleCodeEntryv+0x13c>
        playSoundClick();
    2132:	0e 94 aa 0e 	call	0x1d54	; 0x1d54 <_Z14playSoundClickv>
        state = STATE_TOP;
    2136:	81 e0       	ldi	r24, 0x01	; 1
    2138:	80 93 38 03 	sts	0x0338, r24	; 0x800338 <_ZL5state.lto_priv.53>
        isInvalid = true;
    213c:	80 93 4b 03 	sts	0x034B, r24	; 0x80034b <isInvalid>
    } else if (arduboy.buttonDown(B_BUTTON)) {
        if (record.gameSeed != gameSeedTmp) record.isCleared = false;
        record.gameSeed = gameSeedTmp;
        onStart();
    }
}
    2140:	df 91       	pop	r29
    2142:	cf 91       	pop	r28
    2144:	ff 90       	pop	r15
    2146:	ef 90       	pop	r14
    2148:	df 90       	pop	r13
    214a:	cf 90       	pop	r12
    214c:	bf 90       	pop	r11
    214e:	af 90       	pop	r10
    2150:	9f 90       	pop	r9
    2152:	8f 90       	pop	r8
    2154:	08 95       	ret
    }
    if (arduboy.buttonDown(A_BUTTON)) {
        playSoundClick();
        state = STATE_TOP;
        isInvalid = true;
    } else if (arduboy.buttonDown(B_BUTTON)) {
    2156:	84 e0       	ldi	r24, 0x04	; 4
    2158:	0e 94 f5 05 	call	0xbea	; 0xbea <_ZN10MyArduboy210buttonDownEh.constprop.43>
    215c:	88 23       	and	r24, r24
    215e:	81 f3       	breq	.-32     	; 0x2140 <_ZL15handleCodeEntryv+0x126>
        if (record.gameSeed != gameSeedTmp) record.isCleared = false;
    2160:	40 91 46 03 	lds	r20, 0x0346	; 0x800346 <_ZL11gameSeedTmp>
    2164:	50 91 47 03 	lds	r21, 0x0347	; 0x800347 <_ZL11gameSeedTmp+0x1>
    2168:	60 91 48 03 	lds	r22, 0x0348	; 0x800348 <_ZL11gameSeedTmp+0x2>
    216c:	70 91 49 03 	lds	r23, 0x0349	; 0x800349 <_ZL11gameSeedTmp+0x3>
    2170:	80 91 3a 03 	lds	r24, 0x033A	; 0x80033a <record>
    2174:	90 91 3b 03 	lds	r25, 0x033B	; 0x80033b <record+0x1>
    2178:	a0 91 3c 03 	lds	r26, 0x033C	; 0x80033c <record+0x2>
    217c:	b0 e0       	ldi	r27, 0x00	; 0
    217e:	84 17       	cp	r24, r20
    2180:	95 07       	cpc	r25, r21
    2182:	a6 07       	cpc	r26, r22
    2184:	b7 07       	cpc	r27, r23
    2186:	29 f0       	breq	.+10     	; 0x2192 <_ZL15handleCodeEntryv+0x178>
    2188:	80 91 3d 03 	lds	r24, 0x033D	; 0x80033d <record+0x3>
    218c:	8f 77       	andi	r24, 0x7F	; 127
    218e:	80 93 3d 03 	sts	0x033D, r24	; 0x80033d <record+0x3>
        record.gameSeed = gameSeedTmp;
    2192:	40 93 3a 03 	sts	0x033A, r20	; 0x80033a <record>
    2196:	50 93 3b 03 	sts	0x033B, r21	; 0x80033b <record+0x1>
    219a:	60 93 3c 03 	sts	0x033C, r22	; 0x80033c <record+0x2>
    dprintln(F("Title screen"));
}

static void onStart(void)
{
    state = STATE_STARTED;
    219e:	85 e0       	ldi	r24, 0x05	; 5
    21a0:	80 93 38 03 	sts	0x0338, r24	; 0x800338 <_ZL5state.lto_priv.53>
    21a4:	cd cf       	rjmp	.-102    	; 0x2140 <_ZL15handleCodeEntryv+0x126>

000021a6 <_Z10handleMenuv>:
    isInvalidMenu = true;
}

void handleMenu(void)
{
    if (arduboy.buttonDown(UP_BUTTON) && menuItemPos > 0) {
    21a6:	80 e8       	ldi	r24, 0x80	; 128
    21a8:	0e 94 f5 05 	call	0xbea	; 0xbea <_ZN10MyArduboy210buttonDownEh.constprop.43>
    21ac:	88 23       	and	r24, r24
    21ae:	c1 f0       	breq	.+48     	; 0x21e0 <_Z10handleMenuv+0x3a>
    21b0:	80 91 39 03 	lds	r24, 0x0339	; 0x800339 <_ZL11menuItemPos>
    21b4:	18 16       	cp	r1, r24
    21b6:	a4 f4       	brge	.+40     	; 0x21e0 <_Z10handleMenuv+0x3a>
    21b8:	81 50       	subi	r24, 0x01	; 1
        while (!(menuItemAry[--menuItemPos].func)) { ; }
    21ba:	98 2f       	mov	r25, r24
    21bc:	81 50       	subi	r24, 0x01	; 1
    21be:	24 e0       	ldi	r18, 0x04	; 4
    21c0:	92 02       	muls	r25, r18
    21c2:	f0 01       	movw	r30, r0
    21c4:	11 24       	eor	r1, r1
    21c6:	e5 5f       	subi	r30, 0xF5	; 245
    21c8:	fc 4f       	sbci	r31, 0xFC	; 252
    21ca:	20 81       	ld	r18, Z
    21cc:	31 81       	ldd	r19, Z+1	; 0x01
    21ce:	23 2b       	or	r18, r19
    21d0:	a1 f3       	breq	.-24     	; 0x21ba <_Z10handleMenuv+0x14>
    21d2:	90 93 39 03 	sts	0x0339, r25	; 0x800339 <_ZL11menuItemPos>
        playSoundTick();
    21d6:	0e 94 07 10 	call	0x200e	; 0x200e <_Z13playSoundTickv>
        isInvalidMenu = true;
    21da:	81 e0       	ldi	r24, 0x01	; 1
    21dc:	80 93 31 03 	sts	0x0331, r24	; 0x800331 <_ZL13isInvalidMenu>
        dprint(F("menuItemPos="));
        dprintln(menuItemPos);
    }
    if (arduboy.buttonDown(DOWN_BUTTON) && menuItemPos < menuItemCount - 1) {
    21e0:	80 e1       	ldi	r24, 0x10	; 16
    21e2:	0e 94 f5 05 	call	0xbea	; 0xbea <_ZN10MyArduboy210buttonDownEh.constprop.43>
    21e6:	88 23       	and	r24, r24
    21e8:	21 f1       	breq	.+72     	; 0x2232 <_Z10handleMenuv+0x8c>
    21ea:	80 91 39 03 	lds	r24, 0x0339	; 0x800339 <_ZL11menuItemPos>
    21ee:	48 2f       	mov	r20, r24
    21f0:	08 2e       	mov	r0, r24
    21f2:	00 0c       	add	r0, r0
    21f4:	55 0b       	sbc	r21, r21
    21f6:	20 91 30 03 	lds	r18, 0x0330	; 0x800330 <_ZL13menuItemCount>
    21fa:	02 2e       	mov	r0, r18
    21fc:	00 0c       	add	r0, r0
    21fe:	33 0b       	sbc	r19, r19
    2200:	21 50       	subi	r18, 0x01	; 1
    2202:	31 09       	sbc	r19, r1
    2204:	42 17       	cp	r20, r18
    2206:	53 07       	cpc	r21, r19
    2208:	a4 f4       	brge	.+40     	; 0x2232 <_Z10handleMenuv+0x8c>
    220a:	8f 5f       	subi	r24, 0xFF	; 255
        while (!(menuItemAry[++menuItemPos].func)) { ; }
    220c:	98 2f       	mov	r25, r24
    220e:	8f 5f       	subi	r24, 0xFF	; 255
    2210:	24 e0       	ldi	r18, 0x04	; 4
    2212:	92 02       	muls	r25, r18
    2214:	f0 01       	movw	r30, r0
    2216:	11 24       	eor	r1, r1
    2218:	e5 5f       	subi	r30, 0xF5	; 245
    221a:	fc 4f       	sbci	r31, 0xFC	; 252
    221c:	20 81       	ld	r18, Z
    221e:	31 81       	ldd	r19, Z+1	; 0x01
    2220:	23 2b       	or	r18, r19
    2222:	a1 f3       	breq	.-24     	; 0x220c <_Z10handleMenuv+0x66>
    2224:	90 93 39 03 	sts	0x0339, r25	; 0x800339 <_ZL11menuItemPos>
        playSoundTick();
    2228:	0e 94 07 10 	call	0x200e	; 0x200e <_Z13playSoundTickv>
        isInvalidMenu = true;
    222c:	81 e0       	ldi	r24, 0x01	; 1
    222e:	80 93 31 03 	sts	0x0331, r24	; 0x800331 <_ZL13isInvalidMenu>
        dprint(F("menuItemPos="));
        dprintln(menuItemPos);
    }
    if (isControlSound && arduboy.buttonDown(A_BUTTON)) {
    2232:	80 91 32 03 	lds	r24, 0x0332	; 0x800332 <_ZL14isControlSound>
    2236:	88 23       	and	r24, r24
    2238:	81 f0       	breq	.+32     	; 0x225a <_Z10handleMenuv+0xb4>
    223a:	88 e0       	ldi	r24, 0x08	; 8
    223c:	0e 94 f5 05 	call	0xbea	; 0xbea <_ZN10MyArduboy210buttonDownEh.constprop.43>
    2240:	88 23       	and	r24, r24
    2242:	59 f0       	breq	.+22     	; 0x225a <_Z10handleMenuv+0xb4>
    return audio.enabled();
}

void MyArduboy2::setAudioEnabled(bool on)
{
    (on) ? audio.on() : audio.off();
    2244:	80 91 4c 03 	lds	r24, 0x034C	; 0x80034c <_ZN13Arduboy2Audio13audio_enabledE>
    2248:	81 11       	cpse	r24, r1
    224a:	18 c0       	rjmp	.+48     	; 0x227c <_Z10handleMenuv+0xd6>
    224c:	0e 94 ec 08 	call	0x11d8	; 0x11d8 <_ZN13Arduboy2Audio2onEv>
        setSound(!arduboy.isAudioEnabled());
        playSoundClick();
    2250:	0e 94 aa 0e 	call	0x1d54	; 0x1d54 <_Z14playSoundClickv>
        isInvalidMenu = true;
    2254:	81 e0       	ldi	r24, 0x01	; 1
    2256:	80 93 31 03 	sts	0x0331, r24	; 0x800331 <_ZL13isInvalidMenu>
    }
    if (arduboy.buttonDown(B_BUTTON)) {
    225a:	84 e0       	ldi	r24, 0x04	; 4
    225c:	0e 94 f5 05 	call	0xbea	; 0xbea <_ZN10MyArduboy210buttonDownEh.constprop.43>
    2260:	88 23       	and	r24, r24
    2262:	79 f0       	breq	.+30     	; 0x2282 <_Z10handleMenuv+0xdc>
        menuItemAry[menuItemPos].func();
    2264:	e0 91 39 03 	lds	r30, 0x0339	; 0x800339 <_ZL11menuItemPos>
    2268:	84 e0       	ldi	r24, 0x04	; 4
    226a:	e8 02       	muls	r30, r24
    226c:	f0 01       	movw	r30, r0
    226e:	11 24       	eor	r1, r1
    2270:	e5 5f       	subi	r30, 0xF5	; 245
    2272:	fc 4f       	sbci	r31, 0xFC	; 252
    2274:	01 90       	ld	r0, Z+
    2276:	f0 81       	ld	r31, Z
    2278:	e0 2d       	mov	r30, r0
    227a:	09 94       	ijmp
    227c:	0e 94 e7 08 	call	0x11ce	; 0x11ce <_ZN13Arduboy2Audio3offEv>
    2280:	e7 cf       	rjmp	.-50     	; 0x2250 <_Z10handleMenuv+0xaa>
    }
}
    2282:	08 95       	ret

00002284 <_ZL14handleSettingsv>:
/*                             Control Functions                             */
/*---------------------------------------------------------------------------*/

static void handleSettings(void)
{
    switch (getMenuItemPos()) {
    2284:	80 91 39 03 	lds	r24, 0x0339	; 0x800339 <_ZL11menuItemPos>
    2288:	88 23       	and	r24, r24
    228a:	79 f0       	breq	.+30     	; 0x22aa <_ZL14handleSettingsv+0x26>
    228c:	87 fd       	sbrc	r24, 7
    228e:	02 c0       	rjmp	.+4      	; 0x2294 <_ZL14handleSettingsv+0x10>
    2290:	84 30       	cpi	r24, 0x04	; 4
    2292:	64 f1       	brlt	.+88     	; 0x22ec <_ZL14handleSettingsv+0x68>
        if (arduboy.buttonDown(LEFT_BUTTON | RIGHT_BUTTON)) onMenuToggleItem();
        break;
    default:
        break;
    }
    handleMenu();
    2294:	0e 94 d3 10 	call	0x21a6	; 0x21a6 <_Z10handleMenuv>
    if (arduboy.buttonDown(UP_BUTTON | DOWN_BUTTON)) isSettingChenged = true;
    2298:	80 e9       	ldi	r24, 0x90	; 144
    229a:	0e 94 f5 05 	call	0xbea	; 0xbea <_ZN10MyArduboy210buttonDownEh.constprop.43>
    229e:	88 23       	and	r24, r24
    22a0:	19 f0       	breq	.+6      	; 0x22a8 <_ZL14handleSettingsv+0x24>
    22a2:	81 e0       	ldi	r24, 0x01	; 1
    22a4:	80 93 4a 03 	sts	0x034A, r24	; 0x80034a <_ZL16isSettingChenged>
}
    22a8:	08 95       	ret

static void handleSettings(void)
{
    switch (getMenuItemPos()) {
    case 0:
        if (padX != 0) {
    22aa:	80 91 2e 03 	lds	r24, 0x032E	; 0x80032e <padX>
    22ae:	88 23       	and	r24, r24
    22b0:	89 f3       	breq	.-30     	; 0x2294 <_ZL14handleSettingsv+0x10>
            playSoundTick();
    22b2:	0e 94 07 10 	call	0x200e	; 0x200e <_Z13playSoundTickv>
            record.gameRank = circulate(record.gameRank - 1, padX, GAME_RANK_MAX) + 1;
    22b6:	20 91 3d 03 	lds	r18, 0x033D	; 0x80033d <record+0x3>
    22ba:	82 2f       	mov	r24, r18
    22bc:	8f 70       	andi	r24, 0x0F	; 15
    22be:	81 50       	subi	r24, 0x01	; 1
    22c0:	99 0b       	sbc	r25, r25
    22c2:	30 91 2e 03 	lds	r19, 0x032E	; 0x80032e <padX>
    22c6:	83 0f       	add	r24, r19
    22c8:	91 1d       	adc	r25, r1
    22ca:	37 fd       	sbrc	r19, 7
    22cc:	9a 95       	dec	r25
    22ce:	0a 96       	adiw	r24, 0x0a	; 10
    22d0:	6a e0       	ldi	r22, 0x0A	; 10
    22d2:	70 e0       	ldi	r23, 0x00	; 0
    22d4:	0e 94 d4 2f 	call	0x5fa8	; 0x5fa8 <__divmodhi4>
    22d8:	8f 5f       	subi	r24, 0xFF	; 255
    22da:	8f 70       	andi	r24, 0x0F	; 15
    22dc:	20 7f       	andi	r18, 0xF0	; 240
    22de:	28 2b       	or	r18, r24
    22e0:	20 93 3d 03 	sts	0x033D, r18	; 0x80033d <record+0x3>
            isSettingChenged = true;
    22e4:	81 e0       	ldi	r24, 0x01	; 1
    22e6:	80 93 4a 03 	sts	0x034A, r24	; 0x80034a <_ZL16isSettingChenged>
    22ea:	d4 cf       	rjmp	.-88     	; 0x2294 <_ZL14handleSettingsv+0x10>
        }
        break;
    case 1:
    case 2:
    case 3:
        if (arduboy.buttonDown(LEFT_BUTTON | RIGHT_BUTTON)) onMenuToggleItem();
    22ec:	80 e6       	ldi	r24, 0x60	; 96
    22ee:	0e 94 f5 05 	call	0xbea	; 0xbea <_ZN10MyArduboy210buttonDownEh.constprop.43>
    22f2:	88 23       	and	r24, r24
    22f4:	79 f2       	breq	.-98     	; 0x2294 <_ZL14handleSettingsv+0x10>
    22f6:	0e 94 b0 0e 	call	0x1d60	; 0x1d60 <_ZL16onMenuToggleItemv>
    22fa:	cc cf       	rjmp	.-104    	; 0x2294 <_ZL14handleSettingsv+0x10>

000022fc <_Z10updateGamev>:
    isInvalid = true;
}

MODE_T updateGame(void)
{
    handleDPad();
    22fc:	0e 94 31 0d 	call	0x1a62	; 0x1a62 <_Z10handleDPadv>
    if (isMenu) {
    2300:	80 91 04 03 	lds	r24, 0x0304	; 0x800304 <_ZL6isMenu>
    2304:	88 23       	and	r24, r24
    2306:	41 f0       	breq	.+16     	; 0x2318 <_Z10updateGamev+0x1c>
        handleMenu();
    2308:	0e 94 d3 10 	call	0x21a6	; 0x21a6 <_Z10handleMenuv>
    } else {
        counter++;
        if (ledLevel > 0) ledLevel--;
        callHandlerFunc(state);
    }
    return (state == STATE_LEAVE) ? MODE_TITLE : MODE_GAME;
    230c:	80 91 09 03 	lds	r24, 0x0309	; 0x800309 <_ZL5state.lto_priv.52>
    2310:	83 30       	cpi	r24, 0x03	; 3
    2312:	d1 f0       	breq	.+52     	; 0x2348 <_Z10updateGamev+0x4c>
    2314:	82 e0       	ldi	r24, 0x02	; 2
    2316:	08 95       	ret
{
    handleDPad();
    if (isMenu) {
        handleMenu();
    } else {
        counter++;
    2318:	80 91 45 03 	lds	r24, 0x0345	; 0x800345 <counter>
    231c:	8f 5f       	subi	r24, 0xFF	; 255
    231e:	80 93 45 03 	sts	0x0345, r24	; 0x800345 <counter>
        if (ledLevel > 0) ledLevel--;
    2322:	80 91 46 01 	lds	r24, 0x0146	; 0x800146 <_ZL8ledLevel>
    2326:	88 23       	and	r24, r24
    2328:	19 f0       	breq	.+6      	; 0x2330 <_Z10updateGamev+0x34>
    232a:	81 50       	subi	r24, 0x01	; 1
    232c:	80 93 46 01 	sts	0x0146, r24	; 0x800146 <_ZL8ledLevel>
        callHandlerFunc(state);
    2330:	e0 91 09 03 	lds	r30, 0x0309	; 0x800309 <_ZL5state.lto_priv.52>
    2334:	f0 e0       	ldi	r31, 0x00	; 0
    2336:	ee 0f       	add	r30, r30
    2338:	ff 1f       	adc	r31, r31
    233a:	ed 5e       	subi	r30, 0xED	; 237
    233c:	fc 4f       	sbci	r31, 0xFC	; 252
    233e:	85 91       	lpm	r24, Z+
    2340:	94 91       	lpm	r25, Z
    2342:	fc 01       	movw	r30, r24
    2344:	09 95       	icall
    2346:	e2 cf       	rjmp	.-60     	; 0x230c <_Z10updateGamev+0x10>
    }
    return (state == STATE_LEAVE) ? MODE_TITLE : MODE_GAME;
    2348:	81 e0       	ldi	r24, 0x01	; 1
}
    234a:	08 95       	ret

0000234c <_ZL9stepScorev>:

If CMD < 0x80, then the other 7 bits and the next byte are a
15-bit big-endian number of msec to wait
*/
static void stepScore(void)
{
    234c:	ff 92       	push	r15
    234e:	0f 93       	push	r16
    2350:	1f 93       	push	r17
    2352:	cf 93       	push	r28
    2354:	df 93       	push	r29
            break;
        } else if (opcode == TUNE_OP_MARK) { // set mark to repeat
            scoreStart = scoreCursor - 1;
            if (scoreRepeat > 0) scorePitch += (int8_t)pgm_read_byte(tuneNoteTable + opvalue);
        } else if (opcode == TUNE_OP_REPEAT) { // repeat score
            if (opvalue == 0 || ++scoreRepeat < (1 << opvalue)) {
    2356:	01 e0       	ldi	r16, 0x01	; 1
    2358:	10 e0       	ldi	r17, 0x00	; 0
        uint8_t chan = opvalue & 0x03;
        if (opcode == TUNE_OP_STOPNOTE) { // stop note
            stopNote(chan);
        } else if (opcode == TUNE_OP_PLAYNOTE) { // play note
            uint8_t dutyCycle = ((opvalue & 0x0C) >> 2) + 2;
            isAllMuted = !outputEnabled();
    235a:	ff 24       	eor	r15, r15
    235c:	f3 94       	inc	r15
15-bit big-endian number of msec to wait
*/
static void stepScore(void)
{
    while (true) {
        byte command = pgm_read_byte(scoreCursor++);
    235e:	e0 91 78 03 	lds	r30, 0x0378	; 0x800378 <_ZL11scoreCursor>
    2362:	f0 91 79 03 	lds	r31, 0x0379	; 0x800379 <_ZL11scoreCursor+0x1>
    2366:	af 01       	movw	r20, r30
    2368:	4f 5f       	subi	r20, 0xFF	; 255
    236a:	5f 4f       	sbci	r21, 0xFF	; 255
    236c:	50 93 79 03 	sts	0x0379, r21	; 0x800379 <_ZL11scoreCursor+0x1>
    2370:	40 93 78 03 	sts	0x0378, r20	; 0x800378 <_ZL11scoreCursor>
    2374:	24 91       	lpm	r18, Z
        uint8_t opcode = command & 0xF0;
    2376:	82 2f       	mov	r24, r18
    2378:	80 7f       	andi	r24, 0xF0	; 240
        uint8_t opvalue = command & 0x0F;
    237a:	c2 2f       	mov	r28, r18
    237c:	cf 70       	andi	r28, 0x0F	; 15
        uint8_t chan = opvalue & 0x03;
    237e:	d2 2f       	mov	r29, r18
    2380:	d3 70       	andi	r29, 0x03	; 3
        if (opcode == TUNE_OP_STOPNOTE) { // stop note
    2382:	80 38       	cpi	r24, 0x80	; 128
    2384:	21 f4       	brne	.+8      	; 0x238e <_ZL9stepScorev+0x42>
            stopNote(chan);
    2386:	8d 2f       	mov	r24, r29
    2388:	0e 94 08 0e 	call	0x1c10	; 0x1c10 <_ZL8stopNoteh>
    238c:	e8 cf       	rjmp	.-48     	; 0x235e <_ZL9stepScorev+0x12>
        } else if (opcode == TUNE_OP_PLAYNOTE) { // play note
    238e:	80 39       	cpi	r24, 0x90	; 144
    2390:	09 f0       	breq	.+2      	; 0x2394 <_ZL9stepScorev+0x48>
    2392:	3f c0       	rjmp	.+126    	; 0x2412 <_ZL9stepScorev+0xc6>
            uint8_t dutyCycle = ((opvalue & 0x0C) >> 2) + 2;
            isAllMuted = !outputEnabled();
    2394:	e0 91 88 03 	lds	r30, 0x0388	; 0x800388 <_ZL13outputEnabled>
    2398:	f0 91 89 03 	lds	r31, 0x0389	; 0x800389 <_ZL13outputEnabled+0x1>
    239c:	09 95       	icall
    239e:	8f 25       	eor	r24, r15
    23a0:	80 93 87 03 	sts	0x0387, r24	; 0x800387 <_ZL10isAllMuted>
            playNote(chan, pgm_read_byte(scoreCursor++) + scorePitch, dutyCycle);
    23a4:	e0 91 78 03 	lds	r30, 0x0378	; 0x800378 <_ZL11scoreCursor>
    23a8:	f0 91 79 03 	lds	r31, 0x0379	; 0x800379 <_ZL11scoreCursor+0x1>
    23ac:	cf 01       	movw	r24, r30
    23ae:	01 96       	adiw	r24, 0x01	; 1
    23b0:	90 93 79 03 	sts	0x0379, r25	; 0x800379 <_ZL11scoreCursor+0x1>
    23b4:	80 93 78 03 	sts	0x0378, r24	; 0x800378 <_ZL11scoreCursor>
    23b8:	e4 91       	lpm	r30, Z
    23ba:	80 91 77 03 	lds	r24, 0x0377	; 0x800377 <_ZL10scorePitch>
    }
}

static void playNote(uint8_t chan, uint8_t note, uint8_t dutyCycle)
{
    if (chan >= numChans) return;
    23be:	90 91 8c 03 	lds	r25, 0x038C	; 0x80038c <_ZL8numChans>
    23c2:	d9 17       	cp	r29, r25
    23c4:	60 f6       	brcc	.-104    	; 0x235e <_ZL9stepScorev+0x12>
    if (chan == 1 && isTonePlaying) return;
    23c6:	d1 30       	cpi	r29, 0x01	; 1
    23c8:	21 f4       	brne	.+8      	; 0x23d2 <_ZL9stepScorev+0x86>
    23ca:	90 91 81 03 	lds	r25, 0x0381	; 0x800381 <_ZL13isTonePlaying>
    23ce:	91 11       	cpse	r25, r1
    23d0:	c6 cf       	rjmp	.-116    	; 0x235e <_ZL9stepScorev+0x12>
        if (opcode == TUNE_OP_STOPNOTE) { // stop note
            stopNote(chan);
        } else if (opcode == TUNE_OP_PLAYNOTE) { // play note
            uint8_t dutyCycle = ((opvalue & 0x0C) >> 2) + 2;
            isAllMuted = !outputEnabled();
            playNote(chan, pgm_read_byte(scoreCursor++) + scorePitch, dutyCycle);
    23d2:	8e 0f       	add	r24, r30

static void playNote(uint8_t chan, uint8_t note, uint8_t dutyCycle)
{
    if (chan >= numChans) return;
    if (chan == 1 && isTonePlaying) return;
    if (note > NOTE_MAX) return;
    23d4:	87 fd       	sbrc	r24, 7
    23d6:	c3 cf       	rjmp	.-122    	; 0x235e <_ZL9stepScorev+0x12>
    23d8:	e8 2f       	mov	r30, r24
    23da:	f0 e0       	ldi	r31, 0x00	; 0

    uint16_t frequency = (note < NOTE_MIDDLE) ?
    23dc:	8c 33       	cpi	r24, 0x3C	; 60
    23de:	90 f4       	brcc	.+36     	; 0x2404 <_ZL9stepScorev+0xb8>
            pgm_read_byte(midiByteNoteFrequencies + note) :
    23e0:	ee 59       	subi	r30, 0x9E	; 158
    23e2:	fd 4f       	sbci	r31, 0xFD	; 253
    23e4:	e4 91       	lpm	r30, Z
{
    if (chan >= numChans) return;
    if (chan == 1 && isTonePlaying) return;
    if (note > NOTE_MAX) return;

    uint16_t frequency = (note < NOTE_MIDDLE) ?
    23e6:	6e 2f       	mov	r22, r30
    23e8:	70 e0       	ldi	r23, 0x00	; 0
            pgm_read_byte(midiByteNoteFrequencies + note) :
            pgm_read_word(midiWordNoteFrequencies + note - NOTE_MIDDLE);
    if (chan == 0) isWaitTimerPlaying = true;
    setupTimer(getTimerNum(chan), frequency, dutyCycle);
    23ea:	81 e0       	ldi	r24, 0x01	; 1
    if (note > NOTE_MAX) return;

    uint16_t frequency = (note < NOTE_MIDDLE) ?
            pgm_read_byte(midiByteNoteFrequencies + note) :
            pgm_read_word(midiWordNoteFrequencies + note - NOTE_MIDDLE);
    if (chan == 0) isWaitTimerPlaying = true;
    23ec:	d1 11       	cpse	r29, r1
    23ee:	03 c0       	rjmp	.+6      	; 0x23f6 <_ZL9stepScorev+0xaa>
    23f0:	f0 92 86 03 	sts	0x0386, r15	; 0x800386 <_ZL18isWaitTimerPlaying>
    setupTimer(getTimerNum(chan), frequency, dutyCycle);
    23f4:	83 e0       	ldi	r24, 0x03	; 3
        uint8_t opvalue = command & 0x0F;
        uint8_t chan = opvalue & 0x03;
        if (opcode == TUNE_OP_STOPNOTE) { // stop note
            stopNote(chan);
        } else if (opcode == TUNE_OP_PLAYNOTE) { // play note
            uint8_t dutyCycle = ((opvalue & 0x0C) >> 2) + 2;
    23f6:	4c 2f       	mov	r20, r28
    23f8:	46 95       	lsr	r20
    23fa:	46 95       	lsr	r20
    23fc:	4e 5f       	subi	r20, 0xFE	; 254

    uint16_t frequency = (note < NOTE_MIDDLE) ?
            pgm_read_byte(midiByteNoteFrequencies + note) :
            pgm_read_word(midiWordNoteFrequencies + note - NOTE_MIDDLE);
    if (chan == 0) isWaitTimerPlaying = true;
    setupTimer(getTimerNum(chan), frequency, dutyCycle);
    23fe:	0e 94 9a 0d 	call	0x1b34	; 0x1b34 <_ZL10setupTimerhjh>
    2402:	ad cf       	rjmp	.-166    	; 0x235e <_ZL9stepScorev+0x12>
    if (chan == 1 && isTonePlaying) return;
    if (note > NOTE_MAX) return;

    uint16_t frequency = (note < NOTE_MIDDLE) ?
            pgm_read_byte(midiByteNoteFrequencies + note) :
            pgm_read_word(midiWordNoteFrequencies + note - NOTE_MIDDLE);
    2404:	ee 0f       	add	r30, r30
    2406:	ff 1f       	adc	r31, r31
    2408:	ee 59       	subi	r30, 0x9E	; 158
    240a:	fe 4f       	sbci	r31, 0xFE	; 254
    240c:	65 91       	lpm	r22, Z+
    240e:	74 91       	lpm	r23, Z
    2410:	ec cf       	rjmp	.-40     	; 0x23ea <_ZL9stepScorev+0x9e>
            stopNote(chan);
        } else if (opcode == TUNE_OP_PLAYNOTE) { // play note
            uint8_t dutyCycle = ((opvalue & 0x0C) >> 2) + 2;
            isAllMuted = !outputEnabled();
            playNote(chan, pgm_read_byte(scoreCursor++) + scorePitch, dutyCycle);
        } else if (opcode < 0x80) { // wait count in msec.
    2412:	87 fd       	sbrc	r24, 7
    2414:	3f c0       	rjmp	.+126    	; 0x2494 <_ZL9stepScorev+0x148>
            uint16_t duration = (uint16_t)command << 8 | pgm_read_byte(scoreCursor++);
    2416:	32 96       	adiw	r30, 0x02	; 2
    2418:	f0 93 79 03 	sts	0x0379, r31	; 0x800379 <_ZL11scoreCursor+0x1>
    241c:	e0 93 78 03 	sts	0x0378, r30	; 0x800378 <_ZL11scoreCursor>
    2420:	fa 01       	movw	r30, r20
    2422:	44 91       	lpm	r20, Z
            timer3ToggleCount = ((unsigned long)duration * timer3Frequency + 500) / 1000;
    2424:	a0 91 40 01 	lds	r26, 0x0140	; 0x800140 <__data_end>
    2428:	b0 91 41 01 	lds	r27, 0x0141	; 0x800141 <__data_end+0x1>
        } else if (opcode == TUNE_OP_PLAYNOTE) { // play note
            uint8_t dutyCycle = ((opvalue & 0x0C) >> 2) + 2;
            isAllMuted = !outputEnabled();
            playNote(chan, pgm_read_byte(scoreCursor++) + scorePitch, dutyCycle);
        } else if (opcode < 0x80) { // wait count in msec.
            uint16_t duration = (uint16_t)command << 8 | pgm_read_byte(scoreCursor++);
    242c:	32 2f       	mov	r19, r18
    242e:	24 2f       	mov	r18, r20
            timer3ToggleCount = ((unsigned long)duration * timer3Frequency + 500) / 1000;
    2430:	0e 94 95 2c 	call	0x592a	; 0x592a <__umulhisi3>
    2434:	6c 50       	subi	r22, 0x0C	; 12
    2436:	7e 4f       	sbci	r23, 0xFE	; 254
    2438:	8f 4f       	sbci	r24, 0xFF	; 255
    243a:	9f 4f       	sbci	r25, 0xFF	; 255
    243c:	28 ee       	ldi	r18, 0xE8	; 232
    243e:	33 e0       	ldi	r19, 0x03	; 3
    2440:	40 e0       	ldi	r20, 0x00	; 0
    2442:	50 e0       	ldi	r21, 0x00	; 0
    2444:	0e 94 73 2c 	call	0x58e6	; 0x58e6 <__udivmodsi4>
    2448:	20 93 82 03 	sts	0x0382, r18	; 0x800382 <_ZL17timer3ToggleCount>
    244c:	30 93 83 03 	sts	0x0383, r19	; 0x800383 <_ZL17timer3ToggleCount+0x1>
    2450:	40 93 84 03 	sts	0x0384, r20	; 0x800384 <_ZL17timer3ToggleCount+0x2>
    2454:	50 93 85 03 	sts	0x0385, r21	; 0x800385 <_ZL17timer3ToggleCount+0x3>
            if (timer3ToggleCount == 0) timer3ToggleCount = 1;
    2458:	80 91 82 03 	lds	r24, 0x0382	; 0x800382 <_ZL17timer3ToggleCount>
    245c:	90 91 83 03 	lds	r25, 0x0383	; 0x800383 <_ZL17timer3ToggleCount+0x1>
    2460:	a0 91 84 03 	lds	r26, 0x0384	; 0x800384 <_ZL17timer3ToggleCount+0x2>
    2464:	b0 91 85 03 	lds	r27, 0x0385	; 0x800385 <_ZL17timer3ToggleCount+0x3>
    2468:	89 2b       	or	r24, r25
    246a:	8a 2b       	or	r24, r26
    246c:	8b 2b       	or	r24, r27
    246e:	61 f4       	brne	.+24     	; 0x2488 <_ZL9stepScorev+0x13c>
    2470:	81 e0       	ldi	r24, 0x01	; 1
    2472:	90 e0       	ldi	r25, 0x00	; 0
    2474:	a0 e0       	ldi	r26, 0x00	; 0
    2476:	b0 e0       	ldi	r27, 0x00	; 0
    2478:	80 93 82 03 	sts	0x0382, r24	; 0x800382 <_ZL17timer3ToggleCount>
    247c:	90 93 83 03 	sts	0x0383, r25	; 0x800383 <_ZL17timer3ToggleCount+0x1>
    2480:	a0 93 84 03 	sts	0x0384, r26	; 0x800384 <_ZL17timer3ToggleCount+0x2>
    2484:	b0 93 85 03 	sts	0x0385, r27	; 0x800385 <_ZL17timer3ToggleCount+0x3>
        } else if (opcode == TUNE_OP_STOP) { // stop score
            isScorePlaying = false;
            break;
        }
    }
}
    2488:	df 91       	pop	r29
    248a:	cf 91       	pop	r28
    248c:	1f 91       	pop	r17
    248e:	0f 91       	pop	r16
    2490:	ff 90       	pop	r15
    2492:	08 95       	ret
        } else if (opcode < 0x80) { // wait count in msec.
            uint16_t duration = (uint16_t)command << 8 | pgm_read_byte(scoreCursor++);
            timer3ToggleCount = ((unsigned long)duration * timer3Frequency + 500) / 1000;
            if (timer3ToggleCount == 0) timer3ToggleCount = 1;
            break;
        } else if (opcode == TUNE_OP_MARK) { // set mark to repeat
    2494:	80 3d       	cpi	r24, 0xD0	; 208
    2496:	a1 f4       	brne	.+40     	; 0x24c0 <_ZL9stepScorev+0x174>
            scoreStart = scoreCursor - 1;
    2498:	f0 93 7b 03 	sts	0x037B, r31	; 0x80037b <_ZL10scoreStart+0x1>
    249c:	e0 93 7a 03 	sts	0x037A, r30	; 0x80037a <_ZL10scoreStart>
            if (scoreRepeat > 0) scorePitch += (int8_t)pgm_read_byte(tuneNoteTable + opvalue);
    24a0:	80 91 75 03 	lds	r24, 0x0375	; 0x800375 <_ZL11scoreRepeat>
    24a4:	88 23       	and	r24, r24
    24a6:	09 f4       	brne	.+2      	; 0x24aa <_ZL9stepScorev+0x15e>
    24a8:	5a cf       	rjmp	.-332    	; 0x235e <_ZL9stepScorev+0x12>
    24aa:	ec 2f       	mov	r30, r28
    24ac:	f0 e0       	ldi	r31, 0x00	; 0
    24ae:	e2 56       	subi	r30, 0x62	; 98
    24b0:	fd 4f       	sbci	r31, 0xFD	; 253
    24b2:	e4 91       	lpm	r30, Z
    24b4:	c0 91 77 03 	lds	r28, 0x0377	; 0x800377 <_ZL10scorePitch>
    24b8:	ec 0f       	add	r30, r28
    24ba:	e0 93 77 03 	sts	0x0377, r30	; 0x800377 <_ZL10scorePitch>
    24be:	4f cf       	rjmp	.-354    	; 0x235e <_ZL9stepScorev+0x12>
        } else if (opcode == TUNE_OP_REPEAT) { // repeat score
    24c0:	80 3e       	cpi	r24, 0xE0	; 224
    24c2:	21 f5       	brne	.+72     	; 0x250c <_ZL9stepScorev+0x1c0>
            if (opvalue == 0 || ++scoreRepeat < (1 << opvalue)) {
    24c4:	c1 11       	cpse	r28, r1
    24c6:	09 c0       	rjmp	.+18     	; 0x24da <_ZL9stepScorev+0x18e>
                scoreCursor = scoreStart;
    24c8:	80 91 7a 03 	lds	r24, 0x037A	; 0x80037a <_ZL10scoreStart>
    24cc:	90 91 7b 03 	lds	r25, 0x037B	; 0x80037b <_ZL10scoreStart+0x1>
    24d0:	90 93 79 03 	sts	0x0379, r25	; 0x800379 <_ZL11scoreCursor+0x1>
    24d4:	80 93 78 03 	sts	0x0378, r24	; 0x800378 <_ZL11scoreCursor>
    24d8:	42 cf       	rjmp	.-380    	; 0x235e <_ZL9stepScorev+0x12>
            break;
        } else if (opcode == TUNE_OP_MARK) { // set mark to repeat
            scoreStart = scoreCursor - 1;
            if (scoreRepeat > 0) scorePitch += (int8_t)pgm_read_byte(tuneNoteTable + opvalue);
        } else if (opcode == TUNE_OP_REPEAT) { // repeat score
            if (opvalue == 0 || ++scoreRepeat < (1 << opvalue)) {
    24da:	80 91 75 03 	lds	r24, 0x0375	; 0x800375 <_ZL11scoreRepeat>
    24de:	8f 5f       	subi	r24, 0xFF	; 255
    24e0:	80 93 75 03 	sts	0x0375, r24	; 0x800375 <_ZL11scoreRepeat>
    24e4:	98 01       	movw	r18, r16
    24e6:	02 c0       	rjmp	.+4      	; 0x24ec <_ZL9stepScorev+0x1a0>
    24e8:	22 0f       	add	r18, r18
    24ea:	33 1f       	adc	r19, r19
    24ec:	ca 95       	dec	r28
    24ee:	e2 f7       	brpl	.-8      	; 0x24e8 <_ZL9stepScorev+0x19c>
    24f0:	82 17       	cp	r24, r18
    24f2:	13 06       	cpc	r1, r19
    24f4:	4c f3       	brlt	.-46     	; 0x24c8 <_ZL9stepScorev+0x17c>
                scoreCursor = scoreStart;
            } else {
                scoreStart = scoreCursor;
    24f6:	50 93 7b 03 	sts	0x037B, r21	; 0x80037b <_ZL10scoreStart+0x1>
    24fa:	40 93 7a 03 	sts	0x037A, r20	; 0x80037a <_ZL10scoreStart>
                scorePitch = scorePitchDefault;
    24fe:	80 91 76 03 	lds	r24, 0x0376	; 0x800376 <_ZL17scorePitchDefault>
    2502:	80 93 77 03 	sts	0x0377, r24	; 0x800377 <_ZL10scorePitch>
                scoreRepeat = 0;
    2506:	10 92 75 03 	sts	0x0375, r1	; 0x800375 <_ZL11scoreRepeat>
    250a:	29 cf       	rjmp	.-430    	; 0x235e <_ZL9stepScorev+0x12>
            }
        } else if (opcode == TUNE_OP_STOP) { // stop score
    250c:	80 3f       	cpi	r24, 0xF0	; 240
    250e:	09 f0       	breq	.+2      	; 0x2512 <_ZL9stepScorev+0x1c6>
    2510:	26 cf       	rjmp	.-436    	; 0x235e <_ZL9stepScorev+0x12>
            isScorePlaying = false;
    2512:	10 92 8b 03 	sts	0x038B, r1	; 0x80038b <_ZL14isScorePlaying>
    2516:	b8 cf       	rjmp	.-144    	; 0x2488 <_ZL9stepScorev+0x13c>

00002518 <_ZN10MyArduboy29playScoreEPKhha.constprop.27>:
        }
    }
    setupTimer(getTimerNum(chan), frequency, dutyCycle);
}

void MyArduboy2::playScore(const byte *score, uint8_t priority = 0, int8_t pitch = 0)
    2518:	0f 93       	push	r16
    251a:	1f 93       	push	r17
    251c:	cf 93       	push	r28
    251e:	df 93       	push	r29
    2520:	8c 01       	movw	r16, r24
    2522:	d6 2f       	mov	r29, r22
{
    if (isScorePlaying) {
    2524:	80 91 8b 03 	lds	r24, 0x038B	; 0x80038b <_ZL14isScorePlaying>
    2528:	88 23       	and	r24, r24
    252a:	49 f1       	breq	.+82     	; 0x257e <_ZN10MyArduboy29playScoreEPKhha.constprop.27+0x66>
        if (priority > audioPriority) return;
    252c:	80 91 8a 03 	lds	r24, 0x038A	; 0x80038a <_ZL13audioPriority>
    2530:	86 17       	cp	r24, r22
    2532:	90 f1       	brcs	.+100    	; 0x2598 <_ZN10MyArduboy29playScoreEPKhha.constprop.27+0x80>
    stepScore(); // execute initial commands
}

void MyArduboy2::stopScore(void)
{
    for (uint8_t chan = 0; chan < numChans; chan++) {
    2534:	c0 e0       	ldi	r28, 0x00	; 0
    2536:	80 91 8c 03 	lds	r24, 0x038C	; 0x80038c <_ZL8numChans>
    253a:	c8 17       	cp	r28, r24
    253c:	28 f4       	brcc	.+10     	; 0x2548 <_ZN10MyArduboy29playScoreEPKhha.constprop.27+0x30>
        stopNote(chan);
    253e:	8c 2f       	mov	r24, r28
    2540:	0e 94 08 0e 	call	0x1c10	; 0x1c10 <_ZL8stopNoteh>
    stepScore(); // execute initial commands
}

void MyArduboy2::stopScore(void)
{
    for (uint8_t chan = 0; chan < numChans; chan++) {
    2544:	cf 5f       	subi	r28, 0xFF	; 255
    2546:	f7 cf       	rjmp	.-18     	; 0x2536 <_ZN10MyArduboy29playScoreEPKhha.constprop.27+0x1e>
        stopNote(chan);
    }
    isScorePlaying = false;
    2548:	10 92 8b 03 	sts	0x038B, r1	; 0x80038b <_ZL14isScorePlaying>
        if (priority > audioPriority) return;
        stopScore();
    } else if (isTonePlaying) {
        isMuteScore = (priority > audioPriority);
    }
    audioPriority = priority;
    254c:	d0 93 8a 03 	sts	0x038A, r29	; 0x80038a <_ZL13audioPriority>
    scoreStart = score;
    2550:	10 93 7b 03 	sts	0x037B, r17	; 0x80037b <_ZL10scoreStart+0x1>
    2554:	00 93 7a 03 	sts	0x037A, r16	; 0x80037a <_ZL10scoreStart>
    scoreCursor = scoreStart;
    2558:	10 93 79 03 	sts	0x0379, r17	; 0x800379 <_ZL11scoreCursor+0x1>
    255c:	00 93 78 03 	sts	0x0378, r16	; 0x800378 <_ZL11scoreCursor>
    scorePitchDefault = scorePitch = pitch;
    2560:	10 92 77 03 	sts	0x0377, r1	; 0x800377 <_ZL10scorePitch>
    2564:	10 92 76 03 	sts	0x0376, r1	; 0x800376 <_ZL17scorePitchDefault>
    scoreRepeat = 0;
    2568:	10 92 75 03 	sts	0x0375, r1	; 0x800375 <_ZL11scoreRepeat>
    isScorePlaying = true;
    256c:	81 e0       	ldi	r24, 0x01	; 1
    256e:	80 93 8b 03 	sts	0x038B, r24	; 0x80038b <_ZL14isScorePlaying>
    stepScore(); // execute initial commands
}
    2572:	df 91       	pop	r29
    2574:	cf 91       	pop	r28
    2576:	1f 91       	pop	r17
    2578:	0f 91       	pop	r16
    scoreStart = score;
    scoreCursor = scoreStart;
    scorePitchDefault = scorePitch = pitch;
    scoreRepeat = 0;
    isScorePlaying = true;
    stepScore(); // execute initial commands
    257a:	0c 94 a6 11 	jmp	0x234c	; 0x234c <_ZL9stepScorev>
void MyArduboy2::playScore(const byte *score, uint8_t priority = 0, int8_t pitch = 0)
{
    if (isScorePlaying) {
        if (priority > audioPriority) return;
        stopScore();
    } else if (isTonePlaying) {
    257e:	80 91 81 03 	lds	r24, 0x0381	; 0x800381 <_ZL13isTonePlaying>
    2582:	88 23       	and	r24, r24
    2584:	19 f3       	breq	.-58     	; 0x254c <_ZN10MyArduboy29playScoreEPKhha.constprop.27+0x34>
        isMuteScore = (priority > audioPriority);
    2586:	81 e0       	ldi	r24, 0x01	; 1
    2588:	90 91 8a 03 	lds	r25, 0x038A	; 0x80038a <_ZL13audioPriority>
    258c:	96 17       	cp	r25, r22
    258e:	08 f0       	brcs	.+2      	; 0x2592 <_ZN10MyArduboy29playScoreEPKhha.constprop.27+0x7a>
    2590:	80 e0       	ldi	r24, 0x00	; 0
    2592:	80 93 7c 03 	sts	0x037C, r24	; 0x80037c <_ZL11isMuteScore>
    2596:	da cf       	rjmp	.-76     	; 0x254c <_ZN10MyArduboy29playScoreEPKhha.constprop.27+0x34>
    scoreCursor = scoreStart;
    scorePitchDefault = scorePitch = pitch;
    scoreRepeat = 0;
    isScorePlaying = true;
    stepScore(); // execute initial commands
}
    2598:	df 91       	pop	r29
    259a:	cf 91       	pop	r28
    259c:	1f 91       	pop	r17
    259e:	0f 91       	pop	r16
    25a0:	08 95       	ret

000025a2 <_ZN10MyArduboy28fillRectEiihah>:
        fillBeltWhite(p, d, w);
    }
}

void MyArduboy2::fillRect(int16_t x, int16_t y, uint8_t w, int8_t h, uint8_t color)
{
    25a2:	ef 92       	push	r14
    25a4:	0f 93       	push	r16
    25a6:	cf 93       	push	r28
    25a8:	df 93       	push	r29
    /*  Check parameters  */
    if (x < 0) {
    25aa:	77 ff       	sbrs	r23, 7
    25ac:	0c c0       	rjmp	.+24     	; 0x25c6 <_ZN10MyArduboy28fillRectEiihah+0x24>
        if (w <= -x) return;
    25ae:	88 27       	eor	r24, r24
    25b0:	99 27       	eor	r25, r25
    25b2:	86 1b       	sub	r24, r22
    25b4:	97 0b       	sbc	r25, r23
    25b6:	28 17       	cp	r18, r24
    25b8:	19 06       	cpc	r1, r25
    25ba:	09 f0       	breq	.+2      	; 0x25be <_ZN10MyArduboy28fillRectEiihah+0x1c>
    25bc:	0c f4       	brge	.+2      	; 0x25c0 <_ZN10MyArduboy28fillRectEiihah+0x1e>
    25be:	7c c0       	rjmp	.+248    	; 0x26b8 <_ZN10MyArduboy28fillRectEiihah+0x116>
        w += x;
    25c0:	26 0f       	add	r18, r22
        x = 0;
    25c2:	70 e0       	ldi	r23, 0x00	; 0
    25c4:	60 e0       	ldi	r22, 0x00	; 0
    }
    if (y < 0) {
    25c6:	57 ff       	sbrs	r21, 7
    25c8:	0f c0       	rjmp	.+30     	; 0x25e8 <_ZN10MyArduboy28fillRectEiihah+0x46>
        if (h <= -y) return;
    25ca:	ee 27       	eor	r30, r30
    25cc:	ff 27       	eor	r31, r31
    25ce:	e4 1b       	sub	r30, r20
    25d0:	f5 0b       	sbc	r31, r21
    25d2:	80 2f       	mov	r24, r16
    25d4:	00 2e       	mov	r0, r16
    25d6:	00 0c       	add	r0, r0
    25d8:	99 0b       	sbc	r25, r25
    25da:	e8 17       	cp	r30, r24
    25dc:	f9 07       	cpc	r31, r25
    25de:	0c f0       	brlt	.+2      	; 0x25e2 <_ZN10MyArduboy28fillRectEiihah+0x40>
    25e0:	6b c0       	rjmp	.+214    	; 0x26b8 <_ZN10MyArduboy28fillRectEiihah+0x116>
        h += y;
    25e2:	04 0f       	add	r16, r20
        y = 0;
    25e4:	50 e0       	ldi	r21, 0x00	; 0
    25e6:	40 e0       	ldi	r20, 0x00	; 0
    }
    if (w <= 0 || x >= WIDTH || h <= 0 || y >= HEIGHT) return;
    25e8:	22 23       	and	r18, r18
    25ea:	09 f4       	brne	.+2      	; 0x25ee <_ZN10MyArduboy28fillRectEiihah+0x4c>
    25ec:	65 c0       	rjmp	.+202    	; 0x26b8 <_ZN10MyArduboy28fillRectEiihah+0x116>
    25ee:	60 38       	cpi	r22, 0x80	; 128
    25f0:	71 05       	cpc	r23, r1
    25f2:	0c f0       	brlt	.+2      	; 0x25f6 <_ZN10MyArduboy28fillRectEiihah+0x54>
    25f4:	61 c0       	rjmp	.+194    	; 0x26b8 <_ZN10MyArduboy28fillRectEiihah+0x116>
    25f6:	10 16       	cp	r1, r16
    25f8:	0c f0       	brlt	.+2      	; 0x25fc <_ZN10MyArduboy28fillRectEiihah+0x5a>
    25fa:	5e c0       	rjmp	.+188    	; 0x26b8 <_ZN10MyArduboy28fillRectEiihah+0x116>
    25fc:	40 34       	cpi	r20, 0x40	; 64
    25fe:	51 05       	cpc	r21, r1
    2600:	0c f0       	brlt	.+2      	; 0x2604 <_ZN10MyArduboy28fillRectEiihah+0x62>
    2602:	5a c0       	rjmp	.+180    	; 0x26b8 <_ZN10MyArduboy28fillRectEiihah+0x116>
    if (x + w > WIDTH) w = WIDTH - x;
    2604:	cb 01       	movw	r24, r22
    2606:	82 0f       	add	r24, r18
    2608:	91 1d       	adc	r25, r1
    260a:	81 38       	cpi	r24, 0x81	; 129
    260c:	91 05       	cpc	r25, r1
    260e:	14 f0       	brlt	.+4      	; 0x2614 <_ZN10MyArduboy28fillRectEiihah+0x72>
    2610:	20 e8       	ldi	r18, 0x80	; 128
    2612:	26 1b       	sub	r18, r22
    2614:	94 2f       	mov	r25, r20
    if (y + h > HEIGHT) h = HEIGHT - y;
    2616:	fa 01       	movw	r30, r20
    2618:	e0 0f       	add	r30, r16
    261a:	f1 1d       	adc	r31, r1
    261c:	07 fd       	sbrc	r16, 7
    261e:	fa 95       	dec	r31
    2620:	e1 34       	cpi	r30, 0x41	; 65
    2622:	f1 05       	cpc	r31, r1
    2624:	14 f0       	brlt	.+4      	; 0x262a <_ZN10MyArduboy28fillRectEiihah+0x88>
    2626:	00 e4       	ldi	r16, 0x40	; 64
    2628:	04 1b       	sub	r16, r20

    /*  Draw a filled rectangle  */
    uint8_t yOdd = y & 7;
    262a:	97 70       	andi	r25, 0x07	; 7
    uint8_t d = 0xFF << yOdd;
    262c:	8f ef       	ldi	r24, 0xFF	; 255
    262e:	09 2e       	mov	r0, r25
    2630:	01 c0       	rjmp	.+2      	; 0x2634 <_ZN10MyArduboy28fillRectEiihah+0x92>
    2632:	88 0f       	add	r24, r24
    2634:	0a 94       	dec	r0
    2636:	ea f7       	brpl	.-6      	; 0x2632 <_ZN10MyArduboy28fillRectEiihah+0x90>
    y -= yOdd;
    h += yOdd;
    2638:	09 0f       	add	r16, r25
    for (uint8_t *p = getBuffer() + x + (y / 8) * WIDTH; h > 0; h -= 8, p += WIDTH) {
    263a:	49 1b       	sub	r20, r25
    263c:	51 09       	sbc	r21, r1
    263e:	57 ff       	sbrs	r21, 7
    2640:	02 c0       	rjmp	.+4      	; 0x2646 <_ZN10MyArduboy28fillRectEiihah+0xa4>
    2642:	49 5f       	subi	r20, 0xF9	; 249
    2644:	5f 4f       	sbci	r21, 0xFF	; 255
    2646:	93 e0       	ldi	r25, 0x03	; 3
    2648:	55 95       	asr	r21
    264a:	47 95       	ror	r20
    264c:	9a 95       	dec	r25
    264e:	e1 f7       	brne	.-8      	; 0x2648 <_ZN10MyArduboy28fillRectEiihah+0xa6>
    2650:	56 95       	lsr	r21
    2652:	54 2f       	mov	r21, r20
    2654:	44 27       	eor	r20, r20
    2656:	57 95       	ror	r21
    2658:	47 95       	ror	r20
    265a:	64 0f       	add	r22, r20
    265c:	75 1f       	adc	r23, r21
    265e:	63 57       	subi	r22, 0x73	; 115
    2660:	7c 4f       	sbci	r23, 0xFC	; 252
        if (h < 8) d &= 0xFF >> (8 - h);
    2662:	48 e0       	ldi	r20, 0x08	; 8
    2664:	50 e0       	ldi	r21, 0x00	; 0
    2666:	af ef       	ldi	r26, 0xFF	; 255
    2668:	b0 e0       	ldi	r27, 0x00	; 0
    /*  Draw a filled rectangle  */
    uint8_t yOdd = y & 7;
    uint8_t d = 0xFF << yOdd;
    y -= yOdd;
    h += yOdd;
    for (uint8_t *p = getBuffer() + x + (y / 8) * WIDTH; h > 0; h -= 8, p += WIDTH) {
    266a:	10 16       	cp	r1, r16
    266c:	2c f5       	brge	.+74     	; 0x26b8 <_ZN10MyArduboy28fillRectEiihah+0x116>
        if (h < 8) d &= 0xFF >> (8 - h);
    266e:	08 30       	cpi	r16, 0x08	; 8
    2670:	64 f4       	brge	.+24     	; 0x268a <_ZN10MyArduboy28fillRectEiihah+0xe8>
    2672:	fa 01       	movw	r30, r20
    2674:	e0 1b       	sub	r30, r16
    2676:	f1 09       	sbc	r31, r1
    2678:	07 fd       	sbrc	r16, 7
    267a:	f3 95       	inc	r31
    267c:	ed 01       	movw	r28, r26
    267e:	02 c0       	rjmp	.+4      	; 0x2684 <_ZN10MyArduboy28fillRectEiihah+0xe2>
    2680:	d5 95       	asr	r29
    2682:	c7 95       	ror	r28
    2684:	ea 95       	dec	r30
    2686:	e2 f7       	brpl	.-8      	; 0x2680 <_ZN10MyArduboy28fillRectEiihah+0xde>
    2688:	8c 23       	and	r24, r28
        if (color == BLACK) {
    268a:	e1 10       	cpse	r14, r1
    268c:	0d c0       	rjmp	.+26     	; 0x26a8 <_ZN10MyArduboy28fillRectEiihah+0x106>
    }
}

void MyArduboy2::fillBeltBlack(uint8_t *p, uint8_t d, uint8_t w)
{
    d = ~d;
    268e:	80 95       	com	r24
    2690:	fb 01       	movw	r30, r22
    2692:	92 2f       	mov	r25, r18
    for (; w > 0; w--) {
        *p++ &= d;
    2694:	30 81       	ld	r19, Z
    2696:	38 23       	and	r19, r24
    2698:	31 93       	st	Z+, r19
}

void MyArduboy2::fillBeltBlack(uint8_t *p, uint8_t d, uint8_t w)
{
    d = ~d;
    for (; w > 0; w--) {
    269a:	91 50       	subi	r25, 0x01	; 1
    269c:	d9 f7       	brne	.-10     	; 0x2694 <_ZN10MyArduboy28fillRectEiihah+0xf2>
    269e:	08 50       	subi	r16, 0x08	; 8
    /*  Draw a filled rectangle  */
    uint8_t yOdd = y & 7;
    uint8_t d = 0xFF << yOdd;
    y -= yOdd;
    h += yOdd;
    for (uint8_t *p = getBuffer() + x + (y / 8) * WIDTH; h > 0; h -= 8, p += WIDTH) {
    26a0:	60 58       	subi	r22, 0x80	; 128
    26a2:	7f 4f       	sbci	r23, 0xFF	; 255
        if (color == BLACK) {
            fillBeltBlack(p, d, w);
        } else {
            fillBeltWhite(p, d, w);
        }
        d = 0xFF;
    26a4:	8f ef       	ldi	r24, 0xFF	; 255
    26a6:	e1 cf       	rjmp	.-62     	; 0x266a <_ZN10MyArduboy28fillRectEiihah+0xc8>
    26a8:	fb 01       	movw	r30, r22
    uint8_t d = 0xFF << yOdd;
    y -= yOdd;
    h += yOdd;
    for (uint8_t *p = getBuffer() + x + (y / 8) * WIDTH; h > 0; h -= 8, p += WIDTH) {
        if (h < 8) d &= 0xFF >> (8 - h);
        if (color == BLACK) {
    26aa:	92 2f       	mov	r25, r18
}

void MyArduboy2::fillBeltWhite(uint8_t *p, uint8_t d, uint8_t w)
{
    for (; w > 0; w--) {
        *p++ |= d;
    26ac:	30 81       	ld	r19, Z
    26ae:	38 2b       	or	r19, r24
    26b0:	31 93       	st	Z+, r19
    }
}

void MyArduboy2::fillBeltWhite(uint8_t *p, uint8_t d, uint8_t w)
{
    for (; w > 0; w--) {
    26b2:	91 50       	subi	r25, 0x01	; 1
    26b4:	d9 f7       	brne	.-10     	; 0x26ac <_ZN10MyArduboy28fillRectEiihah+0x10a>
    26b6:	f3 cf       	rjmp	.-26     	; 0x269e <_ZN10MyArduboy28fillRectEiihah+0xfc>
        } else {
            fillBeltWhite(p, d, w);
        }
        d = 0xFF;
    }
}
    26b8:	df 91       	pop	r29
    26ba:	cf 91       	pop	r28
    26bc:	0f 91       	pop	r16
    26be:	ef 90       	pop	r14
    26c0:	08 95       	ret

000026c2 <_ZN10MyArduboy25writeEh>:
    textColor = fgColor;
    textBackground = bgColor;
}

size_t MyArduboy2::write(uint8_t c)
{
    26c2:	2f 92       	push	r2
    26c4:	3f 92       	push	r3
    26c6:	4f 92       	push	r4
    26c8:	5f 92       	push	r5
    26ca:	6f 92       	push	r6
    26cc:	7f 92       	push	r7
    26ce:	8f 92       	push	r8
    26d0:	9f 92       	push	r9
    26d2:	af 92       	push	r10
    26d4:	bf 92       	push	r11
    26d6:	cf 92       	push	r12
    26d8:	df 92       	push	r13
    26da:	ef 92       	push	r14
    26dc:	ff 92       	push	r15
    26de:	0f 93       	push	r16
    26e0:	1f 93       	push	r17
    26e2:	cf 93       	push	r28
    26e4:	df 93       	push	r29
    26e6:	cd b7       	in	r28, 0x3d	; 61
    26e8:	de b7       	in	r29, 0x3e	; 62
    26ea:	28 97       	sbiw	r28, 0x08	; 8
    26ec:	0f b6       	in	r0, 0x3f	; 63
    26ee:	f8 94       	cli
    26f0:	de bf       	out	0x3e, r29	; 62
    26f2:	0f be       	out	0x3f, r0	; 63
    26f4:	cd bf       	out	0x3d, r28	; 61
    if (c == '\n') {
    26f6:	6a 30       	cpi	r22, 0x0A	; 10
    26f8:	71 f5       	brne	.+92     	; 0x2756 <_ZN10MyArduboy25writeEh+0x94>
        cursor_y += textSize * 6;
    26fa:	20 91 05 01 	lds	r18, 0x0105	; 0x800105 <_ZN8Arduboy28textSizeE>
    26fe:	80 91 71 03 	lds	r24, 0x0371	; 0x800371 <_ZN8Arduboy28cursor_yE>
    2702:	90 91 72 03 	lds	r25, 0x0372	; 0x800372 <_ZN8Arduboy28cursor_yE+0x1>
    2706:	36 e0       	ldi	r19, 0x06	; 6
    2708:	23 9f       	mul	r18, r19
    270a:	80 0d       	add	r24, r0
    270c:	91 1d       	adc	r25, r1
    270e:	11 24       	eor	r1, r1
    2710:	90 93 72 03 	sts	0x0372, r25	; 0x800372 <_ZN8Arduboy28cursor_yE+0x1>
    2714:	80 93 71 03 	sts	0x0371, r24	; 0x800371 <_ZN8Arduboy28cursor_yE>
        cursor_x = 0;
    2718:	10 92 74 03 	sts	0x0374, r1	; 0x800374 <_ZN8Arduboy28cursor_xE+0x1>
    271c:	10 92 73 03 	sts	0x0373, r1	; 0x800373 <_ZN8Arduboy28cursor_xE>
        drawChar(cursor_x, cursor_y, c, textColor, textBackground, textSize);
        cursor_x += textSize * 6;
        if (textWrap && (cursor_x > (WIDTH - textSize * 6))) write('\n');
    }
    return 1; // temporary
}
    2720:	81 e0       	ldi	r24, 0x01	; 1
    2722:	90 e0       	ldi	r25, 0x00	; 0
    2724:	28 96       	adiw	r28, 0x08	; 8
    2726:	0f b6       	in	r0, 0x3f	; 63
    2728:	f8 94       	cli
    272a:	de bf       	out	0x3e, r29	; 62
    272c:	0f be       	out	0x3f, r0	; 63
    272e:	cd bf       	out	0x3d, r28	; 61
    2730:	df 91       	pop	r29
    2732:	cf 91       	pop	r28
    2734:	1f 91       	pop	r17
    2736:	0f 91       	pop	r16
    2738:	ff 90       	pop	r15
    273a:	ef 90       	pop	r14
    273c:	df 90       	pop	r13
    273e:	cf 90       	pop	r12
    2740:	bf 90       	pop	r11
    2742:	af 90       	pop	r10
    2744:	9f 90       	pop	r9
    2746:	8f 90       	pop	r8
    2748:	7f 90       	pop	r7
    274a:	6f 90       	pop	r6
    274c:	5f 90       	pop	r5
    274e:	4f 90       	pop	r4
    2750:	3f 90       	pop	r3
    2752:	2f 90       	pop	r2
    2754:	08 95       	ret
size_t MyArduboy2::write(uint8_t c)
{
    if (c == '\n') {
        cursor_y += textSize * 6;
        cursor_x = 0;
    } else if (c >= ' ' && c <= '_') {
    2756:	20 ee       	ldi	r18, 0xE0	; 224
    2758:	26 0f       	add	r18, r22
    275a:	20 34       	cpi	r18, 0x40	; 64
    275c:	08 f7       	brcc	.-62     	; 0x2720 <_ZN10MyArduboy25writeEh+0x5e>
        drawChar(cursor_x, cursor_y, c, textColor, textBackground, textSize);
    275e:	10 91 05 01 	lds	r17, 0x0105	; 0x800105 <_ZN8Arduboy28textSizeE>
    2762:	20 91 73 03 	lds	r18, 0x0373	; 0x800373 <_ZN8Arduboy28cursor_xE>
    2766:	30 91 74 03 	lds	r19, 0x0374	; 0x800374 <_ZN8Arduboy28cursor_xE+0x1>
    276a:	38 87       	std	Y+8, r19	; 0x08
    276c:	2f 83       	std	Y+7, r18	; 0x07
    276e:	46 e0       	ldi	r20, 0x06	; 6
    2770:	14 9f       	mul	r17, r20
    2772:	90 01       	movw	r18, r0
    2774:	11 24       	eor	r1, r1
    2776:	3c 83       	std	Y+4, r19	; 0x04
    2778:	2b 83       	std	Y+3, r18	; 0x03

void MyArduboy2::drawChar(int16_t x, int16_t y, unsigned char c, uint8_t color, uint8_t bg, uint8_t size)
{
    bool draw_bg = bg != color;

    if (x >= WIDTH || y >= HEIGHT || x + 5 * size < 0 || y + 6 * size < 0) return;
    277a:	2f 81       	ldd	r18, Y+7	; 0x07
    277c:	38 85       	ldd	r19, Y+8	; 0x08
    277e:	20 38       	cpi	r18, 0x80	; 128
    2780:	31 05       	cpc	r19, r1
    2782:	0c f0       	brlt	.+2      	; 0x2786 <_ZN10MyArduboy25writeEh+0xc4>
    2784:	43 c0       	rjmp	.+134    	; 0x280c <_ZN10MyArduboy25writeEh+0x14a>
{
    if (c == '\n') {
        cursor_y += textSize * 6;
        cursor_x = 0;
    } else if (c >= ' ' && c <= '_') {
        drawChar(cursor_x, cursor_y, c, textColor, textBackground, textSize);
    2786:	80 90 71 03 	lds	r8, 0x0371	; 0x800371 <_ZN8Arduboy28cursor_yE>
    278a:	90 90 72 03 	lds	r9, 0x0372	; 0x800372 <_ZN8Arduboy28cursor_yE+0x1>

void MyArduboy2::drawChar(int16_t x, int16_t y, unsigned char c, uint8_t color, uint8_t bg, uint8_t size)
{
    bool draw_bg = bg != color;

    if (x >= WIDTH || y >= HEIGHT || x + 5 * size < 0 || y + 6 * size < 0) return;
    278e:	30 e4       	ldi	r19, 0x40	; 64
    2790:	83 16       	cp	r8, r19
    2792:	91 04       	cpc	r9, r1
    2794:	0c f0       	brlt	.+2      	; 0x2798 <_ZN10MyArduboy25writeEh+0xd6>
    2796:	3a c0       	rjmp	.+116    	; 0x280c <_ZN10MyArduboy25writeEh+0x14a>
    2798:	2f 81       	ldd	r18, Y+7	; 0x07
    279a:	38 85       	ldd	r19, Y+8	; 0x08
    279c:	45 e0       	ldi	r20, 0x05	; 5
    279e:	14 9f       	mul	r17, r20
    27a0:	20 0d       	add	r18, r0
    27a2:	31 1d       	adc	r19, r1
    27a4:	11 24       	eor	r1, r1
    27a6:	37 fd       	sbrc	r19, 7
    27a8:	31 c0       	rjmp	.+98     	; 0x280c <_ZN10MyArduboy25writeEh+0x14a>
    27aa:	2b 81       	ldd	r18, Y+3	; 0x03
    27ac:	3c 81       	ldd	r19, Y+4	; 0x04
    27ae:	28 0d       	add	r18, r8
    27b0:	39 1d       	adc	r19, r9
    27b2:	37 fd       	sbrc	r19, 7
    27b4:	2b c0       	rjmp	.+86     	; 0x280c <_ZN10MyArduboy25writeEh+0x14a>
    27b6:	9e 83       	std	Y+6, r25	; 0x06
    27b8:	8d 83       	std	Y+5, r24	; 0x05
{
    if (c == '\n') {
        cursor_y += textSize * 6;
        cursor_x = 0;
    } else if (c >= ' ' && c <= '_') {
        drawChar(cursor_x, cursor_y, c, textColor, textBackground, textSize);
    27ba:	f0 90 04 01 	lds	r15, 0x0104	; 0x800104 <_ZN8Arduboy29textColorE>
void MyArduboy2::drawChar(int16_t x, int16_t y, unsigned char c, uint8_t color, uint8_t bg, uint8_t size)
{
    bool draw_bg = bg != color;

    if (x >= WIDTH || y >= HEIGHT || x + 5 * size < 0 || y + 6 * size < 0) return;
    uint32_t ptn = pgm_read_dword(imgFont + (c - ' '));
    27be:	84 e0       	ldi	r24, 0x04	; 4
    27c0:	68 9f       	mul	r22, r24
    27c2:	f0 01       	movw	r30, r0
    27c4:	11 24       	eor	r1, r1
    27c6:	e6 5a       	subi	r30, 0xA6	; 166
    27c8:	ff 4f       	sbci	r31, 0xFF	; 255
    27ca:	45 90       	lpm	r4, Z+
    27cc:	55 90       	lpm	r5, Z+
    27ce:	65 90       	lpm	r6, Z+
    27d0:	74 90       	lpm	r7, Z
    if (size == 1) {
    27d2:	11 30       	cpi	r17, 0x01	; 1
    27d4:	71 f5       	brne	.+92     	; 0x2832 <_ZN10MyArduboy25writeEh+0x170>
    27d6:	af 80       	ldd	r10, Y+7	; 0x07
    27d8:	b8 84       	ldd	r11, Y+8	; 0x08
    27da:	16 e0       	ldi	r17, 0x06	; 6
    27dc:	d1 2c       	mov	r13, r1
    27de:	c1 2c       	mov	r12, r1
        for (int8_t i = 0; i < 6; i++) {
            for (int8_t j = 0; j < 6; j++) {
                bool draw_fg = ptn & 0x1;
                if (draw_fg || draw_bg) {
    27e0:	40 fc       	sbrc	r4, 0
    27e2:	1f c0       	rjmp	.+62     	; 0x2822 <_ZN10MyArduboy25writeEh+0x160>
                    drawPixel(x + i, y + j, (draw_fg) ? color : bg);
    27e4:	40 e0       	ldi	r20, 0x00	; 0
    uint32_t ptn = pgm_read_dword(imgFont + (c - ' '));
    if (size == 1) {
        for (int8_t i = 0; i < 6; i++) {
            for (int8_t j = 0; j < 6; j++) {
                bool draw_fg = ptn & 0x1;
                if (draw_fg || draw_bg) {
    27e6:	f1 10       	cpse	r15, r1
    27e8:	1d c0       	rjmp	.+58     	; 0x2824 <_ZN10MyArduboy25writeEh+0x162>
                    drawPixel(x + i, y + j, (draw_fg) ? color : bg);
                }
                ptn >>= 1;
    27ea:	76 94       	lsr	r7
    27ec:	67 94       	ror	r6
    27ee:	57 94       	ror	r5
    27f0:	47 94       	ror	r4
    27f2:	9f ef       	ldi	r25, 0xFF	; 255
    27f4:	c9 1a       	sub	r12, r25
    27f6:	d9 0a       	sbc	r13, r25

    if (x >= WIDTH || y >= HEIGHT || x + 5 * size < 0 || y + 6 * size < 0) return;
    uint32_t ptn = pgm_read_dword(imgFont + (c - ' '));
    if (size == 1) {
        for (int8_t i = 0; i < 6; i++) {
            for (int8_t j = 0; j < 6; j++) {
    27f8:	26 e0       	ldi	r18, 0x06	; 6
    27fa:	c2 16       	cp	r12, r18
    27fc:	d1 04       	cpc	r13, r1
    27fe:	81 f7       	brne	.-32     	; 0x27e0 <_ZN10MyArduboy25writeEh+0x11e>
    2800:	11 50       	subi	r17, 0x01	; 1
    2802:	3f ef       	ldi	r19, 0xFF	; 255
    2804:	a3 1a       	sub	r10, r19
    2806:	b3 0a       	sbc	r11, r19
    bool draw_bg = bg != color;

    if (x >= WIDTH || y >= HEIGHT || x + 5 * size < 0 || y + 6 * size < 0) return;
    uint32_t ptn = pgm_read_dword(imgFont + (c - ' '));
    if (size == 1) {
        for (int8_t i = 0; i < 6; i++) {
    2808:	11 11       	cpse	r17, r1
    280a:	e8 cf       	rjmp	.-48     	; 0x27dc <_ZN10MyArduboy25writeEh+0x11a>
    if (c == '\n') {
        cursor_y += textSize * 6;
        cursor_x = 0;
    } else if (c >= ' ' && c <= '_') {
        drawChar(cursor_x, cursor_y, c, textColor, textBackground, textSize);
        cursor_x += textSize * 6;
    280c:	8f 81       	ldd	r24, Y+7	; 0x07
    280e:	98 85       	ldd	r25, Y+8	; 0x08
    2810:	2b 81       	ldd	r18, Y+3	; 0x03
    2812:	3c 81       	ldd	r19, Y+4	; 0x04
    2814:	82 0f       	add	r24, r18
    2816:	93 1f       	adc	r25, r19
    2818:	90 93 74 03 	sts	0x0374, r25	; 0x800374 <_ZN8Arduboy28cursor_xE+0x1>
    281c:	80 93 73 03 	sts	0x0373, r24	; 0x800373 <_ZN8Arduboy28cursor_xE>
    2820:	7f cf       	rjmp	.-258    	; 0x2720 <_ZN10MyArduboy25writeEh+0x5e>
{
    if (c == '\n') {
        cursor_y += textSize * 6;
        cursor_x = 0;
    } else if (c >= ' ' && c <= '_') {
        drawChar(cursor_x, cursor_y, c, textColor, textBackground, textSize);
    2822:	4f 2d       	mov	r20, r15
    if (size == 1) {
        for (int8_t i = 0; i < 6; i++) {
            for (int8_t j = 0; j < 6; j++) {
                bool draw_fg = ptn & 0x1;
                if (draw_fg || draw_bg) {
                    drawPixel(x + i, y + j, (draw_fg) ? color : bg);
    2824:	b4 01       	movw	r22, r8
    2826:	6c 0d       	add	r22, r12
    2828:	7d 1d       	adc	r23, r13
    282a:	c5 01       	movw	r24, r10
    282c:	0e 94 4a 0a 	call	0x1494	; 0x1494 <_ZN12Arduboy2Base9drawPixelEiih>
    2830:	dc cf       	rjmp	.-72     	; 0x27ea <_ZN10MyArduboy25writeEh+0x128>
    2832:	81 2f       	mov	r24, r17
    2834:	90 e0       	ldi	r25, 0x00	; 0
    2836:	9a 83       	std	Y+2, r25	; 0x02
    2838:	89 83       	std	Y+1, r24	; 0x01
    283a:	cf 80       	ldd	r12, Y+7	; 0x07
    283c:	d8 84       	ldd	r13, Y+8	; 0x08
{
    bool draw_bg = bg != color;

    if (x >= WIDTH || y >= HEIGHT || x + 5 * size < 0 || y + 6 * size < 0) return;
    uint32_t ptn = pgm_read_dword(imgFont + (c - ' '));
    if (size == 1) {
    283e:	26 e0       	ldi	r18, 0x06	; 6
    2840:	32 2e       	mov	r3, r18
    2842:	54 01       	movw	r10, r8
    2844:	96 e0       	ldi	r25, 0x06	; 6
    2846:	29 2e       	mov	r2, r25
        }
    } else {
        for (int8_t i = 0; i < 6; i++) {
            for (int8_t j = 0; j < 6; j++) {
                bool draw_fg = ptn & 0x1;
                if (draw_fg || draw_bg) {
    2848:	40 fc       	sbrc	r4, 0
    284a:	14 c0       	rjmp	.+40     	; 0x2874 <_ZN10MyArduboy25writeEh+0x1b2>
                    fillRect(x + i * size, y + j * size, size, size, (draw_fg) ? color : bg);
    284c:	e1 2c       	mov	r14, r1
        }
    } else {
        for (int8_t i = 0; i < 6; i++) {
            for (int8_t j = 0; j < 6; j++) {
                bool draw_fg = ptn & 0x1;
                if (draw_fg || draw_bg) {
    284e:	f1 10       	cpse	r15, r1
    2850:	12 c0       	rjmp	.+36     	; 0x2876 <_ZN10MyArduboy25writeEh+0x1b4>
                    fillRect(x + i * size, y + j * size, size, size, (draw_fg) ? color : bg);
                }
                ptn >>= 1;
    2852:	76 94       	lsr	r7
    2854:	67 94       	ror	r6
    2856:	57 94       	ror	r5
    2858:	47 94       	ror	r4
    285a:	2a 94       	dec	r2
    285c:	29 81       	ldd	r18, Y+1	; 0x01
    285e:	3a 81       	ldd	r19, Y+2	; 0x02
    2860:	a2 0e       	add	r10, r18
    2862:	b3 1e       	adc	r11, r19
                ptn >>= 1;
            }
        }
    } else {
        for (int8_t i = 0; i < 6; i++) {
            for (int8_t j = 0; j < 6; j++) {
    2864:	21 10       	cpse	r2, r1
    2866:	f0 cf       	rjmp	.-32     	; 0x2848 <_ZN10MyArduboy25writeEh+0x186>
    2868:	3a 94       	dec	r3
    286a:	c2 0e       	add	r12, r18
    286c:	d3 1e       	adc	r13, r19
                }
                ptn >>= 1;
            }
        }
    } else {
        for (int8_t i = 0; i < 6; i++) {
    286e:	31 10       	cpse	r3, r1
    2870:	e8 cf       	rjmp	.-48     	; 0x2842 <_ZN10MyArduboy25writeEh+0x180>
    2872:	cc cf       	rjmp	.-104    	; 0x280c <_ZN10MyArduboy25writeEh+0x14a>
{
    if (c == '\n') {
        cursor_y += textSize * 6;
        cursor_x = 0;
    } else if (c >= ' ' && c <= '_') {
        drawChar(cursor_x, cursor_y, c, textColor, textBackground, textSize);
    2874:	ef 2c       	mov	r14, r15
    } else {
        for (int8_t i = 0; i < 6; i++) {
            for (int8_t j = 0; j < 6; j++) {
                bool draw_fg = ptn & 0x1;
                if (draw_fg || draw_bg) {
                    fillRect(x + i * size, y + j * size, size, size, (draw_fg) ? color : bg);
    2876:	01 2f       	mov	r16, r17
    2878:	21 2f       	mov	r18, r17
    287a:	a5 01       	movw	r20, r10
    287c:	b6 01       	movw	r22, r12
    287e:	8d 81       	ldd	r24, Y+5	; 0x05
    2880:	9e 81       	ldd	r25, Y+6	; 0x06
    2882:	0e 94 d1 12 	call	0x25a2	; 0x25a2 <_ZN10MyArduboy28fillRectEiihah>
    2886:	e5 cf       	rjmp	.-54     	; 0x2852 <_ZN10MyArduboy25writeEh+0x190>

00002888 <_ZN5Print5printEc.constprop.21>:
  return write(str);
}

size_t Print::print(char c)
{
  return write(c);
    2888:	0c 94 61 13 	jmp	0x26c2	; 0x26c2 <_ZN10MyArduboy25writeEh>

0000288c <_Z13printGameSeediim>:
        arduboy.print(s);
    }
}

void printGameSeed(int16_t x, int16_t y, uint32_t seed)
{
    288c:	8f 92       	push	r8
    288e:	9f 92       	push	r9
    2890:	af 92       	push	r10
    2892:	bf 92       	push	r11
    2894:	cf 92       	push	r12
    2896:	df 92       	push	r13
    2898:	ef 92       	push	r14
    289a:	ff 92       	push	r15
    289c:	cf 93       	push	r28
    289e:	df 93       	push	r29
    28a0:	69 01       	movw	r12, r18
    28a2:	7a 01       	movw	r14, r20
  }
}

void Arduboy2::setCursor(int16_t x, int16_t y)
{
  cursor_x = x;
    28a4:	90 93 74 03 	sts	0x0374, r25	; 0x800374 <_ZN8Arduboy28cursor_xE+0x1>
    28a8:	80 93 73 03 	sts	0x0373, r24	; 0x800373 <_ZN8Arduboy28cursor_xE>
  cursor_y = y;
    28ac:	70 93 72 03 	sts	0x0372, r23	; 0x800372 <_ZN8Arduboy28cursor_yE+0x1>
    28b0:	60 93 71 03 	sts	0x0371, r22	; 0x800371 <_ZN8Arduboy28cursor_yE>
    28b4:	c5 e0       	ldi	r28, 0x05	; 5
    28b6:	d0 e0       	ldi	r29, 0x00	; 0
    arduboy.setCursor(x, y);
    for (int i = 0; i < GAME_SEED_TOKEN_MAX; i++) {
        int token = seed % GAME_SEED_TOKEN_VAL;
    28b8:	8b e1       	ldi	r24, 0x1B	; 27
    28ba:	88 2e       	mov	r8, r24
    28bc:	91 2c       	mov	r9, r1
    28be:	a1 2c       	mov	r10, r1
    28c0:	b1 2c       	mov	r11, r1
    28c2:	c7 01       	movw	r24, r14
    28c4:	b6 01       	movw	r22, r12
    28c6:	a5 01       	movw	r20, r10
    28c8:	94 01       	movw	r18, r8
    28ca:	0e 94 73 2c 	call	0x58e6	; 0x58e6 <__udivmodsi4>
        char c = (token < GAME_SEED_TOKEN_ALP) ? 'A' + token : '.';
    28ce:	6a 31       	cpi	r22, 0x1A	; 26
    28d0:	71 05       	cpc	r23, r1
    28d2:	d1 f0       	breq	.+52     	; 0x2908 <_Z13printGameSeediim+0x7c>
    28d4:	6f 5b       	subi	r22, 0xBF	; 191
        arduboy.print(c);
    28d6:	8d ed       	ldi	r24, 0xDD	; 221
    28d8:	97 e0       	ldi	r25, 0x07	; 7
    28da:	0e 94 44 14 	call	0x2888	; 0x2888 <_ZN5Print5printEc.constprop.21>
        seed /= GAME_SEED_TOKEN_VAL;
    28de:	c7 01       	movw	r24, r14
    28e0:	b6 01       	movw	r22, r12
    28e2:	a5 01       	movw	r20, r10
    28e4:	94 01       	movw	r18, r8
    28e6:	0e 94 73 2c 	call	0x58e6	; 0x58e6 <__udivmodsi4>
    28ea:	69 01       	movw	r12, r18
    28ec:	7a 01       	movw	r14, r20
    28ee:	21 97       	sbiw	r28, 0x01	; 1
}

void printGameSeed(int16_t x, int16_t y, uint32_t seed)
{
    arduboy.setCursor(x, y);
    for (int i = 0; i < GAME_SEED_TOKEN_MAX; i++) {
    28f0:	41 f7       	brne	.-48     	; 0x28c2 <_Z13printGameSeediim+0x36>
        int token = seed % GAME_SEED_TOKEN_VAL;
        char c = (token < GAME_SEED_TOKEN_ALP) ? 'A' + token : '.';
        arduboy.print(c);
        seed /= GAME_SEED_TOKEN_VAL;
    }
}
    28f2:	df 91       	pop	r29
    28f4:	cf 91       	pop	r28
    28f6:	ff 90       	pop	r15
    28f8:	ef 90       	pop	r14
    28fa:	df 90       	pop	r13
    28fc:	cf 90       	pop	r12
    28fe:	bf 90       	pop	r11
    2900:	af 90       	pop	r10
    2902:	9f 90       	pop	r9
    2904:	8f 90       	pop	r8
    2906:	08 95       	ret
void printGameSeed(int16_t x, int16_t y, uint32_t seed)
{
    arduboy.setCursor(x, y);
    for (int i = 0; i < GAME_SEED_TOKEN_MAX; i++) {
        int token = seed % GAME_SEED_TOKEN_VAL;
        char c = (token < GAME_SEED_TOKEN_ALP) ? 'A' + token : '.';
    2908:	6e e2       	ldi	r22, 0x2E	; 46
    290a:	e5 cf       	rjmp	.-54     	; 0x28d6 <_Z13printGameSeediim+0x4a>

0000290c <_ZN10MyArduboy27printExIPK19__FlashStringHelperEEjiiT_.constprop.13>:
    bool    buttonDown(uint8_t buttons);
    bool    buttonPressed(uint8_t buttons);
    bool    buttonUp(uint8_t buttons);
    void    setTextColors(uint8_t color, uint8_t bg);
    virtual size_t write(uint8_t);
    template <typename T> size_t printEx(int16_t x, int16_t y, T p) { setCursor(x, y); return print(p); }
    290c:	0f 93       	push	r16
    290e:	1f 93       	push	r17
    2910:	cf 93       	push	r28
    2912:	df 93       	push	r29
    2914:	8a 01       	movw	r16, r20
  }
}

void Arduboy2::setCursor(int16_t x, int16_t y)
{
  cursor_x = x;
    2916:	90 93 74 03 	sts	0x0374, r25	; 0x800374 <_ZN8Arduboy28cursor_xE+0x1>
    291a:	80 93 73 03 	sts	0x0373, r24	; 0x800373 <_ZN8Arduboy28cursor_xE>
  cursor_y = y;
    291e:	70 93 72 03 	sts	0x0372, r23	; 0x800372 <_ZN8Arduboy28cursor_yE+0x1>
    2922:	60 93 71 03 	sts	0x0371, r22	; 0x800371 <_ZN8Arduboy28cursor_yE>
}

size_t Print::print(const __FlashStringHelper *ifsh)
{
  PGM_P p = reinterpret_cast<PGM_P>(ifsh);
  size_t n = 0;
    2926:	d0 e0       	ldi	r29, 0x00	; 0
    2928:	c0 e0       	ldi	r28, 0x00	; 0
  while (1) {
    unsigned char c = pgm_read_byte(p++);
    292a:	f8 01       	movw	r30, r16
    292c:	ec 0f       	add	r30, r28
    292e:	fd 1f       	adc	r31, r29
    2930:	64 91       	lpm	r22, Z
    if (c == 0) break;
    2932:	66 23       	and	r22, r22
    2934:	41 f0       	breq	.+16     	; 0x2946 <_ZN10MyArduboy27printExIPK19__FlashStringHelperEEjiiT_.constprop.13+0x3a>
    if (write(c)) n++;
    2936:	8d ed       	ldi	r24, 0xDD	; 221
    2938:	97 e0       	ldi	r25, 0x07	; 7
    293a:	0e 94 61 13 	call	0x26c2	; 0x26c2 <_ZN10MyArduboy25writeEh>
    293e:	89 2b       	or	r24, r25
    2940:	11 f0       	breq	.+4      	; 0x2946 <_ZN10MyArduboy27printExIPK19__FlashStringHelperEEjiiT_.constprop.13+0x3a>
    2942:	21 96       	adiw	r28, 0x01	; 1
    2944:	f2 cf       	rjmp	.-28     	; 0x292a <_ZN10MyArduboy27printExIPK19__FlashStringHelperEEjiiT_.constprop.13+0x1e>
    2946:	ce 01       	movw	r24, r28
    2948:	df 91       	pop	r29
    294a:	cf 91       	pop	r28
    294c:	1f 91       	pop	r17
    294e:	0f 91       	pop	r16
    2950:	08 95       	ret

00002952 <_ZL13drawCodeEntryv>:
{
    if (isInvalid) drawText(creditText, 11);
}

static void drawCodeEntry(void)
{
    2952:	cf 92       	push	r12
    2954:	df 92       	push	r13
    2956:	ef 92       	push	r14
    2958:	0f 93       	push	r16
    295a:	cf 93       	push	r28
    if (isInvalid) {
    295c:	80 91 4b 03 	lds	r24, 0x034B	; 0x80034b <isInvalid>
    2960:	88 23       	and	r24, r24
    2962:	c1 f0       	breq	.+48     	; 0x2994 <_ZL13drawCodeEntryv+0x42>
        drawTitleLogo();
    2964:	0e 94 68 0a 	call	0x14d0	; 0x14d0 <_ZL13drawTitleLogov>
        arduboy.printEx(28, 57, F("CANCEL   START"));
    2968:	40 e5       	ldi	r20, 0x50	; 80
    296a:	59 e0       	ldi	r21, 0x09	; 9
    296c:	69 e3       	ldi	r22, 0x39	; 57
    296e:	70 e0       	ldi	r23, 0x00	; 0
    2970:	8c e1       	ldi	r24, 0x1C	; 28
    2972:	90 e0       	ldi	r25, 0x00	; 0
    2974:	0e 94 86 14 	call	0x290c	; 0x290c <_ZN10MyArduboy27printExIPK19__FlashStringHelperEEjiiT_.constprop.13>
        drawButtonIcon(16, 56, false);
    2978:	40 e0       	ldi	r20, 0x00	; 0
    297a:	68 e3       	ldi	r22, 0x38	; 56
    297c:	70 e0       	ldi	r23, 0x00	; 0
    297e:	80 e1       	ldi	r24, 0x10	; 16
    2980:	90 e0       	ldi	r25, 0x00	; 0
    2982:	0e 94 20 0d 	call	0x1a40	; 0x1a40 <_Z14drawButtonIconiib>
        drawButtonIcon(70, 56, true);
    2986:	41 e0       	ldi	r20, 0x01	; 1
    2988:	68 e3       	ldi	r22, 0x38	; 56
    298a:	70 e0       	ldi	r23, 0x00	; 0
    298c:	86 e4       	ldi	r24, 0x46	; 70
    298e:	90 e0       	ldi	r25, 0x00	; 0
    2990:	0e 94 20 0d 	call	0x1a40	; 0x1a40 <_Z14drawButtonIconiib>
    }
    if (isSettingChenged) {
    2994:	80 91 4a 03 	lds	r24, 0x034A	; 0x80034a <_ZL16isSettingChenged>
    2998:	88 23       	and	r24, r24
    299a:	19 f1       	breq	.+70     	; 0x29e2 <_ZL13drawCodeEntryv+0x90>
        if (!isInvalid) arduboy.fillRect(37, 33, 54, 18, BLACK);
    299c:	80 91 4b 03 	lds	r24, 0x034B	; 0x80034b <isInvalid>
    29a0:	81 11       	cpse	r24, r1
    29a2:	0b c0       	rjmp	.+22     	; 0x29ba <_ZL13drawCodeEntryv+0x68>
    29a4:	e1 2c       	mov	r14, r1
    29a6:	02 e1       	ldi	r16, 0x12	; 18
    29a8:	26 e3       	ldi	r18, 0x36	; 54
    29aa:	41 e2       	ldi	r20, 0x21	; 33
    29ac:	50 e0       	ldi	r21, 0x00	; 0
    29ae:	65 e2       	ldi	r22, 0x25	; 37
    29b0:	70 e0       	ldi	r23, 0x00	; 0
    29b2:	8d ed       	ldi	r24, 0xDD	; 221
    29b4:	97 e0       	ldi	r25, 0x07	; 7
    29b6:	0e 94 d1 12 	call	0x25a2	; 0x25a2 <_ZN10MyArduboy28fillRectEiihah>
}

void Arduboy2::setTextSize(uint8_t s)
{
  // size must always be 1 or higher
  textSize = max(1, s);
    29ba:	82 e0       	ldi	r24, 0x02	; 2
    29bc:	80 93 05 01 	sts	0x0105, r24	; 0x800105 <_ZN8Arduboy28textSizeE>
        arduboy.setTextSize(2);
        printGameSeed(35, 37, gameSeedTmp);
    29c0:	20 91 46 03 	lds	r18, 0x0346	; 0x800346 <_ZL11gameSeedTmp>
    29c4:	30 91 47 03 	lds	r19, 0x0347	; 0x800347 <_ZL11gameSeedTmp+0x1>
    29c8:	40 91 48 03 	lds	r20, 0x0348	; 0x800348 <_ZL11gameSeedTmp+0x2>
    29cc:	50 91 49 03 	lds	r21, 0x0349	; 0x800349 <_ZL11gameSeedTmp+0x3>
    29d0:	65 e2       	ldi	r22, 0x25	; 37
    29d2:	70 e0       	ldi	r23, 0x00	; 0
    29d4:	83 e2       	ldi	r24, 0x23	; 35
    29d6:	90 e0       	ldi	r25, 0x00	; 0
    29d8:	0e 94 46 14 	call	0x288c	; 0x288c <_Z13printGameSeediim>
    29dc:	81 e0       	ldi	r24, 0x01	; 1
    29de:	80 93 05 01 	sts	0x0105, r24	; 0x800105 <_ZN8Arduboy28textSizeE>
    29e2:	c0 91 45 03 	lds	r28, 0x0345	; 0x800345 <counter>
        arduboy.setTextSize(1);
    }
    if (isSettingChenged || (counter & 3) == 0) {
    29e6:	80 91 4a 03 	lds	r24, 0x034A	; 0x80034a <_ZL16isSettingChenged>
    29ea:	81 11       	cpse	r24, r1
    29ec:	03 c0       	rjmp	.+6      	; 0x29f4 <_ZL13drawCodeEntryv+0xa2>
    29ee:	8c 2f       	mov	r24, r28
    29f0:	83 70       	andi	r24, 0x03	; 3
    29f2:	f1 f4       	brne	.+60     	; 0x2a30 <_ZL13drawCodeEntryv+0xde>
        uint8_t color = bitRead(counter, 2);
    29f4:	c2 fb       	bst	r28, 2
    29f6:	cc 27       	eor	r28, r28
    29f8:	c0 f9       	bld	r28, 0
        int16_t dx = 37 + gameSeedX * 12;
    29fa:	c0 90 44 03 	lds	r12, 0x0344	; 0x800344 <_ZL9gameSeedX>
    29fe:	8c e0       	ldi	r24, 0x0C	; 12
    2a00:	c8 9e       	mul	r12, r24
    2a02:	60 01       	movw	r12, r0
    2a04:	11 24       	eor	r1, r1
    2a06:	85 e2       	ldi	r24, 0x25	; 37
    2a08:	c8 0e       	add	r12, r24
    2a0a:	d1 1c       	adc	r13, r1
        arduboy.drawBitmap(dx, 32, imgSpinners[0], IMG_SPINNERS_W, IMG_SPINNERS_H, color);
    2a0c:	ec 2e       	mov	r14, r28
    2a0e:	03 e0       	ldi	r16, 0x03	; 3
    2a10:	26 e0       	ldi	r18, 0x06	; 6
    2a12:	44 e4       	ldi	r20, 0x44	; 68
    2a14:	59 e0       	ldi	r21, 0x09	; 9
    2a16:	60 e2       	ldi	r22, 0x20	; 32
    2a18:	70 e0       	ldi	r23, 0x00	; 0
    2a1a:	c6 01       	movw	r24, r12
    2a1c:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh>
        arduboy.drawBitmap(dx, 48, imgSpinners[1], IMG_SPINNERS_W, IMG_SPINNERS_H, color);
    2a20:	26 e0       	ldi	r18, 0x06	; 6
    2a22:	4a e4       	ldi	r20, 0x4A	; 74
    2a24:	59 e0       	ldi	r21, 0x09	; 9
    2a26:	60 e3       	ldi	r22, 0x30	; 48
    2a28:	70 e0       	ldi	r23, 0x00	; 0
    2a2a:	c6 01       	movw	r24, r12
    2a2c:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh>
    }
    isSettingChenged = false;
    2a30:	10 92 4a 03 	sts	0x034A, r1	; 0x80034a <_ZL16isSettingChenged>
}
    2a34:	cf 91       	pop	r28
    2a36:	0f 91       	pop	r16
    2a38:	ef 90       	pop	r14
    2a3a:	df 90       	pop	r13
    2a3c:	cf 90       	pop	r12
    2a3e:	08 95       	ret

00002a40 <_Z8drawLogov>:
    }
    return MODE_LOGO;
}

void drawLogo(void)
{
    2a40:	6f 92       	push	r6
    2a42:	7f 92       	push	r7
    2a44:	8f 92       	push	r8
    2a46:	9f 92       	push	r9
    2a48:	af 92       	push	r10
    2a4a:	bf 92       	push	r11
    2a4c:	cf 92       	push	r12
    2a4e:	df 92       	push	r13
    2a50:	ef 92       	push	r14
    2a52:	0f 93       	push	r16
    2a54:	cf 93       	push	r28
    2a56:	df 93       	push	r29
    bool isSignalOn = (SIGNAL_PTN >> (counter - FPS / 4) / (FPS / 20)) & 1;
    2a58:	80 91 45 03 	lds	r24, 0x0345	; 0x800345 <counter>
    2a5c:	8f 50       	subi	r24, 0x0F	; 15
    2a5e:	99 0b       	sbc	r25, r25
    2a60:	63 e0       	ldi	r22, 0x03	; 3
    2a62:	70 e0       	ldi	r23, 0x00	; 0
    2a64:	0e 94 d4 2f 	call	0x5fa8	; 0x5fa8 <__divmodhi4>
    2a68:	8a e3       	ldi	r24, 0x3A	; 58
    2a6a:	9a ea       	ldi	r25, 0xAA	; 170
    2a6c:	a3 ee       	ldi	r26, 0xE3	; 227
    2a6e:	be ee       	ldi	r27, 0xEE	; 238
    2a70:	04 c0       	rjmp	.+8      	; 0x2a7a <_Z8drawLogov+0x3a>
    2a72:	b6 95       	lsr	r27
    2a74:	a7 95       	ror	r26
    2a76:	97 95       	ror	r25
    2a78:	87 95       	ror	r24
    2a7a:	6a 95       	dec	r22
    2a7c:	d2 f7       	brpl	.-12     	; 0x2a72 <_Z8drawLogov+0x32>
    2a7e:	c8 2f       	mov	r28, r24
    2a80:	c1 70       	andi	r28, 0x01	; 1
    arduboy.setRGBled(0, 0, isSignalOn * 127);
    2a82:	8f e7       	ldi	r24, 0x7F	; 127
    2a84:	c8 9f       	mul	r28, r24
    2a86:	80 2d       	mov	r24, r0
    2a88:	11 24       	eor	r1, r1
{
#ifdef ARDUBOY_10 // RGB, all the pretty colors
  // timer 0: Fast PWM, OC0A clear on compare / set at top
  // We must stay in Fast PWM mode because timer 0 is used for system timing.
  // We can't use "inverted" mode because it won't allow full shut off.
  TCCR0A = _BV(COM0A1) | _BV(WGM01) | _BV(WGM00);
    2a8a:	93 e8       	ldi	r25, 0x83	; 131
    2a8c:	94 bd       	out	0x24, r25	; 36
  OCR0A = 255 - green;
    2a8e:	9f ef       	ldi	r25, 0xFF	; 255
    2a90:	97 bd       	out	0x27, r25	; 39
  // timer 1: Phase correct PWM 8 bit
  // OC1A and OC1B set on up-counting / clear on down-counting (inverted). This
  // allows the value to be directly loaded into the OCR with common anode LED.
  TCCR1A = _BV(COM1A1) | _BV(COM1A0) | _BV(COM1B1) | _BV(COM1B0) | _BV(WGM10);
    2a92:	91 ef       	ldi	r25, 0xF1	; 241
    2a94:	90 93 80 00 	sts	0x0080, r25	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
  OCR1AL = blue;
    2a98:	80 93 88 00 	sts	0x0088, r24	; 0x800088 <__DATA_REGION_ORIGIN__+0x28>
  OCR1BL = red;
    2a9c:	10 92 8a 00 	sts	0x008A, r1	; 0x80008a <__DATA_REGION_ORIGIN__+0x2a>
    arduboy.clear();
    2aa0:	0e 94 f2 08 	call	0x11e4	; 0x11e4 <_ZN8Arduboy25clearEv>
    int shake = (COUNTER_MAX - counter) / (44 * FPS / 60);
    2aa4:	20 91 45 03 	lds	r18, 0x0345	; 0x800345 <counter>
    2aa8:	88 e7       	ldi	r24, 0x78	; 120
    2aaa:	90 e0       	ldi	r25, 0x00	; 0
    2aac:	82 1b       	sub	r24, r18
    2aae:	91 09       	sbc	r25, r1
    2ab0:	6c e2       	ldi	r22, 0x2C	; 44
    2ab2:	70 e0       	ldi	r23, 0x00	; 0
    2ab4:	0e 94 d4 2f 	call	0x5fa8	; 0x5fa8 <__divmodhi4>
    2ab8:	3b 01       	movw	r6, r22
    2aba:	87 ef       	ldi	r24, 0xF7	; 247
    2abc:	a8 2e       	mov	r10, r24
    2abe:	85 e0       	ldi	r24, 0x05	; 5
    2ac0:	b8 2e       	mov	r11, r24
    2ac2:	9c e1       	ldi	r25, 0x1C	; 28
    2ac4:	89 2e       	mov	r8, r25
    2ac6:	91 2c       	mov	r9, r1
    for (int i = 0; i < 3; i++) {
    2ac8:	d1 2c       	mov	r13, r1
    2aca:	c1 2c       	mov	r12, r1
        int y = 12 + (i == shake) * isSignalOn;
    2acc:	d0 e0       	ldi	r29, 0x00	; 0
    2ace:	81 e0       	ldi	r24, 0x01	; 1
    2ad0:	90 e0       	ldi	r25, 0x00	; 0
    2ad2:	6c 14       	cp	r6, r12
    2ad4:	7d 04       	cpc	r7, r13
    2ad6:	11 f0       	breq	.+4      	; 0x2adc <_Z8drawLogov+0x9c>
    2ad8:	90 e0       	ldi	r25, 0x00	; 0
    2ada:	80 e0       	ldi	r24, 0x00	; 0
    2adc:	8c 9f       	mul	r24, r28
    2ade:	b0 01       	movw	r22, r0
    2ae0:	8d 9f       	mul	r24, r29
    2ae2:	70 0d       	add	r23, r0
    2ae4:	9c 9f       	mul	r25, r28
    2ae6:	70 0d       	add	r23, r0
    2ae8:	11 24       	eor	r1, r1
    2aea:	64 5f       	subi	r22, 0xF4	; 244
    2aec:	7f 4f       	sbci	r23, 0xFF	; 255
        arduboy.drawBitmap(28 + i * 24, y, imgOBN[i], 24, 32, WHITE);
    2aee:	ee 24       	eor	r14, r14
    2af0:	e3 94       	inc	r14
    2af2:	00 e2       	ldi	r16, 0x20	; 32
    2af4:	28 e1       	ldi	r18, 0x18	; 24
    2af6:	a5 01       	movw	r20, r10
    2af8:	c4 01       	movw	r24, r8
    2afa:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh>
{
    bool isSignalOn = (SIGNAL_PTN >> (counter - FPS / 4) / (FPS / 20)) & 1;
    arduboy.setRGBled(0, 0, isSignalOn * 127);
    arduboy.clear();
    int shake = (COUNTER_MAX - counter) / (44 * FPS / 60);
    for (int i = 0; i < 3; i++) {
    2afe:	8f ef       	ldi	r24, 0xFF	; 255
    2b00:	c8 1a       	sub	r12, r24
    2b02:	d8 0a       	sbc	r13, r24
    2b04:	88 e1       	ldi	r24, 0x18	; 24
    2b06:	88 0e       	add	r8, r24
    2b08:	91 1c       	adc	r9, r1
    2b0a:	80 e6       	ldi	r24, 0x60	; 96
    2b0c:	a8 0e       	add	r10, r24
    2b0e:	b1 1c       	adc	r11, r1
    2b10:	83 e0       	ldi	r24, 0x03	; 3
    2b12:	c8 16       	cp	r12, r24
    2b14:	d1 04       	cpc	r13, r1
    2b16:	d9 f6       	brne	.-74     	; 0x2ace <_Z8drawLogov+0x8e>
        int y = 12 + (i == shake) * isSignalOn;
        arduboy.drawBitmap(28 + i * 24, y, imgOBN[i], 24, 32, WHITE);
    }
    arduboy.drawBitmap(68, 44, imgSoft, 32, 8, WHITE);
    2b18:	08 e0       	ldi	r16, 0x08	; 8
    2b1a:	20 e2       	ldi	r18, 0x20	; 32
    2b1c:	47 ed       	ldi	r20, 0xD7	; 215
    2b1e:	55 e0       	ldi	r21, 0x05	; 5
    2b20:	6c e2       	ldi	r22, 0x2C	; 44
    2b22:	70 e0       	ldi	r23, 0x00	; 0
    2b24:	84 e4       	ldi	r24, 0x44	; 68
    2b26:	90 e0       	ldi	r25, 0x00	; 0
    2b28:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh>
    arduboy.printEx(16, 58, F(APP_CODE " VER " APP_VERSION));
    2b2c:	46 ec       	ldi	r20, 0xC6	; 198
    2b2e:	55 e0       	ldi	r21, 0x05	; 5
    2b30:	6a e3       	ldi	r22, 0x3A	; 58
    2b32:	70 e0       	ldi	r23, 0x00	; 0
    2b34:	80 e1       	ldi	r24, 0x10	; 16
    2b36:	90 e0       	ldi	r25, 0x00	; 0
}
    2b38:	df 91       	pop	r29
    2b3a:	cf 91       	pop	r28
    2b3c:	0f 91       	pop	r16
    2b3e:	ef 90       	pop	r14
    2b40:	df 90       	pop	r13
    2b42:	cf 90       	pop	r12
    2b44:	bf 90       	pop	r11
    2b46:	af 90       	pop	r10
    2b48:	9f 90       	pop	r9
    2b4a:	8f 90       	pop	r8
    2b4c:	7f 90       	pop	r7
    2b4e:	6f 90       	pop	r6
    for (int i = 0; i < 3; i++) {
        int y = 12 + (i == shake) * isSignalOn;
        arduboy.drawBitmap(28 + i * 24, y, imgOBN[i], 24, 32, WHITE);
    }
    arduboy.drawBitmap(68, 44, imgSoft, 32, 8, WHITE);
    arduboy.printEx(16, 58, F(APP_CODE " VER " APP_VERSION));
    2b50:	0c 94 86 14 	jmp	0x290c	; 0x290c <_ZN10MyArduboy27printExIPK19__FlashStringHelperEEjiiT_.constprop.13>

00002b54 <_ZN5Print5flushEv>:
    size_t println(unsigned long, int = DEC);
    size_t println(double, int = 2);
    size_t println(const Printable&);
    size_t println(void);

    virtual void flush() { /* Empty implementation for backward compatibility */ }
    2b54:	08 95       	ret

00002b56 <_ZN5Print17availableForWriteEv>:
      return write((const uint8_t *)buffer, size);
    }

    // default to zero, meaning "a single write may block"
    // should be overriden by subclasses with buffering
    virtual int availableForWrite() { return 0; }
    2b56:	90 e0       	ldi	r25, 0x00	; 0
    2b58:	80 e0       	ldi	r24, 0x00	; 0
    2b5a:	08 95       	ret

00002b5c <_ZN10MyArduboy213drawFastHLineEiihh.constprop.38>:
}

void MyArduboy2::drawFastHLine(int16_t x, int16_t y, uint8_t w, uint8_t color)
{
    /*  Check parameters  */
    if (x < 0) {
    2b5c:	97 ff       	sbrs	r25, 7
    2b5e:	0d c0       	rjmp	.+26     	; 0x2b7a <_ZN10MyArduboy213drawFastHLineEiihh.constprop.38+0x1e>
        if (w <= -x) return;
    2b60:	22 27       	eor	r18, r18
    2b62:	33 27       	eor	r19, r19
    2b64:	28 1b       	sub	r18, r24
    2b66:	39 0b       	sbc	r19, r25
    2b68:	42 17       	cp	r20, r18
    2b6a:	13 06       	cpc	r1, r19
    2b6c:	29 f0       	breq	.+10     	; 0x2b78 <_ZN10MyArduboy213drawFastHLineEiihh.constprop.38+0x1c>
    2b6e:	24 f0       	brlt	.+8      	; 0x2b78 <_ZN10MyArduboy213drawFastHLineEiihh.constprop.38+0x1c>
        w += x;
    2b70:	48 0f       	add	r20, r24
        x = 0;
    2b72:	90 e0       	ldi	r25, 0x00	; 0
    2b74:	80 e0       	ldi	r24, 0x00	; 0
    }
    if (w <= 0 || x >= WIDTH || y < 0 || y >= HEIGHT) return;
    2b76:	31 f4       	brne	.+12     	; 0x2b84 <_ZN10MyArduboy213drawFastHLineEiihh.constprop.38+0x28>
    if (color == BLACK) {
        fillBeltBlack(p, d, w);
    } else {
        fillBeltWhite(p, d, w);
    }
}
    2b78:	08 95       	ret
    if (x < 0) {
        if (w <= -x) return;
        w += x;
        x = 0;
    }
    if (w <= 0 || x >= WIDTH || y < 0 || y >= HEIGHT) return;
    2b7a:	44 23       	and	r20, r20
    2b7c:	e9 f3       	breq	.-6      	; 0x2b78 <_ZN10MyArduboy213drawFastHLineEiihh.constprop.38+0x1c>
    2b7e:	80 38       	cpi	r24, 0x80	; 128
    2b80:	91 05       	cpc	r25, r1
    2b82:	d4 f7       	brge	.-12     	; 0x2b78 <_ZN10MyArduboy213drawFastHLineEiihh.constprop.38+0x1c>
    2b84:	60 34       	cpi	r22, 0x40	; 64
    2b86:	71 05       	cpc	r23, r1
    2b88:	b8 f7       	brcc	.-18     	; 0x2b78 <_ZN10MyArduboy213drawFastHLineEiihh.constprop.38+0x1c>
    if (x + w > WIDTH) w = WIDTH - x;
    2b8a:	9c 01       	movw	r18, r24
    2b8c:	24 0f       	add	r18, r20
    2b8e:	31 1d       	adc	r19, r1
    2b90:	21 38       	cpi	r18, 0x81	; 129
    2b92:	31 05       	cpc	r19, r1
    2b94:	14 f0       	brlt	.+4      	; 0x2b9a <_ZN10MyArduboy213drawFastHLineEiihh.constprop.38+0x3e>
    2b96:	40 e8       	ldi	r20, 0x80	; 128
    2b98:	48 1b       	sub	r20, r24

    /*  Draw a horizontal line  */
    uint8_t yOdd = y & 7;
    2b9a:	36 2f       	mov	r19, r22
    2b9c:	37 70       	andi	r19, 0x07	; 7
    uint8_t d = 1 << yOdd;
    2b9e:	21 e0       	ldi	r18, 0x01	; 1
    2ba0:	01 c0       	rjmp	.+2      	; 0x2ba4 <_ZN10MyArduboy213drawFastHLineEiihh.constprop.38+0x48>
    2ba2:	22 0f       	add	r18, r18
    2ba4:	3a 95       	dec	r19
    2ba6:	ea f7       	brpl	.-6      	; 0x2ba2 <_ZN10MyArduboy213drawFastHLineEiihh.constprop.38+0x46>
    uint8_t *p = getBuffer() + x + (y / 8) * WIDTH;
    2ba8:	fb 01       	movw	r30, r22
    2baa:	33 e0       	ldi	r19, 0x03	; 3
    2bac:	f5 95       	asr	r31
    2bae:	e7 95       	ror	r30
    2bb0:	3a 95       	dec	r19
    2bb2:	e1 f7       	brne	.-8      	; 0x2bac <_ZN10MyArduboy213drawFastHLineEiihh.constprop.38+0x50>
    2bb4:	f6 95       	lsr	r31
    2bb6:	fe 2f       	mov	r31, r30
    2bb8:	ee 27       	eor	r30, r30
    2bba:	f7 95       	ror	r31
    2bbc:	e7 95       	ror	r30
    2bbe:	e8 0f       	add	r30, r24
    2bc0:	f9 1f       	adc	r31, r25
    2bc2:	e3 57       	subi	r30, 0x73	; 115
    2bc4:	fc 4f       	sbci	r31, 0xFC	; 252
}

void MyArduboy2::fillBeltWhite(uint8_t *p, uint8_t d, uint8_t w)
{
    for (; w > 0; w--) {
        *p++ |= d;
    2bc6:	80 81       	ld	r24, Z
    2bc8:	82 2b       	or	r24, r18
    2bca:	81 93       	st	Z+, r24
    }
}

void MyArduboy2::fillBeltWhite(uint8_t *p, uint8_t d, uint8_t w)
{
    for (; w > 0; w--) {
    2bcc:	41 50       	subi	r20, 0x01	; 1
    2bce:	d9 f7       	brne	.-10     	; 0x2bc6 <_ZN10MyArduboy213drawFastHLineEiihh.constprop.38+0x6a>
    2bd0:	d3 cf       	rjmp	.-90     	; 0x2b78 <_ZN10MyArduboy213drawFastHLineEiihh.constprop.38+0x1c>

00002bd2 <_ZL14drawBackgroundv>:
        arduboy.drawBitmap(explo.x - 7, explo.y - 7, imgExplo[explo.a], IMG_EXPLO_W, IMG_EXPLO_H);
    }
}

static void drawBackground(void)
{
    2bd2:	bf 92       	push	r11
    2bd4:	cf 92       	push	r12
    2bd6:	df 92       	push	r13
    2bd8:	ef 92       	push	r14
    2bda:	ff 92       	push	r15
    2bdc:	0f 93       	push	r16
    2bde:	1f 93       	push	r17
    2be0:	cf 93       	push	r28
    2be2:	df 93       	push	r29
    /*  Starts  */
    uint8_t g = counter & 3;
    2be4:	c0 90 45 03 	lds	r12, 0x0345	; 0x800345 <counter>
    2be8:	cc 2d       	mov	r28, r12
    2bea:	c3 70       	andi	r28, 0x03	; 3
    uint8_t d = g * 71;
    2bec:	87 e4       	ldi	r24, 0x47	; 71
    2bee:	c8 9f       	mul	r28, r24
    2bf0:	d0 2c       	mov	r13, r0
    2bf2:	11 24       	eor	r1, r1
    uint8_t *p = (uint8_t *)drawBackground + g * 3;
    2bf4:	83 e0       	ldi	r24, 0x03	; 3
    2bf6:	c8 9f       	mul	r28, r24
    2bf8:	80 01       	movw	r16, r0
    2bfa:	11 24       	eor	r1, r1
    2bfc:	07 51       	subi	r16, 0x17	; 23
    2bfe:	1a 4e       	sbci	r17, 0xEA	; 234
    int16_t s = (state == STATE_START) ? counter - START_DURATION : gameFrames;
    2c00:	b0 90 09 03 	lds	r11, 0x0309	; 0x800309 <_ZL5state.lto_priv.52>
    2c04:	e0 90 07 03 	lds	r14, 0x0307	; 0x800307 <_ZL10gameFrames>
    2c08:	f0 90 08 03 	lds	r15, 0x0308	; 0x800308 <_ZL10gameFrames+0x1>
    2c0c:	b1 10       	cpse	r11, r1
    2c0e:	04 c0       	rjmp	.+8      	; 0x2c18 <_ZL14drawBackgroundv+0x46>
    2c10:	ec 2d       	mov	r30, r12
    2c12:	e8 57       	subi	r30, 0x78	; 120
    2c14:	ff 0b       	sbc	r31, r31
    2c16:	7f 01       	movw	r14, r30
    for (int16_t y = g * 2; y < HEIGHT; y += 8, p += 12) {
    2c18:	d0 e0       	ldi	r29, 0x00	; 0
    2c1a:	cc 0f       	add	r28, r28
    2c1c:	dd 1f       	adc	r29, r29
        d += pgm_read_byte(p) + 29;
    2c1e:	f8 01       	movw	r30, r16
    2c20:	84 91       	lpm	r24, Z
    2c22:	83 5e       	subi	r24, 0xE3	; 227
    2c24:	d8 0e       	add	r13, r24
        int16_t x = (d - (s * ((pgm_read_byte(p + 1) & 15) + 8) >> 6)) & (WIDTH - 1);
    2c26:	31 96       	adiw	r30, 0x01	; 1
    2c28:	e4 91       	lpm	r30, Z
    2c2a:	8d 2d       	mov	r24, r13
    2c2c:	90 e0       	ldi	r25, 0x00	; 0
    2c2e:	ef 70       	andi	r30, 0x0F	; 15
    2c30:	f0 e0       	ldi	r31, 0x00	; 0
    2c32:	38 96       	adiw	r30, 0x08	; 8
    2c34:	ee 9d       	mul	r30, r14
    2c36:	90 01       	movw	r18, r0
    2c38:	ef 9d       	mul	r30, r15
    2c3a:	30 0d       	add	r19, r0
    2c3c:	fe 9d       	mul	r31, r14
    2c3e:	30 0d       	add	r19, r0
    2c40:	11 24       	eor	r1, r1
    2c42:	46 e0       	ldi	r20, 0x06	; 6
    2c44:	35 95       	asr	r19
    2c46:	27 95       	ror	r18
    2c48:	4a 95       	dec	r20
    2c4a:	e1 f7       	brne	.-8      	; 0x2c44 <_ZL14drawBackgroundv+0x72>
    2c4c:	82 1b       	sub	r24, r18
    2c4e:	93 0b       	sbc	r25, r19
        arduboy.drawPixel(x, y);
    2c50:	41 e0       	ldi	r20, 0x01	; 1
    2c52:	be 01       	movw	r22, r28
    2c54:	8f 77       	andi	r24, 0x7F	; 127
    2c56:	99 27       	eor	r25, r25
    2c58:	0e 94 4a 0a 	call	0x1494	; 0x1494 <_ZN12Arduboy2Base9drawPixelEiih>
    /*  Starts  */
    uint8_t g = counter & 3;
    uint8_t d = g * 71;
    uint8_t *p = (uint8_t *)drawBackground + g * 3;
    int16_t s = (state == STATE_START) ? counter - START_DURATION : gameFrames;
    for (int16_t y = g * 2; y < HEIGHT; y += 8, p += 12) {
    2c5c:	28 96       	adiw	r28, 0x08	; 8
    2c5e:	04 5f       	subi	r16, 0xF4	; 244
    2c60:	1f 4f       	sbci	r17, 0xFF	; 255
    2c62:	c0 34       	cpi	r28, 0x40	; 64
    2c64:	d1 05       	cpc	r29, r1
    2c66:	dc f2       	brlt	.-74     	; 0x2c1e <_ZL14drawBackgroundv+0x4c>
        int16_t x = (d - (s * ((pgm_read_byte(p + 1) & 15) + 8) >> 6)) & (WIDTH - 1);
        arduboy.drawPixel(x, y);
    }

    /*  Edge detection  */
    if (!record.isDrawEdge || state >= STATE_OVER || bitRead(counter, 0)) return;
    2c68:	80 91 3d 03 	lds	r24, 0x033D	; 0x80033d <record+0x3>
    2c6c:	86 ff       	sbrs	r24, 6
    2c6e:	31 c0       	rjmp	.+98     	; 0x2cd2 <_ZL14drawBackgroundv+0x100>
    2c70:	f1 e0       	ldi	r31, 0x01	; 1
    2c72:	fb 15       	cp	r31, r11
    2c74:	70 f1       	brcs	.+92     	; 0x2cd2 <_ZL14drawBackgroundv+0x100>
    2c76:	c0 fc       	sbrc	r12, 0
    2c78:	2c c0       	rjmp	.+88     	; 0x2cd2 <_ZL14drawBackgroundv+0x100>
    int16_t dx = playerX / PLAYER_SCALE - (EDGE_THRESHOLD - 1);
    2c7a:	c0 91 06 03 	lds	r28, 0x0306	; 0x800306 <_ZL7playerX>
    2c7e:	c6 95       	lsr	r28
    2c80:	c6 95       	lsr	r28
    2c82:	cb 50       	subi	r28, 0x0B	; 11
    2c84:	dd 0b       	sbc	r29, r29
    int16_t dy = playerY / PLAYER_SCALE;
    2c86:	10 91 05 03 	lds	r17, 0x0305	; 0x800305 <_ZL7playerY>
    2c8a:	16 95       	lsr	r17
    2c8c:	16 95       	lsr	r17
    if (dx <= 0) {
    2c8e:	1c 16       	cp	r1, r28
    2c90:	1d 06       	cpc	r1, r29
    2c92:	4c f0       	brlt	.+18     	; 0x2ca6 <_ZL14drawBackgroundv+0xd4>
        arduboy.drawFastVLine(0, dy - (EDGE_THRESHOLD - 1), EDGE_THRESHOLD * 2 - 1, WHITE);
    2c94:	47 e1       	ldi	r20, 0x17	; 23
    2c96:	81 2f       	mov	r24, r17
    2c98:	8b 50       	subi	r24, 0x0B	; 11
    2c9a:	99 0b       	sbc	r25, r25
    2c9c:	bc 01       	movw	r22, r24
    2c9e:	90 e0       	ldi	r25, 0x00	; 0
    2ca0:	80 e0       	ldi	r24, 0x00	; 0
    2ca2:	0e 94 07 06 	call	0xc0e	; 0xc0e <_ZN10MyArduboy213drawFastVLineEiiah.constprop.41>
    }
    if (dy < EDGE_THRESHOLD) {
        arduboy.drawFastHLine(dx, 0, EDGE_THRESHOLD * 2 - 1, WHITE);
    2ca6:	47 e1       	ldi	r20, 0x17	; 23
    2ca8:	70 e0       	ldi	r23, 0x00	; 0
    2caa:	60 e0       	ldi	r22, 0x00	; 0
    int16_t dx = playerX / PLAYER_SCALE - (EDGE_THRESHOLD - 1);
    int16_t dy = playerY / PLAYER_SCALE;
    if (dx <= 0) {
        arduboy.drawFastVLine(0, dy - (EDGE_THRESHOLD - 1), EDGE_THRESHOLD * 2 - 1, WHITE);
    }
    if (dy < EDGE_THRESHOLD) {
    2cac:	1c 30       	cpi	r17, 0x0C	; 12
    2cae:	28 f0       	brcs	.+10     	; 0x2cba <_ZL14drawBackgroundv+0xe8>
        arduboy.drawFastHLine(dx, 0, EDGE_THRESHOLD * 2 - 1, WHITE);
    }
    if (dy >= HEIGHT - EDGE_THRESHOLD) {
    2cb0:	14 33       	cpi	r17, 0x34	; 52
    2cb2:	78 f0       	brcs	.+30     	; 0x2cd2 <_ZL14drawBackgroundv+0x100>
        arduboy.drawFastHLine(dx, HEIGHT - 1, EDGE_THRESHOLD * 2 - 1, WHITE);
    2cb4:	47 e1       	ldi	r20, 0x17	; 23
    2cb6:	6f e3       	ldi	r22, 0x3F	; 63
    2cb8:	70 e0       	ldi	r23, 0x00	; 0
    2cba:	ce 01       	movw	r24, r28
    }
}
    2cbc:	df 91       	pop	r29
    2cbe:	cf 91       	pop	r28
    2cc0:	1f 91       	pop	r17
    2cc2:	0f 91       	pop	r16
    2cc4:	ff 90       	pop	r15
    2cc6:	ef 90       	pop	r14
    2cc8:	df 90       	pop	r13
    2cca:	cf 90       	pop	r12
    2ccc:	bf 90       	pop	r11
    }
    if (dy < EDGE_THRESHOLD) {
        arduboy.drawFastHLine(dx, 0, EDGE_THRESHOLD * 2 - 1, WHITE);
    }
    if (dy >= HEIGHT - EDGE_THRESHOLD) {
        arduboy.drawFastHLine(dx, HEIGHT - 1, EDGE_THRESHOLD * 2 - 1, WHITE);
    2cce:	0c 94 ae 15 	jmp	0x2b5c	; 0x2b5c <_ZN10MyArduboy213drawFastHLineEiihh.constprop.38>
    }
}
    2cd2:	df 91       	pop	r29
    2cd4:	cf 91       	pop	r28
    2cd6:	1f 91       	pop	r17
    2cd8:	0f 91       	pop	r16
    2cda:	ff 90       	pop	r15
    2cdc:	ef 90       	pop	r14
    2cde:	df 90       	pop	r13
    2ce0:	cf 90       	pop	r12
    2ce2:	bf 90       	pop	r11
    2ce4:	08 95       	ret

00002ce6 <_ZN5Print11printNumberEmh>:
}

// Private Methods /////////////////////////////////////////////////////////////

size_t Print::printNumber(unsigned long n, uint8_t base)
{
    2ce6:	8f 92       	push	r8
    2ce8:	9f 92       	push	r9
    2cea:	af 92       	push	r10
    2cec:	bf 92       	push	r11
    2cee:	ef 92       	push	r14
    2cf0:	ff 92       	push	r15
    2cf2:	0f 93       	push	r16
    2cf4:	1f 93       	push	r17
    2cf6:	cf 93       	push	r28
    2cf8:	df 93       	push	r29
    2cfa:	cd b7       	in	r28, 0x3d	; 61
    2cfc:	de b7       	in	r29, 0x3e	; 62
    2cfe:	a1 97       	sbiw	r28, 0x21	; 33
    2d00:	0f b6       	in	r0, 0x3f	; 63
    2d02:	f8 94       	cli
    2d04:	de bf       	out	0x3e, r29	; 62
    2d06:	0f be       	out	0x3f, r0	; 63
    2d08:	cd bf       	out	0x3d, r28	; 61
    2d0a:	7c 01       	movw	r14, r24
    2d0c:	fa 01       	movw	r30, r20
    2d0e:	cb 01       	movw	r24, r22
  char buf[8 * sizeof(long) + 1]; // Assumes 8-bit chars plus zero byte.
  char *str = &buf[sizeof(buf) - 1];

  *str = '\0';
    2d10:	19 a2       	std	Y+33, r1	; 0x21

  // prevent crash if called with base == 1
  if (base < 2) base = 10;
    2d12:	22 30       	cpi	r18, 0x02	; 2
    2d14:	08 f4       	brcc	.+2      	; 0x2d18 <_ZN5Print11printNumberEmh+0x32>
    2d16:	2a e0       	ldi	r18, 0x0A	; 10
    2d18:	8e 01       	movw	r16, r28
    2d1a:	0f 5d       	subi	r16, 0xDF	; 223
    2d1c:	1f 4f       	sbci	r17, 0xFF	; 255

  do {
    char c = n % base;
    2d1e:	82 2e       	mov	r8, r18
    2d20:	91 2c       	mov	r9, r1
    2d22:	b1 2c       	mov	r11, r1
    2d24:	a1 2c       	mov	r10, r1
    2d26:	bf 01       	movw	r22, r30
    2d28:	a5 01       	movw	r20, r10
    2d2a:	94 01       	movw	r18, r8
    2d2c:	0e 94 73 2c 	call	0x58e6	; 0x58e6 <__udivmodsi4>
    n /= base;
    2d30:	f9 01       	movw	r30, r18
    2d32:	ca 01       	movw	r24, r20

    *--str = c < 10 ? c + '0' : c + 'A' - 10;
    2d34:	6a 30       	cpi	r22, 0x0A	; 10
    2d36:	4c f5       	brge	.+82     	; 0x2d8a <_ZN5Print11printNumberEmh+0xa4>
    2d38:	60 5d       	subi	r22, 0xD0	; 208
    2d3a:	d8 01       	movw	r26, r16
    2d3c:	6e 93       	st	-X, r22
    2d3e:	8d 01       	movw	r16, r26
  } while(n);
    2d40:	23 2b       	or	r18, r19
    2d42:	24 2b       	or	r18, r20
    2d44:	25 2b       	or	r18, r21
    2d46:	79 f7       	brne	.-34     	; 0x2d26 <_ZN5Print11printNumberEmh+0x40>
    int getWriteError() { return write_error; }
    void clearWriteError() { setWriteError(0); }
  
    virtual size_t write(uint8_t) = 0;
    size_t write(const char *str) {
      if (str == NULL) return 0;
    2d48:	90 e0       	ldi	r25, 0x00	; 0
    2d4a:	80 e0       	ldi	r24, 0x00	; 0
    2d4c:	10 97       	sbiw	r26, 0x00	; 0
    2d4e:	61 f0       	breq	.+24     	; 0x2d68 <_ZN5Print11printNumberEmh+0x82>
      return write((const uint8_t *)str, strlen(str));
    2d50:	fd 01       	movw	r30, r26
    2d52:	01 90       	ld	r0, Z+
    2d54:	00 20       	and	r0, r0
    2d56:	e9 f7       	brne	.-6      	; 0x2d52 <_ZN5Print11printNumberEmh+0x6c>
    2d58:	31 97       	sbiw	r30, 0x01	; 1
    2d5a:	af 01       	movw	r20, r30
    2d5c:	4a 1b       	sub	r20, r26
    2d5e:	5b 0b       	sbc	r21, r27
    2d60:	bd 01       	movw	r22, r26
    2d62:	c7 01       	movw	r24, r14
    2d64:	0e 94 cd 07 	call	0xf9a	; 0xf9a <_ZN5Print5writeEPKhj>

  return write(str);
}
    2d68:	a1 96       	adiw	r28, 0x21	; 33
    2d6a:	0f b6       	in	r0, 0x3f	; 63
    2d6c:	f8 94       	cli
    2d6e:	de bf       	out	0x3e, r29	; 62
    2d70:	0f be       	out	0x3f, r0	; 63
    2d72:	cd bf       	out	0x3d, r28	; 61
    2d74:	df 91       	pop	r29
    2d76:	cf 91       	pop	r28
    2d78:	1f 91       	pop	r17
    2d7a:	0f 91       	pop	r16
    2d7c:	ff 90       	pop	r15
    2d7e:	ef 90       	pop	r14
    2d80:	bf 90       	pop	r11
    2d82:	af 90       	pop	r10
    2d84:	9f 90       	pop	r9
    2d86:	8f 90       	pop	r8
    2d88:	08 95       	ret

  do {
    char c = n % base;
    n /= base;

    *--str = c < 10 ? c + '0' : c + 'A' - 10;
    2d8a:	69 5c       	subi	r22, 0xC9	; 201
    2d8c:	d6 cf       	rjmp	.-84     	; 0x2d3a <_ZN5Print11printNumberEmh+0x54>

00002d8e <_ZL19drawLettersGameSeedv>:
    }
    arduboy.drawBitmap(x, y, bitmap, w, h);
}

static void drawLettersGameSeed(void)
{
    2d8e:	ef 92       	push	r14
    2d90:	0f 93       	push	r16
    2d92:	cf 93       	push	r28
    2d94:	df 93       	push	r29
    bool is2Digits = (gameRank >= 10);
    2d96:	81 e0       	ldi	r24, 0x01	; 1
    2d98:	90 91 0a 03 	lds	r25, 0x030A	; 0x80030a <_ZL8gameRank>
    2d9c:	9a 30       	cpi	r25, 0x0A	; 10
    2d9e:	08 f4       	brcc	.+2      	; 0x2da2 <_ZL19drawLettersGameSeedv+0x14>
    2da0:	80 e0       	ldi	r24, 0x00	; 0
    int16_t dx = 19 - is2Digits * 3;
    2da2:	c8 2f       	mov	r28, r24
    2da4:	d0 e0       	ldi	r29, 0x00	; 0
    2da6:	9e 01       	movw	r18, r28
    2da8:	22 0f       	add	r18, r18
    2daa:	33 1f       	adc	r19, r19
    2dac:	22 0f       	add	r18, r18
    2dae:	33 1f       	adc	r19, r19
    2db0:	c2 1b       	sub	r28, r18
    2db2:	d3 0b       	sbc	r29, r19
    arduboy.fillRect(dx - 1, 16, 91 + is2Digits * 6, 7, BLACK);
    2db4:	28 2f       	mov	r18, r24
    2db6:	22 0f       	add	r18, r18
    2db8:	28 0f       	add	r18, r24
    2dba:	22 0f       	add	r18, r18
    2dbc:	25 5a       	subi	r18, 0xA5	; 165
    2dbe:	be 01       	movw	r22, r28
    2dc0:	6e 5e       	subi	r22, 0xEE	; 238
    2dc2:	7f 4f       	sbci	r23, 0xFF	; 255
    2dc4:	e1 2c       	mov	r14, r1
    2dc6:	07 e0       	ldi	r16, 0x07	; 7
    2dc8:	40 e1       	ldi	r20, 0x10	; 16
    2dca:	50 e0       	ldi	r21, 0x00	; 0
    2dcc:	8d ed       	ldi	r24, 0xDD	; 221
    2dce:	97 e0       	ldi	r25, 0x07	; 7
    2dd0:	0e 94 d1 12 	call	0x25a2	; 0x25a2 <_ZN10MyArduboy28fillRectEiihah>
    arduboy.printEx(dx, 17, F("PATTERN:"));
    2dd4:	4d eb       	ldi	r20, 0xBD	; 189
    2dd6:	55 e0       	ldi	r21, 0x05	; 5
    2dd8:	61 e1       	ldi	r22, 0x11	; 17
    2dda:	70 e0       	ldi	r23, 0x00	; 0
    2ddc:	ce 01       	movw	r24, r28
    2dde:	43 96       	adiw	r24, 0x13	; 19
    2de0:	0e 94 86 14 	call	0x290c	; 0x290c <_ZN10MyArduboy27printExIPK19__FlashStringHelperEEjiiT_.constprop.13>
    printGameSeed(dx + 48, 17, record.gameSeed);
    2de4:	20 91 3a 03 	lds	r18, 0x033A	; 0x80033a <record>
    2de8:	30 91 3b 03 	lds	r19, 0x033B	; 0x80033b <record+0x1>
    2dec:	40 91 3c 03 	lds	r20, 0x033C	; 0x80033c <record+0x2>
    2df0:	50 e0       	ldi	r21, 0x00	; 0
    2df2:	61 e1       	ldi	r22, 0x11	; 17
    2df4:	70 e0       	ldi	r23, 0x00	; 0
    2df6:	ce 01       	movw	r24, r28
    2df8:	8d 5b       	subi	r24, 0xBD	; 189
    2dfa:	9f 4f       	sbci	r25, 0xFF	; 255
    2dfc:	0e 94 46 14 	call	0x288c	; 0x288c <_Z13printGameSeediim>
    arduboy.print('-');
    2e00:	6d e2       	ldi	r22, 0x2D	; 45
    2e02:	8d ed       	ldi	r24, 0xDD	; 221
    2e04:	97 e0       	ldi	r25, 0x07	; 7
    2e06:	0e 94 44 14 	call	0x2888	; 0x2888 <_ZN5Print5printEc.constprop.21>
  return write(c);
}

size_t Print::print(unsigned char b, int base)
{
  return print((unsigned long) b, base);
    2e0a:	40 91 0a 03 	lds	r20, 0x030A	; 0x80030a <_ZL8gameRank>
    2e0e:	50 e0       	ldi	r21, 0x00	; 0
    2e10:	70 e0       	ldi	r23, 0x00	; 0
    2e12:	60 e0       	ldi	r22, 0x00	; 0
}

size_t Print::print(unsigned long n, int base)
{
  if (base == 0) return write(n);
  else return printNumber(n, base);
    2e14:	2a e0       	ldi	r18, 0x0A	; 10
    2e16:	8d ed       	ldi	r24, 0xDD	; 221
    2e18:	97 e0       	ldi	r25, 0x07	; 7
    arduboy.print(gameRank);
}
    2e1a:	df 91       	pop	r29
    2e1c:	cf 91       	pop	r28
    2e1e:	0f 91       	pop	r16
    2e20:	ef 90       	pop	r14
    2e22:	0c 94 73 16 	jmp	0x2ce6	; 0x2ce6 <_ZN5Print11printNumberEmh>

00002e26 <_Z8drawTimeiim>:
        padRepeatCount = 0;
    }
}

void drawTime(int16_t x, int16_t y, uint32_t frames)
{
    2e26:	2f 92       	push	r2
    2e28:	3f 92       	push	r3
    2e2a:	4f 92       	push	r4
    2e2c:	5f 92       	push	r5
    2e2e:	6f 92       	push	r6
    2e30:	7f 92       	push	r7
    2e32:	8f 92       	push	r8
    2e34:	9f 92       	push	r9
    2e36:	af 92       	push	r10
    2e38:	bf 92       	push	r11
    2e3a:	cf 92       	push	r12
    2e3c:	df 92       	push	r13
    2e3e:	ef 92       	push	r14
    2e40:	ff 92       	push	r15
    2e42:	0f 93       	push	r16
    2e44:	1f 93       	push	r17
    2e46:	cf 93       	push	r28
    2e48:	df 93       	push	r29
    2e4a:	90 93 74 03 	sts	0x0374, r25	; 0x800374 <_ZN8Arduboy28cursor_xE+0x1>
    2e4e:	80 93 73 03 	sts	0x0373, r24	; 0x800373 <_ZN8Arduboy28cursor_xE>
    2e52:	70 93 72 03 	sts	0x0372, r23	; 0x800372 <_ZN8Arduboy28cursor_yE+0x1>
    2e56:	60 93 71 03 	sts	0x0371, r22	; 0x800371 <_ZN8Arduboy28cursor_yE>
    2e5a:	69 01       	movw	r12, r18
    2e5c:	7a 01       	movw	r14, r20
    uint16_t h = frames / (FPS * 3600UL);
    2e5e:	ca 01       	movw	r24, r20
    2e60:	b9 01       	movw	r22, r18
    2e62:	20 ec       	ldi	r18, 0xC0	; 192
    2e64:	3b e4       	ldi	r19, 0x4B	; 75
    2e66:	43 e0       	ldi	r20, 0x03	; 3
    2e68:	50 e0       	ldi	r21, 0x00	; 0
    2e6a:	0e 94 73 2c 	call	0x58e6	; 0x58e6 <__udivmodsi4>
    2e6e:	29 01       	movw	r4, r18
    2e70:	3a 01       	movw	r6, r20
    uint8_t m = frames / (FPS * 60) % 60;
    2e72:	c7 01       	movw	r24, r14
    2e74:	b6 01       	movw	r22, r12
    2e76:	20 e1       	ldi	r18, 0x10	; 16
    2e78:	3e e0       	ldi	r19, 0x0E	; 14
    2e7a:	40 e0       	ldi	r20, 0x00	; 0
    2e7c:	50 e0       	ldi	r21, 0x00	; 0
    2e7e:	0e 94 73 2c 	call	0x58e6	; 0x58e6 <__udivmodsi4>
    2e82:	8c e3       	ldi	r24, 0x3C	; 60
    2e84:	88 2e       	mov	r8, r24
    2e86:	91 2c       	mov	r9, r1
    2e88:	a1 2c       	mov	r10, r1
    2e8a:	b1 2c       	mov	r11, r1
    2e8c:	ca 01       	movw	r24, r20
    2e8e:	b9 01       	movw	r22, r18
    2e90:	a5 01       	movw	r20, r10
    2e92:	94 01       	movw	r18, r8
    2e94:	0e 94 73 2c 	call	0x58e6	; 0x58e6 <__udivmodsi4>
    2e98:	d6 2f       	mov	r29, r22
    2e9a:	27 2e       	mov	r2, r23
    2e9c:	38 2e       	mov	r3, r24
    2e9e:	09 2f       	mov	r16, r25
    uint8_t s = frames / FPS % 60;
    2ea0:	c7 01       	movw	r24, r14
    2ea2:	b6 01       	movw	r22, r12
    2ea4:	a5 01       	movw	r20, r10
    2ea6:	94 01       	movw	r18, r8
    2ea8:	0e 94 73 2c 	call	0x58e6	; 0x58e6 <__udivmodsi4>
    2eac:	ca 01       	movw	r24, r20
    2eae:	b9 01       	movw	r22, r18
    2eb0:	a5 01       	movw	r20, r10
    2eb2:	94 01       	movw	r18, r8
    2eb4:	0e 94 73 2c 	call	0x58e6	; 0x58e6 <__udivmodsi4>
    2eb8:	c6 2f       	mov	r28, r22
    2eba:	97 2e       	mov	r9, r23
    2ebc:	5c 01       	movw	r10, r24
    2ebe:	8c 2e       	mov	r8, r28
    arduboy.setCursor(x, y);
    if (h == 0 && m == 0) {
    2ec0:	41 14       	cp	r4, r1
    2ec2:	51 04       	cpc	r5, r1
    2ec4:	09 f0       	breq	.+2      	; 0x2ec8 <_Z8drawTimeiim+0xa2>
    2ec6:	3f c0       	rjmp	.+126    	; 0x2f46 <_Z8drawTimeiim+0x120>
    2ec8:	d1 11       	cpse	r29, r1
    2eca:	50 c0       	rjmp	.+160    	; 0x2f6c <_Z8drawTimeiim+0x146>
        if (s < 10) arduboy.print('0');
    2ecc:	6a 30       	cpi	r22, 0x0A	; 10
    2ece:	28 f4       	brcc	.+10     	; 0x2eda <_Z8drawTimeiim+0xb4>
    2ed0:	60 e3       	ldi	r22, 0x30	; 48
    2ed2:	8d ed       	ldi	r24, 0xDD	; 221
    2ed4:	97 e0       	ldi	r25, 0x07	; 7
    2ed6:	0e 94 44 14 	call	0x2888	; 0x2888 <_ZN5Print5printEc.constprop.21>
    2eda:	2a e0       	ldi	r18, 0x0A	; 10
    2edc:	4c 2f       	mov	r20, r28
    2ede:	59 2d       	mov	r21, r9
    2ee0:	b5 01       	movw	r22, r10
    2ee2:	8d ed       	ldi	r24, 0xDD	; 221
    2ee4:	97 e0       	ldi	r25, 0x07	; 7
    2ee6:	0e 94 73 16 	call	0x2ce6	; 0x2ce6 <_ZN5Print11printNumberEmh>
        arduboy.print(s);
        arduboy.print('.');
    2eea:	6e e2       	ldi	r22, 0x2E	; 46
    2eec:	8d ed       	ldi	r24, 0xDD	; 221
    2eee:	97 e0       	ldi	r25, 0x07	; 7
    2ef0:	0e 94 44 14 	call	0x2888	; 0x2888 <_ZN5Print5printEc.constprop.21>
        arduboy.print(frames / (FPS / 10) % 10);
    2ef4:	c7 01       	movw	r24, r14
    2ef6:	b6 01       	movw	r22, r12
    2ef8:	26 e0       	ldi	r18, 0x06	; 6
    2efa:	30 e0       	ldi	r19, 0x00	; 0
    2efc:	40 e0       	ldi	r20, 0x00	; 0
    2efe:	50 e0       	ldi	r21, 0x00	; 0
    2f00:	0e 94 73 2c 	call	0x58e6	; 0x58e6 <__udivmodsi4>
    2f04:	ca 01       	movw	r24, r20
    2f06:	b9 01       	movw	r22, r18
    2f08:	2a e0       	ldi	r18, 0x0A	; 10
    2f0a:	30 e0       	ldi	r19, 0x00	; 0
    2f0c:	40 e0       	ldi	r20, 0x00	; 0
    2f0e:	50 e0       	ldi	r21, 0x00	; 0
    2f10:	0e 94 73 2c 	call	0x58e6	; 0x58e6 <__udivmodsi4>
    2f14:	ab 01       	movw	r20, r22
    2f16:	bc 01       	movw	r22, r24
    2f18:	2a e0       	ldi	r18, 0x0A	; 10
    2f1a:	8d ed       	ldi	r24, 0xDD	; 221
    2f1c:	97 e0       	ldi	r25, 0x07	; 7
        arduboy.print(m);
        arduboy.print(':');
        if (s < 10) arduboy.print('0');
        arduboy.print(s);
    }
}
    2f1e:	df 91       	pop	r29
    2f20:	cf 91       	pop	r28
    2f22:	1f 91       	pop	r17
    2f24:	0f 91       	pop	r16
    2f26:	ff 90       	pop	r15
    2f28:	ef 90       	pop	r14
    2f2a:	df 90       	pop	r13
    2f2c:	cf 90       	pop	r12
    2f2e:	bf 90       	pop	r11
    2f30:	af 90       	pop	r10
    2f32:	9f 90       	pop	r9
    2f34:	8f 90       	pop	r8
    2f36:	7f 90       	pop	r7
    2f38:	6f 90       	pop	r6
    2f3a:	5f 90       	pop	r5
    2f3c:	4f 90       	pop	r4
    2f3e:	3f 90       	pop	r3
    2f40:	2f 90       	pop	r2
    2f42:	0c 94 73 16 	jmp	0x2ce6	; 0x2ce6 <_ZN5Print11printNumberEmh>
    2f46:	2a e0       	ldi	r18, 0x0A	; 10
    2f48:	b3 01       	movw	r22, r6
    2f4a:	a2 01       	movw	r20, r4
    2f4c:	8d ed       	ldi	r24, 0xDD	; 221
    2f4e:	97 e0       	ldi	r25, 0x07	; 7
    2f50:	0e 94 73 16 	call	0x2ce6	; 0x2ce6 <_ZN5Print11printNumberEmh>
        arduboy.print('.');
        arduboy.print(frames / (FPS / 10) % 10);
    } else {
        if (h > 0) {
            arduboy.print(h);
            arduboy.print(':');
    2f54:	6a e3       	ldi	r22, 0x3A	; 58
    2f56:	8d ed       	ldi	r24, 0xDD	; 221
    2f58:	97 e0       	ldi	r25, 0x07	; 7
    2f5a:	0e 94 44 14 	call	0x2888	; 0x2888 <_ZN5Print5printEc.constprop.21>
            if (m < 10) arduboy.print('0');
    2f5e:	da 30       	cpi	r29, 0x0A	; 10
    2f60:	28 f4       	brcc	.+10     	; 0x2f6c <_Z8drawTimeiim+0x146>
    2f62:	60 e3       	ldi	r22, 0x30	; 48
    2f64:	8d ed       	ldi	r24, 0xDD	; 221
    2f66:	97 e0       	ldi	r25, 0x07	; 7
    2f68:	0e 94 44 14 	call	0x2888	; 0x2888 <_ZN5Print5printEc.constprop.21>
    2f6c:	2a e0       	ldi	r18, 0x0A	; 10
    2f6e:	4d 2f       	mov	r20, r29
    2f70:	52 2d       	mov	r21, r2
    2f72:	63 2d       	mov	r22, r3
    2f74:	70 2f       	mov	r23, r16
    2f76:	8d ed       	ldi	r24, 0xDD	; 221
    2f78:	97 e0       	ldi	r25, 0x07	; 7
    2f7a:	0e 94 73 16 	call	0x2ce6	; 0x2ce6 <_ZN5Print11printNumberEmh>
        }
        arduboy.print(m);
        arduboy.print(':');
    2f7e:	6a e3       	ldi	r22, 0x3A	; 58
    2f80:	8d ed       	ldi	r24, 0xDD	; 221
    2f82:	97 e0       	ldi	r25, 0x07	; 7
    2f84:	0e 94 44 14 	call	0x2888	; 0x2888 <_ZN5Print5printEc.constprop.21>
        if (s < 10) arduboy.print('0');
    2f88:	29 e0       	ldi	r18, 0x09	; 9
    2f8a:	28 15       	cp	r18, r8
    2f8c:	28 f0       	brcs	.+10     	; 0x2f98 <_Z8drawTimeiim+0x172>
    2f8e:	60 e3       	ldi	r22, 0x30	; 48
    2f90:	8d ed       	ldi	r24, 0xDD	; 221
    2f92:	97 e0       	ldi	r25, 0x07	; 7
    2f94:	0e 94 44 14 	call	0x2888	; 0x2888 <_ZN5Print5printEc.constprop.21>
    2f98:	2a e0       	ldi	r18, 0x0A	; 10
    2f9a:	4c 2f       	mov	r20, r28
    2f9c:	59 2d       	mov	r21, r9
    2f9e:	b5 01       	movw	r22, r10
    2fa0:	bc cf       	rjmp	.-136    	; 0x2f1a <_Z8drawTimeiim+0xf4>

00002fa2 <_ZL10drawCreditv>:
        isSettingChenged = false;
    }
}

static void drawCredit(void)
{
    2fa2:	cf 92       	push	r12
    2fa4:	df 92       	push	r13
    2fa6:	ef 92       	push	r14
    2fa8:	ff 92       	push	r15
    2faa:	0f 93       	push	r16
    2fac:	1f 93       	push	r17
    2fae:	cf 93       	push	r28
    2fb0:	df 93       	push	r29
    if (isInvalid) drawText(creditText, 11);
    2fb2:	80 91 4b 03 	lds	r24, 0x034B	; 0x80034b <isInvalid>
    2fb6:	88 23       	and	r24, r24
    2fb8:	49 f1       	breq	.+82     	; 0x300c <_ZL10drawCreditv+0x6a>
    2fba:	0b e0       	ldi	r16, 0x0B	; 11
    2fbc:	10 e0       	ldi	r17, 0x00	; 0
    2fbe:	c1 ee       	ldi	r28, 0xE1	; 225
    2fc0:	d8 e0       	ldi	r29, 0x08	; 8
#endif
}

static void drawText(const char *p, int16_t y)
{
    while (pgm_read_byte(p) != '\e') {
    2fc2:	fe 01       	movw	r30, r28
    2fc4:	84 91       	lpm	r24, Z
    2fc6:	8b 31       	cpi	r24, 0x1B	; 27
    2fc8:	09 f1       	breq	.+66     	; 0x300c <_ZL10drawCreditv+0x6a>
        uint8_t len = strnlen_P(p, 21);
    2fca:	65 e1       	ldi	r22, 0x15	; 21
    2fcc:	70 e0       	ldi	r23, 0x00	; 0
    2fce:	ce 01       	movw	r24, r28
    2fd0:	0e 94 ed 2b 	call	0x57da	; 0x57da <strnlen_P>
    2fd4:	7c 01       	movw	r14, r24
        arduboy.printEx(64 - len * 3, y, (const __FlashStringHelper *) p);
    2fd6:	6c 01       	movw	r12, r24
    2fd8:	dd 24       	eor	r13, r13
    2fda:	28 2f       	mov	r18, r24
    2fdc:	3d ef       	ldi	r19, 0xFD	; 253
    2fde:	32 03       	mulsu	r19, r18
    2fe0:	c0 01       	movw	r24, r0
    2fe2:	11 24       	eor	r1, r1
    2fe4:	ae 01       	movw	r20, r28
    2fe6:	b8 01       	movw	r22, r16
    2fe8:	80 5c       	subi	r24, 0xC0	; 192
    2fea:	9f 4f       	sbci	r25, 0xFF	; 255
    2fec:	0e 94 86 14 	call	0x290c	; 0x290c <_ZN10MyArduboy27printExIPK19__FlashStringHelperEEjiiT_.constprop.13>
        p += len + 1;
    2ff0:	8f ef       	ldi	r24, 0xFF	; 255
    2ff2:	c8 1a       	sub	r12, r24
    2ff4:	d8 0a       	sbc	r13, r24
    2ff6:	cc 0d       	add	r28, r12
    2ff8:	dd 1d       	adc	r29, r13
        y += (len == 0) ? 2 : 6;
    2ffa:	86 e0       	ldi	r24, 0x06	; 6
    2ffc:	90 e0       	ldi	r25, 0x00	; 0
    2ffe:	e1 10       	cpse	r14, r1
    3000:	02 c0       	rjmp	.+4      	; 0x3006 <_ZL10drawCreditv+0x64>
    3002:	82 e0       	ldi	r24, 0x02	; 2
    3004:	90 e0       	ldi	r25, 0x00	; 0
    3006:	08 0f       	add	r16, r24
    3008:	19 1f       	adc	r17, r25
    300a:	db cf       	rjmp	.-74     	; 0x2fc2 <_ZL10drawCreditv+0x20>
}

static void drawCredit(void)
{
    if (isInvalid) drawText(creditText, 11);
}
    300c:	df 91       	pop	r29
    300e:	cf 91       	pop	r28
    3010:	1f 91       	pop	r17
    3012:	0f 91       	pop	r16
    3014:	ff 90       	pop	r15
    3016:	ef 90       	pop	r14
    3018:	df 90       	pop	r13
    301a:	cf 90       	pop	r12
    301c:	08 95       	ret

0000301e <_ZL11onNewBattlev>:
    state = STATE_STARTED;
    dprintln(F("Game start"));
}

static void onNewBattle(void)
{
    301e:	8f 92       	push	r8
    3020:	9f 92       	push	r9
    3022:	af 92       	push	r10
    3024:	bf 92       	push	r11
    3026:	cf 92       	push	r12
    3028:	df 92       	push	r13
    302a:	ef 92       	push	r14
    302c:	ff 92       	push	r15
    302e:	cf 93       	push	r28
    3030:	df 93       	push	r29
    if (record.isCodeManual) {
    3032:	80 91 3d 03 	lds	r24, 0x033D	; 0x80033d <record+0x3>
    3036:	84 ff       	sbrs	r24, 4
    3038:	4c c0       	rjmp	.+152    	; 0x30d2 <_ZL11onNewBattlev+0xb4>
        playSoundClick();
    303a:	0e 94 aa 0e 	call	0x1d54	; 0x1d54 <_Z14playSoundClickv>
        gameSeedX = 0;
    303e:	10 92 44 03 	sts	0x0344, r1	; 0x800344 <_ZL9gameSeedX>
        gameSeedTmp = (record.gameSeed == GAME_SEED_MAX) ? randomGameSeed() : record.gameSeed;
    3042:	80 91 3a 03 	lds	r24, 0x033A	; 0x80033a <record>
    3046:	90 91 3b 03 	lds	r25, 0x033B	; 0x80033b <record+0x1>
    304a:	a0 91 3c 03 	lds	r26, 0x033C	; 0x80033c <record+0x2>
    304e:	b0 e0       	ldi	r27, 0x00	; 0
    3050:	8b 36       	cpi	r24, 0x6B	; 107
    3052:	22 ef       	ldi	r18, 0xF2	; 242
    3054:	92 07       	cpc	r25, r18
    3056:	2a ed       	ldi	r18, 0xDA	; 218
    3058:	a2 07       	cpc	r26, r18
    305a:	01 f5       	brne	.+64     	; 0x309c <_ZL11onNewBattlev+0x7e>
    305c:	c5 e0       	ldi	r28, 0x05	; 5
    305e:	d0 e0       	ldi	r29, 0x00	; 0
    }
}

static uint32_t randomGameSeed(void)
{
    uint32_t ret = 0;
    3060:	20 e0       	ldi	r18, 0x00	; 0
    3062:	30 e0       	ldi	r19, 0x00	; 0
    3064:	a9 01       	movw	r20, r18
long random(long howbig)
{
  if (howbig == 0) {
    return 0;
  }
  return random() % howbig;
    3066:	9a e1       	ldi	r25, 0x1A	; 26
    3068:	c9 2e       	mov	r12, r25
    306a:	d1 2c       	mov	r13, r1
    306c:	e1 2c       	mov	r14, r1
    306e:	f1 2c       	mov	r15, r1
    for (int i = 0; i < GAME_SEED_TOKEN_MAX; i++) {
        ret = ret * GAME_SEED_TOKEN_VAL + random(GAME_SEED_TOKEN_ALP);
    3070:	ab e1       	ldi	r26, 0x1B	; 27
    3072:	b0 e0       	ldi	r27, 0x00	; 0
    3074:	0e 94 60 2c 	call	0x58c0	; 0x58c0 <__muluhisi3>
    3078:	4b 01       	movw	r8, r22
    307a:	5c 01       	movw	r10, r24
    307c:	0e 94 8c 2b 	call	0x5718	; 0x5718 <random>
    3080:	a7 01       	movw	r20, r14
    3082:	96 01       	movw	r18, r12
    3084:	0e 94 41 2c 	call	0x5882	; 0x5882 <__divmodsi4>
    3088:	9b 01       	movw	r18, r22
    308a:	ac 01       	movw	r20, r24
    308c:	28 0d       	add	r18, r8
    308e:	39 1d       	adc	r19, r9
    3090:	4a 1d       	adc	r20, r10
    3092:	5b 1d       	adc	r21, r11
    3094:	21 97       	sbiw	r28, 0x01	; 1
}

static uint32_t randomGameSeed(void)
{
    uint32_t ret = 0;
    for (int i = 0; i < GAME_SEED_TOKEN_MAX; i++) {
    3096:	61 f7       	brne	.-40     	; 0x3070 <_ZL11onNewBattlev+0x52>
static void onNewBattle(void)
{
    if (record.isCodeManual) {
        playSoundClick();
        gameSeedX = 0;
        gameSeedTmp = (record.gameSeed == GAME_SEED_MAX) ? randomGameSeed() : record.gameSeed;
    3098:	da 01       	movw	r26, r20
    309a:	c9 01       	movw	r24, r18
    309c:	80 93 46 03 	sts	0x0346, r24	; 0x800346 <_ZL11gameSeedTmp>
    30a0:	90 93 47 03 	sts	0x0347, r25	; 0x800347 <_ZL11gameSeedTmp+0x1>
    30a4:	a0 93 48 03 	sts	0x0348, r26	; 0x800348 <_ZL11gameSeedTmp+0x2>
    30a8:	b0 93 49 03 	sts	0x0349, r27	; 0x800349 <_ZL11gameSeedTmp+0x3>
        state = STATE_CODE_ENTRY;
    30ac:	84 e0       	ldi	r24, 0x04	; 4
    30ae:	80 93 38 03 	sts	0x0338, r24	; 0x800338 <_ZL5state.lto_priv.53>
        isInvalid = true;
    30b2:	81 e0       	ldi	r24, 0x01	; 1
    30b4:	80 93 4b 03 	sts	0x034B, r24	; 0x80034b <isInvalid>
        isSettingChenged = true;
    30b8:	80 93 4a 03 	sts	0x034A, r24	; 0x80034a <_ZL16isSettingChenged>
    } else {
        record.isCleared = false;
        record.gameSeed = randomGameSeed();
        onStart();
    }
}
    30bc:	df 91       	pop	r29
    30be:	cf 91       	pop	r28
    30c0:	ff 90       	pop	r15
    30c2:	ef 90       	pop	r14
    30c4:	df 90       	pop	r13
    30c6:	cf 90       	pop	r12
    30c8:	bf 90       	pop	r11
    30ca:	af 90       	pop	r10
    30cc:	9f 90       	pop	r9
    30ce:	8f 90       	pop	r8
    30d0:	08 95       	ret
        state = STATE_CODE_ENTRY;
        isInvalid = true;
        isSettingChenged = true;
        dprintln(F("Code entry"));
    } else {
        record.isCleared = false;
    30d2:	8f 77       	andi	r24, 0x7F	; 127
    30d4:	80 93 3d 03 	sts	0x033D, r24	; 0x80033d <record+0x3>
    30d8:	c5 e0       	ldi	r28, 0x05	; 5
    30da:	d0 e0       	ldi	r29, 0x00	; 0
    }
}

static uint32_t randomGameSeed(void)
{
    uint32_t ret = 0;
    30dc:	20 e0       	ldi	r18, 0x00	; 0
    30de:	30 e0       	ldi	r19, 0x00	; 0
    30e0:	a9 01       	movw	r20, r18
    30e2:	8a e1       	ldi	r24, 0x1A	; 26
    30e4:	c8 2e       	mov	r12, r24
    30e6:	d1 2c       	mov	r13, r1
    30e8:	e1 2c       	mov	r14, r1
    30ea:	f1 2c       	mov	r15, r1
    for (int i = 0; i < GAME_SEED_TOKEN_MAX; i++) {
        ret = ret * GAME_SEED_TOKEN_VAL + random(GAME_SEED_TOKEN_ALP);
    30ec:	ab e1       	ldi	r26, 0x1B	; 27
    30ee:	b0 e0       	ldi	r27, 0x00	; 0
    30f0:	0e 94 60 2c 	call	0x58c0	; 0x58c0 <__muluhisi3>
    30f4:	4b 01       	movw	r8, r22
    30f6:	5c 01       	movw	r10, r24
    30f8:	0e 94 8c 2b 	call	0x5718	; 0x5718 <random>
    30fc:	a7 01       	movw	r20, r14
    30fe:	96 01       	movw	r18, r12
    3100:	0e 94 41 2c 	call	0x5882	; 0x5882 <__divmodsi4>
    3104:	9b 01       	movw	r18, r22
    3106:	ac 01       	movw	r20, r24
    3108:	28 0d       	add	r18, r8
    310a:	39 1d       	adc	r19, r9
    310c:	4a 1d       	adc	r20, r10
    310e:	5b 1d       	adc	r21, r11
    3110:	21 97       	sbiw	r28, 0x01	; 1
}

static uint32_t randomGameSeed(void)
{
    uint32_t ret = 0;
    for (int i = 0; i < GAME_SEED_TOKEN_MAX; i++) {
    3112:	61 f7       	brne	.-40     	; 0x30ec <_ZL11onNewBattlev+0xce>
        isInvalid = true;
        isSettingChenged = true;
        dprintln(F("Code entry"));
    } else {
        record.isCleared = false;
        record.gameSeed = randomGameSeed();
    3114:	20 93 3a 03 	sts	0x033A, r18	; 0x80033a <record>
    3118:	30 93 3b 03 	sts	0x033B, r19	; 0x80033b <record+0x1>
    311c:	40 93 3c 03 	sts	0x033C, r20	; 0x80033c <record+0x2>
    dprintln(F("Title screen"));
}

static void onStart(void)
{
    state = STATE_STARTED;
    3120:	85 e0       	ldi	r24, 0x05	; 5
    3122:	80 93 38 03 	sts	0x0338, r24	; 0x800338 <_ZL5state.lto_priv.53>
    3126:	ca cf       	rjmp	.-108    	; 0x30bc <_ZL11onNewBattlev+0x9e>

00003128 <_Z11updateTitlev>:
    }
    onTop();
}

MODE_T updateTitle(void)
{
    3128:	cf 92       	push	r12
    312a:	df 92       	push	r13
    312c:	ef 92       	push	r14
    312e:	ff 92       	push	r15
    handleDPad();
    3130:	0e 94 31 0d 	call	0x1a62	; 0x1a62 <_Z10handleDPadv>
    counter++;
    3134:	80 91 45 03 	lds	r24, 0x0345	; 0x800345 <counter>
    3138:	8f 5f       	subi	r24, 0xFF	; 255
    313a:	80 93 45 03 	sts	0x0345, r24	; 0x800345 <counter>
    callHandlerFunc(state);
    313e:	e0 91 38 03 	lds	r30, 0x0338	; 0x800338 <_ZL5state.lto_priv.53>
    3142:	f0 e0       	ldi	r31, 0x00	; 0
    3144:	ee 0f       	add	r30, r30
    3146:	ff 1f       	adc	r31, r31
    3148:	e3 57       	subi	r30, 0x73	; 115
    314a:	f8 4f       	sbci	r31, 0xF8	; 248
    314c:	85 91       	lpm	r24, Z+
    314e:	94 91       	lpm	r25, Z
    3150:	fc 01       	movw	r30, r24
    3152:	09 95       	icall
    randomSeed(rand() ^ micros()); // Shuffle random
    3154:	0e 94 30 2b 	call	0x5660	; 0x5660 <rand>
    3158:	6c 01       	movw	r12, r24
    315a:	99 0f       	add	r25, r25
    315c:	ee 08       	sbc	r14, r14
    315e:	ff 08       	sbc	r15, r15
    3160:	0e 94 fa 07 	call	0xff4	; 0xff4 <micros>
  #include "stdlib.h"
}

void randomSeed(unsigned long seed)
{
  if (seed != 0) {
    3164:	c6 16       	cp	r12, r22
    3166:	d7 06       	cpc	r13, r23
    3168:	e8 06       	cpc	r14, r24
    316a:	f9 06       	cpc	r15, r25
    316c:	31 f0       	breq	.+12     	; 0x317a <_Z11updateTitlev+0x52>
    316e:	6c 25       	eor	r22, r12
    3170:	7d 25       	eor	r23, r13
    3172:	8e 25       	eor	r24, r14
    3174:	9f 25       	eor	r25, r15
    srandom(seed);
    3176:	0e 94 db 2b 	call	0x57b6	; 0x57b6 <srandom>
    return (state == STATE_STARTED) ? MODE_GAME : MODE_TITLE;
    317a:	80 91 38 03 	lds	r24, 0x0338	; 0x800338 <_ZL5state.lto_priv.53>
    317e:	85 30       	cpi	r24, 0x05	; 5
    3180:	31 f0       	breq	.+12     	; 0x318e <_Z11updateTitlev+0x66>
    3182:	81 e0       	ldi	r24, 0x01	; 1
}
    3184:	ff 90       	pop	r15
    3186:	ef 90       	pop	r14
    3188:	df 90       	pop	r13
    318a:	cf 90       	pop	r12
    318c:	08 95       	ret
{
    handleDPad();
    counter++;
    callHandlerFunc(state);
    randomSeed(rand() ^ micros()); // Shuffle random
    return (state == STATE_STARTED) ? MODE_GAME : MODE_TITLE;
    318e:	82 e0       	ldi	r24, 0x02	; 2
    3190:	f9 cf       	rjmp	.-14     	; 0x3184 <_Z11updateTitlev+0x5c>

00003192 <_Z8initGamev>:
/*                              Main Functions                               */
/*---------------------------------------------------------------------------*/

void initGame(void)
{
    arduboy.playScore(soundStart, SND_PRIO_START);
    3192:	60 e0       	ldi	r22, 0x00	; 0
    3194:	8d ef       	ldi	r24, 0xFD	; 253
    3196:	92 e0       	ldi	r25, 0x02	; 2
    3198:	0e 94 8c 12 	call	0x2518	; 0x2518 <_ZN10MyArduboy29playScoreEPKhha.constprop.27>
/*                             Control Functions                             */
/*---------------------------------------------------------------------------*/

static void initGameParams(void)
{
    gameRank = record.gameRank;
    319c:	80 91 3d 03 	lds	r24, 0x033D	; 0x80033d <record+0x3>
    31a0:	8f 70       	andi	r24, 0x0F	; 15
    31a2:	80 93 0a 03 	sts	0x030A, r24	; 0x80030a <_ZL8gameRank>
    gameFrames = 0;
    31a6:	10 92 08 03 	sts	0x0308, r1	; 0x800308 <_ZL10gameFrames+0x1>
    31aa:	10 92 07 03 	sts	0x0307, r1	; 0x800307 <_ZL10gameFrames>
    playerX = WIDTH / 8 * PLAYER_SCALE;
    31ae:	80 e4       	ldi	r24, 0x40	; 64
    31b0:	80 93 06 03 	sts	0x0306, r24	; 0x800306 <_ZL7playerX>
    playerY = HEIGHT / 2 * PLAYER_SCALE;
    31b4:	80 e8       	ldi	r24, 0x80	; 128
    31b6:	80 93 05 03 	sts	0x0305, r24	; 0x800305 <_ZL7playerY>
    playerFire = 0;
    31ba:	10 92 4a 01 	sts	0x014A, r1	; 0x80014a <_ZL10playerFire>
    playerSlow = 0;
    31be:	10 92 4b 01 	sts	0x014B, r1	; 0x80014b <_ZL10playerSlow>
    isDefeated = false;
    31c2:	10 92 45 01 	sts	0x0145, r1	; 0x800145 <_ZL10isDefeated>
    dprintln(gameRank);
}

static void initShots(void)
{
    for (SHOT_T *pS = shots; pS < &shots[SHOT_MAX]; pS++) pS->x = WIDTH;
    31c6:	ee e4       	ldi	r30, 0x4E	; 78
    31c8:	f1 e0       	ldi	r31, 0x01	; 1
    31ca:	80 83       	st	Z, r24
    31cc:	32 96       	adiw	r30, 0x02	; 2
    31ce:	91 e0       	ldi	r25, 0x01	; 1
    31d0:	e2 37       	cpi	r30, 0x72	; 114
    31d2:	f9 07       	cpc	r31, r25
    31d4:	d1 f7       	brne	.-12     	; 0x31ca <_Z8initGamev+0x38>
}

static void initBullets(void)
{
    for (BULLET_T *pB = bullets; pB < &bullets[BULLET_MAX]; pB++) pB->spd = 0;
    31d6:	e4 ec       	ldi	r30, 0xC4	; 196
    31d8:	f1 e0       	ldi	r31, 0x01	; 1
    31da:	80 81       	ld	r24, Z
    31dc:	80 7e       	andi	r24, 0xE0	; 224
    31de:	80 83       	st	Z, r24
    31e0:	35 96       	adiw	r30, 0x05	; 5
    31e2:	83 e0       	ldi	r24, 0x03	; 3
    31e4:	e4 30       	cpi	r30, 0x04	; 4
    31e6:	f8 07       	cpc	r31, r24
    31e8:	c1 f7       	brne	.-16     	; 0x31da <_Z8initGamev+0x48>
    bulletsNum = 0;
    31ea:	10 92 c3 01 	sts	0x01C3, r1	; 0x8001c3 <_ZL10bulletsNum>
}

static void initEnemies(void)
{
    for (ENEMY_T *pE = enemies; pE < &enemies[ENEMY_MAX]; pE++) pE->life = 0;
    31ee:	e2 e7       	ldi	r30, 0x72	; 114
    31f0:	f1 e0       	ldi	r31, 0x01	; 1
    31f2:	81 81       	ldd	r24, Z+1	; 0x01
    31f4:	8f 70       	andi	r24, 0x0F	; 15
    31f6:	81 83       	std	Z+1, r24	; 0x01
    31f8:	34 96       	adiw	r30, 0x04	; 4
    31fa:	91 e0       	ldi	r25, 0x01	; 1
    31fc:	ee 3a       	cpi	r30, 0xAE	; 174
    31fe:	f9 07       	cpc	r31, r25
    3200:	c1 f7       	brne	.-16     	; 0x31f2 <_Z8initGamev+0x60>
    playerSlow = 0;
    isDefeated = false;
    initShots();
    initBullets();
    initEnemies();
    explo.a = IMG_EXPLO_ID_MAX;
    3202:	80 91 4d 01 	lds	r24, 0x014D	; 0x80014d <_ZL5explo+0x1>
    3206:	8f 71       	andi	r24, 0x1F	; 31
    3208:	80 6c       	ori	r24, 0xC0	; 192
    320a:	80 93 4d 01 	sts	0x014D, r24	; 0x80014d <_ZL5explo+0x1>
    randomSeed(record.gameSeed + 1);
    320e:	80 91 3a 03 	lds	r24, 0x033A	; 0x80033a <record>
    3212:	90 91 3b 03 	lds	r25, 0x033B	; 0x80033b <record+0x1>
    3216:	a0 91 3c 03 	lds	r26, 0x033C	; 0x80033c <record+0x2>
    321a:	b0 e0       	ldi	r27, 0x00	; 0
    321c:	bc 01       	movw	r22, r24
    321e:	cd 01       	movw	r24, r26
    3220:	6f 5f       	subi	r22, 0xFF	; 255
    3222:	7f 4f       	sbci	r23, 0xFF	; 255
    3224:	8f 4f       	sbci	r24, 0xFF	; 255
    3226:	9f 4f       	sbci	r25, 0xFF	; 255
    3228:	0e 94 db 2b 	call	0x57b6	; 0x57b6 <srandom>

void initGame(void)
{
    arduboy.playScore(soundStart, SND_PRIO_START);
    initGameParams();
    counter = 0;
    322c:	10 92 45 03 	sts	0x0345, r1	; 0x800345 <counter>
    ledLevel = 0;
    3230:	10 92 46 01 	sts	0x0146, r1	; 0x800146 <_ZL8ledLevel>
    isMenu = false;
    3234:	10 92 04 03 	sts	0x0304, r1	; 0x800304 <_ZL6isMenu>
    state = STATE_START;
    3238:	10 92 09 03 	sts	0x0309, r1	; 0x800309 <_ZL5state.lto_priv.52>
    isInvalid = true;
    323c:	81 e0       	ldi	r24, 0x01	; 1
    323e:	80 93 4b 03 	sts	0x034B, r24	; 0x80034b <isInvalid>
}
    3242:	08 95       	ret

00003244 <_ZL7onRetryv>:
}

static void onRetry(void)
{
    dprintln(F("Menu: retry"));
    initGame();
    3244:	0c 94 c9 18 	jmp	0x3192	; 0x3192 <_Z8initGamev>

00003248 <_Z9initTitlev>:
/*---------------------------------------------------------------------------*/
/*                              Main Functions                               */
/*---------------------------------------------------------------------------*/

void initTitle(void)
{
    3248:	0f 93       	push	r16
    324a:	1f 93       	push	r17
    324c:	cf 93       	push	r28
    324e:	df 93       	push	r29
    if (state == STATE_INIT) {
    3250:	80 91 38 03 	lds	r24, 0x0338	; 0x800338 <_ZL5state.lto_priv.53>
    3254:	81 11       	cpse	r24, r1
    3256:	b4 c0       	rjmp	.+360    	; 0x33c0 <_Z9initTitlev+0x178>
/*                            Initialize & Finalize                          */
/*---------------------------------------------------------------------------*/

void MyArduboy2::initAudio(uint8_t chans)
{
    outputEnabled = audio.enabled;
    3258:	84 ee       	ldi	r24, 0xE4	; 228
    325a:	98 e0       	ldi	r25, 0x08	; 8
    325c:	90 93 89 03 	sts	0x0389, r25	; 0x800389 <_ZL13outputEnabled+0x1>
    3260:	80 93 88 03 	sts	0x0388, r24	; 0x800388 <_ZL13outputEnabled>
    if (chans == 0 || chans > AVAILABLE_CHANNELS) return;
    if (numChans > 0) closeAudio();
    3264:	80 91 8c 03 	lds	r24, 0x038C	; 0x80038c <_ZL8numChans>
    3268:	88 23       	and	r24, r24
    326a:	b1 f1       	breq	.+108    	; 0x32d8 <_Z9initTitlev+0x90>
    }
}

void MyArduboy2::closeAudio(void)
{
    for (uint8_t chan = 0; chan < numChans; chan++) {
    326c:	90 e0       	ldi	r25, 0x00	; 0
        switch (getTimerNum(chan)) {
        case 1:
            stopTimer(1);
            TCCR1B = _BV(CS10) | _BV(CS11);
    326e:	23 e0       	ldi	r18, 0x03	; 3
    }
}

void MyArduboy2::closeAudio(void)
{
    for (uint8_t chan = 0; chan < numChans; chan++) {
    3270:	80 91 8c 03 	lds	r24, 0x038C	; 0x80038c <_ZL8numChans>
    3274:	98 17       	cp	r25, r24
    3276:	50 f5       	brcc	.+84     	; 0x32cc <_Z9initTitlev+0x84>
        switch (getTimerNum(chan)) {
    3278:	91 11       	cpse	r25, r1
    327a:	16 c0       	rjmp	.+44     	; 0x32a8 <_Z9initTitlev+0x60>
        case 1:
            stopTimer(1);
            TCCR1B = _BV(CS10) | _BV(CS11);
            break;
        case 3:
            stopTimer(3);
    327c:	80 91 71 00 	lds	r24, 0x0071	; 0x800071 <__DATA_REGION_ORIGIN__+0x11>
    3280:	8d 7f       	andi	r24, 0xFD	; 253
    3282:	80 93 71 00 	sts	0x0071, r24	; 0x800071 <__DATA_REGION_ORIGIN__+0x11>
    3286:	80 91 26 03 	lds	r24, 0x0326	; 0x800326 <_ZL13timer3PinMask>
    328a:	e0 91 27 03 	lds	r30, 0x0327	; 0x800327 <_ZL13timer3PinPort>
    328e:	f0 91 28 03 	lds	r31, 0x0328	; 0x800328 <_ZL13timer3PinPort+0x1>
    3292:	30 81       	ld	r19, Z
    3294:	80 95       	com	r24
    3296:	83 23       	and	r24, r19
    3298:	80 83       	st	Z, r24
            power_timer3_disable();
    329a:	80 91 65 00 	lds	r24, 0x0065	; 0x800065 <__DATA_REGION_ORIGIN__+0x5>
    329e:	88 60       	ori	r24, 0x08	; 8
    32a0:	80 93 65 00 	sts	0x0065, r24	; 0x800065 <__DATA_REGION_ORIGIN__+0x5>
    }
}

void MyArduboy2::closeAudio(void)
{
    for (uint8_t chan = 0; chan < numChans; chan++) {
    32a4:	9f 5f       	subi	r25, 0xFF	; 255
    32a6:	e4 cf       	rjmp	.-56     	; 0x3270 <_Z9initTitlev+0x28>
        switch (getTimerNum(chan)) {
        case 1:
            stopTimer(1);
    32a8:	80 91 6f 00 	lds	r24, 0x006F	; 0x80006f <__DATA_REGION_ORIGIN__+0xf>
    32ac:	8d 7f       	andi	r24, 0xFD	; 253
    32ae:	80 93 6f 00 	sts	0x006F, r24	; 0x80006f <__DATA_REGION_ORIGIN__+0xf>
    32b2:	80 91 23 03 	lds	r24, 0x0323	; 0x800323 <_ZL13timer1PinMask>
    32b6:	e0 91 24 03 	lds	r30, 0x0324	; 0x800324 <_ZL13timer1PinPort>
    32ba:	f0 91 25 03 	lds	r31, 0x0325	; 0x800325 <_ZL13timer1PinPort+0x1>
    32be:	30 81       	ld	r19, Z
    32c0:	80 95       	com	r24
    32c2:	83 23       	and	r24, r19
    32c4:	80 83       	st	Z, r24
            TCCR1B = _BV(CS10) | _BV(CS11);
    32c6:	20 93 81 00 	sts	0x0081, r18	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
    32ca:	ec cf       	rjmp	.-40     	; 0x32a4 <_Z9initTitlev+0x5c>
            power_timer3_disable();
            break;
        }
    }
    numChans = 0;
    isScorePlaying = isTonePlaying = isMuteScore = false;
    32cc:	10 92 7c 03 	sts	0x037C, r1	; 0x80037c <_ZL11isMuteScore>
    32d0:	10 92 81 03 	sts	0x0381, r1	; 0x800381 <_ZL13isTonePlaying>
    32d4:	10 92 8b 03 	sts	0x038B, r1	; 0x80038b <_ZL14isScorePlaying>
void MyArduboy2::initAudio(uint8_t chans)
{
    outputEnabled = audio.enabled;
    if (chans == 0 || chans > AVAILABLE_CHANNELS) return;
    if (numChans > 0) closeAudio();
    numChans = chans;
    32d8:	81 e0       	ldi	r24, 0x01	; 1
    32da:	80 93 8c 03 	sts	0x038C, r24	; 0x80038c <_ZL8numChans>
#ifdef PIN_SPEAKER_2
        pin = (chan == 0) ? PIN_SPEAKER_1 : PIN_SPEAKER_2;
#else
        pin = PIN_SPEAKER_1;
#endif
        byte pinPort = digitalPinToPort(pin);
    32de:	e3 e7       	ldi	r30, 0x73	; 115
    32e0:	f7 e0       	ldi	r31, 0x07	; 7
    32e2:	84 91       	lpm	r24, Z
        byte pinMask = digitalPinToBitMask(pin);
    32e4:	e4 e5       	ldi	r30, 0x54	; 84
    32e6:	f7 e0       	ldi	r31, 0x07	; 7
    32e8:	24 91       	lpm	r18, Z
        volatile byte *outReg = portOutputRegister(pinPort);
    32ea:	90 e0       	ldi	r25, 0x00	; 0
    32ec:	88 0f       	add	r24, r24
    32ee:	99 1f       	adc	r25, r25
    32f0:	fc 01       	movw	r30, r24
    32f2:	ef 5b       	subi	r30, 0xBF	; 191
    32f4:	f8 4f       	sbci	r31, 0xF8	; 248
    32f6:	45 91       	lpm	r20, Z+
    32f8:	54 91       	lpm	r21, Z

        *portModeRegister(pinPort) |= pinMask; // set pin to output mode
    32fa:	fc 01       	movw	r30, r24
    32fc:	ed 5c       	subi	r30, 0xCD	; 205
    32fe:	f8 4f       	sbci	r31, 0xF8	; 248
    3300:	a5 91       	lpm	r26, Z+
    3302:	b4 91       	lpm	r27, Z
    3304:	8c 91       	ld	r24, X
    3306:	82 2b       	or	r24, r18
    3308:	8c 93       	st	X, r24
        switch (getTimerNum(chan)) {
        case 1:
            initTimer(1, outReg, pinMask);
            break;
        case 3:
            power_timer3_enable();
    330a:	80 91 65 00 	lds	r24, 0x0065	; 0x800065 <__DATA_REGION_ORIGIN__+0x5>
    330e:	87 7f       	andi	r24, 0xF7	; 247
    3310:	80 93 65 00 	sts	0x0065, r24	; 0x800065 <__DATA_REGION_ORIGIN__+0x5>
            initTimer(3, outReg, pinMask);
    3314:	10 92 90 00 	sts	0x0090, r1	; 0x800090 <__DATA_REGION_ORIGIN__+0x30>
    3318:	89 e0       	ldi	r24, 0x09	; 9
    331a:	80 93 91 00 	sts	0x0091, r24	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
    331e:	50 93 28 03 	sts	0x0328, r21	; 0x800328 <_ZL13timer3PinPort+0x1>
    3322:	40 93 27 03 	sts	0x0327, r20	; 0x800327 <_ZL13timer3PinPort>
    3326:	20 93 26 03 	sts	0x0326, r18	; 0x800326 <_ZL13timer3PinMask>
            stopNote(0); // start timer 3
    332a:	80 e0       	ldi	r24, 0x00	; 0
    332c:	0e 94 08 0e 	call	0x1c10	; 0x1c10 <_ZL8stopNoteh>
/*                             EEPROM Functions                              */
/*---------------------------------------------------------------------------*/

void eepSeek(int addr)
{
    eepAddr = max(addr, EEPROM_STORAGE_SPACE_START);
    3330:	80 ef       	ldi	r24, 0xF0	; 240
    3332:	93 e0       	ldi	r25, 0x03	; 3
    3334:	90 93 2d 03 	sts	0x032D, r25	; 0x80032d <_ZL7eepAddr+0x1>
    3338:	80 93 2c 03 	sts	0x032C, r24	; 0x80032c <_ZL7eepAddr>
    return ret;
}

uint32_t eepRead32(void)
{
    eeprom_busy_wait();
    333c:	f9 99       	sbic	0x1f, 1	; 31
    333e:	fe cf       	rjmp	.-4      	; 0x333c <_Z9initTitlev+0xf4>
    uint32_t ret = eeprom_read_dword((const uint32_t *) eepAddr);
    3340:	80 ef       	ldi	r24, 0xF0	; 240
    3342:	93 e0       	ldi	r25, 0x03	; 3
    3344:	0e 94 10 2c 	call	0x5820	; 0x5820 <eeprom_read_dword>
    eepAddr += 4;
    3348:	24 ef       	ldi	r18, 0xF4	; 244
    334a:	33 e0       	ldi	r19, 0x03	; 3
    334c:	30 93 2d 03 	sts	0x032D, r19	; 0x80032d <_ZL7eepAddr+0x1>
    3350:	20 93 2c 03 	sts	0x032C, r18	; 0x80032c <_ZL7eepAddr>

void readRecord(void)
{
    bool isVerified = false;
    eepSeek(EEPROM_ADDR_BASE);
    if (eepRead32() == EEPROM_SIGNATURE) {
    3354:	6f 34       	cpi	r22, 0x4F	; 79
    3356:	72 44       	sbci	r23, 0x42	; 66
    3358:	8e 44       	sbci	r24, 0x4E	; 78
    335a:	93 41       	sbci	r25, 0x13	; 19
    335c:	b9 f5       	brne	.+110    	; 0x33cc <_Z9initTitlev+0x184>
    return ret;
}

void eepReadBlock(void *p, size_t n)
{
    eeprom_busy_wait();
    335e:	f9 99       	sbic	0x1f, 1	; 31
    3360:	fe cf       	rjmp	.-4      	; 0x335e <_Z9initTitlev+0x116>
    eeprom_read_block(p, (const void *) eepAddr, n);
    3362:	4a e0       	ldi	r20, 0x0A	; 10
    3364:	50 e0       	ldi	r21, 0x00	; 0
    3366:	64 ef       	ldi	r22, 0xF4	; 244
    3368:	73 e0       	ldi	r23, 0x03	; 3
    336a:	8a e3       	ldi	r24, 0x3A	; 58
    336c:	93 e0       	ldi	r25, 0x03	; 3
    336e:	0e 94 f8 2b 	call	0x57f0	; 0x57f0 <eeprom_read_block>
    eepAddr += n;
    3372:	c0 91 2c 03 	lds	r28, 0x032C	; 0x80032c <_ZL7eepAddr>
    3376:	d0 91 2d 03 	lds	r29, 0x032D	; 0x80032d <_ZL7eepAddr+0x1>
    337a:	2a 96       	adiw	r28, 0x0a	; 10
    337c:	d0 93 2d 03 	sts	0x032D, r29	; 0x80032d <_ZL7eepAddr+0x1>
    3380:	c0 93 2c 03 	sts	0x032C, r28	; 0x80032c <_ZL7eepAddr>
    return eeprom_read_byte((const uint8_t *) eepAddr++);
}

uint16_t eepRead16(void)
{
    eeprom_busy_wait();
    3384:	f9 99       	sbic	0x1f, 1	; 31
    3386:	fe cf       	rjmp	.-4      	; 0x3384 <_Z9initTitlev+0x13c>
    uint16_t ret = eeprom_read_word((const uint16_t *)eepAddr);
    3388:	ce 01       	movw	r24, r28
    338a:	0e 94 16 2c 	call	0x582c	; 0x582c <eeprom_read_word>
    338e:	8c 01       	movw	r16, r24
    eepAddr += 2;
    3390:	22 96       	adiw	r28, 0x02	; 2
    3392:	d0 93 2d 03 	sts	0x032D, r29	; 0x80032d <_ZL7eepAddr+0x1>
    3396:	c0 93 2c 03 	sts	0x032C, r28	; 0x80032c <_ZL7eepAddr>
{
    bool isVerified = false;
    eepSeek(EEPROM_ADDR_BASE);
    if (eepRead32() == EEPROM_SIGNATURE) {
        eepReadBlock(&record, sizeof(record));
        isVerified = (eepRead16() == calcCheckSum());
    339a:	0e 94 65 0d 	call	0x1aca	; 0x1aca <_ZL12calcCheckSumv>
    }

    if (isVerified) {
    339e:	80 17       	cp	r24, r16
    33a0:	91 07       	cpc	r25, r17
    33a2:	a1 f4       	brne	.+40     	; 0x33cc <_Z9initTitlev+0x184>
        recordState = RECORD_STORED;
    33a4:	82 e0       	ldi	r24, 0x02	; 2
    33a6:	90 e0       	ldi	r25, 0x00	; 0
    33a8:	90 93 2b 03 	sts	0x032B, r25	; 0x80032b <_ZL11recordState+0x1>
    33ac:	80 93 2a 03 	sts	0x032A, r24	; 0x80032a <_ZL11recordState>
        isRecordDirty = false;
    33b0:	10 92 29 03 	sts	0x0329, r1	; 0x800329 <isRecordDirty>
    return audio.enabled();
}

void MyArduboy2::setAudioEnabled(bool on)
{
    (on) ? audio.on() : audio.off();
    33b4:	80 91 4c 03 	lds	r24, 0x034C	; 0x80034c <_ZN13Arduboy2Audio13audio_enabledE>
    33b8:	88 23       	and	r24, r24
    33ba:	41 f1       	breq	.+80     	; 0x340c <_Z9initTitlev+0x1c4>
    33bc:	0e 94 ec 08 	call	0x11d8	; 0x11d8 <_ZN13Arduboy2Audio2onEv>
        arduboy.initAudio(1);
        readRecord();
    }
    onTop();
}
    33c0:	df 91       	pop	r29
    33c2:	cf 91       	pop	r28
    33c4:	1f 91       	pop	r17
    33c6:	0f 91       	pop	r16
{
    if (state == STATE_INIT) {
        arduboy.initAudio(1);
        readRecord();
    }
    onTop();
    33c8:	0c 94 25 0f 	jmp	0x1e4a	; 0x1e4a <_ZL5onTopv>
        dprintln(F("Read record from EEPROM"));
    } else {
        memset(&record, 0, sizeof(record));
    33cc:	ec e3       	ldi	r30, 0x3C	; 60
    33ce:	f3 e0       	ldi	r31, 0x03	; 3
    33d0:	88 e0       	ldi	r24, 0x08	; 8
    33d2:	df 01       	movw	r26, r30
    33d4:	1d 92       	st	X+, r1
    33d6:	8a 95       	dec	r24
    33d8:	e9 f7       	brne	.-6      	; 0x33d4 <_Z9initTitlev+0x18c>
        record.gameRank = GAME_RANK_DEFAULT;
    33da:	80 91 3d 03 	lds	r24, 0x033D	; 0x80033d <record+0x3>
    33de:	80 7f       	andi	r24, 0xF0	; 240
        record.gameSeed = GAME_SEED_MAX;
    33e0:	2b e6       	ldi	r18, 0x6B	; 107
    33e2:	32 ef       	ldi	r19, 0xF2	; 242
    33e4:	4a ed       	ldi	r20, 0xDA	; 218
    33e6:	20 93 3a 03 	sts	0x033A, r18	; 0x80033a <record>
    33ea:	30 93 3b 03 	sts	0x033B, r19	; 0x80033b <record+0x1>
    33ee:	40 93 3c 03 	sts	0x033C, r20	; 0x80033c <record+0x2>
        record.isBlinkLED = true;
    33f2:	83 60       	ori	r24, 0x03	; 3
    33f4:	80 62       	ori	r24, 0x20	; 32
    33f6:	80 93 3d 03 	sts	0x033D, r24	; 0x80033d <record+0x3>
        recordState = RECORD_INITIAL;
    33fa:	81 e0       	ldi	r24, 0x01	; 1
    33fc:	90 e0       	ldi	r25, 0x00	; 0
    33fe:	90 93 2b 03 	sts	0x032B, r25	; 0x80032b <_ZL11recordState+0x1>
    3402:	80 93 2a 03 	sts	0x032A, r24	; 0x80032a <_ZL11recordState>
        isRecordDirty = true;
    3406:	80 93 29 03 	sts	0x0329, r24	; 0x800329 <isRecordDirty>
    340a:	d4 cf       	rjmp	.-88     	; 0x33b4 <_Z9initTitlev+0x16c>
    340c:	0e 94 e7 08 	call	0x11ce	; 0x11ce <_ZN13Arduboy2Audio3offEv>
    3410:	d7 cf       	rjmp	.-82     	; 0x33c0 <_Z9initTitlev+0x178>

00003412 <_Z13drawMenuItemsb>:

void drawMenuItems(bool isForced)
{
    3412:	6f 92       	push	r6
    3414:	7f 92       	push	r7
    3416:	9f 92       	push	r9
    3418:	af 92       	push	r10
    341a:	bf 92       	push	r11
    341c:	cf 92       	push	r12
    341e:	df 92       	push	r13
    3420:	ef 92       	push	r14
    3422:	ff 92       	push	r15
    3424:	0f 93       	push	r16
    3426:	1f 93       	push	r17
    3428:	cf 93       	push	r28
    342a:	df 93       	push	r29
    if (!isInvalidMenu && !isForced) return;
    342c:	90 91 31 03 	lds	r25, 0x0331	; 0x800331 <_ZL13isInvalidMenu>
    3430:	91 11       	cpse	r25, r1
    3432:	03 c0       	rjmp	.+6      	; 0x343a <_Z13drawMenuItemsb+0x28>
    3434:	88 23       	and	r24, r24
    3436:	09 f4       	brne	.+2      	; 0x343a <_Z13drawMenuItemsb+0x28>
    3438:	b9 c0       	rjmp	.+370    	; 0x35ac <_Z13drawMenuItemsb+0x19a>
    arduboy.fillRect(menuX - 1, menuY - 1, menuW + 2, menuH + 2, BLACK);
    343a:	a0 90 34 03 	lds	r10, 0x0334	; 0x800334 <_ZL5menuH>
    343e:	22 e0       	ldi	r18, 0x02	; 2
    3440:	92 2e       	mov	r9, r18
    3442:	9a 0c       	add	r9, r10
    3444:	10 91 35 03 	lds	r17, 0x0335	; 0x800335 <_ZL5menuW>
    3448:	f0 90 36 03 	lds	r15, 0x0336	; 0x800336 <_ZL5menuY>
    344c:	6f 2c       	mov	r6, r15
    344e:	0f 2c       	mov	r0, r15
    3450:	00 0c       	add	r0, r0
    3452:	77 08       	sbc	r7, r7
    3454:	63 01       	movw	r12, r6
    3456:	81 e0       	ldi	r24, 0x01	; 1
    3458:	c8 1a       	sub	r12, r24
    345a:	d1 08       	sbc	r13, r1
    345c:	c0 91 37 03 	lds	r28, 0x0337	; 0x800337 <_ZL5menuX>
    3460:	0c 2e       	mov	r0, r28
    3462:	00 0c       	add	r0, r0
    3464:	dd 0b       	sbc	r29, r29
    3466:	22 e0       	ldi	r18, 0x02	; 2
    3468:	21 0f       	add	r18, r17
    346a:	be 01       	movw	r22, r28
    346c:	61 50       	subi	r22, 0x01	; 1
    346e:	71 09       	sbc	r23, r1
    3470:	e1 2c       	mov	r14, r1
    3472:	09 2d       	mov	r16, r9
    3474:	a6 01       	movw	r20, r12
    3476:	8d ed       	ldi	r24, 0xDD	; 221
    3478:	97 e0       	ldi	r25, 0x07	; 7
    347a:	0e 94 d1 12 	call	0x25a2	; 0x25a2 <_ZN10MyArduboy28fillRectEiihah>
    if (isFramed) {
    347e:	80 91 33 03 	lds	r24, 0x0333	; 0x800333 <_ZL8isFramed>
    3482:	88 23       	and	r24, r24
    3484:	31 f1       	breq	.+76     	; 0x34d2 <_Z13drawMenuItemsb+0xc0>
        arduboy.drawRect(menuX - 2, menuY - 2, menuW + 4, menuH + 4, WHITE);
    3486:	94 e0       	ldi	r25, 0x04	; 4
    3488:	b9 2e       	mov	r11, r25
    348a:	b1 0e       	add	r11, r17
    348c:	e2 e0       	ldi	r30, 0x02	; 2
    348e:	6e 1a       	sub	r6, r30
    3490:	71 08       	sbc	r7, r1
    3492:	22 97       	sbiw	r28, 0x02	; 2
/*                                Draw shapes                                */
/*---------------------------------------------------------------------------*/

void MyArduboy2::drawRect(int16_t x, int16_t y, uint8_t w, int8_t h, uint8_t color)
{
    drawFastHLine(x, y, w, color);
    3494:	4b 2d       	mov	r20, r11
    3496:	b3 01       	movw	r22, r6
    3498:	ce 01       	movw	r24, r28
    349a:	0e 94 ae 15 	call	0x2b5c	; 0x2b5c <_ZN10MyArduboy213drawFastHLineEiihh.constprop.38>
    349e:	84 e0       	ldi	r24, 0x04	; 4
    34a0:	8a 0d       	add	r24, r10
    drawFastHLine(x, y + h - 1, w, color);
    34a2:	b3 01       	movw	r22, r6
    34a4:	68 0f       	add	r22, r24
    34a6:	71 1d       	adc	r23, r1
    34a8:	87 fd       	sbrc	r24, 7
    34aa:	7a 95       	dec	r23
    34ac:	61 50       	subi	r22, 0x01	; 1
    34ae:	71 09       	sbc	r23, r1
    34b0:	4b 2d       	mov	r20, r11
    34b2:	ce 01       	movw	r24, r28
    34b4:	0e 94 ae 15 	call	0x2b5c	; 0x2b5c <_ZN10MyArduboy213drawFastHLineEiihh.constprop.38>
    drawFastVLine(x, y + 1, h - 2, color);
    34b8:	49 2d       	mov	r20, r9
    34ba:	b6 01       	movw	r22, r12
    34bc:	ce 01       	movw	r24, r28
    34be:	0e 94 07 06 	call	0xc0e	; 0xc0e <_ZN10MyArduboy213drawFastVLineEiiah.constprop.41>
    drawFastVLine(x + w - 1, y + 1, h - 2, color);
    34c2:	ce 01       	movw	r24, r28
    34c4:	8b 0d       	add	r24, r11
    34c6:	91 1d       	adc	r25, r1
    34c8:	49 2d       	mov	r20, r9
    34ca:	b6 01       	movw	r22, r12
    34cc:	01 97       	sbiw	r24, 0x01	; 1
    34ce:	0e 94 07 06 	call	0xc0e	; 0xc0e <_ZN10MyArduboy213drawFastVLineEiiah.constprop.41>
        menuItemAry[menuItemPos].func();
    }
}

void drawMenuItems(bool isForced)
{
    34d2:	d0 e0       	ldi	r29, 0x00	; 0
    34d4:	c0 e0       	ldi	r28, 0x00	; 0
    34d6:	8b e0       	ldi	r24, 0x0B	; 11
    34d8:	c8 2e       	mov	r12, r24
    34da:	83 e0       	ldi	r24, 0x03	; 3
    34dc:	d8 2e       	mov	r13, r24
    if (isFramed) {
        arduboy.drawRect(menuX - 2, menuY - 2, menuW + 4, menuH + 4, WHITE);
    }
    ITEM_T *pItem = menuItemAry;
    int8_t y = menuY;
    for (int i = 0; i < menuItemCount; i++, pItem++) {
    34de:	80 91 30 03 	lds	r24, 0x0330	; 0x800330 <_ZL13menuItemCount>
    34e2:	08 2e       	mov	r0, r24
    34e4:	00 0c       	add	r0, r0
    34e6:	99 0b       	sbc	r25, r25
    34e8:	c8 17       	cp	r28, r24
    34ea:	d9 07       	cpc	r29, r25
    34ec:	0c f0       	brlt	.+2      	; 0x34f0 <_Z13drawMenuItemsb+0xde>
    34ee:	42 c0       	rjmp	.+132    	; 0x3574 <_Z13drawMenuItemsb+0x162>
        if (pItem->label != NULL) {
    34f0:	f6 01       	movw	r30, r12
    34f2:	42 81       	ldd	r20, Z+2	; 0x02
    34f4:	53 81       	ldd	r21, Z+3	; 0x03
    34f6:	41 15       	cp	r20, r1
    34f8:	51 05       	cpc	r21, r1
    34fa:	c9 f1       	breq	.+114    	; 0x356e <_Z13drawMenuItemsb+0x15c>
            arduboy.printEx(menuX + 12 - (i == menuItemPos) * 4, y, pItem->label);
    34fc:	af 2c       	mov	r10, r15
    34fe:	0f 2c       	mov	r0, r15
    3500:	00 0c       	add	r0, r0
    3502:	bb 08       	sbc	r11, r11
    3504:	80 91 37 03 	lds	r24, 0x0337	; 0x800337 <_ZL5menuX>
    3508:	08 2e       	mov	r0, r24
    350a:	00 0c       	add	r0, r0
    350c:	99 0b       	sbc	r25, r25
    350e:	0c 96       	adiw	r24, 0x0c	; 12
    3510:	20 91 39 03 	lds	r18, 0x0339	; 0x800339 <_ZL11menuItemPos>
    3514:	02 2e       	mov	r0, r18
    3516:	00 0c       	add	r0, r0
    3518:	33 0b       	sbc	r19, r19
    351a:	c2 17       	cp	r28, r18
    351c:	d3 07       	cpc	r29, r19
    351e:	21 f5       	brne	.+72     	; 0x3568 <_Z13drawMenuItemsb+0x156>
    3520:	24 e0       	ldi	r18, 0x04	; 4
    3522:	30 e0       	ldi	r19, 0x00	; 0
    3524:	b5 01       	movw	r22, r10
    3526:	82 1b       	sub	r24, r18
    3528:	93 0b       	sbc	r25, r19
    352a:	0e 94 86 14 	call	0x290c	; 0x290c <_ZN10MyArduboy27printExIPK19__FlashStringHelperEEjiiT_.constprop.13>
            if (i == menuItemPos) arduboy.fillRect(menuX, y, 5, 5, WHITE);
    352e:	80 91 39 03 	lds	r24, 0x0339	; 0x800339 <_ZL11menuItemPos>
    3532:	08 2e       	mov	r0, r24
    3534:	00 0c       	add	r0, r0
    3536:	99 0b       	sbc	r25, r25
    3538:	c8 17       	cp	r28, r24
    353a:	d9 07       	cpc	r29, r25
    353c:	71 f4       	brne	.+28     	; 0x355a <_Z13drawMenuItemsb+0x148>
    353e:	60 91 37 03 	lds	r22, 0x0337	; 0x800337 <_ZL5menuX>
    3542:	06 2e       	mov	r0, r22
    3544:	00 0c       	add	r0, r0
    3546:	77 0b       	sbc	r23, r23
    3548:	ee 24       	eor	r14, r14
    354a:	e3 94       	inc	r14
    354c:	05 e0       	ldi	r16, 0x05	; 5
    354e:	25 e0       	ldi	r18, 0x05	; 5
    3550:	a5 01       	movw	r20, r10
    3552:	8d ed       	ldi	r24, 0xDD	; 221
    3554:	97 e0       	ldi	r25, 0x07	; 7
    3556:	0e 94 d1 12 	call	0x25a2	; 0x25a2 <_ZN10MyArduboy28fillRectEiihah>
            y += 6;
    355a:	f6 e0       	ldi	r31, 0x06	; 6
    355c:	ff 0e       	add	r15, r31
    if (isFramed) {
        arduboy.drawRect(menuX - 2, menuY - 2, menuW + 4, menuH + 4, WHITE);
    }
    ITEM_T *pItem = menuItemAry;
    int8_t y = menuY;
    for (int i = 0; i < menuItemCount; i++, pItem++) {
    355e:	21 96       	adiw	r28, 0x01	; 1
    3560:	84 e0       	ldi	r24, 0x04	; 4
    3562:	c8 0e       	add	r12, r24
    3564:	d1 1c       	adc	r13, r1
    3566:	bb cf       	rjmp	.-138    	; 0x34de <_Z13drawMenuItemsb+0xcc>
        if (pItem->label != NULL) {
            arduboy.printEx(menuX + 12 - (i == menuItemPos) * 4, y, pItem->label);
    3568:	30 e0       	ldi	r19, 0x00	; 0
    356a:	20 e0       	ldi	r18, 0x00	; 0
    356c:	db cf       	rjmp	.-74     	; 0x3524 <_Z13drawMenuItemsb+0x112>
            if (i == menuItemPos) arduboy.fillRect(menuX, y, 5, 5, WHITE);
            y += 6;
        } else {
            y += 2;
    356e:	f3 94       	inc	r15
    3570:	f3 94       	inc	r15
    3572:	f5 cf       	rjmp	.-22     	; 0x355e <_Z13drawMenuItemsb+0x14c>
        }
    }
    if (isControlSound) drawSoundEnabled();
    3574:	80 91 32 03 	lds	r24, 0x0332	; 0x800332 <_ZL14isControlSound>
    3578:	88 23       	and	r24, r24
    357a:	b1 f0       	breq	.+44     	; 0x35a8 <_Z13drawMenuItemsb+0x196>
}

void drawSoundEnabled(void)
{
    uint8_t *p = arduboy.getBuffer();
    memcpy_P(p + WIDTH * 8 - IMG_SOUND_W - IMG_SOUNDM_W, imgSound, IMG_SOUND_W);
    357c:	40 e1       	ldi	r20, 0x10	; 16
    357e:	50 e0       	ldi	r21, 0x00	; 0
    3580:	63 e2       	ldi	r22, 0x23	; 35
    3582:	77 e0       	ldi	r23, 0x07	; 7
    3584:	87 e7       	ldi	r24, 0x77	; 119
    3586:	97 e0       	ldi	r25, 0x07	; 7
    3588:	0e 94 e4 2b 	call	0x57c8	; 0x57c8 <memcpy_P>
    memcpy_P(p + WIDTH * 8 - IMG_SOUNDM_W, imgSoundOffOn[arduboy.audio.enabled()], IMG_SOUNDM_W);
    358c:	60 91 4c 03 	lds	r22, 0x034C	; 0x80034c <_ZN13Arduboy2Audio13audio_enabledE>
    3590:	e6 e0       	ldi	r30, 0x06	; 6
    3592:	6e 9f       	mul	r22, r30
    3594:	b0 01       	movw	r22, r0
    3596:	11 24       	eor	r1, r1
    3598:	69 5e       	subi	r22, 0xE9	; 233
    359a:	78 4f       	sbci	r23, 0xF8	; 248
    359c:	46 e0       	ldi	r20, 0x06	; 6
    359e:	50 e0       	ldi	r21, 0x00	; 0
    35a0:	87 e8       	ldi	r24, 0x87	; 135
    35a2:	97 e0       	ldi	r25, 0x07	; 7
    35a4:	0e 94 e4 2b 	call	0x57c8	; 0x57c8 <memcpy_P>
        } else {
            y += 2;
        }
    }
    if (isControlSound) drawSoundEnabled();
    isInvalidMenu = false;
    35a8:	10 92 31 03 	sts	0x0331, r1	; 0x800331 <_ZL13isInvalidMenu>
}
    35ac:	df 91       	pop	r29
    35ae:	cf 91       	pop	r28
    35b0:	1f 91       	pop	r17
    35b2:	0f 91       	pop	r16
    35b4:	ff 90       	pop	r15
    35b6:	ef 90       	pop	r14
    35b8:	df 90       	pop	r13
    35ba:	cf 90       	pop	r12
    35bc:	bf 90       	pop	r11
    35be:	af 90       	pop	r10
    35c0:	9f 90       	pop	r9
    35c2:	7f 90       	pop	r7
    35c4:	6f 90       	pop	r6
    35c6:	08 95       	ret

000035c8 <_ZL12drawSettingsv>:
        arduboy.setTextColor(WHITE);
    }
}

static void drawSettings(void)
{
    35c8:	0f 93       	push	r16
    35ca:	1f 93       	push	r17
    35cc:	cf 93       	push	r28
    35ce:	df 93       	push	r29
    if (isInvalid) {
    35d0:	80 91 4b 03 	lds	r24, 0x034B	; 0x80034b <isInvalid>
    35d4:	88 23       	and	r24, r24
    35d6:	c1 f1       	breq	.+112    	; 0x3648 <_ZL12drawSettingsv+0x80>
        arduboy.printEx(34, 4, F("[SETTINGS]"));
    35d8:	46 ed       	ldi	r20, 0xD6	; 214
    35da:	58 e0       	ldi	r21, 0x08	; 8
    35dc:	64 e0       	ldi	r22, 0x04	; 4
    35de:	70 e0       	ldi	r23, 0x00	; 0
    35e0:	82 e2       	ldi	r24, 0x22	; 34
    35e2:	90 e0       	ldi	r25, 0x00	; 0
    35e4:	0e 94 86 14 	call	0x290c	; 0x290c <_ZN10MyArduboy27printExIPK19__FlashStringHelperEEjiiT_.constprop.13>
        arduboy.drawFastHLine(0, 44, 128, WHITE);
    35e8:	40 e8       	ldi	r20, 0x80	; 128
    35ea:	6c e2       	ldi	r22, 0x2C	; 44
    35ec:	70 e0       	ldi	r23, 0x00	; 0
    35ee:	90 e0       	ldi	r25, 0x00	; 0
    35f0:	80 e0       	ldi	r24, 0x00	; 0
    35f2:	0e 94 ae 15 	call	0x2b5c	; 0x2b5c <_ZN10MyArduboy213drawFastHLineEiihh.constprop.38>
        arduboy.printEx(10, 48, F("PLAY COUNT "));
    35f6:	4a ec       	ldi	r20, 0xCA	; 202
    35f8:	58 e0       	ldi	r21, 0x08	; 8
    35fa:	60 e3       	ldi	r22, 0x30	; 48
    35fc:	70 e0       	ldi	r23, 0x00	; 0
    35fe:	8a e0       	ldi	r24, 0x0A	; 10
    3600:	90 e0       	ldi	r25, 0x00	; 0
    3602:	0e 94 86 14 	call	0x290c	; 0x290c <_ZN10MyArduboy27printExIPK19__FlashStringHelperEEjiiT_.constprop.13>
  return print((long) n, base);
}

size_t Print::print(unsigned int n, int base)
{
  return print((unsigned long) n, base);
    3606:	40 91 42 03 	lds	r20, 0x0342	; 0x800342 <record+0x8>
    360a:	50 91 43 03 	lds	r21, 0x0343	; 0x800343 <record+0x9>
    360e:	70 e0       	ldi	r23, 0x00	; 0
    3610:	60 e0       	ldi	r22, 0x00	; 0
}

size_t Print::print(unsigned long n, int base)
{
  if (base == 0) return write(n);
  else return printNumber(n, base);
    3612:	2a e0       	ldi	r18, 0x0A	; 10
    3614:	8d ed       	ldi	r24, 0xDD	; 221
    3616:	97 e0       	ldi	r25, 0x07	; 7
    3618:	0e 94 73 16 	call	0x2ce6	; 0x2ce6 <_ZN5Print11printNumberEmh>
        arduboy.print(record.playCount);
        arduboy.printEx(10, 54, F("PLAY TIME"));
    361c:	40 ec       	ldi	r20, 0xC0	; 192
    361e:	58 e0       	ldi	r21, 0x08	; 8
    3620:	66 e3       	ldi	r22, 0x36	; 54
    3622:	70 e0       	ldi	r23, 0x00	; 0
    3624:	8a e0       	ldi	r24, 0x0A	; 10
    3626:	90 e0       	ldi	r25, 0x00	; 0
    3628:	0e 94 86 14 	call	0x290c	; 0x290c <_ZN10MyArduboy27printExIPK19__FlashStringHelperEEjiiT_.constprop.13>
        drawTime(76, 54, record.playFrames);
    362c:	20 91 3e 03 	lds	r18, 0x033E	; 0x80033e <record+0x4>
    3630:	30 91 3f 03 	lds	r19, 0x033F	; 0x80033f <record+0x5>
    3634:	40 91 40 03 	lds	r20, 0x0340	; 0x800340 <record+0x6>
    3638:	50 91 41 03 	lds	r21, 0x0341	; 0x800341 <record+0x7>
    363c:	66 e3       	ldi	r22, 0x36	; 54
    363e:	70 e0       	ldi	r23, 0x00	; 0
    3640:	8c e4       	ldi	r24, 0x4C	; 76
    3642:	90 e0       	ldi	r25, 0x00	; 0
    3644:	0e 94 13 17 	call	0x2e26	; 0x2e26 <_Z8drawTimeiim>
    }
    drawMenuItems(isInvalid);
    3648:	80 91 4b 03 	lds	r24, 0x034B	; 0x80034b <isInvalid>
    364c:	0e 94 09 1a 	call	0x3412	; 0x3412 <_Z13drawMenuItemsb>
    if (isSettingChenged) {
    3650:	80 91 4a 03 	lds	r24, 0x034A	; 0x80034a <_ZL16isSettingChenged>
    3654:	88 23       	and	r24, r24
    3656:	09 f4       	brne	.+2      	; 0x365a <_ZL12drawSettingsv+0x92>
    3658:	42 c0       	rjmp	.+132    	; 0x36de <_ZL12drawSettingsv+0x116>
    365a:	0c e0       	ldi	r16, 0x0C	; 12
    365c:	10 e0       	ldi	r17, 0x00	; 0
        for (int i = 0; i < 4; i++) {
    365e:	d0 e0       	ldi	r29, 0x00	; 0
    3660:	c0 e0       	ldi	r28, 0x00	; 0
            int16_t dx = 86 - (getMenuItemPos() == i) * 4, dy = i * 6 + 12;
    3662:	80 91 39 03 	lds	r24, 0x0339	; 0x800339 <_ZL11menuItemPos>
    3666:	08 2e       	mov	r0, r24
    3668:	00 0c       	add	r0, r0
    366a:	99 0b       	sbc	r25, r25
    366c:	8c 17       	cp	r24, r28
    366e:	9d 07       	cpc	r25, r29
    3670:	d9 f1       	breq	.+118    	; 0x36e8 <_ZL12drawSettingsv+0x120>
    3672:	86 e5       	ldi	r24, 0x56	; 86
    3674:	90 e0       	ldi	r25, 0x00	; 0
            bool isConfigSet = bitRead(*((uint8_t *)&record + 3), i + 3);
    3676:	20 91 3d 03 	lds	r18, 0x033D	; 0x80033d <record+0x3>
    367a:	30 e0       	ldi	r19, 0x00	; 0
    367c:	ae 01       	movw	r20, r28
    367e:	4d 5f       	subi	r20, 0xFD	; 253
    3680:	5f 4f       	sbci	r21, 0xFF	; 255
    3682:	02 c0       	rjmp	.+4      	; 0x3688 <_ZL12drawSettingsv+0xc0>
    3684:	35 95       	asr	r19
    3686:	27 95       	ror	r18
    3688:	4a 95       	dec	r20
    368a:	e2 f7       	brpl	.-8      	; 0x3684 <_ZL12drawSettingsv+0xbc>
    368c:	21 70       	andi	r18, 0x01	; 1
    368e:	33 27       	eor	r19, r19
            switch (i) {
    3690:	c1 30       	cpi	r28, 0x01	; 1
    3692:	d1 05       	cpc	r29, r1
    3694:	61 f1       	breq	.+88     	; 0x36ee <_ZL12drawSettingsv+0x126>
    3696:	1c f0       	brlt	.+6      	; 0x369e <_ZL12drawSettingsv+0xd6>
    3698:	c4 30       	cpi	r28, 0x04	; 4
    369a:	d1 05       	cpc	r29, r1
    369c:	94 f1       	brlt	.+100    	; 0x3702 <_ZL12drawSettingsv+0x13a>
            case 0:
                arduboy.printEx(dx, dy, record.gameRank);
    369e:	40 91 3d 03 	lds	r20, 0x033D	; 0x80033d <record+0x3>
    36a2:	4f 70       	andi	r20, 0x0F	; 15
    36a4:	50 e0       	ldi	r21, 0x00	; 0
    36a6:	70 e0       	ldi	r23, 0x00	; 0
    36a8:	60 e0       	ldi	r22, 0x00	; 0
  }
}

void Arduboy2::setCursor(int16_t x, int16_t y)
{
  cursor_x = x;
    36aa:	90 93 74 03 	sts	0x0374, r25	; 0x800374 <_ZN8Arduboy28cursor_xE+0x1>
    36ae:	80 93 73 03 	sts	0x0373, r24	; 0x800373 <_ZN8Arduboy28cursor_xE>
  cursor_y = y;
    36b2:	10 93 72 03 	sts	0x0372, r17	; 0x800372 <_ZN8Arduboy28cursor_yE+0x1>
    36b6:	00 93 71 03 	sts	0x0371, r16	; 0x800371 <_ZN8Arduboy28cursor_yE>
    36ba:	2a e0       	ldi	r18, 0x0A	; 10
    36bc:	8d ed       	ldi	r24, 0xDD	; 221
    36be:	97 e0       	ldi	r25, 0x07	; 7
    36c0:	0e 94 73 16 	call	0x2ce6	; 0x2ce6 <_ZN5Print11printNumberEmh>
                arduboy.print(' ');
    36c4:	60 e2       	ldi	r22, 0x20	; 32
    36c6:	8d ed       	ldi	r24, 0xDD	; 221
    36c8:	97 e0       	ldi	r25, 0x07	; 7
    36ca:	0e 94 44 14 	call	0x2888	; 0x2888 <_ZN5Print5printEc.constprop.21>
        arduboy.printEx(10, 54, F("PLAY TIME"));
        drawTime(76, 54, record.playFrames);
    }
    drawMenuItems(isInvalid);
    if (isSettingChenged) {
        for (int i = 0; i < 4; i++) {
    36ce:	21 96       	adiw	r28, 0x01	; 1
    36d0:	0a 5f       	subi	r16, 0xFA	; 250
    36d2:	1f 4f       	sbci	r17, 0xFF	; 255
    36d4:	c4 30       	cpi	r28, 0x04	; 4
    36d6:	d1 05       	cpc	r29, r1
    36d8:	21 f6       	brne	.-120    	; 0x3662 <_ZL12drawSettingsv+0x9a>
                break;
            default:
                break;
            }
        }
        isSettingChenged = false;
    36da:	10 92 4a 03 	sts	0x034A, r1	; 0x80034a <_ZL16isSettingChenged>
    }
}
    36de:	df 91       	pop	r29
    36e0:	cf 91       	pop	r28
    36e2:	1f 91       	pop	r17
    36e4:	0f 91       	pop	r16
    36e6:	08 95       	ret
        drawTime(76, 54, record.playFrames);
    }
    drawMenuItems(isInvalid);
    if (isSettingChenged) {
        for (int i = 0; i < 4; i++) {
            int16_t dx = 86 - (getMenuItemPos() == i) * 4, dy = i * 6 + 12;
    36e8:	82 e5       	ldi	r24, 0x52	; 82
    36ea:	90 e0       	ldi	r25, 0x00	; 0
    36ec:	c4 cf       	rjmp	.-120    	; 0x3676 <_ZL12drawSettingsv+0xae>
            case 0:
                arduboy.printEx(dx, dy, record.gameRank);
                arduboy.print(' ');
                break;
            case 1:
                arduboy.printEx(dx, dy, (isConfigSet) ? F("SPECIFY") : F("RANDOM "));
    36ee:	40 eb       	ldi	r20, 0xB0	; 176
    36f0:	58 e0       	ldi	r21, 0x08	; 8
    36f2:	23 2b       	or	r18, r19
    36f4:	11 f0       	breq	.+4      	; 0x36fa <_ZL12drawSettingsv+0x132>
    36f6:	48 eb       	ldi	r20, 0xB8	; 184
    36f8:	58 e0       	ldi	r21, 0x08	; 8
                break;
            case 2:
            case 3:
                arduboy.printEx(dx, dy, (isConfigSet) ? F("ON ") : F("OFF"));
    36fa:	b8 01       	movw	r22, r16
    36fc:	0e 94 86 14 	call	0x290c	; 0x290c <_ZN10MyArduboy27printExIPK19__FlashStringHelperEEjiiT_.constprop.13>
    3700:	e6 cf       	rjmp	.-52     	; 0x36ce <_ZL12drawSettingsv+0x106>
    3702:	48 ea       	ldi	r20, 0xA8	; 168
    3704:	58 e0       	ldi	r21, 0x08	; 8
    3706:	23 2b       	or	r18, r19
    3708:	c1 f3       	breq	.-16     	; 0x36fa <_ZL12drawSettingsv+0x132>
    370a:	4c ea       	ldi	r20, 0xAC	; 172
    370c:	58 e0       	ldi	r21, 0x08	; 8
    370e:	f5 cf       	rjmp	.-22     	; 0x36fa <_ZL12drawSettingsv+0x132>

00003710 <_ZL7drawTopv>:
/*---------------------------------------------------------------------------*/
/*                              Draw Functions                               */
/*---------------------------------------------------------------------------*/

static void drawTop(void)
{
    3710:	ef 92       	push	r14
    3712:	ff 92       	push	r15
    3714:	0f 93       	push	r16
    3716:	1f 93       	push	r17
    3718:	cf 93       	push	r28
    371a:	df 93       	push	r29
    if (isInvalid) {
    371c:	f0 90 4b 03 	lds	r15, 0x034B	; 0x80034b <isInvalid>
    3720:	ff 20       	and	r15, r15
    3722:	71 f0       	breq	.+28     	; 0x3740 <_ZL7drawTopv+0x30>
        drawTitleLogo();
    3724:	0e 94 68 0a 	call	0x14d0	; 0x14d0 <_ZL13drawTitleLogov>
        arduboy.drawBitmap(6, 32, imgSubTitle, IMG_SUBTITLE_W, IMG_SUBTITLE_H);
    3728:	ee 24       	eor	r14, r14
    372a:	e3 94       	inc	r14
    372c:	00 e2       	ldi	r16, 0x20	; 32
    372e:	22 e2       	ldi	r18, 0x22	; 34
    3730:	40 e2       	ldi	r20, 0x20	; 32
    3732:	58 e0       	ldi	r21, 0x08	; 8
    3734:	60 e2       	ldi	r22, 0x20	; 32
    3736:	70 e0       	ldi	r23, 0x00	; 0
    3738:	86 e0       	ldi	r24, 0x06	; 6
    373a:	90 e0       	ldi	r25, 0x00	; 0
    373c:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh>
    3740:	80 91 45 03 	lds	r24, 0x0345	; 0x800345 <counter>
    3744:	83 70       	andi	r24, 0x03	; 3
    }
    int a = counter & 3;
    3746:	c8 2f       	mov	r28, r24
    3748:	d0 e0       	ldi	r29, 0x00	; 0
    uint8_t color = (a == 0);
    374a:	11 e0       	ldi	r17, 0x01	; 1
    374c:	20 97       	sbiw	r28, 0x00	; 0
    374e:	09 f0       	breq	.+2      	; 0x3752 <_ZL7drawTopv+0x42>
    3750:	10 e0       	ldi	r17, 0x00	; 0
    a = (a == 0) ? 2 : a - 1;
    3752:	21 97       	sbiw	r28, 0x01	; 1
    3754:	81 11       	cpse	r24, r1
    3756:	02 c0       	rjmp	.+4      	; 0x375c <_ZL7drawTopv+0x4c>
    3758:	c2 e0       	ldi	r28, 0x02	; 2
    375a:	d0 e0       	ldi	r29, 0x00	; 0
    arduboy.drawBitmap(8, 39, imgJetL[a], IMG_JETL_W, IMG_JETL_H, color);
    375c:	87 e0       	ldi	r24, 0x07	; 7
    375e:	8c 9f       	mul	r24, r28
    3760:	a0 01       	movw	r20, r0
    3762:	8d 9f       	mul	r24, r29
    3764:	50 0d       	add	r21, r0
    3766:	11 24       	eor	r1, r1
    3768:	45 5f       	subi	r20, 0xF5	; 245
    376a:	57 4f       	sbci	r21, 0xF7	; 247
    376c:	e1 2e       	mov	r14, r17
    376e:	08 e0       	ldi	r16, 0x08	; 8
    3770:	27 e0       	ldi	r18, 0x07	; 7
    3772:	67 e2       	ldi	r22, 0x27	; 39
    3774:	70 e0       	ldi	r23, 0x00	; 0
    3776:	88 e0       	ldi	r24, 0x08	; 8
    3778:	90 e0       	ldi	r25, 0x00	; 0
    377a:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh>
    arduboy.drawBitmap(21, 34, imgJetR[a], IMG_JETR_W, IMG_JETR_H, color);
    377e:	89 e0       	ldi	r24, 0x09	; 9
    3780:	8c 9f       	mul	r24, r28
    3782:	a0 01       	movw	r20, r0
    3784:	8d 9f       	mul	r24, r29
    3786:	50 0d       	add	r21, r0
    3788:	11 24       	eor	r1, r1
    378a:	40 51       	subi	r20, 0x10	; 16
    378c:	58 4f       	sbci	r21, 0xF8	; 248
    378e:	05 e0       	ldi	r16, 0x05	; 5
    3790:	29 e0       	ldi	r18, 0x09	; 9
    3792:	62 e2       	ldi	r22, 0x22	; 34
    3794:	70 e0       	ldi	r23, 0x00	; 0
    3796:	85 e1       	ldi	r24, 0x15	; 21
    3798:	90 e0       	ldi	r25, 0x00	; 0
    379a:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh>
    drawMenuItems(isInvalid);
    379e:	8f 2d       	mov	r24, r15
    37a0:	0e 94 09 1a 	call	0x3412	; 0x3412 <_Z13drawMenuItemsb>
    if (record.playCount > 0 && getMenuItemPos() == 0) {
    37a4:	80 91 42 03 	lds	r24, 0x0342	; 0x800342 <record+0x8>
    37a8:	90 91 43 03 	lds	r25, 0x0343	; 0x800343 <record+0x9>
    37ac:	89 2b       	or	r24, r25
    37ae:	c9 f0       	breq	.+50     	; 0x37e2 <_ZL7drawTopv+0xd2>
    37b0:	80 91 39 03 	lds	r24, 0x0339	; 0x800339 <_ZL11menuItemPos>
    37b4:	81 11       	cpse	r24, r1
    37b6:	15 c0       	rjmp	.+42     	; 0x37e2 <_ZL7drawTopv+0xd2>
        arduboy.setTextColor(bitRead(counter, 0));
    37b8:	80 91 45 03 	lds	r24, 0x0345	; 0x800345 <counter>
    37bc:	81 70       	andi	r24, 0x01	; 1
  return cursor_y;
}

void Arduboy2::setTextColor(uint8_t color)
{
  textColor = color;
    37be:	80 93 04 01 	sts	0x0104, r24	; 0x800104 <_ZN8Arduboy29textColorE>
        printGameSeed(88, 38, record.gameSeed);
    37c2:	20 91 3a 03 	lds	r18, 0x033A	; 0x80033a <record>
    37c6:	30 91 3b 03 	lds	r19, 0x033B	; 0x80033b <record+0x1>
    37ca:	40 91 3c 03 	lds	r20, 0x033C	; 0x80033c <record+0x2>
    37ce:	50 e0       	ldi	r21, 0x00	; 0
    37d0:	66 e2       	ldi	r22, 0x26	; 38
    37d2:	70 e0       	ldi	r23, 0x00	; 0
    37d4:	88 e5       	ldi	r24, 0x58	; 88
    37d6:	90 e0       	ldi	r25, 0x00	; 0
    37d8:	0e 94 46 14 	call	0x288c	; 0x288c <_Z13printGameSeediim>
    37dc:	81 e0       	ldi	r24, 0x01	; 1
    37de:	80 93 04 01 	sts	0x0104, r24	; 0x800104 <_ZN8Arduboy29textColorE>
        arduboy.setTextColor(WHITE);
    }
}
    37e2:	df 91       	pop	r29
    37e4:	cf 91       	pop	r28
    37e6:	1f 91       	pop	r17
    37e8:	0f 91       	pop	r16
    37ea:	ff 90       	pop	r15
    37ec:	ef 90       	pop	r14
    37ee:	08 95       	ret

000037f0 <_Z8drawGamev>:
    }
    return (state == STATE_LEAVE) ? MODE_TITLE : MODE_GAME;
}

void drawGame(void)
{
    37f0:	2f 92       	push	r2
    37f2:	3f 92       	push	r3
    37f4:	4f 92       	push	r4
    37f6:	5f 92       	push	r5
    37f8:	6f 92       	push	r6
    37fa:	7f 92       	push	r7
    37fc:	8f 92       	push	r8
    37fe:	9f 92       	push	r9
    3800:	af 92       	push	r10
    3802:	bf 92       	push	r11
    3804:	cf 92       	push	r12
    3806:	df 92       	push	r13
    3808:	ef 92       	push	r14
    380a:	ff 92       	push	r15
    380c:	0f 93       	push	r16
    380e:	1f 93       	push	r17
    3810:	cf 93       	push	r28
    3812:	df 93       	push	r29
    3814:	00 d0       	rcall	.+0      	; 0x3816 <_Z8drawGamev+0x26>
    3816:	1f 92       	push	r1
    3818:	cd b7       	in	r28, 0x3d	; 61
    381a:	de b7       	in	r29, 0x3e	; 62
    if (state == STATE_LEAVE) {
    381c:	10 91 09 03 	lds	r17, 0x0309	; 0x800309 <_ZL5state.lto_priv.52>
    3820:	13 30       	cpi	r17, 0x03	; 3
    3822:	b1 f5       	brne	.+108    	; 0x3890 <_Z8drawGamev+0xa0>
        ledLevel = 0;
    } else if (isMenu) {
        drawMenuItems(isInvalid);
        ledLevel = 0;
    3824:	10 92 46 01 	sts	0x0146, r1	; 0x800146 <_ZL8ledLevel>
        drawEnemies();
        drawExplosion();
        drawBackground();
        drawLetters();
    }
    arduboy.setRGBled(ledRed * ledLevel, ledGreen * ledLevel, ledBlue * ledLevel);
    3828:	80 91 46 01 	lds	r24, 0x0146	; 0x800146 <_ZL8ledLevel>
    382c:	20 91 47 01 	lds	r18, 0x0147	; 0x800147 <_ZL7ledBlue>
    3830:	82 9f       	mul	r24, r18
    3832:	20 2d       	mov	r18, r0
    3834:	11 24       	eor	r1, r1
    3836:	90 91 48 01 	lds	r25, 0x0148	; 0x800148 <_ZL8ledGreen>
    383a:	89 9f       	mul	r24, r25
    383c:	90 2d       	mov	r25, r0
    383e:	11 24       	eor	r1, r1
    3840:	30 91 49 01 	lds	r19, 0x0149	; 0x800149 <_ZL6ledRed>
    3844:	83 9f       	mul	r24, r19
    3846:	80 2d       	mov	r24, r0
    3848:	11 24       	eor	r1, r1
{
#ifdef ARDUBOY_10 // RGB, all the pretty colors
  // timer 0: Fast PWM, OC0A clear on compare / set at top
  // We must stay in Fast PWM mode because timer 0 is used for system timing.
  // We can't use "inverted" mode because it won't allow full shut off.
  TCCR0A = _BV(COM0A1) | _BV(WGM01) | _BV(WGM00);
    384a:	33 e8       	ldi	r19, 0x83	; 131
    384c:	34 bd       	out	0x24, r19	; 36
  OCR0A = 255 - green;
    384e:	90 95       	com	r25
    3850:	97 bd       	out	0x27, r25	; 39
  // timer 1: Phase correct PWM 8 bit
  // OC1A and OC1B set on up-counting / clear on down-counting (inverted). This
  // allows the value to be directly loaded into the OCR with common anode LED.
  TCCR1A = _BV(COM1A1) | _BV(COM1A0) | _BV(COM1B1) | _BV(COM1B0) | _BV(WGM10);
    3852:	91 ef       	ldi	r25, 0xF1	; 241
    3854:	90 93 80 00 	sts	0x0080, r25	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
  OCR1AL = blue;
    3858:	20 93 88 00 	sts	0x0088, r18	; 0x800088 <__DATA_REGION_ORIGIN__+0x28>
  OCR1BL = red;
    385c:	80 93 8a 00 	sts	0x008A, r24	; 0x80008a <__DATA_REGION_ORIGIN__+0x2a>
    isInvalid = false;
    3860:	10 92 4b 03 	sts	0x034B, r1	; 0x80034b <isInvalid>
}
    3864:	0f 90       	pop	r0
    3866:	0f 90       	pop	r0
    3868:	0f 90       	pop	r0
    386a:	df 91       	pop	r29
    386c:	cf 91       	pop	r28
    386e:	1f 91       	pop	r17
    3870:	0f 91       	pop	r16
    3872:	ff 90       	pop	r15
    3874:	ef 90       	pop	r14
    3876:	df 90       	pop	r13
    3878:	cf 90       	pop	r12
    387a:	bf 90       	pop	r11
    387c:	af 90       	pop	r10
    387e:	9f 90       	pop	r9
    3880:	8f 90       	pop	r8
    3882:	7f 90       	pop	r7
    3884:	6f 90       	pop	r6
    3886:	5f 90       	pop	r5
    3888:	4f 90       	pop	r4
    388a:	3f 90       	pop	r3
    388c:	2f 90       	pop	r2
    388e:	08 95       	ret
    3890:	80 91 4b 03 	lds	r24, 0x034B	; 0x80034b <isInvalid>

void drawGame(void)
{
    if (state == STATE_LEAVE) {
        ledLevel = 0;
    } else if (isMenu) {
    3894:	90 91 04 03 	lds	r25, 0x0304	; 0x800304 <_ZL6isMenu>
    3898:	99 23       	and	r25, r25
    389a:	19 f0       	breq	.+6      	; 0x38a2 <_Z8drawGamev+0xb2>
        drawMenuItems(isInvalid);
    389c:	0e 94 09 1a 	call	0x3412	; 0x3412 <_Z13drawMenuItemsb>
    38a0:	c1 cf       	rjmp	.-126    	; 0x3824 <_Z8drawGamev+0x34>
        ledLevel = 0;
    } else if (isInvalid) {
    38a2:	88 23       	and	r24, r24
    38a4:	09 f2       	breq	.-126    	; 0x3828 <_Z8drawGamev+0x38>
        arduboy.clear();
    38a6:	0e 94 f2 08 	call	0x11e4	; 0x11e4 <_ZN8Arduboy25clearEv>
/*                              Draw Functions                               */
/*---------------------------------------------------------------------------*/

static void drawPlayer(void)
{
    int16_t dx = playerX / PLAYER_SCALE, dy = playerY / PLAYER_SCALE;
    38aa:	e0 91 06 03 	lds	r30, 0x0306	; 0x800306 <_ZL7playerX>
    38ae:	e6 95       	lsr	r30
    38b0:	e6 95       	lsr	r30
    38b2:	f0 e0       	ldi	r31, 0x00	; 0
    38b4:	20 91 05 03 	lds	r18, 0x0305	; 0x800305 <_ZL7playerY>
    38b8:	26 95       	lsr	r18
    38ba:	26 95       	lsr	r18
    38bc:	30 e0       	ldi	r19, 0x00	; 0
    if (isDefeated) {
    38be:	80 91 45 01 	lds	r24, 0x0145	; 0x800145 <_ZL10isDefeated>
    38c2:	89 83       	std	Y+1, r24	; 0x01
    38c4:	88 23       	and	r24, r24
    38c6:	09 f4       	brne	.+2      	; 0x38ca <_Z8drawGamev+0xda>
    38c8:	32 c1       	rjmp	.+612    	; 0x3b2e <_Z8drawGamev+0x33e>
        uint8_t a = counter / 4;
    38ca:	40 91 45 03 	lds	r20, 0x0345	; 0x800345 <counter>
    38ce:	46 95       	lsr	r20
    38d0:	46 95       	lsr	r20
        if (a < IMG_EXPLO_ID_MAX) {
    38d2:	46 30       	cpi	r20, 0x06	; 6
    38d4:	88 f4       	brcc	.+34     	; 0x38f8 <_Z8drawGamev+0x108>
            arduboy.drawBitmap(dx - 7, dy - 7, imgExplo[a], IMG_EXPLO_W, IMG_EXPLO_H);
    38d6:	9e e1       	ldi	r25, 0x1E	; 30
    38d8:	49 9f       	mul	r20, r25
    38da:	a0 01       	movw	r20, r0
    38dc:	11 24       	eor	r1, r1
    38de:	4d 5b       	subi	r20, 0xBD	; 189
    38e0:	5c 4f       	sbci	r21, 0xFC	; 252
    38e2:	b9 01       	movw	r22, r18
    38e4:	67 50       	subi	r22, 0x07	; 7
    38e6:	71 09       	sbc	r23, r1
    38e8:	ee 24       	eor	r14, r14
    38ea:	e3 94       	inc	r14
    38ec:	0f e0       	ldi	r16, 0x0F	; 15
    38ee:	2f e0       	ldi	r18, 0x0F	; 15
    38f0:	cf 01       	movw	r24, r30
    38f2:	07 97       	sbiw	r24, 0x07	; 7
        if (state == STATE_START && counter < START_OMIT) dx -= (START_OMIT - counter) / 3;
        if (state == STATE_OVER) {
            int16_t a = counter - 16;
            dx += a * a / 32 - 8;
        }
        arduboy.drawBitmap(dx - 3, dy - 3, imgPlayer, IMG_CRAFT_W, IMG_CRAFT_H);
    38f4:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh>
    }
    return (state == STATE_LEAVE) ? MODE_TITLE : MODE_GAME;
}

void drawGame(void)
{
    38f8:	ee e4       	ldi	r30, 0x4E	; 78
    38fa:	f1 e0       	ldi	r31, 0x01	; 1
    38fc:	fb 83       	std	Y+3, r31	; 0x03
    38fe:	ea 83       	std	Y+2, r30	; 0x02
}

static void drawShots(void)
{
    for (SHOT_T *pS = shots; pS < &shots[SHOT_MAX]; pS++) {
        if (pS->x < WIDTH) arduboy.drawFastHLine(pS->x - SHOT_SPD + 1, pS->y, SHOT_SPD, WHITE);
    3900:	ea 81       	ldd	r30, Y+2	; 0x02
    3902:	fb 81       	ldd	r31, Y+3	; 0x03
    3904:	80 81       	ld	r24, Z
    3906:	87 fd       	sbrc	r24, 7
    3908:	07 c0       	rjmp	.+14     	; 0x3918 <_Z8drawGamev+0x128>
    390a:	61 81       	ldd	r22, Z+1	; 0x01
    390c:	70 e0       	ldi	r23, 0x00	; 0
    390e:	45 e0       	ldi	r20, 0x05	; 5
    3910:	84 50       	subi	r24, 0x04	; 4
    3912:	99 0b       	sbc	r25, r25
    3914:	0e 94 ae 15 	call	0x2b5c	; 0x2b5c <_ZN10MyArduboy213drawFastHLineEiihh.constprop.38>
    }
}

static void drawShots(void)
{
    for (SHOT_T *pS = shots; pS < &shots[SHOT_MAX]; pS++) {
    3918:	2a 81       	ldd	r18, Y+2	; 0x02
    391a:	3b 81       	ldd	r19, Y+3	; 0x03
    391c:	2e 5f       	subi	r18, 0xFE	; 254
    391e:	3f 4f       	sbci	r19, 0xFF	; 255
    3920:	3b 83       	std	Y+3, r19	; 0x03
    3922:	2a 83       	std	Y+2, r18	; 0x02
    3924:	22 57       	subi	r18, 0x72	; 114
    3926:	31 40       	sbci	r19, 0x01	; 1
    3928:	59 f7       	brne	.-42     	; 0x3900 <_Z8drawGamev+0x110>
    }
}

static void drawBullets(void)
{
    for (BULLET_T *pB = bullets; pB < &bullets[BULLET_MAX]; pB++) {
    392a:	e4 ec       	ldi	r30, 0xC4	; 196
    392c:	f1 e0       	ldi	r31, 0x01	; 1
    392e:	fb 83       	std	Y+3, r31	; 0x03
    3930:	ea 83       	std	Y+2, r30	; 0x02
        if (pB->spd > 0) {
    3932:	ea 81       	ldd	r30, Y+2	; 0x02
    3934:	fb 81       	ldd	r31, Y+3	; 0x03
    3936:	80 81       	ld	r24, Z
    3938:	8f 71       	andi	r24, 0x1F	; 31
    393a:	49 f0       	breq	.+18     	; 0x394e <_Z8drawGamev+0x15e>
            Point bulletPoint = getBulletCoords(pB);
    393c:	cf 01       	movw	r24, r30
    393e:	0e 94 ea 0b 	call	0x17d4	; 0x17d4 <_ZL15getBulletCoordsP8BULLET_T>
    3942:	dc 01       	movw	r26, r24
    3944:	cb 01       	movw	r24, r22
            arduboy.drawFastHLine(bulletPoint.x, bulletPoint.y, 2, WHITE);
    3946:	42 e0       	ldi	r20, 0x02	; 2
    3948:	bd 01       	movw	r22, r26
    394a:	0e 94 ae 15 	call	0x2b5c	; 0x2b5c <_ZN10MyArduboy213drawFastHLineEiihh.constprop.38>
    }
}

static void drawBullets(void)
{
    for (BULLET_T *pB = bullets; pB < &bullets[BULLET_MAX]; pB++) {
    394e:	2a 81       	ldd	r18, Y+2	; 0x02
    3950:	3b 81       	ldd	r19, Y+3	; 0x03
    3952:	2b 5f       	subi	r18, 0xFB	; 251
    3954:	3f 4f       	sbci	r19, 0xFF	; 255
    3956:	3b 83       	std	Y+3, r19	; 0x03
    3958:	2a 83       	std	Y+2, r18	; 0x02
    395a:	24 50       	subi	r18, 0x04	; 4
    395c:	33 40       	sbci	r19, 0x03	; 3
    395e:	49 f7       	brne	.-46     	; 0x3932 <_Z8drawGamev+0x142>
}

static void drawEnemies(void)
{
    GROUP_T *pG = groups - 1;
    ENEMY_T *pE = enemies;
    3960:	52 e7       	ldi	r21, 0x72	; 114
    3962:	a5 2e       	mov	r10, r21
    3964:	51 e0       	ldi	r21, 0x01	; 1
    3966:	b5 2e       	mov	r11, r21
    }
}

static void drawEnemies(void)
{
    GROUP_T *pG = groups - 1;
    3968:	e7 ea       	ldi	r30, 0xA7	; 167
    396a:	f1 e0       	ldi	r31, 0x01	; 1
    396c:	fb 83       	std	Y+3, r31	; 0x03
    396e:	ea 83       	std	Y+2, r30	; 0x02
    ENEMY_T *pE = enemies;
    int16_t enemyFrames;
    for (int i = 0; i < ENEMY_MAX; i++, pE++) {
    3970:	d1 2c       	mov	r13, r1
    3972:	c1 2c       	mov	r12, r1
        if (i % ENEMY_UNITY == 0) {
            pG++;
            enemyFrames = (gameFrames - (pG - groups) * GROUP_INT) % (GROUP_INT * GROUP_MAX);
    3974:	67 eb       	ldi	r22, 0xB7	; 183
    3976:	26 2e       	mov	r2, r22
    3978:	6d e6       	ldi	r22, 0x6D	; 109
    397a:	36 2e       	mov	r3, r22
    397c:	7c e2       	ldi	r23, 0x2C	; 44
    397e:	47 2e       	mov	r4, r23
    3980:	55 24       	eor	r5, r5
    3982:	53 94       	inc	r5
    3984:	e4 e8       	ldi	r30, 0x84	; 132
    3986:	6e 2e       	mov	r6, r30
    3988:	e3 e0       	ldi	r30, 0x03	; 3
    398a:	7e 2e       	mov	r7, r30
{
    GROUP_T *pG = groups - 1;
    ENEMY_T *pE = enemies;
    int16_t enemyFrames;
    for (int i = 0; i < ENEMY_MAX; i++, pE++) {
        if (i % ENEMY_UNITY == 0) {
    398c:	c6 01       	movw	r24, r12
    398e:	65 e0       	ldi	r22, 0x05	; 5
    3990:	70 e0       	ldi	r23, 0x00	; 0
    3992:	0e 94 d4 2f 	call	0x5fa8	; 0x5fa8 <__divmodhi4>
    3996:	89 2b       	or	r24, r25
    3998:	09 f0       	breq	.+2      	; 0x399c <_Z8drawGamev+0x1ac>
    399a:	fc c0       	rjmp	.+504    	; 0x3b94 <_Z8drawGamev+0x3a4>
            pG++;
    399c:	2a 81       	ldd	r18, Y+2	; 0x02
    399e:	3b 81       	ldd	r19, Y+3	; 0x03
    39a0:	29 5f       	subi	r18, 0xF9	; 249
    39a2:	3f 4f       	sbci	r19, 0xFF	; 255
    39a4:	3b 83       	std	Y+3, r19	; 0x03
    39a6:	2a 83       	std	Y+2, r18	; 0x02
            enemyFrames = (gameFrames - (pG - groups) * GROUP_INT) % (GROUP_INT * GROUP_MAX);
    39a8:	2e 5a       	subi	r18, 0xAE	; 174
    39aa:	31 40       	sbci	r19, 0x01	; 1
    39ac:	22 9d       	mul	r18, r2
    39ae:	c0 01       	movw	r24, r0
    39b0:	23 9d       	mul	r18, r3
    39b2:	90 0d       	add	r25, r0
    39b4:	32 9d       	mul	r19, r2
    39b6:	90 0d       	add	r25, r0
    39b8:	11 24       	eor	r1, r1
    39ba:	84 9d       	mul	r24, r4
    39bc:	90 01       	movw	r18, r0
    39be:	85 9d       	mul	r24, r5
    39c0:	30 0d       	add	r19, r0
    39c2:	94 9d       	mul	r25, r4
    39c4:	30 0d       	add	r19, r0
    39c6:	11 24       	eor	r1, r1
    39c8:	80 91 07 03 	lds	r24, 0x0307	; 0x800307 <_ZL10gameFrames>
    39cc:	90 91 08 03 	lds	r25, 0x0308	; 0x800308 <_ZL10gameFrames+0x1>
    39d0:	82 1b       	sub	r24, r18
    39d2:	93 0b       	sbc	r25, r19
    39d4:	b3 01       	movw	r22, r6
    39d6:	0e 94 c0 2f 	call	0x5f80	; 0x5f80 <__udivmodhi4>
    39da:	4c 01       	movw	r8, r24
        } else {
            enemyFrames -= (pG->entryInt + 1) * 4;
        }
        if (pE->life > 0) {
    39dc:	f5 01       	movw	r30, r10
    39de:	81 81       	ldd	r24, Z+1	; 0x01
    39e0:	80 7f       	andi	r24, 0xF0	; 240
    39e2:	69 f1       	breq	.+90     	; 0x3a3e <_Z8drawGamev+0x24e>
            int16_t fade = enemyFrames - ENEMY_ACTIVE / 2;
            fade = abs(fade) - (ENEMY_ACTIVE / 2 - ENEMY_FADE);
    39e4:	74 01       	movw	r14, r8
    39e6:	f8 e6       	ldi	r31, 0x68	; 104
    39e8:	ef 1a       	sub	r14, r31
    39ea:	f1 e0       	ldi	r31, 0x01	; 1
    39ec:	ff 0a       	sbc	r15, r31
    39ee:	f7 fe       	sbrs	r15, 7
    39f0:	03 c0       	rjmp	.+6      	; 0x39f8 <_Z8drawGamev+0x208>
    39f2:	f1 94       	neg	r15
    39f4:	e1 94       	neg	r14
    39f6:	f1 08       	sbc	r15, r1
    39f8:	22 e6       	ldi	r18, 0x62	; 98
    39fa:	e2 1a       	sub	r14, r18
    39fc:	21 e0       	ldi	r18, 0x01	; 1
    39fe:	f2 0a       	sbc	r15, r18
            Point enemyPoint = getEnemyCoords(pG, pE, enemyFrames);
    3a00:	a4 01       	movw	r20, r8
    3a02:	b5 01       	movw	r22, r10
    3a04:	8a 81       	ldd	r24, Y+2	; 0x02
    3a06:	9b 81       	ldd	r25, Y+3	; 0x03
    3a08:	0e 94 a1 0c 	call	0x1942	; 0x1942 <_ZL14getEnemyCoordsP7GROUP_TP7ENEMY_Tj>
            if (fade <= 0) {
    3a0c:	1e 14       	cp	r1, r14
    3a0e:	1f 04       	cpc	r1, r15
    3a10:	0c f4       	brge	.+2      	; 0x3a14 <_Z8drawGamev+0x224>
    3a12:	cf c0       	rjmp	.+414    	; 0x3bb2 <_Z8drawGamev+0x3c2>
                arduboy.drawBitmap(enemyPoint.x - 3, enemyPoint.y - 3,
                        imgEnemy[pG->type], IMG_CRAFT_W, IMG_CRAFT_H);
    3a14:	ea 81       	ldd	r30, Y+2	; 0x02
    3a16:	fb 81       	ldd	r31, Y+3	; 0x03
    3a18:	40 81       	ld	r20, Z
    3a1a:	4f 70       	andi	r20, 0x0F	; 15
        if (pE->life > 0) {
            int16_t fade = enemyFrames - ENEMY_ACTIVE / 2;
            fade = abs(fade) - (ENEMY_ACTIVE / 2 - ENEMY_FADE);
            Point enemyPoint = getEnemyCoords(pG, pE, enemyFrames);
            if (fade <= 0) {
                arduboy.drawBitmap(enemyPoint.x - 3, enemyPoint.y - 3,
    3a1c:	f7 e0       	ldi	r31, 0x07	; 7
    3a1e:	4f 9f       	mul	r20, r31
    3a20:	a0 01       	movw	r20, r0
    3a22:	11 24       	eor	r1, r1
    3a24:	40 5e       	subi	r20, 0xE0	; 224
    3a26:	5c 4f       	sbci	r21, 0xFC	; 252
    3a28:	dc 01       	movw	r26, r24
    3a2a:	13 97       	sbiw	r26, 0x03	; 3
    3a2c:	cb 01       	movw	r24, r22
    3a2e:	03 97       	sbiw	r24, 0x03	; 3
    3a30:	ee 24       	eor	r14, r14
    3a32:	e3 94       	inc	r14
    3a34:	07 e0       	ldi	r16, 0x07	; 7
    3a36:	27 e0       	ldi	r18, 0x07	; 7
    3a38:	bd 01       	movw	r22, r26
    3a3a:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh>
static void drawEnemies(void)
{
    GROUP_T *pG = groups - 1;
    ENEMY_T *pE = enemies;
    int16_t enemyFrames;
    for (int i = 0; i < ENEMY_MAX; i++, pE++) {
    3a3e:	8f ef       	ldi	r24, 0xFF	; 255
    3a40:	c8 1a       	sub	r12, r24
    3a42:	d8 0a       	sbc	r13, r24
    3a44:	94 e0       	ldi	r25, 0x04	; 4
    3a46:	a9 0e       	add	r10, r25
    3a48:	b1 1c       	adc	r11, r1
    3a4a:	ef e0       	ldi	r30, 0x0F	; 15
    3a4c:	ce 16       	cp	r12, r30
    3a4e:	d1 04       	cpc	r13, r1
    3a50:	09 f0       	breq	.+2      	; 0x3a54 <_Z8drawGamev+0x264>
    3a52:	9c cf       	rjmp	.-200    	; 0x398c <_Z8drawGamev+0x19c>
    }
}

static void drawExplosion(void)
{
    if (explo.a < IMG_EXPLO_ID_MAX) {
    3a54:	60 91 4d 01 	lds	r22, 0x014D	; 0x80014d <_ZL5explo+0x1>
    3a58:	46 2f       	mov	r20, r22
    3a5a:	42 95       	swap	r20
    3a5c:	46 95       	lsr	r20
    3a5e:	47 70       	andi	r20, 0x07	; 7
    3a60:	46 30       	cpi	r20, 0x06	; 6
    3a62:	d0 f4       	brcc	.+52     	; 0x3a98 <_Z8drawGamev+0x2a8>
        arduboy.drawBitmap(explo.x - 7, explo.y - 7, imgExplo[explo.a], IMG_EXPLO_W, IMG_EXPLO_H);
    3a64:	fe e1       	ldi	r31, 0x1E	; 30
    3a66:	4f 9f       	mul	r20, r31
    3a68:	a0 01       	movw	r20, r0
    3a6a:	11 24       	eor	r1, r1
    3a6c:	4d 5b       	subi	r20, 0xBD	; 189
    3a6e:	5c 4f       	sbci	r21, 0xFC	; 252
    3a70:	80 91 4c 01 	lds	r24, 0x014C	; 0x80014c <_ZL5explo>
    3a74:	28 2f       	mov	r18, r24
    3a76:	22 1f       	adc	r18, r18
    3a78:	22 27       	eor	r18, r18
    3a7a:	22 1f       	adc	r18, r18
    3a7c:	6f 71       	andi	r22, 0x1F	; 31
    3a7e:	66 0f       	add	r22, r22
    3a80:	62 2b       	or	r22, r18
    3a82:	67 50       	subi	r22, 0x07	; 7
    3a84:	77 0b       	sbc	r23, r23
    3a86:	8f 77       	andi	r24, 0x7F	; 127
    3a88:	ee 24       	eor	r14, r14
    3a8a:	e3 94       	inc	r14
    3a8c:	0f e0       	ldi	r16, 0x0F	; 15
    3a8e:	2f e0       	ldi	r18, 0x0F	; 15
    3a90:	87 50       	subi	r24, 0x07	; 7
    3a92:	99 0b       	sbc	r25, r25
    3a94:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh>
        drawPlayer();
        drawShots();
        drawBullets();
        drawEnemies();
        drawExplosion();
        drawBackground();
    3a98:	0e 94 e9 15 	call	0x2bd2	; 0x2bd2 <_ZL14drawBackgroundv>
    }
}

static void drawLetters(void)
{
    switch (state) {
    3a9c:	11 30       	cpi	r17, 0x01	; 1
    3a9e:	09 f4       	brne	.+2      	; 0x3aa2 <_Z8drawGamev+0x2b2>
    3aa0:	bd c0       	rjmp	.+378    	; 0x3c1c <_Z8drawGamev+0x42c>
    3aa2:	08 f4       	brcc	.+2      	; 0x3aa6 <_Z8drawGamev+0x2b6>
    3aa4:	ab c0       	rjmp	.+342    	; 0x3bfc <_Z8drawGamev+0x40c>
    3aa6:	12 30       	cpi	r17, 0x02	; 2
    3aa8:	09 f0       	breq	.+2      	; 0x3aac <_Z8drawGamev+0x2bc>
    3aaa:	be ce       	rjmp	.-644    	; 0x3828 <_Z8drawGamev+0x38>
    3aac:	30 91 45 03 	lds	r19, 0x0345	; 0x800345 <counter>
    3ab0:	3a 83       	std	Y+2, r19	; 0x02
        break;
    case STATE_PLAYING:
        drawTime(104, 0, (gameFrames < GAME_DURATION) ? GAME_DURATION - 1 - gameFrames : 0);
        break;
    case STATE_OVER:
        if (isDefeated) {
    3ab2:	89 81       	ldd	r24, Y+1	; 0x01
    3ab4:	88 23       	and	r24, r24
    3ab6:	09 f4       	brne	.+2      	; 0x3aba <_Z8drawGamev+0x2ca>
    3ab8:	ca c0       	rjmp	.+404    	; 0x3c4e <_Z8drawGamev+0x45e>
            int16_t a = 30 - min(counter, 30);
    3aba:	83 2f       	mov	r24, r19
    3abc:	3f 31       	cpi	r19, 0x1F	; 31
    3abe:	08 f0       	brcs	.+2      	; 0x3ac2 <_Z8drawGamev+0x2d2>
    3ac0:	8e e1       	ldi	r24, 0x1E	; 30
    3ac2:	2e e1       	ldi	r18, 0x1E	; 30
    3ac4:	30 e0       	ldi	r19, 0x00	; 0
    3ac6:	28 1b       	sub	r18, r24
    3ac8:	31 09       	sbc	r19, r1
            drawLettersBigLabel((WIDTH - IMG_FAILED_W) / 2 + a * a / 10, 24, imgFailed,
    3aca:	22 9f       	mul	r18, r18
    3acc:	c0 01       	movw	r24, r0
    3ace:	23 9f       	mul	r18, r19
    3ad0:	90 0d       	add	r25, r0
    3ad2:	90 0d       	add	r25, r0
    3ad4:	11 24       	eor	r1, r1
    3ad6:	6a e0       	ldi	r22, 0x0A	; 10
    3ad8:	70 e0       	ldi	r23, 0x00	; 0
    3ada:	0e 94 d4 2f 	call	0x5fa8	; 0x5fa8 <__divmodhi4>
    3ade:	cb 01       	movw	r24, r22
    3ae0:	2e e2       	ldi	r18, 0x2E	; 46
    3ae2:	43 e9       	ldi	r20, 0x93	; 147
    3ae4:	54 e0       	ldi	r21, 0x04	; 4
    3ae6:	68 e1       	ldi	r22, 0x18	; 24
    3ae8:	70 e0       	ldi	r23, 0x00	; 0
    3aea:	89 96       	adiw	r24, 0x29	; 41
    3aec:	0e 94 09 0a 	call	0x1412	; 0x1412 <_ZL19drawLettersBigLabeliiPKhhh.constprop.15>
        } else {
            int16_t dy = min(counter, 40) - 16;
            drawLettersBigLabel((WIDTH - IMG_COMPLETED_W) / 2, dy, imgCompleted,
                    IMG_COMPLETED_W, IMG_COMPLETED_H);
        }
        if (counter >= OVER_OMIT) {
    3af0:	9a 81       	ldd	r25, Y+2	; 0x02
    3af2:	9c 33       	cpi	r25, 0x3C	; 60
    3af4:	08 f4       	brcc	.+2      	; 0x3af8 <_Z8drawGamev+0x308>
    3af6:	98 ce       	rjmp	.-720    	; 0x3828 <_Z8drawGamev+0x38>
           arduboy.fillRect(42, 48, 43, 7, BLACK);
    3af8:	e1 2c       	mov	r14, r1
    3afa:	07 e0       	ldi	r16, 0x07	; 7
    3afc:	2b e2       	ldi	r18, 0x2B	; 43
    3afe:	40 e3       	ldi	r20, 0x30	; 48
    3b00:	50 e0       	ldi	r21, 0x00	; 0
    3b02:	6a e2       	ldi	r22, 0x2A	; 42
    3b04:	70 e0       	ldi	r23, 0x00	; 0
    3b06:	8d ed       	ldi	r24, 0xDD	; 221
    3b08:	97 e0       	ldi	r25, 0x07	; 7
    3b0a:	0e 94 d1 12 	call	0x25a2	; 0x25a2 <_ZN10MyArduboy28fillRectEiihah>
            arduboy.printEx(55, 49, (isDefeated) ? F("RETRY") : F("TITLE"));
    3b0e:	4d ef       	ldi	r20, 0xFD	; 253
    3b10:	53 e0       	ldi	r21, 0x03	; 3
    3b12:	61 e3       	ldi	r22, 0x31	; 49
    3b14:	70 e0       	ldi	r23, 0x00	; 0
    3b16:	87 e3       	ldi	r24, 0x37	; 55
    3b18:	90 e0       	ldi	r25, 0x00	; 0
    3b1a:	0e 94 86 14 	call	0x290c	; 0x290c <_ZN10MyArduboy27printExIPK19__FlashStringHelperEEjiiT_.constprop.13>
            drawButtonIcon(43, 48, true);
    3b1e:	41 e0       	ldi	r20, 0x01	; 1
    3b20:	60 e3       	ldi	r22, 0x30	; 48
    3b22:	70 e0       	ldi	r23, 0x00	; 0
    3b24:	8b e2       	ldi	r24, 0x2B	; 43
    3b26:	90 e0       	ldi	r25, 0x00	; 0
    3b28:	0e 94 20 0d 	call	0x1a40	; 0x1a40 <_Z14drawButtonIconiib>
    3b2c:	74 c0       	rjmp	.+232    	; 0x3c16 <_Z8drawGamev+0x426>
        uint8_t a = counter / 4;
        if (a < IMG_EXPLO_ID_MAX) {
            arduboy.drawBitmap(dx - 7, dy - 7, imgExplo[a], IMG_EXPLO_W, IMG_EXPLO_H);
        }
    } else {
        if (state == STATE_START && counter < START_OMIT) dx -= (START_OMIT - counter) / 3;
    3b2e:	11 11       	cpse	r17, r1
    3b30:	1a c0       	rjmp	.+52     	; 0x3b66 <_Z8drawGamev+0x376>
    3b32:	40 91 45 03 	lds	r20, 0x0345	; 0x800345 <counter>
    3b36:	4c 33       	cpi	r20, 0x3C	; 60
    3b38:	50 f4       	brcc	.+20     	; 0x3b4e <_Z8drawGamev+0x35e>
    3b3a:	8c e3       	ldi	r24, 0x3C	; 60
    3b3c:	90 e0       	ldi	r25, 0x00	; 0
    3b3e:	84 1b       	sub	r24, r20
    3b40:	91 09       	sbc	r25, r1
    3b42:	6d ef       	ldi	r22, 0xFD	; 253
    3b44:	7f ef       	ldi	r23, 0xFF	; 255
    3b46:	0e 94 d4 2f 	call	0x5fa8	; 0x5fa8 <__divmodhi4>
    3b4a:	e6 0f       	add	r30, r22
    3b4c:	f7 1f       	adc	r31, r23
        if (state == STATE_OVER) {
            int16_t a = counter - 16;
            dx += a * a / 32 - 8;
        }
        arduboy.drawBitmap(dx - 3, dy - 3, imgPlayer, IMG_CRAFT_W, IMG_CRAFT_H);
    3b4e:	b9 01       	movw	r22, r18
    3b50:	63 50       	subi	r22, 0x03	; 3
    3b52:	71 09       	sbc	r23, r1
    3b54:	ee 24       	eor	r14, r14
    3b56:	e3 94       	inc	r14
    3b58:	07 e0       	ldi	r16, 0x07	; 7
    3b5a:	27 e0       	ldi	r18, 0x07	; 7
    3b5c:	49 e1       	ldi	r20, 0x19	; 25
    3b5e:	53 e0       	ldi	r21, 0x03	; 3
    3b60:	cf 01       	movw	r24, r30
    3b62:	03 97       	sbiw	r24, 0x03	; 3
    3b64:	c7 ce       	rjmp	.-626    	; 0x38f4 <_Z8drawGamev+0x104>
        if (a < IMG_EXPLO_ID_MAX) {
            arduboy.drawBitmap(dx - 7, dy - 7, imgExplo[a], IMG_EXPLO_W, IMG_EXPLO_H);
        }
    } else {
        if (state == STATE_START && counter < START_OMIT) dx -= (START_OMIT - counter) / 3;
        if (state == STATE_OVER) {
    3b66:	12 30       	cpi	r17, 0x02	; 2
    3b68:	91 f7       	brne	.-28     	; 0x3b4e <_Z8drawGamev+0x35e>
            int16_t a = counter - 16;
    3b6a:	40 91 45 03 	lds	r20, 0x0345	; 0x800345 <counter>
    3b6e:	40 51       	subi	r20, 0x10	; 16
    3b70:	55 0b       	sbc	r21, r21
            dx += a * a / 32 - 8;
    3b72:	44 9f       	mul	r20, r20
    3b74:	c0 01       	movw	r24, r0
    3b76:	45 9f       	mul	r20, r21
    3b78:	90 0d       	add	r25, r0
    3b7a:	90 0d       	add	r25, r0
    3b7c:	11 24       	eor	r1, r1
    3b7e:	97 fd       	sbrc	r25, 7
    3b80:	4f 96       	adiw	r24, 0x1f	; 31
    3b82:	a5 e0       	ldi	r26, 0x05	; 5
    3b84:	95 95       	asr	r25
    3b86:	87 95       	ror	r24
    3b88:	aa 95       	dec	r26
    3b8a:	e1 f7       	brne	.-8      	; 0x3b84 <_Z8drawGamev+0x394>
    3b8c:	08 97       	sbiw	r24, 0x08	; 8
    3b8e:	e8 0f       	add	r30, r24
    3b90:	f9 1f       	adc	r31, r25
    3b92:	dd cf       	rjmp	.-70     	; 0x3b4e <_Z8drawGamev+0x35e>
    for (int i = 0; i < ENEMY_MAX; i++, pE++) {
        if (i % ENEMY_UNITY == 0) {
            pG++;
            enemyFrames = (gameFrames - (pG - groups) * GROUP_INT) % (GROUP_INT * GROUP_MAX);
        } else {
            enemyFrames -= (pG->entryInt + 1) * 4;
    3b94:	ea 81       	ldd	r30, Y+2	; 0x02
    3b96:	fb 81       	ldd	r31, Y+3	; 0x03
    3b98:	85 81       	ldd	r24, Z+5	; 0x05
    3b9a:	82 95       	swap	r24
    3b9c:	86 95       	lsr	r24
    3b9e:	87 70       	andi	r24, 0x07	; 7
    3ba0:	90 e0       	ldi	r25, 0x00	; 0
    3ba2:	01 96       	adiw	r24, 0x01	; 1
    3ba4:	88 0f       	add	r24, r24
    3ba6:	99 1f       	adc	r25, r25
    3ba8:	88 0f       	add	r24, r24
    3baa:	99 1f       	adc	r25, r25
    3bac:	88 1a       	sub	r8, r24
    3bae:	99 0a       	sbc	r9, r25
    3bb0:	15 cf       	rjmp	.-470    	; 0x39dc <_Z8drawGamev+0x1ec>
            fade = abs(fade) - (ENEMY_ACTIVE / 2 - ENEMY_FADE);
            Point enemyPoint = getEnemyCoords(pG, pE, enemyFrames);
            if (fade <= 0) {
                arduboy.drawBitmap(enemyPoint.x - 3, enemyPoint.y - 3,
                        imgEnemy[pG->type], IMG_CRAFT_W, IMG_CRAFT_H);
            } else if (fade <= ENEMY_FADE) {
    3bb2:	27 e0       	ldi	r18, 0x07	; 7
    3bb4:	e2 16       	cp	r14, r18
    3bb6:	f1 04       	cpc	r15, r1
    3bb8:	0c f0       	brlt	.+2      	; 0x3bbc <_Z8drawGamev+0x3cc>
    3bba:	41 cf       	rjmp	.-382    	; 0x3a3e <_Z8drawGamev+0x24e>
                int8_t z = min(fade, 3);
    3bbc:	f7 01       	movw	r30, r14
    3bbe:	34 e0       	ldi	r19, 0x04	; 4
    3bc0:	e3 16       	cp	r14, r19
    3bc2:	f1 04       	cpc	r15, r1
    3bc4:	14 f0       	brlt	.+4      	; 0x3bca <_Z8drawGamev+0x3da>
    3bc6:	e3 e0       	ldi	r30, 0x03	; 3
    3bc8:	f0 e0       	ldi	r31, 0x00	; 0
                arduboy.fillRect(enemyPoint.x - 3 + z, enemyPoint.y - fade * 2,
                        IMG_CRAFT_W - z * 2, IMG_CRAFT_H + fade * 4, WHITE);
    3bca:	0e 2d       	mov	r16, r14
    3bcc:	00 0f       	add	r16, r16
    3bce:	00 0f       	add	r16, r16
    3bd0:	09 5f       	subi	r16, 0xF9	; 249
    3bd2:	2e 2f       	mov	r18, r30
    3bd4:	22 0f       	add	r18, r18
            if (fade <= 0) {
                arduboy.drawBitmap(enemyPoint.x - 3, enemyPoint.y - 3,
                        imgEnemy[pG->type], IMG_CRAFT_W, IMG_CRAFT_H);
            } else if (fade <= ENEMY_FADE) {
                int8_t z = min(fade, 3);
                arduboy.fillRect(enemyPoint.x - 3 + z, enemyPoint.y - fade * 2,
    3bd6:	37 e0       	ldi	r19, 0x07	; 7
    3bd8:	32 1b       	sub	r19, r18
    3bda:	23 2f       	mov	r18, r19
    3bdc:	ee 0c       	add	r14, r14
    3bde:	ff 1c       	adc	r15, r15
    3be0:	ac 01       	movw	r20, r24
    3be2:	4e 19       	sub	r20, r14
    3be4:	5f 09       	sbc	r21, r15
    3be6:	63 50       	subi	r22, 0x03	; 3
    3be8:	71 09       	sbc	r23, r1
    3bea:	6e 0f       	add	r22, r30
    3bec:	7f 1f       	adc	r23, r31
    3bee:	ee 24       	eor	r14, r14
    3bf0:	e3 94       	inc	r14
    3bf2:	8d ed       	ldi	r24, 0xDD	; 221
    3bf4:	97 e0       	ldi	r25, 0x07	; 7
    3bf6:	0e 94 d1 12 	call	0x25a2	; 0x25a2 <_ZN10MyArduboy28fillRectEiihah>
    3bfa:	21 cf       	rjmp	.-446    	; 0x3a3e <_Z8drawGamev+0x24e>

static void drawLetters(void)
{
    switch (state) {
    case STATE_START:
        if (bitRead(counter, 3)) {
    3bfc:	80 91 45 03 	lds	r24, 0x0345	; 0x800345 <counter>
    3c00:	83 ff       	sbrs	r24, 3
    3c02:	09 c0       	rjmp	.+18     	; 0x3c16 <_Z8drawGamev+0x426>
            drawLettersBigLabel((WIDTH - IMG_READY_W) / 2, 24, imgReady, IMG_READY_W, IMG_READY_H);
    3c04:	20 e3       	ldi	r18, 0x30	; 48
    3c06:	4f ee       	ldi	r20, 0xEF	; 239
    3c08:	54 e0       	ldi	r21, 0x04	; 4
    3c0a:	68 e1       	ldi	r22, 0x18	; 24
    3c0c:	70 e0       	ldi	r23, 0x00	; 0
    3c0e:	88 e2       	ldi	r24, 0x28	; 40
    3c10:	90 e0       	ldi	r25, 0x00	; 0
    3c12:	0e 94 09 0a 	call	0x1412	; 0x1412 <_ZL19drawLettersBigLabeliiPKhhh.constprop.15>
        }
        if (counter >= OVER_OMIT) {
           arduboy.fillRect(42, 48, 43, 7, BLACK);
            arduboy.printEx(55, 49, (isDefeated) ? F("RETRY") : F("TITLE"));
            drawButtonIcon(43, 48, true);
            drawLettersGameSeed();
    3c16:	0e 94 c7 16 	call	0x2d8e	; 0x2d8e <_ZL19drawLettersGameSeedv>
    3c1a:	06 ce       	rjmp	.-1012   	; 0x3828 <_Z8drawGamev+0x38>
            drawLettersBigLabel((WIDTH - IMG_READY_W) / 2, 24, imgReady, IMG_READY_W, IMG_READY_H);
        }
        drawLettersGameSeed();
        break;
    case STATE_PLAYING:
        drawTime(104, 0, (gameFrames < GAME_DURATION) ? GAME_DURATION - 1 - gameFrames : 0);
    3c1c:	80 91 07 03 	lds	r24, 0x0307	; 0x800307 <_ZL10gameFrames>
    3c20:	90 91 08 03 	lds	r25, 0x0308	; 0x800308 <_ZL10gameFrames+0x1>
    3c24:	80 31       	cpi	r24, 0x10	; 16
    3c26:	2e e0       	ldi	r18, 0x0E	; 14
    3c28:	92 07       	cpc	r25, r18
    3c2a:	68 f4       	brcc	.+26     	; 0x3c46 <_Z8drawGamev+0x456>
    3c2c:	2f e0       	ldi	r18, 0x0F	; 15
    3c2e:	3e e0       	ldi	r19, 0x0E	; 14
    3c30:	28 1b       	sub	r18, r24
    3c32:	39 0b       	sbc	r19, r25
    3c34:	50 e0       	ldi	r21, 0x00	; 0
    3c36:	40 e0       	ldi	r20, 0x00	; 0
    3c38:	70 e0       	ldi	r23, 0x00	; 0
    3c3a:	60 e0       	ldi	r22, 0x00	; 0
    3c3c:	88 e6       	ldi	r24, 0x68	; 104
    3c3e:	90 e0       	ldi	r25, 0x00	; 0
    3c40:	0e 94 13 17 	call	0x2e26	; 0x2e26 <_Z8drawTimeiim>
    3c44:	f1 cd       	rjmp	.-1054   	; 0x3828 <_Z8drawGamev+0x38>
    3c46:	20 e0       	ldi	r18, 0x00	; 0
    3c48:	30 e0       	ldi	r19, 0x00	; 0
    3c4a:	a9 01       	movw	r20, r18
    3c4c:	f5 cf       	rjmp	.-22     	; 0x3c38 <_Z8drawGamev+0x448>
        if (isDefeated) {
            int16_t a = 30 - min(counter, 30);
            drawLettersBigLabel((WIDTH - IMG_FAILED_W) / 2 + a * a / 10, 24, imgFailed,
                    IMG_FAILED_W, IMG_FAILED_H);
        } else {
            int16_t dy = min(counter, 40) - 16;
    3c4e:	6a 81       	ldd	r22, Y+2	; 0x02
    3c50:	69 32       	cpi	r22, 0x29	; 41
    3c52:	08 f0       	brcs	.+2      	; 0x3c56 <_Z8drawGamev+0x466>
    3c54:	68 e2       	ldi	r22, 0x28	; 40
    3c56:	60 51       	subi	r22, 0x10	; 16
    3c58:	77 0b       	sbc	r23, r23
            drawLettersBigLabel((WIDTH - IMG_COMPLETED_W) / 2, dy, imgCompleted,
    3c5a:	28 e4       	ldi	r18, 0x48	; 72
    3c5c:	43 e0       	ldi	r20, 0x03	; 3
    3c5e:	54 e0       	ldi	r21, 0x04	; 4
    3c60:	8c e1       	ldi	r24, 0x1C	; 28
    3c62:	90 e0       	ldi	r25, 0x00	; 0
    3c64:	0e 94 09 0a 	call	0x1412	; 0x1412 <_ZL19drawLettersBigLabeliiPKhhh.constprop.15>
                    IMG_COMPLETED_W, IMG_COMPLETED_H);
        }
        if (counter >= OVER_OMIT) {
    3c68:	ea 81       	ldd	r30, Y+2	; 0x02
    3c6a:	ec 33       	cpi	r30, 0x3C	; 60
    3c6c:	08 f4       	brcc	.+2      	; 0x3c70 <_Z8drawGamev+0x480>
    3c6e:	dc cd       	rjmp	.-1096   	; 0x3828 <_Z8drawGamev+0x38>
           arduboy.fillRect(42, 48, 43, 7, BLACK);
    3c70:	e1 2c       	mov	r14, r1
    3c72:	07 e0       	ldi	r16, 0x07	; 7
    3c74:	2b e2       	ldi	r18, 0x2B	; 43
    3c76:	40 e3       	ldi	r20, 0x30	; 48
    3c78:	50 e0       	ldi	r21, 0x00	; 0
    3c7a:	6a e2       	ldi	r22, 0x2A	; 42
    3c7c:	70 e0       	ldi	r23, 0x00	; 0
    3c7e:	8d ed       	ldi	r24, 0xDD	; 221
    3c80:	97 e0       	ldi	r25, 0x07	; 7
    3c82:	0e 94 d1 12 	call	0x25a2	; 0x25a2 <_ZN10MyArduboy28fillRectEiihah>
            arduboy.printEx(55, 49, (isDefeated) ? F("RETRY") : F("TITLE"));
    3c86:	47 ef       	ldi	r20, 0xF7	; 247
    3c88:	53 e0       	ldi	r21, 0x03	; 3
    3c8a:	43 cf       	rjmp	.-378    	; 0x3b12 <_Z8drawGamev+0x322>

00003c8c <_ZL13updateEnemiesv>:
        pE->fireDeg = myAtan2f(y - enemyPoint.y, x - enemyPoint.x);
    }
}

static bool updateEnemies(void)
{
    3c8c:	2f 92       	push	r2
    3c8e:	3f 92       	push	r3
    3c90:	4f 92       	push	r4
    3c92:	5f 92       	push	r5
    3c94:	6f 92       	push	r6
    3c96:	7f 92       	push	r7
    3c98:	8f 92       	push	r8
    3c9a:	9f 92       	push	r9
    3c9c:	af 92       	push	r10
    3c9e:	bf 92       	push	r11
    3ca0:	cf 92       	push	r12
    3ca2:	df 92       	push	r13
    3ca4:	ef 92       	push	r14
    3ca6:	ff 92       	push	r15
    3ca8:	0f 93       	push	r16
    3caa:	1f 93       	push	r17
    3cac:	cf 93       	push	r28
    3cae:	df 93       	push	r29
    3cb0:	cd b7       	in	r28, 0x3d	; 61
    3cb2:	de b7       	in	r29, 0x3e	; 62
    3cb4:	60 97       	sbiw	r28, 0x10	; 16
    3cb6:	0f b6       	in	r0, 0x3f	; 63
    3cb8:	f8 94       	cli
    3cba:	de bf       	out	0x3e, r29	; 62
    3cbc:	0f be       	out	0x3f, r0	; 63
    3cbe:	cd bf       	out	0x3d, r28	; 61
    /*  New group  */
    if (gameFrames < GAME_DURATION && gameFrames % GROUP_INT == 0) {
    3cc0:	80 91 07 03 	lds	r24, 0x0307	; 0x800307 <_ZL10gameFrames>
    3cc4:	90 91 08 03 	lds	r25, 0x0308	; 0x800308 <_ZL10gameFrames+0x1>
    3cc8:	80 31       	cpi	r24, 0x10	; 16
    3cca:	2e e0       	ldi	r18, 0x0E	; 14
    3ccc:	92 07       	cpc	r25, r18
    3cce:	08 f0       	brcs	.+2      	; 0x3cd2 <_ZL13updateEnemiesv+0x46>
    3cd0:	af c2       	rjmp	.+1374   	; 0x4230 <_ZL13updateEnemiesv+0x5a4>
    3cd2:	6c e2       	ldi	r22, 0x2C	; 44
    3cd4:	71 e0       	ldi	r23, 0x01	; 1
    3cd6:	0e 94 c0 2f 	call	0x5f80	; 0x5f80 <__udivmodhi4>
    3cda:	89 2b       	or	r24, r25
    3cdc:	09 f0       	breq	.+2      	; 0x3ce0 <_ZL13updateEnemiesv+0x54>
    3cde:	a8 c2       	rjmp	.+1360   	; 0x4230 <_ZL13updateEnemiesv+0x5a4>

static void newGroup(uint8_t groupIdx)
{
    dprint(F("New group "));
    dprintln(groupIdx);
    int idx = groupIdx % GROUP_MAX;
    3ce0:	86 2f       	mov	r24, r22
    3ce2:	63 e0       	ldi	r22, 0x03	; 3
    3ce4:	0e 94 b4 2f 	call	0x5f68	; 0x5f68 <__udivmodqi4>
    3ce8:	09 2f       	mov	r16, r25
    3cea:	e9 2e       	mov	r14, r25
    3cec:	f1 2c       	mov	r15, r1
    GROUP_T *pG = &groups[idx];
    3cee:	87 e0       	ldi	r24, 0x07	; 7
    3cf0:	98 9f       	mul	r25, r24
    3cf2:	a0 01       	movw	r20, r0
    3cf4:	11 24       	eor	r1, r1
    3cf6:	42 55       	subi	r20, 0x52	; 82
    3cf8:	5e 4f       	sbci	r21, 0xFE	; 254
    3cfa:	58 8b       	std	Y+16, r21	; 0x10
    3cfc:	4f 87       	std	Y+15, r20	; 0x0f
long random(long howbig)
{
  if (howbig == 0) {
    return 0;
  }
  return random() % howbig;
    3cfe:	0e 94 8c 2b 	call	0x5718	; 0x5718 <random>
    3d02:	21 e2       	ldi	r18, 0x21	; 33
    3d04:	30 e0       	ldi	r19, 0x00	; 0
    3d06:	40 e0       	ldi	r20, 0x00	; 0
    3d08:	50 e0       	ldi	r21, 0x00	; 0
    3d0a:	0e 94 41 2c 	call	0x5882	; 0x5882 <__divmodsi4>
{
  if (howsmall >= howbig) {
    return howsmall;
  }
  long diff = howbig - howsmall;
  return random(diff) + howsmall;
    3d0e:	6c 5f       	subi	r22, 0xFC	; 252
    3d10:	7f 4f       	sbci	r23, 0xFF	; 255
    3d12:	8f 4f       	sbci	r24, 0xFF	; 255
    3d14:	9f 4f       	sbci	r25, 0xFF	; 255

    /*  Moving path design  */
    pG->xRad = random(4, 37);
    3d16:	36 2f       	mov	r19, r22
    3d18:	32 95       	swap	r19
    3d1a:	30 7f       	andi	r19, 0xF0	; 240
    3d1c:	af 85       	ldd	r26, Y+15	; 0x0f
    3d1e:	b8 89       	ldd	r27, Y+16	; 0x10
    3d20:	2c 91       	ld	r18, X
    3d22:	2f 70       	andi	r18, 0x0F	; 15
    3d24:	23 2b       	or	r18, r19
    3d26:	2c 93       	st	X, r18
    3d28:	54 e0       	ldi	r21, 0x04	; 4
    3d2a:	96 95       	lsr	r25
    3d2c:	87 95       	ror	r24
    3d2e:	77 95       	ror	r23
    3d30:	67 95       	ror	r22
    3d32:	5a 95       	dec	r21
    3d34:	d1 f7       	brne	.-12     	; 0x3d2a <_ZL13updateEnemiesv+0x9e>
    3d36:	63 70       	andi	r22, 0x03	; 3
    3d38:	11 96       	adiw	r26, 0x01	; 1
    3d3a:	8c 91       	ld	r24, X
    3d3c:	11 97       	sbiw	r26, 0x01	; 1
    3d3e:	8c 7f       	andi	r24, 0xFC	; 252
    3d40:	68 2b       	or	r22, r24
    3d42:	11 96       	adiw	r26, 0x01	; 1
    3d44:	6c 93       	st	X, r22
long random(long howbig)
{
  if (howbig == 0) {
    return 0;
  }
  return random() % howbig;
    3d46:	0e 94 8c 2b 	call	0x5718	; 0x5718 <random>
    3d4a:	29 e1       	ldi	r18, 0x19	; 25
    3d4c:	30 e0       	ldi	r19, 0x00	; 0
    3d4e:	40 e0       	ldi	r20, 0x00	; 0
    3d50:	50 e0       	ldi	r21, 0x00	; 0
    3d52:	0e 94 41 2c 	call	0x5882	; 0x5882 <__divmodsi4>
{
  if (howsmall >= howbig) {
    return howsmall;
  }
  long diff = howbig - howsmall;
  return random(diff) + howsmall;
    3d56:	6d 5f       	subi	r22, 0xFD	; 253
    3d58:	7f 4f       	sbci	r23, 0xFF	; 255
    3d5a:	8f 4f       	sbci	r24, 0xFF	; 255
    3d5c:	9f 4f       	sbci	r25, 0xFF	; 255
    pG->yRad = random(3, 28);
    3d5e:	6f 71       	andi	r22, 0x1F	; 31
    3d60:	66 0f       	add	r22, r22
    3d62:	66 0f       	add	r22, r22
    3d64:	ef 85       	ldd	r30, Y+15	; 0x0f
    3d66:	f8 89       	ldd	r31, Y+16	; 0x10
    3d68:	81 81       	ldd	r24, Z+1	; 0x01
    3d6a:	83 78       	andi	r24, 0x83	; 131
    3d6c:	68 2b       	or	r22, r24
    3d6e:	61 83       	std	Z+1, r22	; 0x01
long random(long howbig)
{
  if (howbig == 0) {
    return 0;
  }
  return random() % howbig;
    3d70:	0e 94 8c 2b 	call	0x5718	; 0x5718 <random>
    3d74:	22 e0       	ldi	r18, 0x02	; 2
    3d76:	30 e0       	ldi	r19, 0x00	; 0
    3d78:	40 e0       	ldi	r20, 0x00	; 0
    3d7a:	50 e0       	ldi	r21, 0x00	; 0
    3d7c:	0e 94 41 2c 	call	0x5882	; 0x5882 <__divmodsi4>
    pG->yFlip = random(2);
    3d80:	af 85       	ldd	r26, Y+15	; 0x0f
    3d82:	b8 89       	ldd	r27, Y+16	; 0x10
    3d84:	11 96       	adiw	r26, 0x01	; 1
    3d86:	8c 91       	ld	r24, X
    3d88:	11 97       	sbiw	r26, 0x01	; 1
    3d8a:	60 fb       	bst	r22, 0
    3d8c:	87 f9       	bld	r24, 7
    3d8e:	11 96       	adiw	r26, 0x01	; 1
    3d90:	8c 93       	st	X, r24
    3d92:	0e 94 8c 2b 	call	0x5718	; 0x5718 <random>
    3d96:	ec e3       	ldi	r30, 0x3C	; 60
    3d98:	8e 2e       	mov	r8, r30
    3d9a:	91 2c       	mov	r9, r1
    3d9c:	a1 2c       	mov	r10, r1
    3d9e:	b1 2c       	mov	r11, r1
    3da0:	a5 01       	movw	r20, r10
    3da2:	94 01       	movw	r18, r8
    3da4:	0e 94 41 2c 	call	0x5882	; 0x5882 <__divmodsi4>
{
  if (howsmall >= howbig) {
    return howsmall;
  }
  long diff = howbig - howsmall;
  return random(diff) + howsmall;
    3da8:	6c 5f       	subi	r22, 0xFC	; 252
    3daa:	7f 4f       	sbci	r23, 0xFF	; 255
    3dac:	8f 4f       	sbci	r24, 0xFF	; 255
    3dae:	9f 4f       	sbci	r25, 0xFF	; 255
    pG->xCoef = random(4, 64);
    3db0:	6f 73       	andi	r22, 0x3F	; 63
    3db2:	ef 85       	ldd	r30, Y+15	; 0x0f
    3db4:	f8 89       	ldd	r31, Y+16	; 0x10
    3db6:	82 81       	ldd	r24, Z+2	; 0x02
    3db8:	80 7c       	andi	r24, 0xC0	; 192
    3dba:	68 2b       	or	r22, r24
    3dbc:	62 83       	std	Z+2, r22	; 0x02
long random(long howbig)
{
  if (howbig == 0) {
    return 0;
  }
  return random() % howbig;
    3dbe:	0e 94 8c 2b 	call	0x5718	; 0x5718 <random>
    3dc2:	a5 01       	movw	r20, r10
    3dc4:	94 01       	movw	r18, r8
    3dc6:	0e 94 41 2c 	call	0x5882	; 0x5882 <__divmodsi4>
{
  if (howsmall >= howbig) {
    return howsmall;
  }
  long diff = howbig - howsmall;
  return random(diff) + howsmall;
    3dca:	6c 5f       	subi	r22, 0xFC	; 252
    3dcc:	7f 4f       	sbci	r23, 0xFF	; 255
    3dce:	8f 4f       	sbci	r24, 0xFF	; 255
    3dd0:	9f 4f       	sbci	r25, 0xFF	; 255
    pG->yCoef = random(4, 64);
    3dd2:	36 2f       	mov	r19, r22
    3dd4:	32 95       	swap	r19
    3dd6:	33 0f       	add	r19, r19
    3dd8:	33 0f       	add	r19, r19
    3dda:	30 7c       	andi	r19, 0xC0	; 192
    3ddc:	af 85       	ldd	r26, Y+15	; 0x0f
    3dde:	b8 89       	ldd	r27, Y+16	; 0x10
    3de0:	12 96       	adiw	r26, 0x02	; 2
    3de2:	2c 91       	ld	r18, X
    3de4:	12 97       	sbiw	r26, 0x02	; 2
    3de6:	2f 73       	andi	r18, 0x3F	; 63
    3de8:	23 2b       	or	r18, r19
    3dea:	12 96       	adiw	r26, 0x02	; 2
    3dec:	2c 93       	st	X, r18
    3dee:	12 97       	sbiw	r26, 0x02	; 2
    3df0:	f2 e0       	ldi	r31, 0x02	; 2
    3df2:	96 95       	lsr	r25
    3df4:	87 95       	ror	r24
    3df6:	77 95       	ror	r23
    3df8:	67 95       	ror	r22
    3dfa:	fa 95       	dec	r31
    3dfc:	d1 f7       	brne	.-12     	; 0x3df2 <_ZL13updateEnemiesv+0x166>
    3dfe:	6f 70       	andi	r22, 0x0F	; 15
    3e00:	13 96       	adiw	r26, 0x03	; 3
    3e02:	8c 91       	ld	r24, X
    3e04:	13 97       	sbiw	r26, 0x03	; 3
    3e06:	80 7f       	andi	r24, 0xF0	; 240
    3e08:	68 2b       	or	r22, r24
    3e0a:	13 96       	adiw	r26, 0x03	; 3
    3e0c:	6c 93       	st	X, r22
long random(long howbig)
{
  if (howbig == 0) {
    return 0;
  }
  return random() % howbig;
    3e0e:	0e 94 8c 2b 	call	0x5718	; 0x5718 <random>
    3e12:	a8 e0       	ldi	r26, 0x08	; 8
    3e14:	8a 2e       	mov	r8, r26
    3e16:	91 2c       	mov	r9, r1
    3e18:	a1 2c       	mov	r10, r1
    3e1a:	b1 2c       	mov	r11, r1
    3e1c:	a5 01       	movw	r20, r10
    3e1e:	94 01       	movw	r18, r8
    3e20:	0e 94 41 2c 	call	0x5882	; 0x5882 <__divmodsi4>
    pG->entryInt = random(8);
    3e24:	86 2f       	mov	r24, r22
    3e26:	82 95       	swap	r24
    3e28:	88 0f       	add	r24, r24
    3e2a:	80 7e       	andi	r24, 0xE0	; 224
    3e2c:	ef 85       	ldd	r30, Y+15	; 0x0f
    3e2e:	f8 89       	ldd	r31, Y+16	; 0x10
    3e30:	65 81       	ldd	r22, Z+5	; 0x05
    3e32:	6f 71       	andi	r22, 0x1F	; 31
    3e34:	68 2b       	or	r22, r24
    3e36:	65 83       	std	Z+5, r22	; 0x05
    3e38:	0e 94 8c 2b 	call	0x5718	; 0x5718 <random>
    3e3c:	25 e0       	ldi	r18, 0x05	; 5
    3e3e:	30 e0       	ldi	r19, 0x00	; 0
    3e40:	40 e0       	ldi	r20, 0x00	; 0
    3e42:	50 e0       	ldi	r21, 0x00	; 0
    3e44:	0e 94 41 2c 	call	0x5882	; 0x5882 <__divmodsi4>

    /*  Bullets design  */
    pG->type = random(ENEMY_TYPE_MAX);
    3e48:	86 2f       	mov	r24, r22
    3e4a:	8f 70       	andi	r24, 0x0F	; 15
    3e4c:	af 85       	ldd	r26, Y+15	; 0x0f
    3e4e:	b8 89       	ldd	r27, Y+16	; 0x10
    3e50:	6c 91       	ld	r22, X
    3e52:	60 7f       	andi	r22, 0xF0	; 240
    3e54:	68 2b       	or	r22, r24
    3e56:	6c 93       	st	X, r22
    3e58:	0e 94 8c 2b 	call	0x5718	; 0x5718 <random>
    3e5c:	29 e7       	ldi	r18, 0x79	; 121
    3e5e:	30 e0       	ldi	r19, 0x00	; 0
    3e60:	40 e0       	ldi	r20, 0x00	; 0
    3e62:	50 e0       	ldi	r21, 0x00	; 0
    3e64:	0e 94 41 2c 	call	0x5882	; 0x5882 <__divmodsi4>
{
  if (howsmall >= howbig) {
    return howsmall;
  }
  long diff = howbig - howsmall;
  return random(diff) + howsmall;
    3e68:	64 5c       	subi	r22, 0xC4	; 196
    3e6a:	7f 4f       	sbci	r23, 0xFF	; 255
    3e6c:	8f 4f       	sbci	r24, 0xFF	; 255
    3e6e:	9f 4f       	sbci	r25, 0xFF	; 255
    pG->fireInt = random(FPS, FPS * 3 + 1);
    3e70:	ef 85       	ldd	r30, Y+15	; 0x0f
    3e72:	f8 89       	ldd	r31, Y+16	; 0x10
    3e74:	66 83       	std	Z+6, r22	; 0x06
long random(long howbig)
{
  if (howbig == 0) {
    return 0;
  }
  return random() % howbig;
    3e76:	0e 94 8c 2b 	call	0x5718	; 0x5718 <random>
    3e7a:	a5 01       	movw	r20, r10
    3e7c:	94 01       	movw	r18, r8
    3e7e:	0e 94 41 2c 	call	0x5882	; 0x5882 <__divmodsi4>
    pG->fireCycle = random(8);
    3e82:	86 2f       	mov	r24, r22
    3e84:	87 70       	andi	r24, 0x07	; 7
    3e86:	af 85       	ldd	r26, Y+15	; 0x0f
    3e88:	b8 89       	ldd	r27, Y+16	; 0x10
    3e8a:	15 96       	adiw	r26, 0x05	; 5
    3e8c:	6c 91       	ld	r22, X
    3e8e:	15 97       	sbiw	r26, 0x05	; 5
    3e90:	68 7f       	andi	r22, 0xF8	; 248
    3e92:	68 2b       	or	r22, r24
    3e94:	15 96       	adiw	r26, 0x05	; 5
    3e96:	6c 93       	st	X, r22
    3e98:	0e 94 8c 2b 	call	0x5718	; 0x5718 <random>
    3e9c:	24 e0       	ldi	r18, 0x04	; 4
    3e9e:	30 e0       	ldi	r19, 0x00	; 0
    3ea0:	40 e0       	ldi	r20, 0x00	; 0
    3ea2:	50 e0       	ldi	r21, 0x00	; 0
    3ea4:	0e 94 41 2c 	call	0x5882	; 0x5882 <__divmodsi4>
    pG->fireExSpd = random(4);
    3ea8:	63 70       	andi	r22, 0x03	; 3
    3eaa:	86 2f       	mov	r24, r22
    3eac:	88 0f       	add	r24, r24
    3eae:	88 0f       	add	r24, r24
    3eb0:	88 0f       	add	r24, r24
    3eb2:	ef 85       	ldd	r30, Y+15	; 0x0f
    3eb4:	f8 89       	ldd	r31, Y+16	; 0x10
    3eb6:	65 81       	ldd	r22, Z+5	; 0x05
    3eb8:	67 7e       	andi	r22, 0xE7	; 231
    3eba:	68 2b       	or	r22, r24
    3ebc:	65 83       	std	Z+5, r22	; 0x05
    uint8_t fires = gameRank * pG->fireInt / FPS / 2;
    3ebe:	80 91 0a 03 	lds	r24, 0x030A	; 0x80030a <_ZL8gameRank>
    3ec2:	96 81       	ldd	r25, Z+6	; 0x06
    3ec4:	89 9f       	mul	r24, r25
    3ec6:	c0 01       	movw	r24, r0
    3ec8:	11 24       	eor	r1, r1
    3eca:	68 e7       	ldi	r22, 0x78	; 120
    3ecc:	70 e0       	ldi	r23, 0x00	; 0
    3ece:	0e 94 d4 2f 	call	0x5fa8	; 0x5fa8 <__divmodhi4>
    3ed2:	16 2f       	mov	r17, r22
    if (fires == 0) fires = 1;
    3ed4:	61 11       	cpse	r22, r1
    3ed6:	01 c0       	rjmp	.+2      	; 0x3eda <_ZL13updateEnemiesv+0x24e>
    3ed8:	11 e0       	ldi	r17, 0x01	; 1
    3eda:	0e 94 8c 2b 	call	0x5718	; 0x5718 <random>
    3ede:	24 e0       	ldi	r18, 0x04	; 4
    3ee0:	30 e0       	ldi	r19, 0x00	; 0
    3ee2:	40 e0       	ldi	r20, 0x00	; 0
    3ee4:	50 e0       	ldi	r21, 0x00	; 0
    3ee6:	0e 94 41 2c 	call	0x5882	; 0x5882 <__divmodsi4>
    uint8_t fireDiv = (random(4)) ? 1 : random(1, sqrt(fires) + 1);
    3eea:	31 e0       	ldi	r19, 0x01	; 1
    3eec:	67 2b       	or	r22, r23
    3eee:	68 2b       	or	r22, r24
    3ef0:	69 2b       	or	r22, r25
    3ef2:	61 f5       	brne	.+88     	; 0x3f4c <_ZL13updateEnemiesv+0x2c0>
    3ef4:	61 2f       	mov	r22, r17
    3ef6:	70 e0       	ldi	r23, 0x00	; 0
    3ef8:	90 e0       	ldi	r25, 0x00	; 0
    3efa:	80 e0       	ldi	r24, 0x00	; 0
    3efc:	0e 94 2b 2e 	call	0x5c56	; 0x5c56 <__floatunsisf>
    3f00:	0e 94 5b 2f 	call	0x5eb6	; 0x5eb6 <sqrt>
    3f04:	20 e0       	ldi	r18, 0x00	; 0
    3f06:	30 e0       	ldi	r19, 0x00	; 0
    3f08:	40 e8       	ldi	r20, 0x80	; 128
    3f0a:	5f e3       	ldi	r21, 0x3F	; 63
    3f0c:	0e 94 a5 2c 	call	0x594a	; 0x594a <__addsf3>
    3f10:	0e 94 f5 2d 	call	0x5bea	; 0x5bea <__fixsfsi>
    3f14:	4b 01       	movw	r8, r22
    3f16:	5c 01       	movw	r10, r24
}

long random(long howsmall, long howbig)
{
  if (howsmall >= howbig) {
    return howsmall;
    3f18:	81 e0       	ldi	r24, 0x01	; 1
    3f1a:	90 e0       	ldi	r25, 0x00	; 0
    3f1c:	a0 e0       	ldi	r26, 0x00	; 0
    3f1e:	b0 e0       	ldi	r27, 0x00	; 0
  return random() % howbig;
}

long random(long howsmall, long howbig)
{
  if (howsmall >= howbig) {
    3f20:	f2 e0       	ldi	r31, 0x02	; 2
    3f22:	8f 16       	cp	r8, r31
    3f24:	91 04       	cpc	r9, r1
    3f26:	a1 04       	cpc	r10, r1
    3f28:	b1 04       	cpc	r11, r1
    3f2a:	7c f0       	brlt	.+30     	; 0x3f4a <_ZL13updateEnemiesv+0x2be>
long random(long howbig)
{
  if (howbig == 0) {
    return 0;
  }
  return random() % howbig;
    3f2c:	0e 94 8c 2b 	call	0x5718	; 0x5718 <random>
long random(long howsmall, long howbig)
{
  if (howsmall >= howbig) {
    return howsmall;
  }
  long diff = howbig - howsmall;
    3f30:	a5 01       	movw	r20, r10
    3f32:	94 01       	movw	r18, r8
    3f34:	21 50       	subi	r18, 0x01	; 1
    3f36:	31 09       	sbc	r19, r1
    3f38:	41 09       	sbc	r20, r1
    3f3a:	51 09       	sbc	r21, r1
long random(long howbig)
{
  if (howbig == 0) {
    return 0;
  }
  return random() % howbig;
    3f3c:	0e 94 41 2c 	call	0x5882	; 0x5882 <__divmodsi4>
{
  if (howsmall >= howbig) {
    return howsmall;
  }
  long diff = howbig - howsmall;
  return random(diff) + howsmall;
    3f40:	dc 01       	movw	r26, r24
    3f42:	cb 01       	movw	r24, r22
    3f44:	01 96       	adiw	r24, 0x01	; 1
    3f46:	a1 1d       	adc	r26, r1
    3f48:	b1 1d       	adc	r27, r1
    3f4a:	38 2f       	mov	r19, r24
    uint8_t fireThick = fires / fireDiv;
    3f4c:	81 2f       	mov	r24, r17
    3f4e:	63 2f       	mov	r22, r19
    3f50:	0e 94 b4 2f 	call	0x5f68	; 0x5f68 <__udivmodqi4>
    3f54:	18 2f       	mov	r17, r24
    3f56:	8f 70       	andi	r24, 0x0F	; 15
    3f58:	6f 70       	andi	r22, 0x0F	; 15
    if (pG->type <= ENEMY_TYPE_FUNWISE) {
    3f5a:	97 e0       	ldi	r25, 0x07	; 7
    3f5c:	9e 9d       	mul	r25, r14
    3f5e:	f0 01       	movw	r30, r0
    3f60:	9f 9d       	mul	r25, r15
    3f62:	f0 0d       	add	r31, r0
    3f64:	11 24       	eor	r1, r1
    3f66:	e2 55       	subi	r30, 0x52	; 82
    3f68:	fe 4f       	sbci	r31, 0xFE	; 254
    3f6a:	90 81       	ld	r25, Z
    3f6c:	9f 70       	andi	r25, 0x0F	; 15
    3f6e:	92 30       	cpi	r25, 0x02	; 2
    3f70:	08 f0       	brcs	.+2      	; 0x3f74 <_ZL13updateEnemiesv+0x2e8>
    3f72:	f2 c1       	rjmp	.+996    	; 0x4358 <_ZL13updateEnemiesv+0x6cc>
        pG->fireTimes = fireDiv;
        pG->fireNum = fireThick;
    3f74:	82 95       	swap	r24
    3f76:	80 7f       	andi	r24, 0xF0	; 240
    } else {
        pG->fireTimes = fireThick;
        pG->fireNum = fireDiv;
    3f78:	68 2b       	or	r22, r24
    3f7a:	64 83       	std	Z+4, r22	; 0x04
    }
    uint16_t fireCycleMax = pG->fireInt / pG->fireTimes - BULLET_CYC_BASE;
    3f7c:	87 e0       	ldi	r24, 0x07	; 7
    3f7e:	8e 9d       	mul	r24, r14
    3f80:	90 01       	movw	r18, r0
    3f82:	8f 9d       	mul	r24, r15
    3f84:	30 0d       	add	r19, r0
    3f86:	11 24       	eor	r1, r1
    3f88:	f9 01       	movw	r30, r18
    3f8a:	e2 55       	subi	r30, 0x52	; 82
    3f8c:	fe 4f       	sbci	r31, 0xFE	; 254
    3f8e:	86 81       	ldd	r24, Z+6	; 0x06
    3f90:	90 e0       	ldi	r25, 0x00	; 0
    3f92:	d9 01       	movw	r26, r18
    3f94:	ae 54       	subi	r26, 0x4E	; 78
    3f96:	be 4f       	sbci	r27, 0xFE	; 254
    3f98:	6c 91       	ld	r22, X
    3f9a:	6f 70       	andi	r22, 0x0F	; 15
    3f9c:	70 e0       	ldi	r23, 0x00	; 0
    3f9e:	0e 94 d4 2f 	call	0x5fa8	; 0x5fa8 <__divmodhi4>
    3fa2:	63 50       	subi	r22, 0x03	; 3
    3fa4:	71 09       	sbc	r23, r1
    if (pG->fireCycle > fireCycleMax) pG->fireCycle = fireCycleMax;
    3fa6:	2d 54       	subi	r18, 0x4D	; 77
    3fa8:	3e 4f       	sbci	r19, 0xFE	; 254
    3faa:	d9 01       	movw	r26, r18
    3fac:	8c 91       	ld	r24, X
    3fae:	87 70       	andi	r24, 0x07	; 7
    3fb0:	86 17       	cp	r24, r22
    3fb2:	17 06       	cpc	r1, r23
    3fb4:	31 f0       	breq	.+12     	; 0x3fc2 <_ZL13updateEnemiesv+0x336>
    3fb6:	28 f0       	brcs	.+10     	; 0x3fc2 <_ZL13updateEnemiesv+0x336>
    3fb8:	67 70       	andi	r22, 0x07	; 7
    3fba:	85 81       	ldd	r24, Z+5	; 0x05
    3fbc:	88 7f       	andi	r24, 0xF8	; 248
    3fbe:	68 2b       	or	r22, r24
    3fc0:	65 83       	std	Z+5, r22	; 0x05
    if ((pG->type == ENEMY_TYPE_FUNWISE || pG->type == ENEMY_TYPE_MOWING) && fireThick > 1) {
    3fc2:	87 e0       	ldi	r24, 0x07	; 7
    3fc4:	8e 9d       	mul	r24, r14
    3fc6:	f0 01       	movw	r30, r0
    3fc8:	8f 9d       	mul	r24, r15
    3fca:	f0 0d       	add	r31, r0
    3fcc:	11 24       	eor	r1, r1
    3fce:	e2 55       	subi	r30, 0x52	; 82
    3fd0:	fe 4f       	sbci	r31, 0xFE	; 254
    3fd2:	80 81       	ld	r24, Z
    3fd4:	8f 70       	andi	r24, 0x0F	; 15
    3fd6:	81 30       	cpi	r24, 0x01	; 1
    3fd8:	19 f0       	breq	.+6      	; 0x3fe0 <_ZL13updateEnemiesv+0x354>
    3fda:	84 30       	cpi	r24, 0x04	; 4
    3fdc:	09 f0       	breq	.+2      	; 0x3fe0 <_ZL13updateEnemiesv+0x354>
    3fde:	c1 c1       	rjmp	.+898    	; 0x4362 <_ZL13updateEnemiesv+0x6d6>
    3fe0:	12 30       	cpi	r17, 0x02	; 2
    3fe2:	08 f4       	brcc	.+2      	; 0x3fe6 <_ZL13updateEnemiesv+0x35a>
    3fe4:	be c1       	rjmp	.+892    	; 0x4362 <_ZL13updateEnemiesv+0x6d6>
long random(long howbig)
{
  if (howbig == 0) {
    return 0;
  }
  return random() % howbig;
    3fe6:	0e 94 8c 2b 	call	0x5718	; 0x5718 <random>
    3fea:	20 e2       	ldi	r18, 0x20	; 32
    3fec:	30 e0       	ldi	r19, 0x00	; 0
    3fee:	40 e0       	ldi	r20, 0x00	; 0
    3ff0:	50 e0       	ldi	r21, 0x00	; 0
    3ff2:	0e 94 41 2c 	call	0x5882	; 0x5882 <__divmodsi4>
{
  if (howsmall >= howbig) {
    return howsmall;
  }
  long diff = howbig - howsmall;
  return random(diff) + howsmall;
    3ff6:	60 5e       	subi	r22, 0xE0	; 224
    3ff8:	7f 4f       	sbci	r23, 0xFF	; 255
    3ffa:	8f 4f       	sbci	r24, 0xFF	; 255
    3ffc:	9f 4f       	sbci	r25, 0xFF	; 255
        uint8_t mowGap = random(32, 64) / (fireThick - 1);
    3ffe:	e1 2f       	mov	r30, r17
    4000:	e1 50       	subi	r30, 0x01	; 1
    4002:	ff 0b       	sbc	r31, r31
    4004:	9f 01       	movw	r18, r30
    4006:	03 2e       	mov	r0, r19
    4008:	00 0c       	add	r0, r0
    400a:	44 0b       	sbc	r20, r20
    400c:	55 0b       	sbc	r21, r21
    400e:	0e 94 41 2c 	call	0x5882	; 0x5882 <__divmodsi4>
        pG->fireGap = constrain(mowGap, BULLET_GAP_BASE, 23) - BULLET_GAP_BASE;
    4012:	28 30       	cpi	r18, 0x08	; 8
    4014:	08 f4       	brcc	.+2      	; 0x4018 <_ZL13updateEnemiesv+0x38c>
    4016:	a3 c1       	rjmp	.+838    	; 0x435e <_ZL13updateEnemiesv+0x6d2>
    4018:	28 31       	cpi	r18, 0x18	; 24
    401a:	08 f0       	brcs	.+2      	; 0x401e <_ZL13updateEnemiesv+0x392>
    401c:	27 e1       	ldi	r18, 0x17	; 23
    401e:	28 50       	subi	r18, 0x08	; 8
    4020:	2f 70       	andi	r18, 0x0F	; 15
    4022:	87 e0       	ldi	r24, 0x07	; 7
    4024:	8e 9d       	mul	r24, r14
    4026:	f0 01       	movw	r30, r0
    4028:	8f 9d       	mul	r24, r15
    402a:	f0 0d       	add	r31, r0
    402c:	11 24       	eor	r1, r1
    402e:	e2 55       	subi	r30, 0x52	; 82
    4030:	fe 4f       	sbci	r31, 0xFE	; 254
    4032:	22 95       	swap	r18
    4034:	20 7f       	andi	r18, 0xF0	; 240
    4036:	83 81       	ldd	r24, Z+3	; 0x03
    4038:	8f 70       	andi	r24, 0x0F	; 15
    403a:	28 2b       	or	r18, r24
    403c:	23 83       	std	Z+3, r18	; 0x03
    } else {
        pG->fireGap = random(1, 5);
    }

    /*  Position of each enemy  */
    ENEMY_T *pE = &enemies[idx * ENEMY_UNITY];
    403e:	b5 e0       	ldi	r27, 0x05	; 5
    4040:	0b 9f       	mul	r16, r27
    4042:	80 01       	movw	r16, r0
    4044:	11 24       	eor	r1, r1
    4046:	00 0f       	add	r16, r16
    4048:	11 1f       	adc	r17, r17
    404a:	00 0f       	add	r16, r16
    404c:	11 1f       	adc	r17, r17
    404e:	0e 58       	subi	r16, 0x8E	; 142
    4050:	1e 4f       	sbci	r17, 0xFE	; 254
    int8_t x = playerX / PLAYER_SCALE, y = playerY / PLAYER_SCALE;
    4052:	90 91 06 03 	lds	r25, 0x0306	; 0x800306 <_ZL7playerX>
    4056:	96 95       	lsr	r25
    4058:	96 95       	lsr	r25
    405a:	80 91 05 03 	lds	r24, 0x0305	; 0x800305 <_ZL7playerY>
    405e:	86 95       	lsr	r24
    4060:	86 95       	lsr	r24
    4062:	28 01       	movw	r4, r16
    4064:	e4 e1       	ldi	r30, 0x14	; 20
    4066:	4e 0e       	add	r4, r30
    4068:	51 1c       	adc	r5, r1
    for (int i = 0; i < ENEMY_UNITY; i++, pE++) {
        pE->bx = random(pG->xRad / 2, WIDTH / 2 - 3 - pG->xRad);
    406a:	47 e0       	ldi	r20, 0x07	; 7
    406c:	4e 9d       	mul	r20, r14
    406e:	90 01       	movw	r18, r0
    4070:	4f 9d       	mul	r20, r15
    4072:	30 0d       	add	r19, r0
    4074:	11 24       	eor	r1, r1
    4076:	a9 01       	movw	r20, r18
    4078:	42 55       	subi	r20, 0x52	; 82
    407a:	5e 4f       	sbci	r21, 0xFE	; 254
    407c:	5a 83       	std	Y+2, r21	; 0x02
    407e:	49 83       	std	Y+1, r20	; 0x01
    4080:	4d e3       	ldi	r20, 0x3D	; 61
    4082:	24 2e       	mov	r2, r20
    4084:	31 2c       	mov	r3, r1
        pE->by = random(pG->yRad + 3, HEIGHT - 3 - pG->yRad);
    4086:	d9 01       	movw	r26, r18
    4088:	a1 55       	subi	r26, 0x51	; 81
    408a:	be 4f       	sbci	r27, 0xFE	; 254
    408c:	bc 83       	std	Y+4, r27	; 0x04
    408e:	ab 83       	std	Y+3, r26	; 0x03
        pE->life = ENEMY_LIFE_INIT;
        pE->framesGap = random(256);
        Point enemyPoint = getEnemyCoords(pG, pE, 0);
        pE->fireDeg = myAtan2f(y - enemyPoint.y, x - enemyPoint.x);
    4090:	e9 2f       	mov	r30, r25
    4092:	f0 e0       	ldi	r31, 0x00	; 0
    4094:	fe 83       	std	Y+6, r31	; 0x06
    4096:	ed 83       	std	Y+5, r30	; 0x05
    4098:	28 2f       	mov	r18, r24
    409a:	30 e0       	ldi	r19, 0x00	; 0
    409c:	38 87       	std	Y+8, r19	; 0x08
    409e:	2f 83       	std	Y+7, r18	; 0x07

    /*  Position of each enemy  */
    ENEMY_T *pE = &enemies[idx * ENEMY_UNITY];
    int8_t x = playerX / PLAYER_SCALE, y = playerY / PLAYER_SCALE;
    for (int i = 0; i < ENEMY_UNITY; i++, pE++) {
        pE->bx = random(pG->xRad / 2, WIDTH / 2 - 3 - pG->xRad);
    40a0:	a9 81       	ldd	r26, Y+1	; 0x01
    40a2:	ba 81       	ldd	r27, Y+2	; 0x02
    40a4:	cc 90       	ld	r12, X
    40a6:	8c 2d       	mov	r24, r12
    40a8:	82 95       	swap	r24
    40aa:	8f 70       	andi	r24, 0x0F	; 15
    40ac:	11 96       	adiw	r26, 0x01	; 1
    40ae:	cc 90       	ld	r12, X
    40b0:	bc 2d       	mov	r27, r12
    40b2:	b3 70       	andi	r27, 0x03	; 3
    40b4:	cb 2e       	mov	r12, r27
    40b6:	c2 94       	swap	r12
    40b8:	90 ef       	ldi	r25, 0xF0	; 240
    40ba:	c9 22       	and	r12, r25
    40bc:	c8 2a       	or	r12, r24
    40be:	d1 2c       	mov	r13, r1
    40c0:	41 01       	movw	r8, r2
    40c2:	8c 18       	sub	r8, r12
    40c4:	9d 08       	sbc	r9, r13
    40c6:	09 2c       	mov	r0, r9
    40c8:	00 0c       	add	r0, r0
    40ca:	aa 08       	sbc	r10, r10
    40cc:	bb 08       	sbc	r11, r11
    40ce:	d5 94       	asr	r13
    40d0:	c7 94       	ror	r12
    40d2:	0d 2c       	mov	r0, r13
    40d4:	00 0c       	add	r0, r0
    40d6:	ee 08       	sbc	r14, r14
    40d8:	ff 08       	sbc	r15, r15
  return random() % howbig;
}

long random(long howsmall, long howbig)
{
  if (howsmall >= howbig) {
    40da:	c8 14       	cp	r12, r8
    40dc:	d9 04       	cpc	r13, r9
    40de:	ea 04       	cpc	r14, r10
    40e0:	fb 04       	cpc	r15, r11
    40e2:	8c f4       	brge	.+34     	; 0x4106 <_ZL13updateEnemiesv+0x47a>
    return howsmall;
  }
  long diff = howbig - howsmall;
    40e4:	8c 18       	sub	r8, r12
    40e6:	9d 08       	sbc	r9, r13
    40e8:	ae 08       	sbc	r10, r14
    40ea:	bf 08       	sbc	r11, r15
  }
}

long random(long howbig)
{
  if (howbig == 0) {
    40ec:	41 f0       	breq	.+16     	; 0x40fe <_ZL13updateEnemiesv+0x472>
    return 0;
  }
  return random() % howbig;
    40ee:	0e 94 8c 2b 	call	0x5718	; 0x5718 <random>
    40f2:	a5 01       	movw	r20, r10
    40f4:	94 01       	movw	r18, r8
    40f6:	0e 94 41 2c 	call	0x5882	; 0x5882 <__divmodsi4>
    40fa:	4b 01       	movw	r8, r22
    40fc:	5c 01       	movw	r10, r24
{
  if (howsmall >= howbig) {
    return howsmall;
  }
  long diff = howbig - howsmall;
  return random(diff) + howsmall;
    40fe:	c8 0c       	add	r12, r8
    4100:	d9 1c       	adc	r13, r9
    4102:	ea 1c       	adc	r14, r10
    4104:	fb 1c       	adc	r15, r11
    4106:	8c 2d       	mov	r24, r12
    4108:	8f 73       	andi	r24, 0x3F	; 63
    410a:	f8 01       	movw	r30, r16
    410c:	c0 80       	ld	r12, Z
    410e:	fc 2d       	mov	r31, r12
    4110:	f0 7c       	andi	r31, 0xC0	; 192
    4112:	cf 2e       	mov	r12, r31
    4114:	c8 2a       	or	r12, r24
    4116:	d8 01       	movw	r26, r16
    4118:	cc 92       	st	X, r12
        pE->by = random(pG->yRad + 3, HEIGHT - 3 - pG->yRad);
    411a:	eb 81       	ldd	r30, Y+3	; 0x03
    411c:	fc 81       	ldd	r31, Y+4	; 0x04
    411e:	80 81       	ld	r24, Z
    4120:	86 95       	lsr	r24
    4122:	86 95       	lsr	r24
    4124:	8f 71       	andi	r24, 0x1F	; 31
    4126:	c8 2e       	mov	r12, r24
    4128:	d1 2c       	mov	r13, r1
    412a:	41 01       	movw	r8, r2
    412c:	8c 18       	sub	r8, r12
    412e:	9d 08       	sbc	r9, r13
    4130:	09 2c       	mov	r0, r9
    4132:	00 0c       	add	r0, r0
    4134:	aa 08       	sbc	r10, r10
    4136:	bb 08       	sbc	r11, r11
    4138:	f3 e0       	ldi	r31, 0x03	; 3
    413a:	cf 0e       	add	r12, r31
    413c:	d1 1c       	adc	r13, r1
    413e:	0d 2c       	mov	r0, r13
    4140:	00 0c       	add	r0, r0
    4142:	ee 08       	sbc	r14, r14
    4144:	ff 08       	sbc	r15, r15
  return random() % howbig;
}

long random(long howsmall, long howbig)
{
  if (howsmall >= howbig) {
    4146:	c8 14       	cp	r12, r8
    4148:	d9 04       	cpc	r13, r9
    414a:	ea 04       	cpc	r14, r10
    414c:	fb 04       	cpc	r15, r11
    414e:	8c f4       	brge	.+34     	; 0x4172 <_ZL13updateEnemiesv+0x4e6>
    return howsmall;
  }
  long diff = howbig - howsmall;
    4150:	8c 18       	sub	r8, r12
    4152:	9d 08       	sbc	r9, r13
    4154:	ae 08       	sbc	r10, r14
    4156:	bf 08       	sbc	r11, r15
  }
}

long random(long howbig)
{
  if (howbig == 0) {
    4158:	41 f0       	breq	.+16     	; 0x416a <_ZL13updateEnemiesv+0x4de>
    return 0;
  }
  return random() % howbig;
    415a:	0e 94 8c 2b 	call	0x5718	; 0x5718 <random>
    415e:	a5 01       	movw	r20, r10
    4160:	94 01       	movw	r18, r8
    4162:	0e 94 41 2c 	call	0x5882	; 0x5882 <__divmodsi4>
    4166:	4b 01       	movw	r8, r22
    4168:	5c 01       	movw	r10, r24
{
  if (howsmall >= howbig) {
    return howsmall;
  }
  long diff = howbig - howsmall;
  return random(diff) + howsmall;
    416a:	c8 0c       	add	r12, r8
    416c:	d9 1c       	adc	r13, r9
    416e:	ea 1c       	adc	r14, r10
    4170:	fb 1c       	adc	r15, r11
    4172:	9c 2d       	mov	r25, r12
    4174:	92 95       	swap	r25
    4176:	99 0f       	add	r25, r25
    4178:	99 0f       	add	r25, r25
    417a:	90 7c       	andi	r25, 0xC0	; 192
    417c:	d8 01       	movw	r26, r16
    417e:	8c 91       	ld	r24, X
    4180:	8f 73       	andi	r24, 0x3F	; 63
    4182:	89 2b       	or	r24, r25
    4184:	8c 93       	st	X, r24
    4186:	82 e0       	ldi	r24, 0x02	; 2
    4188:	f6 94       	lsr	r15
    418a:	e7 94       	ror	r14
    418c:	d7 94       	ror	r13
    418e:	c7 94       	ror	r12
    4190:	8a 95       	dec	r24
    4192:	d1 f7       	brne	.-12     	; 0x4188 <_ZL13updateEnemiesv+0x4fc>
        pE->life = ENEMY_LIFE_INIT;
    4194:	bc 2d       	mov	r27, r12
    4196:	b0 6f       	ori	r27, 0xF0	; 240
    4198:	f8 01       	movw	r30, r16
    419a:	b1 83       	std	Z+1, r27	; 0x01
long random(long howbig)
{
  if (howbig == 0) {
    return 0;
  }
  return random() % howbig;
    419c:	0e 94 8c 2b 	call	0x5718	; 0x5718 <random>
    41a0:	20 e0       	ldi	r18, 0x00	; 0
    41a2:	31 e0       	ldi	r19, 0x01	; 1
    41a4:	40 e0       	ldi	r20, 0x00	; 0
    41a6:	50 e0       	ldi	r21, 0x00	; 0
    41a8:	0e 94 41 2c 	call	0x5882	; 0x5882 <__divmodsi4>
        pE->framesGap = random(256);
    41ac:	d8 01       	movw	r26, r16
    41ae:	12 96       	adiw	r26, 0x02	; 2
    41b0:	6c 93       	st	X, r22
        Point enemyPoint = getEnemyCoords(pG, pE, 0);
    41b2:	50 e0       	ldi	r21, 0x00	; 0
    41b4:	40 e0       	ldi	r20, 0x00	; 0
    41b6:	b8 01       	movw	r22, r16
    41b8:	8f 85       	ldd	r24, Y+15	; 0x0f
    41ba:	98 89       	ldd	r25, Y+16	; 0x10
    41bc:	0e 94 a1 0c 	call	0x1942	; 0x1942 <_ZL14getEnemyCoordsP7GROUP_TP7ENEMY_Tj>
    41c0:	6b 01       	movw	r12, r22
    41c2:	7c 01       	movw	r14, r24
        pE->fireDeg = myAtan2f(y - enemyPoint.y, x - enemyPoint.x);
    41c4:	6d 81       	ldd	r22, Y+5	; 0x05
    41c6:	7e 81       	ldd	r23, Y+6	; 0x06
    41c8:	6c 19       	sub	r22, r12
    41ca:	7d 09       	sbc	r23, r13
    41cc:	07 2e       	mov	r0, r23
    41ce:	00 0c       	add	r0, r0
    41d0:	88 0b       	sbc	r24, r24
    41d2:	99 0b       	sbc	r25, r25
    41d4:	0e 94 2d 2e 	call	0x5c5a	; 0x5c5a <__floatsisf>
    41d8:	4b 01       	movw	r8, r22
    41da:	5c 01       	movw	r10, r24
    41dc:	6f 81       	ldd	r22, Y+7	; 0x07
    41de:	78 85       	ldd	r23, Y+8	; 0x08
    41e0:	6e 19       	sub	r22, r14
    41e2:	7f 09       	sbc	r23, r15
    41e4:	07 2e       	mov	r0, r23
    41e6:	00 0c       	add	r0, r0
    41e8:	88 0b       	sbc	r24, r24
    41ea:	99 0b       	sbc	r25, r25
    41ec:	0e 94 2d 2e 	call	0x5c5a	; 0x5c5a <__floatsisf>
    41f0:	a5 01       	movw	r20, r10
    41f2:	94 01       	movw	r18, r8
    41f4:	0e 94 24 2d 	call	0x5a48	; 0x5a48 <atan2>
    41f8:	20 e0       	ldi	r18, 0x00	; 0
    41fa:	30 e0       	ldi	r19, 0x00	; 0
    41fc:	40 e0       	ldi	r20, 0x00	; 0
    41fe:	53 e4       	ldi	r21, 0x43	; 67
    4200:	0e 94 e8 2e 	call	0x5dd0	; 0x5dd0 <__mulsf3>
    4204:	2b ed       	ldi	r18, 0xDB	; 219
    4206:	3f e0       	ldi	r19, 0x0F	; 15
    4208:	49 e4       	ldi	r20, 0x49	; 73
    420a:	50 e4       	ldi	r21, 0x40	; 64
    420c:	0e 94 83 2d 	call	0x5b06	; 0x5b06 <__divsf3>
    4210:	20 e0       	ldi	r18, 0x00	; 0
    4212:	30 e0       	ldi	r19, 0x00	; 0
    4214:	40 e0       	ldi	r20, 0x00	; 0
    4216:	5f e3       	ldi	r21, 0x3F	; 63
    4218:	0e 94 a5 2c 	call	0x594a	; 0x594a <__addsf3>
    421c:	0e 94 f5 2d 	call	0x5bea	; 0x5bea <__fixsfsi>
    4220:	f8 01       	movw	r30, r16
    4222:	63 83       	std	Z+3, r22	; 0x03
    }

    /*  Position of each enemy  */
    ENEMY_T *pE = &enemies[idx * ENEMY_UNITY];
    int8_t x = playerX / PLAYER_SCALE, y = playerY / PLAYER_SCALE;
    for (int i = 0; i < ENEMY_UNITY; i++, pE++) {
    4224:	0c 5f       	subi	r16, 0xFC	; 252
    4226:	1f 4f       	sbci	r17, 0xFF	; 255
    4228:	04 15       	cp	r16, r4
    422a:	15 05       	cpc	r17, r5
    422c:	09 f0       	breq	.+2      	; 0x4230 <_ZL13updateEnemiesv+0x5a4>
    422e:	38 cf       	rjmp	.-400    	; 0x40a0 <_ZL13updateEnemiesv+0x414>
    }
    uint16_t fireCycleMax = pG->fireInt / pG->fireTimes - BULLET_CYC_BASE;
    if (pG->fireCycle > fireCycleMax) pG->fireCycle = fireCycleMax;
    if ((pG->type == ENEMY_TYPE_FUNWISE || pG->type == ENEMY_TYPE_MOWING) && fireThick > 1) {
        uint8_t mowGap = random(32, 64) / (fireThick - 1);
        pG->fireGap = constrain(mowGap, BULLET_GAP_BASE, 23) - BULLET_GAP_BASE;
    4230:	1a 82       	std	Y+2, r1	; 0x02
    4232:	19 82       	std	Y+1, r1	; 0x01
    4234:	1a 86       	std	Y+10, r1	; 0x0a
    4236:	1b 82       	std	Y+3, r1	; 0x03
    4238:	b2 e7       	ldi	r27, 0x72	; 114
    423a:	2b 2e       	mov	r2, r27
    423c:	b1 e0       	ldi	r27, 0x01	; 1
    423e:	3b 2e       	mov	r3, r27
    4240:	17 ea       	ldi	r17, 0xA7	; 167
    4242:	41 2e       	mov	r4, r17
    4244:	11 e0       	ldi	r17, 0x01	; 1
    4246:	51 2e       	mov	r5, r17
    ENEMY_T *pE = enemies;
    uint8_t enemyLives = 0;
    int16_t enemyFrames;
    bool isDamaged = false;
    for (int i = 0; i < ENEMY_MAX; i++, pE++) {
        if (i % ENEMY_UNITY == 0) {
    4248:	89 81       	ldd	r24, Y+1	; 0x01
    424a:	9a 81       	ldd	r25, Y+2	; 0x02
    424c:	65 e0       	ldi	r22, 0x05	; 5
    424e:	70 e0       	ldi	r23, 0x00	; 0
    4250:	0e 94 d4 2f 	call	0x5fa8	; 0x5fa8 <__divmodhi4>
    4254:	89 2b       	or	r24, r25
    4256:	09 f0       	breq	.+2      	; 0x425a <_ZL13updateEnemiesv+0x5ce>
    4258:	a5 c0       	rjmp	.+330    	; 0x43a4 <_ZL13updateEnemiesv+0x718>
            pG++;
    425a:	f7 e0       	ldi	r31, 0x07	; 7
    425c:	4f 0e       	add	r4, r31
    425e:	51 1c       	adc	r5, r1
            enemyFrames = (gameFrames - (pG - groups) * GROUP_INT) % (GROUP_INT * GROUP_MAX);
    4260:	92 01       	movw	r18, r4
    4262:	2e 5a       	subi	r18, 0xAE	; 174
    4264:	31 40       	sbci	r19, 0x01	; 1
    4266:	47 eb       	ldi	r20, 0xB7	; 183
    4268:	5d e6       	ldi	r21, 0x6D	; 109
    426a:	24 9f       	mul	r18, r20
    426c:	c0 01       	movw	r24, r0
    426e:	25 9f       	mul	r18, r21
    4270:	90 0d       	add	r25, r0
    4272:	34 9f       	mul	r19, r20
    4274:	90 0d       	add	r25, r0
    4276:	11 24       	eor	r1, r1
    4278:	ac e2       	ldi	r26, 0x2C	; 44
    427a:	b1 e0       	ldi	r27, 0x01	; 1
    427c:	8a 9f       	mul	r24, r26
    427e:	90 01       	movw	r18, r0
    4280:	8b 9f       	mul	r24, r27
    4282:	30 0d       	add	r19, r0
    4284:	9a 9f       	mul	r25, r26
    4286:	30 0d       	add	r19, r0
    4288:	11 24       	eor	r1, r1
    428a:	80 91 07 03 	lds	r24, 0x0307	; 0x800307 <_ZL10gameFrames>
    428e:	90 91 08 03 	lds	r25, 0x0308	; 0x800308 <_ZL10gameFrames+0x1>
    4292:	82 1b       	sub	r24, r18
    4294:	93 0b       	sbc	r25, r19
    4296:	64 e8       	ldi	r22, 0x84	; 132
    4298:	73 e0       	ldi	r23, 0x03	; 3
    429a:	0e 94 c0 2f 	call	0x5f80	; 0x5f80 <__udivmodhi4>
    429e:	3c 01       	movw	r6, r24
        } else {
            enemyFrames -= (pG->entryInt + 1) * 4;
        }

        /*  Is it active?  */
        if (pE->life == 0) continue;
    42a0:	d1 01       	movw	r26, r2
    42a2:	11 96       	adiw	r26, 0x01	; 1
    42a4:	8c 91       	ld	r24, X
    42a6:	98 2f       	mov	r25, r24
    42a8:	90 7f       	andi	r25, 0xF0	; 240
    42aa:	d1 f0       	breq	.+52     	; 0x42e0 <_ZL13updateEnemiesv+0x654>
        if (enemyFrames > ENEMY_ACTIVE) pE->life = 0;
    42ac:	b1 ed       	ldi	r27, 0xD1	; 209
    42ae:	6b 16       	cp	r6, r27
    42b0:	b2 e0       	ldi	r27, 0x02	; 2
    42b2:	7b 06       	cpc	r7, r27
    42b4:	1c f0       	brlt	.+6      	; 0x42bc <_ZL13updateEnemiesv+0x630>
    42b6:	8f 70       	andi	r24, 0x0F	; 15
    42b8:	f1 01       	movw	r30, r2
    42ba:	81 83       	std	Z+1, r24	; 0x01
        if (state != STATE_PLAYING) continue;
    42bc:	80 91 09 03 	lds	r24, 0x0309	; 0x800309 <_ZL5state.lto_priv.52>
    42c0:	81 30       	cpi	r24, 0x01	; 1
    42c2:	71 f4       	brne	.+28     	; 0x42e0 <_ZL13updateEnemiesv+0x654>
        if (enemyFrames < ENEMY_FADE || enemyFrames > ENEMY_ACTIVE - ENEMY_FADE) {
    42c4:	c3 01       	movw	r24, r6
    42c6:	06 97       	sbiw	r24, 0x06	; 6
    42c8:	85 3c       	cpi	r24, 0xC5	; 197
    42ca:	92 40       	sbci	r25, 0x02	; 2
    42cc:	08 f4       	brcc	.+2      	; 0x42d0 <_ZL13updateEnemiesv+0x644>
    42ce:	78 c0       	rjmp	.+240    	; 0x43c0 <_ZL13updateEnemiesv+0x734>
            if (enemyFrames == 0) arduboy.playScore(soundEntry, SND_PRIO_ENTRY);
    42d0:	61 14       	cp	r6, r1
    42d2:	71 04       	cpc	r7, r1
    42d4:	29 f4       	brne	.+10     	; 0x42e0 <_ZL13updateEnemiesv+0x654>
    42d6:	63 e0       	ldi	r22, 0x03	; 3
    42d8:	89 ea       	ldi	r24, 0xA9	; 169
    42da:	95 e0       	ldi	r25, 0x05	; 5
    42dc:	0e 94 8c 12 	call	0x2518	; 0x2518 <_ZN10MyArduboy29playScoreEPKhha.constprop.27>
    GROUP_T *pG = groups - 1;
    ENEMY_T *pE = enemies;
    uint8_t enemyLives = 0;
    int16_t enemyFrames;
    bool isDamaged = false;
    for (int i = 0; i < ENEMY_MAX; i++, pE++) {
    42e0:	e9 81       	ldd	r30, Y+1	; 0x01
    42e2:	fa 81       	ldd	r31, Y+2	; 0x02
    42e4:	31 96       	adiw	r30, 0x01	; 1
    42e6:	fa 83       	std	Y+2, r31	; 0x02
    42e8:	e9 83       	std	Y+1, r30	; 0x01
    42ea:	f4 e0       	ldi	r31, 0x04	; 4
    42ec:	2f 0e       	add	r2, r31
    42ee:	31 1c       	adc	r3, r1
    42f0:	29 81       	ldd	r18, Y+1	; 0x01
    42f2:	3a 81       	ldd	r19, Y+2	; 0x02
    42f4:	2f 30       	cpi	r18, 0x0F	; 15
    42f6:	31 05       	cpc	r19, r1
    42f8:	09 f0       	breq	.+2      	; 0x42fc <_ZL13updateEnemiesv+0x670>
    42fa:	a6 cf       	rjmp	.-180    	; 0x4248 <_ZL13updateEnemiesv+0x5bc>
            break;
        default:
            break;
        }
    }
    if (isDamaged) arduboy.playTone(200, 10);
    42fc:	3a 85       	ldd	r19, Y+10	; 0x0a
    42fe:	33 23       	and	r19, r19
    4300:	31 f0       	breq	.+12     	; 0x430e <_ZL13updateEnemiesv+0x682>
    4302:	6a e0       	ldi	r22, 0x0A	; 10
    4304:	70 e0       	ldi	r23, 0x00	; 0
    4306:	88 ec       	ldi	r24, 0xC8	; 200
    4308:	90 e0       	ldi	r25, 0x00	; 0
    430a:	0e 94 35 0e 	call	0x1c6a	; 0x1c6a <_ZN10MyArduboy28playToneEjjhh.constprop.28>
    return (enemyLives == 0 && gameFrames >= GAME_DURATION);
    430e:	4b 81       	ldd	r20, Y+3	; 0x03
    4310:	41 11       	cpse	r20, r1
    4312:	08 c0       	rjmp	.+16     	; 0x4324 <_ZL13updateEnemiesv+0x698>
    4314:	81 e0       	ldi	r24, 0x01	; 1
    4316:	20 91 07 03 	lds	r18, 0x0307	; 0x800307 <_ZL10gameFrames>
    431a:	30 91 08 03 	lds	r19, 0x0308	; 0x800308 <_ZL10gameFrames+0x1>
    431e:	20 31       	cpi	r18, 0x10	; 16
    4320:	3e 40       	sbci	r19, 0x0E	; 14
    4322:	08 f4       	brcc	.+2      	; 0x4326 <_ZL13updateEnemiesv+0x69a>
    4324:	80 e0       	ldi	r24, 0x00	; 0
}
    4326:	60 96       	adiw	r28, 0x10	; 16
    4328:	0f b6       	in	r0, 0x3f	; 63
    432a:	f8 94       	cli
    432c:	de bf       	out	0x3e, r29	; 62
    432e:	0f be       	out	0x3f, r0	; 63
    4330:	cd bf       	out	0x3d, r28	; 61
    4332:	df 91       	pop	r29
    4334:	cf 91       	pop	r28
    4336:	1f 91       	pop	r17
    4338:	0f 91       	pop	r16
    433a:	ff 90       	pop	r15
    433c:	ef 90       	pop	r14
    433e:	df 90       	pop	r13
    4340:	cf 90       	pop	r12
    4342:	bf 90       	pop	r11
    4344:	af 90       	pop	r10
    4346:	9f 90       	pop	r9
    4348:	8f 90       	pop	r8
    434a:	7f 90       	pop	r7
    434c:	6f 90       	pop	r6
    434e:	5f 90       	pop	r5
    4350:	4f 90       	pop	r4
    4352:	3f 90       	pop	r3
    4354:	2f 90       	pop	r2
    4356:	08 95       	ret
    if (pG->type <= ENEMY_TYPE_FUNWISE) {
        pG->fireTimes = fireDiv;
        pG->fireNum = fireThick;
    } else {
        pG->fireTimes = fireThick;
        pG->fireNum = fireDiv;
    4358:	62 95       	swap	r22
    435a:	60 7f       	andi	r22, 0xF0	; 240
    435c:	0d ce       	rjmp	.-998    	; 0x3f78 <_ZL13updateEnemiesv+0x2ec>
    }
    uint16_t fireCycleMax = pG->fireInt / pG->fireTimes - BULLET_CYC_BASE;
    if (pG->fireCycle > fireCycleMax) pG->fireCycle = fireCycleMax;
    if ((pG->type == ENEMY_TYPE_FUNWISE || pG->type == ENEMY_TYPE_MOWING) && fireThick > 1) {
        uint8_t mowGap = random(32, 64) / (fireThick - 1);
        pG->fireGap = constrain(mowGap, BULLET_GAP_BASE, 23) - BULLET_GAP_BASE;
    435e:	20 e0       	ldi	r18, 0x00	; 0
    4360:	60 ce       	rjmp	.-832    	; 0x4022 <_ZL13updateEnemiesv+0x396>
    4362:	0e 94 8c 2b 	call	0x5718	; 0x5718 <random>
    } else {
        pG->fireGap = random(1, 5);
    4366:	47 e0       	ldi	r20, 0x07	; 7
    4368:	4e 9d       	mul	r20, r14
    436a:	90 01       	movw	r18, r0
    436c:	4f 9d       	mul	r20, r15
    436e:	30 0d       	add	r19, r0
    4370:	11 24       	eor	r1, r1
    4372:	a9 01       	movw	r20, r18
    4374:	42 55       	subi	r20, 0x52	; 82
    4376:	5e 4f       	sbci	r21, 0xFE	; 254
    4378:	6a 01       	movw	r12, r20
    437a:	24 e0       	ldi	r18, 0x04	; 4
    437c:	30 e0       	ldi	r19, 0x00	; 0
    437e:	40 e0       	ldi	r20, 0x00	; 0
    4380:	50 e0       	ldi	r21, 0x00	; 0
    4382:	0e 94 41 2c 	call	0x5882	; 0x5882 <__divmodsi4>
{
  if (howsmall >= howbig) {
    return howsmall;
  }
  long diff = howbig - howsmall;
  return random(diff) + howsmall;
    4386:	6f 5f       	subi	r22, 0xFF	; 255
    4388:	7f 4f       	sbci	r23, 0xFF	; 255
    438a:	8f 4f       	sbci	r24, 0xFF	; 255
    438c:	9f 4f       	sbci	r25, 0xFF	; 255
    438e:	62 95       	swap	r22
    4390:	60 7f       	andi	r22, 0xF0	; 240
    4392:	d6 01       	movw	r26, r12
    4394:	13 96       	adiw	r26, 0x03	; 3
    4396:	8c 91       	ld	r24, X
    4398:	13 97       	sbiw	r26, 0x03	; 3
    439a:	8f 70       	andi	r24, 0x0F	; 15
    439c:	68 2b       	or	r22, r24
    439e:	13 96       	adiw	r26, 0x03	; 3
    43a0:	6c 93       	st	X, r22
    43a2:	4d ce       	rjmp	.-870    	; 0x403e <_ZL13updateEnemiesv+0x3b2>
    for (int i = 0; i < ENEMY_MAX; i++, pE++) {
        if (i % ENEMY_UNITY == 0) {
            pG++;
            enemyFrames = (gameFrames - (pG - groups) * GROUP_INT) % (GROUP_INT * GROUP_MAX);
        } else {
            enemyFrames -= (pG->entryInt + 1) * 4;
    43a4:	f2 01       	movw	r30, r4
    43a6:	85 81       	ldd	r24, Z+5	; 0x05
    43a8:	82 95       	swap	r24
    43aa:	86 95       	lsr	r24
    43ac:	87 70       	andi	r24, 0x07	; 7
    43ae:	90 e0       	ldi	r25, 0x00	; 0
    43b0:	01 96       	adiw	r24, 0x01	; 1
    43b2:	88 0f       	add	r24, r24
    43b4:	99 1f       	adc	r25, r25
    43b6:	88 0f       	add	r24, r24
    43b8:	99 1f       	adc	r25, r25
    43ba:	68 1a       	sub	r6, r24
    43bc:	79 0a       	sbc	r7, r25
    43be:	70 cf       	rjmp	.-288    	; 0x42a0 <_ZL13updateEnemiesv+0x614>
            if (enemyFrames == 0) arduboy.playScore(soundEntry, SND_PRIO_ENTRY);
            continue;
        }

        /*  Hit judgement  */
        Point enemyPoint = getEnemyCoords(pG, pE, enemyFrames);
    43c0:	a3 01       	movw	r20, r6
    43c2:	b1 01       	movw	r22, r2
    43c4:	c2 01       	movw	r24, r4
    43c6:	0e 94 a1 0c 	call	0x1942	; 0x1942 <_ZL14getEnemyCoordsP7GROUP_TP7ENEMY_Tj>
    43ca:	4b 01       	movw	r8, r22
    43cc:	5c 01       	movw	r10, r24
    43ce:	78 87       	std	Y+8, r23	; 0x08
    43d0:	6f 83       	std	Y+7, r22	; 0x07
    43d2:	9e 83       	std	Y+6, r25	; 0x06
    43d4:	8d 83       	std	Y+5, r24	; 0x05
        Rect enemyRect = Rect(enemyPoint.x - 3, enemyPoint.y - 3, 7, 7);
    43d6:	8c 01       	movw	r16, r24
    43d8:	03 50       	subi	r16, 0x03	; 3
    43da:	11 09       	sbc	r17, r1
    43dc:	9b 01       	movw	r18, r22
    43de:	23 50       	subi	r18, 0x03	; 3
    43e0:	31 09       	sbc	r19, r1
        for (SHOT_T *pS = shots; pE->life > 0 && pS < &shots[SHOT_MAX]; pS++) {
    43e2:	ee e4       	ldi	r30, 0x4E	; 78
    43e4:	f1 e0       	ldi	r31, 0x01	; 1
  return ((previousButtonState & button) && !(currentButtonState & button));
}

bool Arduboy2Base::collide(Point point, Rect rect)
{
  return ((point.x >= rect.x) && (point.x < rect.x + rect.width) &&
    43e6:	ab 01       	movw	r20, r22
    43e8:	4c 5f       	subi	r20, 0xFC	; 252
    43ea:	5f 4f       	sbci	r21, 0xFF	; 255
      (point.y >= rect.y) && (point.y < rect.y + rect.height));
    43ec:	bc 01       	movw	r22, r24
    43ee:	6c 5f       	subi	r22, 0xFC	; 252
    43f0:	7f 4f       	sbci	r23, 0xFF	; 255
    43f2:	d1 01       	movw	r26, r2
    43f4:	11 96       	adiw	r26, 0x01	; 1
    43f6:	fc 90       	ld	r15, X
    43f8:	8f 2d       	mov	r24, r15
    43fa:	80 7f       	andi	r24, 0xF0	; 240
    43fc:	09 f4       	brne	.+2      	; 0x4400 <_ZL13updateEnemiesv+0x774>
    43fe:	b6 c0       	rjmp	.+364    	; 0x456c <_ZL13updateEnemiesv+0x8e0>
    4400:	b1 e0       	ldi	r27, 0x01	; 1
    4402:	e2 37       	cpi	r30, 0x72	; 114
    4404:	fb 07       	cpc	r31, r27
    4406:	09 f4       	brne	.+2      	; 0x440a <_ZL13updateEnemiesv+0x77e>
    4408:	c7 c0       	rjmp	.+398    	; 0x4598 <_ZL13updateEnemiesv+0x90c>
            if (pS->x < WIDTH && arduboy.collide(Point(pS->x, pS->y), enemyRect)) {
    440a:	80 81       	ld	r24, Z
    440c:	87 fd       	sbrc	r24, 7
    440e:	1e c0       	rjmp	.+60     	; 0x444c <_ZL13updateEnemiesv+0x7c0>
    4410:	b1 81       	ldd	r27, Z+1	; 0x01
    4412:	90 e0       	ldi	r25, 0x00	; 0
    4414:	82 17       	cp	r24, r18
    4416:	93 07       	cpc	r25, r19
    4418:	cc f0       	brlt	.+50     	; 0x444c <_ZL13updateEnemiesv+0x7c0>
  return ((previousButtonState & button) && !(currentButtonState & button));
}

bool Arduboy2Base::collide(Point point, Rect rect)
{
  return ((point.x >= rect.x) && (point.x < rect.x + rect.width) &&
    441a:	84 17       	cp	r24, r20
    441c:	95 07       	cpc	r25, r21
    441e:	b4 f4       	brge	.+44     	; 0x444c <_ZL13updateEnemiesv+0x7c0>
    4420:	8b 2f       	mov	r24, r27
    4422:	90 e0       	ldi	r25, 0x00	; 0
    4424:	80 17       	cp	r24, r16
    4426:	91 07       	cpc	r25, r17
    4428:	8c f0       	brlt	.+34     	; 0x444c <_ZL13updateEnemiesv+0x7c0>
      (point.y >= rect.y) && (point.y < rect.y + rect.height));
    442a:	86 17       	cp	r24, r22
    442c:	97 07       	cpc	r25, r23
    442e:	74 f4       	brge	.+28     	; 0x444c <_ZL13updateEnemiesv+0x7c0>
                pS->x = WIDTH;
    4430:	80 e8       	ldi	r24, 0x80	; 128
    4432:	80 83       	st	Z, r24
                pE->life--;
    4434:	8f 2d       	mov	r24, r15
    4436:	80 7f       	andi	r24, 0xF0	; 240
    4438:	80 51       	subi	r24, 0x10	; 16
    443a:	9f 2d       	mov	r25, r15
    443c:	9f 70       	andi	r25, 0x0F	; 15
    443e:	f9 2e       	mov	r15, r25
    4440:	f8 2a       	or	r15, r24
    4442:	d1 01       	movw	r26, r2
    4444:	11 96       	adiw	r26, 0x01	; 1
    4446:	fc 92       	st	X, r15
                isDamaged = true;
    4448:	b1 e0       	ldi	r27, 0x01	; 1
    444a:	ba 87       	std	Y+10, r27	; 0x0a
        }

        /*  Hit judgement  */
        Point enemyPoint = getEnemyCoords(pG, pE, enemyFrames);
        Rect enemyRect = Rect(enemyPoint.x - 3, enemyPoint.y - 3, 7, 7);
        for (SHOT_T *pS = shots; pE->life > 0 && pS < &shots[SHOT_MAX]; pS++) {
    444c:	32 96       	adiw	r30, 0x02	; 2
    444e:	d1 cf       	rjmp	.-94     	; 0x43f2 <_ZL13updateEnemiesv+0x766>
            pE->fireDeg = deg;
            if (pG->type == ENEMY_TYPE_MOWING && pG->fireTimes > 1) {
                pE->fireDeg -= mowGap * (pG->fireTimes - 1) / 2;
            }
        }
        switch (pG->type) {
    4450:	43 30       	cpi	r20, 0x03	; 3
    4452:	09 f4       	brne	.+2      	; 0x4456 <_ZL13updateEnemiesv+0x7ca>
    4454:	78 c0       	rjmp	.+240    	; 0x4546 <_ZL13updateEnemiesv+0x8ba>
    4456:	44 30       	cpi	r20, 0x04	; 4
    4458:	09 f0       	breq	.+2      	; 0x445c <_ZL13updateEnemiesv+0x7d0>
    445a:	42 cf       	rjmp	.-380    	; 0x42e0 <_ZL13updateEnemiesv+0x654>
        case ENEMY_TYPE_WHIP:
            spd += fireCnt * 2 - pG->fireNum;
            newFanwiseBullets(x, y, deg, spd, pG->fireNum, pG->fireGap);
            break;
        case ENEMY_TYPE_MOWING:
            newNeedleBullets(x, y, pE->fireDeg, spd, pG->fireNum);
    445c:	f2 01       	movw	r30, r4
    445e:	f4 81       	ldd	r31, Z+4	; 0x04
    4460:	f2 95       	swap	r31
    4462:	ff 70       	andi	r31, 0x0F	; 15
    4464:	f9 87       	std	Y+9, r31	; 0x09
    4466:	d1 01       	movw	r26, r2
    4468:	13 96       	adiw	r26, 0x03	; 3
    446a:	1c 91       	ld	r17, X
    bulletsNum++;
}

static void newNeedleBullets(int16_t x, int16_t y, int8_t deg, int8_t spd, uint8_t num)
{
    for (int i = 0; i < num && spd <= BULLET_SPD_MAX; i++, spd++) {
    446c:	f1 2c       	mov	r15, r1
    446e:	e1 2c       	mov	r14, r1
    4470:	ef 2f       	mov	r30, r31
    4472:	f0 e0       	ldi	r31, 0x00	; 0
    4474:	f8 8b       	std	Y+16, r31	; 0x10
    4476:	ef 87       	std	Y+15, r30	; 0x0f
    4478:	2f 85       	ldd	r18, Y+15	; 0x0f
    447a:	38 89       	ldd	r19, Y+16	; 0x10
    447c:	e2 16       	cp	r14, r18
    447e:	f3 06       	cpc	r15, r19
    4480:	0c f0       	brlt	.+2      	; 0x4484 <_ZL13updateEnemiesv+0x7f8>
    4482:	6c c0       	rjmp	.+216    	; 0x455c <_ZL13updateEnemiesv+0x8d0>
    4484:	00 32       	cpi	r16, 0x20	; 32
    4486:	0c f0       	brlt	.+2      	; 0x448a <_ZL13updateEnemiesv+0x7fe>
    4488:	69 c0       	rjmp	.+210    	; 0x455c <_ZL13updateEnemiesv+0x8d0>
        if (spd >= BULLET_SPD_MIN) newBullet(x, y, deg, spd);
    448a:	10 16       	cp	r1, r16
    448c:	44 f4       	brge	.+16     	; 0x449e <_ZL13updateEnemiesv+0x812>
    448e:	20 2f       	mov	r18, r16
    4490:	41 2f       	mov	r20, r17
    4492:	6d 81       	ldd	r22, Y+5	; 0x05
    4494:	7e 81       	ldd	r23, Y+6	; 0x06
    4496:	8f 81       	ldd	r24, Y+7	; 0x07
    4498:	98 85       	ldd	r25, Y+8	; 0x08
    449a:	0e 94 b5 0a 	call	0x156a	; 0x156a <_ZL9newBulletiiaa>
    bulletsNum++;
}

static void newNeedleBullets(int16_t x, int16_t y, int8_t deg, int8_t spd, uint8_t num)
{
    for (int i = 0; i < num && spd <= BULLET_SPD_MAX; i++, spd++) {
    449e:	3f ef       	ldi	r19, 0xFF	; 255
    44a0:	e3 1a       	sub	r14, r19
    44a2:	f3 0a       	sbc	r15, r19
    44a4:	0f 5f       	subi	r16, 0xFF	; 255
    44a6:	e8 cf       	rjmp	.-48     	; 0x4478 <_ZL13updateEnemiesv+0x7ec>
                pE->fireDeg -= mowGap * (pG->fireTimes - 1) / 2;
            }
        }
        switch (pG->type) {
        case ENEMY_TYPE_NEEDLE:
            spd = spd * 3 / 2 - pG->fireNum / 2;
    44a8:	d2 01       	movw	r26, r4
    44aa:	14 96       	adiw	r26, 0x04	; 4
    44ac:	0c 91       	ld	r16, X
    44ae:	02 95       	swap	r16
    44b0:	0f 70       	andi	r16, 0x0F	; 15
    44b2:	10 e0       	ldi	r17, 0x00	; 0
    44b4:	fe 85       	ldd	r31, Y+14	; 0x0e
    44b6:	e3 e0       	ldi	r30, 0x03	; 3
    44b8:	fe 02       	muls	r31, r30
    44ba:	f0 01       	movw	r30, r0
    44bc:	11 24       	eor	r1, r1
    44be:	f8 8b       	std	Y+16, r31	; 0x10
    44c0:	ef 87       	std	Y+15, r30	; 0x0f
    44c2:	f7 ff       	sbrs	r31, 7
    44c4:	03 c0       	rjmp	.+6      	; 0x44cc <_ZL13updateEnemiesv+0x840>
    44c6:	31 96       	adiw	r30, 0x01	; 1
    44c8:	f8 8b       	std	Y+16, r31	; 0x10
    44ca:	ef 87       	std	Y+15, r30	; 0x0f
    44cc:	2f 85       	ldd	r18, Y+15	; 0x0f
    44ce:	38 89       	ldd	r19, Y+16	; 0x10
    44d0:	35 95       	asr	r19
    44d2:	27 95       	ror	r18
    44d4:	38 8b       	std	Y+16, r19	; 0x10
    44d6:	2f 87       	std	Y+15, r18	; 0x0f
    44d8:	c8 01       	movw	r24, r16
    44da:	95 95       	asr	r25
    44dc:	87 95       	ror	r24
    44de:	28 1b       	sub	r18, r24
    44e0:	29 87       	std	Y+9, r18	; 0x09
    bulletsNum++;
}

static void newNeedleBullets(int16_t x, int16_t y, int8_t deg, int8_t spd, uint8_t num)
{
    for (int i = 0; i < num && spd <= BULLET_SPD_MAX; i++, spd++) {
    44e2:	d1 2c       	mov	r13, r1
    44e4:	c1 2c       	mov	r12, r1
    44e6:	c0 16       	cp	r12, r16
    44e8:	d1 06       	cpc	r13, r17
    44ea:	0c f0       	brlt	.+2      	; 0x44ee <_ZL13updateEnemiesv+0x862>
    44ec:	f9 ce       	rjmp	.-526    	; 0x42e0 <_ZL13updateEnemiesv+0x654>
    44ee:	39 85       	ldd	r19, Y+9	; 0x09
    44f0:	30 32       	cpi	r19, 0x20	; 32
    44f2:	0c f0       	brlt	.+2      	; 0x44f6 <_ZL13updateEnemiesv+0x86a>
    44f4:	f5 ce       	rjmp	.-534    	; 0x42e0 <_ZL13updateEnemiesv+0x654>
        if (spd >= BULLET_SPD_MIN) newBullet(x, y, deg, spd);
    44f6:	13 16       	cp	r1, r19
    44f8:	44 f4       	brge	.+16     	; 0x450a <_ZL13updateEnemiesv+0x87e>
    44fa:	23 2f       	mov	r18, r19
    44fc:	4f 2d       	mov	r20, r15
    44fe:	6d 81       	ldd	r22, Y+5	; 0x05
    4500:	7e 81       	ldd	r23, Y+6	; 0x06
    4502:	8f 81       	ldd	r24, Y+7	; 0x07
    4504:	98 85       	ldd	r25, Y+8	; 0x08
    4506:	0e 94 b5 0a 	call	0x156a	; 0x156a <_ZL9newBulletiiaa>
    bulletsNum++;
}

static void newNeedleBullets(int16_t x, int16_t y, int8_t deg, int8_t spd, uint8_t num)
{
    for (int i = 0; i < num && spd <= BULLET_SPD_MAX; i++, spd++) {
    450a:	4f ef       	ldi	r20, 0xFF	; 255
    450c:	c4 1a       	sub	r12, r20
    450e:	d4 0a       	sbc	r13, r20
    4510:	59 85       	ldd	r21, Y+9	; 0x09
    4512:	5f 5f       	subi	r21, 0xFF	; 255
    4514:	59 87       	std	Y+9, r21	; 0x09
    4516:	e7 cf       	rjmp	.-50     	; 0x44e6 <_ZL13updateEnemiesv+0x85a>
            break;
        case ENEMY_TYPE_FUNWISE:
            newFanwiseBullets(x, y, deg, spd, pG->fireNum - (fireCnt & 1), mowGap);
            break;
        case ENEMY_TYPE_RAPIDFIRE:
            spd = spd * 3 / 2;
    4518:	ee 85       	ldd	r30, Y+14	; 0x0e
    451a:	f3 e0       	ldi	r31, 0x03	; 3
    451c:	ef 02       	muls	r30, r31
    451e:	90 01       	movw	r18, r0
    4520:	11 24       	eor	r1, r1
    4522:	37 ff       	sbrs	r19, 7
    4524:	02 c0       	rjmp	.+4      	; 0x452a <_ZL13updateEnemiesv+0x89e>
    4526:	2f 5f       	subi	r18, 0xFF	; 255
    4528:	3f 4f       	sbci	r19, 0xFF	; 255
    452a:	35 95       	asr	r19
    452c:	27 95       	ror	r18
            newFanwiseBullets(x, y, pE->fireDeg, spd, pG->fireNum, pG->fireGap);
    452e:	d2 01       	movw	r26, r4
    4530:	14 96       	adiw	r26, 0x04	; 4
    4532:	0c 91       	ld	r16, X
    4534:	02 95       	swap	r16
    4536:	0f 70       	andi	r16, 0x0F	; 15
    4538:	f1 01       	movw	r30, r2
    453a:	43 81       	ldd	r20, Z+3	; 0x03
            break;
        case ENEMY_TYPE_WHIP:
            spd += fireCnt * 2 - pG->fireNum;
            newFanwiseBullets(x, y, deg, spd, pG->fireNum, pG->fireGap);
    453c:	b5 01       	movw	r22, r10
    453e:	c4 01       	movw	r24, r8
    4540:	0e 94 df 0a 	call	0x15be	; 0x15be <_ZL17newFanwiseBulletsiiaaha>
    4544:	cd ce       	rjmp	.-614    	; 0x42e0 <_ZL13updateEnemiesv+0x654>
        case ENEMY_TYPE_RAPIDFIRE:
            spd = spd * 3 / 2;
            newFanwiseBullets(x, y, pE->fireDeg, spd, pG->fireNum, pG->fireGap);
            break;
        case ENEMY_TYPE_WHIP:
            spd += fireCnt * 2 - pG->fireNum;
    4546:	d2 01       	movw	r26, r4
    4548:	14 96       	adiw	r26, 0x04	; 4
    454a:	0c 91       	ld	r16, X
    454c:	02 95       	swap	r16
    454e:	0f 70       	andi	r16, 0x0F	; 15
    4550:	2f 85       	ldd	r18, Y+15	; 0x0f
    4552:	22 0f       	add	r18, r18
    4554:	be 85       	ldd	r27, Y+14	; 0x0e
    4556:	b0 1b       	sub	r27, r16
    4558:	2b 0f       	add	r18, r27
    455a:	cb c0       	rjmp	.+406    	; 0x46f2 <_ZL13updateEnemiesv+0xa66>
            newFanwiseBullets(x, y, deg, spd, pG->fireNum, pG->fireGap);
            break;
        case ENEMY_TYPE_MOWING:
            newNeedleBullets(x, y, pE->fireDeg, spd, pG->fireNum);
            pE->fireDeg += mowGap;
    455c:	d1 01       	movw	r26, r2
    455e:	13 96       	adiw	r26, 0x03	; 3
    4560:	ec 90       	ld	r14, X
    4562:	13 97       	sbiw	r26, 0x03	; 3
    4564:	de 0c       	add	r13, r14
    4566:	13 96       	adiw	r26, 0x03	; 3
    4568:	dc 92       	st	X, r13
    456a:	ba ce       	rjmp	.-652    	; 0x42e0 <_ZL13updateEnemiesv+0x654>
                pE->life--;
                isDamaged = true;
            }
        }
        if (pE->life == 0) { // Defeat!
            arduboy.playScore(soundDefeat, SND_PRIO_DEFEAT);
    456c:	62 e0       	ldi	r22, 0x02	; 2
    456e:	8d e9       	ldi	r24, 0x9D	; 157
    4570:	95 e0       	ldi	r25, 0x05	; 5
    4572:	0e 94 8c 12 	call	0x2518	; 0x2518 <_ZN10MyArduboy29playScoreEPKhha.constprop.27>
            sparkleLed(pG->type);
    4576:	d2 01       	movw	r26, r4
    4578:	8c 91       	ld	r24, X
    457a:	8f 70       	andi	r24, 0x0F	; 15
    457c:	0e 94 ab 0b 	call	0x1756	; 0x1756 <_ZL10sparkleLedh>
            explo.x = enemyPoint.x;
            explo.y = enemyPoint.y;
    4580:	88 2d       	mov	r24, r8
    4582:	a0 fa       	bst	r10, 0
    4584:	87 f9       	bld	r24, 7
    4586:	80 93 4c 01 	sts	0x014C, r24	; 0x80014c <_ZL5explo>
    458a:	c5 01       	movw	r24, r10
    458c:	96 95       	lsr	r25
    458e:	87 95       	ror	r24
            explo.a = 0;
    4590:	8f 71       	andi	r24, 0x1F	; 31
    4592:	80 93 4d 01 	sts	0x014D, r24	; 0x80014d <_ZL5explo+0x1>
    4596:	a4 ce       	rjmp	.-696    	; 0x42e0 <_ZL13updateEnemiesv+0x654>
            dprintln(F("Defeat!"));
            continue;
        }
        enemyLives++;
    4598:	bb 81       	ldd	r27, Y+3	; 0x03
    459a:	bf 5f       	subi	r27, 0xFF	; 255
    459c:	bb 83       	std	Y+3, r27	; 0x03

        /*  Should it fire?  */
        uint16_t firePhase = (enemyFrames + pE->framesGap) % pG->fireInt;
        uint8_t fireCycle = pG->fireCycle + BULLET_CYC_BASE;
    459e:	f2 01       	movw	r30, r4
    45a0:	f5 81       	ldd	r31, Z+5	; 0x05
    45a2:	f9 87       	std	Y+9, r31	; 0x09
    45a4:	2f 2f       	mov	r18, r31
    45a6:	27 70       	andi	r18, 0x07	; 7
            continue;
        }
        enemyLives++;

        /*  Should it fire?  */
        uint16_t firePhase = (enemyFrames + pE->framesGap) % pG->fireInt;
    45a8:	d1 01       	movw	r26, r2
    45aa:	12 96       	adiw	r26, 0x02	; 2
    45ac:	8c 91       	ld	r24, X
    45ae:	86 0d       	add	r24, r6
    45b0:	97 2d       	mov	r25, r7
    45b2:	91 1d       	adc	r25, r1
    45b4:	f2 01       	movw	r30, r4
    45b6:	66 81       	ldd	r22, Z+6	; 0x06
    45b8:	70 e0       	ldi	r23, 0x00	; 0
    45ba:	0e 94 d4 2f 	call	0x5fa8	; 0x5fa8 <__divmodhi4>
        uint8_t fireCycle = pG->fireCycle + BULLET_CYC_BASE;
    45be:	2d 5f       	subi	r18, 0xFD	; 253
        if (firePhase % fireCycle > 0) continue;
    45c0:	62 2f       	mov	r22, r18
    45c2:	70 e0       	ldi	r23, 0x00	; 0
    45c4:	0e 94 c0 2f 	call	0x5f80	; 0x5f80 <__udivmodhi4>
    45c8:	6f 87       	std	Y+15, r22	; 0x0f
    45ca:	89 2b       	or	r24, r25
    45cc:	09 f0       	breq	.+2      	; 0x45d0 <_ZL13updateEnemiesv+0x944>
    45ce:	88 ce       	rjmp	.-752    	; 0x42e0 <_ZL13updateEnemiesv+0x654>
        uint8_t fireCnt = firePhase / fireCycle;
    45d0:	ef 85       	ldd	r30, Y+15	; 0x0f
    45d2:	eb 87       	std	Y+11, r30	; 0x0b
        if (fireCnt >= pG->fireTimes) continue;
    45d4:	d2 01       	movw	r26, r4
    45d6:	14 96       	adiw	r26, 0x04	; 4
    45d8:	1c 91       	ld	r17, X
    45da:	1f 70       	andi	r17, 0x0F	; 15
    45dc:	e1 17       	cp	r30, r17
    45de:	08 f0       	brcs	.+2      	; 0x45e2 <_ZL13updateEnemiesv+0x956>
    45e0:	7f ce       	rjmp	.-770    	; 0x42e0 <_ZL13updateEnemiesv+0x654>

        /*  Fire enemy's bullets  */
        int8_t spd = gameRank + pG->fireExSpd + BULLET_BASE_SPD;
    45e2:	80 91 0a 03 	lds	r24, 0x030A	; 0x80030a <_ZL8gameRank>
    45e6:	8c 5f       	subi	r24, 0xFC	; 252
    45e8:	b9 85       	ldd	r27, Y+9	; 0x09
    45ea:	b6 95       	lsr	r27
    45ec:	b6 95       	lsr	r27
    45ee:	b6 95       	lsr	r27
    45f0:	b3 70       	andi	r27, 0x03	; 3
    45f2:	b8 0f       	add	r27, r24
    45f4:	be 87       	std	Y+14, r27	; 0x0e
    45f6:	0b 2f       	mov	r16, r27
        int16_t x = enemyPoint.x, y = enemyPoint.y;
        int8_t deg = myAtan2f(playerY / PLAYER_SCALE - y, playerX / PLAYER_SCALE - x);
    45f8:	60 91 06 03 	lds	r22, 0x0306	; 0x800306 <_ZL7playerX>
    45fc:	66 95       	lsr	r22
    45fe:	66 95       	lsr	r22
    4600:	70 e0       	ldi	r23, 0x00	; 0
    4602:	68 19       	sub	r22, r8
    4604:	79 09       	sbc	r23, r9
    4606:	07 2e       	mov	r0, r23
    4608:	00 0c       	add	r0, r0
    460a:	88 0b       	sbc	r24, r24
    460c:	99 0b       	sbc	r25, r25
    460e:	0e 94 2d 2e 	call	0x5c5a	; 0x5c5a <__floatsisf>
    4612:	6b 01       	movw	r12, r22
    4614:	7c 01       	movw	r14, r24
    4616:	60 91 05 03 	lds	r22, 0x0305	; 0x800305 <_ZL7playerY>
    461a:	66 95       	lsr	r22
    461c:	66 95       	lsr	r22
    461e:	70 e0       	ldi	r23, 0x00	; 0
    4620:	6a 19       	sub	r22, r10
    4622:	7b 09       	sbc	r23, r11
    4624:	07 2e       	mov	r0, r23
    4626:	00 0c       	add	r0, r0
    4628:	88 0b       	sbc	r24, r24
    462a:	99 0b       	sbc	r25, r25
    462c:	0e 94 2d 2e 	call	0x5c5a	; 0x5c5a <__floatsisf>
    4630:	a7 01       	movw	r20, r14
    4632:	96 01       	movw	r18, r12
    4634:	0e 94 24 2d 	call	0x5a48	; 0x5a48 <atan2>
    4638:	20 e0       	ldi	r18, 0x00	; 0
    463a:	30 e0       	ldi	r19, 0x00	; 0
    463c:	40 e0       	ldi	r20, 0x00	; 0
    463e:	53 e4       	ldi	r21, 0x43	; 67
    4640:	0e 94 e8 2e 	call	0x5dd0	; 0x5dd0 <__mulsf3>
    4644:	2b ed       	ldi	r18, 0xDB	; 219
    4646:	3f e0       	ldi	r19, 0x0F	; 15
    4648:	49 e4       	ldi	r20, 0x49	; 73
    464a:	50 e4       	ldi	r21, 0x40	; 64
    464c:	0e 94 83 2d 	call	0x5b06	; 0x5b06 <__divsf3>
    4650:	20 e0       	ldi	r18, 0x00	; 0
    4652:	30 e0       	ldi	r19, 0x00	; 0
    4654:	40 e0       	ldi	r20, 0x00	; 0
    4656:	5f e3       	ldi	r21, 0x3F	; 63
    4658:	0e 94 a5 2c 	call	0x594a	; 0x594a <__addsf3>
    465c:	0e 94 f5 2d 	call	0x5bea	; 0x5bea <__fixsfsi>
    4660:	f6 2e       	mov	r15, r22
        int8_t mowGap = (pG->fireGap + BULLET_GAP_BASE) * ((pG->fireCycle & 1) * 2 - 1);
    4662:	f2 01       	movw	r30, r4
    4664:	e3 80       	ldd	r14, Z+3	; 0x03
    4666:	e2 94       	swap	r14
    4668:	ef e0       	ldi	r30, 0x0F	; 15
    466a:	ee 22       	and	r14, r30
    466c:	f9 85       	ldd	r31, Y+9	; 0x09
    466e:	f1 70       	andi	r31, 0x01	; 1
    4670:	fc 87       	std	Y+12, r31	; 0x0c
    4672:	1d 86       	std	Y+13, r1	; 0x0d
    4674:	8c 85       	ldd	r24, Y+12	; 0x0c
    4676:	9d 85       	ldd	r25, Y+13	; 0x0d
    4678:	88 0f       	add	r24, r24
    467a:	99 1f       	adc	r25, r25
    467c:	01 97       	sbiw	r24, 0x01	; 1
    467e:	98 e0       	ldi	r25, 0x08	; 8
    4680:	9e 0d       	add	r25, r14
    4682:	98 9f       	mul	r25, r24
    4684:	d0 2c       	mov	r13, r0
    4686:	11 24       	eor	r1, r1
    4688:	d2 01       	movw	r26, r4
    468a:	4c 91       	ld	r20, X
        if (fireCnt == 0) {
    468c:	bb 85       	ldd	r27, Y+11	; 0x0b
    468e:	b1 11       	cpse	r27, r1
    4690:	1a c0       	rjmp	.+52     	; 0x46c6 <_ZL13updateEnemiesv+0xa3a>
            pE->fireDeg = deg;
    4692:	f1 01       	movw	r30, r2
    4694:	f3 82       	std	Z+3, r15	; 0x03
            if (pG->type == ENEMY_TYPE_MOWING && pG->fireTimes > 1) {
    4696:	84 2f       	mov	r24, r20
    4698:	8f 70       	andi	r24, 0x0F	; 15
    469a:	84 30       	cpi	r24, 0x04	; 4
    469c:	a1 f4       	brne	.+40     	; 0x46c6 <_ZL13updateEnemiesv+0xa3a>
    469e:	12 30       	cpi	r17, 0x02	; 2
    46a0:	90 f0       	brcs	.+36     	; 0x46c6 <_ZL13updateEnemiesv+0xa3a>
                pE->fireDeg -= mowGap * (pG->fireTimes - 1) / 2;
    46a2:	81 2f       	mov	r24, r17
    46a4:	81 50       	subi	r24, 0x01	; 1
    46a6:	99 0b       	sbc	r25, r25
    46a8:	9c 01       	movw	r18, r24
    46aa:	5d 2d       	mov	r21, r13
    46ac:	52 03       	mulsu	r21, r18
    46ae:	c0 01       	movw	r24, r0
    46b0:	53 9f       	mul	r21, r19
    46b2:	90 0d       	add	r25, r0
    46b4:	11 24       	eor	r1, r1
    46b6:	97 fd       	sbrc	r25, 7
    46b8:	01 96       	adiw	r24, 0x01	; 1
    46ba:	95 95       	asr	r25
    46bc:	87 95       	ror	r24
    46be:	af 2d       	mov	r26, r15
    46c0:	a8 1b       	sub	r26, r24
    46c2:	f1 01       	movw	r30, r2
    46c4:	a3 83       	std	Z+3, r26	; 0x03
            }
        }
        switch (pG->type) {
    46c6:	4f 70       	andi	r20, 0x0F	; 15
    46c8:	42 30       	cpi	r20, 0x02	; 2
    46ca:	09 f4       	brne	.+2      	; 0x46ce <_ZL13updateEnemiesv+0xa42>
    46cc:	25 cf       	rjmp	.-438    	; 0x4518 <_ZL13updateEnemiesv+0x88c>
    46ce:	08 f0       	brcs	.+2      	; 0x46d2 <_ZL13updateEnemiesv+0xa46>
    46d0:	bf ce       	rjmp	.-642    	; 0x4450 <_ZL13updateEnemiesv+0x7c4>
    46d2:	44 23       	and	r20, r20
    46d4:	09 f4       	brne	.+2      	; 0x46d8 <_ZL13updateEnemiesv+0xa4c>
    46d6:	e8 ce       	rjmp	.-560    	; 0x44a8 <_ZL13updateEnemiesv+0x81c>
    46d8:	41 30       	cpi	r20, 0x01	; 1
    46da:	09 f0       	breq	.+2      	; 0x46de <_ZL13updateEnemiesv+0xa52>
    46dc:	01 ce       	rjmp	.-1022   	; 0x42e0 <_ZL13updateEnemiesv+0x654>
        case ENEMY_TYPE_NEEDLE:
            spd = spd * 3 / 2 - pG->fireNum / 2;
            newNeedleBullets(x, y, deg, spd, pG->fireNum);
            break;
        case ENEMY_TYPE_FUNWISE:
            newFanwiseBullets(x, y, deg, spd, pG->fireNum - (fireCnt & 1), mowGap);
    46de:	d2 01       	movw	r26, r4
    46e0:	14 96       	adiw	r26, 0x04	; 4
    46e2:	0c 91       	ld	r16, X
    46e4:	02 95       	swap	r16
    46e6:	0f 70       	andi	r16, 0x0F	; 15
    46e8:	bf 85       	ldd	r27, Y+15	; 0x0f
    46ea:	b1 70       	andi	r27, 0x01	; 1
    46ec:	0b 1b       	sub	r16, r27
    46ee:	ed 2c       	mov	r14, r13
    46f0:	2e 85       	ldd	r18, Y+14	; 0x0e
            spd = spd * 3 / 2;
            newFanwiseBullets(x, y, pE->fireDeg, spd, pG->fireNum, pG->fireGap);
            break;
        case ENEMY_TYPE_WHIP:
            spd += fireCnt * 2 - pG->fireNum;
            newFanwiseBullets(x, y, deg, spd, pG->fireNum, pG->fireGap);
    46f2:	4f 2d       	mov	r20, r15
    46f4:	23 cf       	rjmp	.-442    	; 0x453c <_ZL13updateEnemiesv+0x8b0>

000046f6 <_Z11writeRecordv>:
    }
    setSound(arduboy.isAudioEnabled()); // Load Sound ON/OFF
}

void writeRecord(void)
{
    46f6:	cf 93       	push	r28
    46f8:	df 93       	push	r29
    if (!isRecordDirty) return;
    46fa:	80 91 29 03 	lds	r24, 0x0329	; 0x800329 <isRecordDirty>
    46fe:	88 23       	and	r24, r24
    4700:	09 f4       	brne	.+2      	; 0x4704 <_Z11writeRecordv+0xe>
    4702:	5b c0       	rjmp	.+182    	; 0x47ba <_Z11writeRecordv+0xc4>
    if (recordState == RECORD_INITIAL) {
    4704:	80 91 2a 03 	lds	r24, 0x032A	; 0x80032a <_ZL11recordState>
    4708:	90 91 2b 03 	lds	r25, 0x032B	; 0x80032b <_ZL11recordState+0x1>
    470c:	01 97       	sbiw	r24, 0x01	; 1
    470e:	09 f0       	breq	.+2      	; 0x4712 <_Z11writeRecordv+0x1c>
    4710:	57 c0       	rjmp	.+174    	; 0x47c0 <_Z11writeRecordv+0xca>
/*                             EEPROM Functions                              */
/*---------------------------------------------------------------------------*/

void eepSeek(int addr)
{
    eepAddr = max(addr, EEPROM_STORAGE_SPACE_START);
    4712:	80 ef       	ldi	r24, 0xF0	; 240
    4714:	93 e0       	ldi	r25, 0x03	; 3
    4716:	90 93 2d 03 	sts	0x032D, r25	; 0x80032d <_ZL7eepAddr+0x1>
    471a:	80 93 2c 03 	sts	0x032C, r24	; 0x80032c <_ZL7eepAddr>
    eepAddr += 2;
}

void eepWrite32(uint32_t val)
{
    eeprom_busy_wait();
    471e:	f9 99       	sbic	0x1f, 1	; 31
    4720:	fe cf       	rjmp	.-4      	; 0x471e <_Z11writeRecordv+0x28>
    eeprom_write_dword((uint32_t *)eepAddr, val);
    4722:	4f e4       	ldi	r20, 0x4F	; 79
    4724:	52 e4       	ldi	r21, 0x42	; 66
    4726:	6e e4       	ldi	r22, 0x4E	; 78
    4728:	73 e1       	ldi	r23, 0x13	; 19
    472a:	80 ef       	ldi	r24, 0xF0	; 240
    472c:	93 e0       	ldi	r25, 0x03	; 3
    472e:	0e 94 34 2c 	call	0x5868	; 0x5868 <eeprom_write_dword>
    eepAddr += 4;
    4732:	80 91 2c 03 	lds	r24, 0x032C	; 0x80032c <_ZL7eepAddr>
    4736:	90 91 2d 03 	lds	r25, 0x032D	; 0x80032d <_ZL7eepAddr+0x1>
    473a:	04 96       	adiw	r24, 0x04	; 4
/*                             EEPROM Functions                              */
/*---------------------------------------------------------------------------*/

void eepSeek(int addr)
{
    eepAddr = max(addr, EEPROM_STORAGE_SPACE_START);
    473c:	90 93 2d 03 	sts	0x032D, r25	; 0x80032d <_ZL7eepAddr+0x1>
    4740:	80 93 2c 03 	sts	0x032C, r24	; 0x80032c <_ZL7eepAddr>
    eepAddr += 4;
}

void eepWriteBlock(const void *p, size_t n)
{
    eeprom_busy_wait();
    4744:	f9 99       	sbic	0x1f, 1	; 31
    4746:	fe cf       	rjmp	.-4      	; 0x4744 <_Z11writeRecordv+0x4e>
    eeprom_write_block(p, (void *) eepAddr, n);
    4748:	60 91 2c 03 	lds	r22, 0x032C	; 0x80032c <_ZL7eepAddr>
    474c:	70 91 2d 03 	lds	r23, 0x032D	; 0x80032d <_ZL7eepAddr+0x1>
    4750:	4a e0       	ldi	r20, 0x0A	; 10
    4752:	50 e0       	ldi	r21, 0x00	; 0
    4754:	8a e3       	ldi	r24, 0x3A	; 58
    4756:	93 e0       	ldi	r25, 0x03	; 3
    4758:	0e 94 1c 2c 	call	0x5838	; 0x5838 <eeprom_write_block>
    eepAddr += n;
    475c:	c0 91 2c 03 	lds	r28, 0x032C	; 0x80032c <_ZL7eepAddr>
    4760:	d0 91 2d 03 	lds	r29, 0x032D	; 0x80032d <_ZL7eepAddr+0x1>
    4764:	2a 96       	adiw	r28, 0x0a	; 10
    4766:	d0 93 2d 03 	sts	0x032D, r29	; 0x80032d <_ZL7eepAddr+0x1>
    476a:	c0 93 2c 03 	sts	0x032C, r28	; 0x80032c <_ZL7eepAddr>
        eepWrite32(EEPROM_SIGNATURE);
    } else {
        eepSeek(EEPROM_ADDR_BASE + 4);
    }
    eepWriteBlock(&record, sizeof(record));
    eepWrite16(calcCheckSum());
    476e:	0e 94 65 0d 	call	0x1aca	; 0x1aca <_ZL12calcCheckSumv>
    eepAddr++;
}

void eepWrite16(uint16_t val)
{
    eeprom_busy_wait();
    4772:	f9 99       	sbic	0x1f, 1	; 31
    4774:	fe cf       	rjmp	.-4      	; 0x4772 <_Z11writeRecordv+0x7c>
    eeprom_write_word((uint16_t *)eepAddr, val);
    4776:	bc 01       	movw	r22, r24
    4778:	ce 01       	movw	r24, r28
    477a:	0e 94 3c 2c 	call	0x5878	; 0x5878 <eeprom_write_word>
    eepAddr += 2;
    477e:	80 91 2c 03 	lds	r24, 0x032C	; 0x80032c <_ZL7eepAddr>
    4782:	90 91 2d 03 	lds	r25, 0x032D	; 0x80032d <_ZL7eepAddr+0x1>
    4786:	02 96       	adiw	r24, 0x02	; 2
    4788:	90 93 2d 03 	sts	0x032D, r25	; 0x80032d <_ZL7eepAddr+0x1>
    478c:	80 93 2c 03 	sts	0x032C, r24	; 0x80032c <_ZL7eepAddr>
    on();
}

void Arduboy2Audio::saveOnOff()
{
  EEPROM.update(Arduboy2Base::eepromAudioOnOff, audio_enabled);
    4790:	c0 91 4c 03 	lds	r28, 0x034C	; 0x80034c <_ZN13Arduboy2Audio13audio_enabledE>

    EERef( const int index )
        : index( index )                 {}
    
    //Access/read members.
    uint8_t operator*() const            { return eeprom_read_byte( (uint8_t*) index ); }
    4794:	82 e0       	ldi	r24, 0x02	; 2
    4796:	90 e0       	ldi	r25, 0x00	; 0
    4798:	0e 94 08 2c 	call	0x5810	; 0x5810 <eeprom_read_byte>
    EERef &operator &=( uint8_t in )     { return *this = **this & in; }
    EERef &operator |=( uint8_t in )     { return *this = **this | in; }
    EERef &operator <<=( uint8_t in )    { return *this = **this << in; }
    EERef &operator >>=( uint8_t in )    { return *this = **this >> in; }
    
    EERef &update( uint8_t in )          { return  in != *this ? *this = in : *this; }
    479c:	c8 17       	cp	r28, r24
    479e:	29 f0       	breq	.+10     	; 0x47aa <_Z11writeRecordv+0xb4>
    uint8_t operator*() const            { return eeprom_read_byte( (uint8_t*) index ); }
    operator uint8_t() const             { return **this; }
    
    //Assignment/write members.
    EERef &operator=( const EERef &ref ) { return *this = *ref; }
    EERef &operator=( uint8_t in )       { return eeprom_write_byte( (uint8_t*) index, in ), *this;  }
    47a0:	6c 2f       	mov	r22, r28
    47a2:	82 e0       	ldi	r24, 0x02	; 2
    47a4:	90 e0       	ldi	r25, 0x00	; 0
    47a6:	0e 94 26 2c 	call	0x584c	; 0x584c <eeprom_write_byte>
        eepSeek(EEPROM_ADDR_BASE + 4);
    }
    eepWriteBlock(&record, sizeof(record));
    eepWrite16(calcCheckSum());
    arduboy.audio.saveOnOff(); // Save Sound ON/OFF
    recordState = RECORD_STORED;
    47aa:	82 e0       	ldi	r24, 0x02	; 2
    47ac:	90 e0       	ldi	r25, 0x00	; 0
    47ae:	90 93 2b 03 	sts	0x032B, r25	; 0x80032b <_ZL11recordState+0x1>
    47b2:	80 93 2a 03 	sts	0x032A, r24	; 0x80032a <_ZL11recordState>
    isRecordDirty = false;
    47b6:	10 92 29 03 	sts	0x0329, r1	; 0x800329 <isRecordDirty>
    dprintln(F("Write record to EEPROM"));
}
    47ba:	df 91       	pop	r29
    47bc:	cf 91       	pop	r28
    47be:	08 95       	ret
/*                             EEPROM Functions                              */
/*---------------------------------------------------------------------------*/

void eepSeek(int addr)
{
    eepAddr = max(addr, EEPROM_STORAGE_SPACE_START);
    47c0:	84 ef       	ldi	r24, 0xF4	; 244
    47c2:	93 e0       	ldi	r25, 0x03	; 3
    47c4:	bb cf       	rjmp	.-138    	; 0x473c <_Z11writeRecordv+0x46>

000047c6 <_ZL6onQuitv>:
    dprintln(F("Menu: confirm quit"));
}

static void onQuit(void)
{
    playSoundClick();
    47c6:	0e 94 aa 0e 	call	0x1d54	; 0x1d54 <_Z14playSoundClickv>
    writeRecord();
    47ca:	0e 94 7b 23 	call	0x46f6	; 0x46f6 <_Z11writeRecordv>
    isMenu = false;
    47ce:	10 92 04 03 	sts	0x0304, r1	; 0x800304 <_ZL6isMenu>
    state = STATE_LEAVE;
    47d2:	83 e0       	ldi	r24, 0x03	; 3
    47d4:	80 93 09 03 	sts	0x0309, r24	; 0x800309 <_ZL5state.lto_priv.52>
    dprintln(F("Menu: quit"));
}
    47d8:	08 95       	ret

000047da <_ZL10handleOverv>:
    isInvalid = true;
}

static void handleOver()
{
    if (!isDefeated || counter >= OVER_OMIT) {
    47da:	80 91 45 01 	lds	r24, 0x0145	; 0x800145 <_ZL10isDefeated>
    47de:	88 23       	and	r24, r24
    47e0:	21 f0       	breq	.+8      	; 0x47ea <_ZL10handleOverv+0x10>
    47e2:	80 91 45 03 	lds	r24, 0x0345	; 0x800345 <counter>
    47e6:	8c 33       	cpi	r24, 0x3C	; 60
    47e8:	b8 f1       	brcs	.+110    	; 0x4858 <_ZL10handleOverv+0x7e>
        updateShots();
    47ea:	0e 94 1b 0b 	call	0x1636	; 0x1636 <_ZL11updateShotsv>
    }
}

static void updateExplo(void)
{
    if (explo.a < IMG_EXPLO_ID_MAX) explo.a++;
    47ee:	80 91 4d 01 	lds	r24, 0x014D	; 0x80014d <_ZL5explo+0x1>
    47f2:	98 2f       	mov	r25, r24
    47f4:	92 95       	swap	r25
    47f6:	96 95       	lsr	r25
    47f8:	97 70       	andi	r25, 0x07	; 7
    47fa:	96 30       	cpi	r25, 0x06	; 6
    47fc:	40 f4       	brcc	.+16     	; 0x480e <_ZL10handleOverv+0x34>
    47fe:	9f 5f       	subi	r25, 0xFF	; 255
    4800:	92 95       	swap	r25
    4802:	99 0f       	add	r25, r25
    4804:	90 7e       	andi	r25, 0xE0	; 224
    4806:	8f 71       	andi	r24, 0x1F	; 31
    4808:	89 2b       	or	r24, r25
    480a:	80 93 4d 01 	sts	0x014D, r24	; 0x80014d <_ZL5explo+0x1>
static void handleOver()
{
    if (!isDefeated || counter >= OVER_OMIT) {
        updateShots();
        updateExplo();
        updateBullets();
    480e:	0e 94 22 0c 	call	0x1844	; 0x1844 <_ZL13updateBulletsv>
        updateEnemies();
    4812:	0e 94 46 1e 	call	0x3c8c	; 0x3c8c <_ZL13updateEnemiesv>
        if (gameFrames < GAME_DURATION + ENEMY_ACTIVE) gameFrames++;
    4816:	80 91 07 03 	lds	r24, 0x0307	; 0x800307 <_ZL10gameFrames>
    481a:	90 91 08 03 	lds	r25, 0x0308	; 0x800308 <_ZL10gameFrames+0x1>
    481e:	80 3e       	cpi	r24, 0xE0	; 224
    4820:	20 e1       	ldi	r18, 0x10	; 16
    4822:	92 07       	cpc	r25, r18
    4824:	28 f4       	brcc	.+10     	; 0x4830 <_ZL10handleOverv+0x56>
    4826:	01 96       	adiw	r24, 0x01	; 1
    4828:	90 93 08 03 	sts	0x0308, r25	; 0x800308 <_ZL10gameFrames+0x1>
    482c:	80 93 07 03 	sts	0x0307, r24	; 0x800307 <_ZL10gameFrames>
    }
    if (counter >= OVER_OMIT) {
    4830:	80 91 45 03 	lds	r24, 0x0345	; 0x800345 <counter>
    4834:	8c 33       	cpi	r24, 0x3C	; 60
    4836:	80 f0       	brcs	.+32     	; 0x4858 <_ZL10handleOverv+0x7e>
        if (counter >= 128) counter -= 8;
    4838:	87 ff       	sbrs	r24, 7
    483a:	03 c0       	rjmp	.+6      	; 0x4842 <_ZL10handleOverv+0x68>
    483c:	88 50       	subi	r24, 0x08	; 8
    483e:	80 93 45 03 	sts	0x0345, r24	; 0x800345 <counter>
        if (arduboy.buttonDown(B_BUTTON)) {
    4842:	84 e0       	ldi	r24, 0x04	; 4
    4844:	0e 94 f5 05 	call	0xbea	; 0xbea <_ZN10MyArduboy210buttonDownEh.constprop.43>
    4848:	88 23       	and	r24, r24
    484a:	69 f0       	breq	.+26     	; 0x4866 <_ZL10handleOverv+0x8c>
            (isDefeated) ? onRetry() : onQuit();
    484c:	80 91 45 01 	lds	r24, 0x0145	; 0x800145 <_ZL10isDefeated>
    4850:	88 23       	and	r24, r24
    4852:	31 f0       	breq	.+12     	; 0x4860 <_ZL10handleOverv+0x86>
}

static void onRetry(void)
{
    dprintln(F("Menu: retry"));
    initGame();
    4854:	0e 94 c9 18 	call	0x3192	; 0x3192 <_Z8initGamev>
            (isDefeated) ? onRetry() : onQuit();
        } else if (arduboy.buttonDown(A_BUTTON)) {
            openGameMenu();
        }
    }
    isInvalid = true;
    4858:	81 e0       	ldi	r24, 0x01	; 1
    485a:	80 93 4b 03 	sts	0x034B, r24	; 0x80034b <isInvalid>
}
    485e:	08 95       	ret
        if (gameFrames < GAME_DURATION + ENEMY_ACTIVE) gameFrames++;
    }
    if (counter >= OVER_OMIT) {
        if (counter >= 128) counter -= 8;
        if (arduboy.buttonDown(B_BUTTON)) {
            (isDefeated) ? onRetry() : onQuit();
    4860:	0e 94 e3 23 	call	0x47c6	; 0x47c6 <_ZL6onQuitv>
    4864:	f9 cf       	rjmp	.-14     	; 0x4858 <_ZL10handleOverv+0x7e>
        } else if (arduboy.buttonDown(A_BUTTON)) {
    4866:	88 e0       	ldi	r24, 0x08	; 8
    4868:	0e 94 f5 05 	call	0xbea	; 0xbea <_ZN10MyArduboy210buttonDownEh.constprop.43>
    486c:	88 23       	and	r24, r24
    486e:	a1 f3       	breq	.-24     	; 0x4858 <_ZL10handleOverv+0x7e>
            openGameMenu();
    4870:	0e 94 be 0f 	call	0x1f7c	; 0x1f7c <_ZL12openGameMenuv>
    4874:	f1 cf       	rjmp	.-30     	; 0x4858 <_ZL10handleOverv+0x7e>

00004876 <_ZL13handlePlayingv>:
    isInvalid = true;
}

static void handlePlaying()
{
    updateShots();
    4876:	0e 94 1b 0b 	call	0x1636	; 0x1636 <_ZL11updateShotsv>
    updatePlayer();
    487a:	0e 94 28 0b 	call	0x1650	; 0x1650 <_ZL12updatePlayerv>
    }
}

static void updateExplo(void)
{
    if (explo.a < IMG_EXPLO_ID_MAX) explo.a++;
    487e:	80 91 4d 01 	lds	r24, 0x014D	; 0x80014d <_ZL5explo+0x1>
    4882:	98 2f       	mov	r25, r24
    4884:	92 95       	swap	r25
    4886:	96 95       	lsr	r25
    4888:	97 70       	andi	r25, 0x07	; 7
    488a:	96 30       	cpi	r25, 0x06	; 6
    488c:	40 f4       	brcc	.+16     	; 0x489e <_ZL13handlePlayingv+0x28>
    488e:	9f 5f       	subi	r25, 0xFF	; 255
    4890:	92 95       	swap	r25
    4892:	99 0f       	add	r25, r25
    4894:	90 7e       	andi	r25, 0xE0	; 224
    4896:	8f 71       	andi	r24, 0x1F	; 31
    4898:	89 2b       	or	r24, r25
    489a:	80 93 4d 01 	sts	0x014D, r24	; 0x80014d <_ZL5explo+0x1>
static void handlePlaying()
{
    updateShots();
    updatePlayer();
    updateExplo();
    isDefeated = updateBullets();
    489e:	0e 94 22 0c 	call	0x1844	; 0x1844 <_ZL13updateBulletsv>
    48a2:	80 93 45 01 	sts	0x0145, r24	; 0x800145 <_ZL10isDefeated>
    bool isCleared = updateEnemies();
    48a6:	0e 94 46 1e 	call	0x3c8c	; 0x3c8c <_ZL13updateEnemiesv>
    gameFrames++;
    48aa:	20 91 07 03 	lds	r18, 0x0307	; 0x800307 <_ZL10gameFrames>
    48ae:	30 91 08 03 	lds	r19, 0x0308	; 0x800308 <_ZL10gameFrames+0x1>
    48b2:	2f 5f       	subi	r18, 0xFF	; 255
    48b4:	3f 4f       	sbci	r19, 0xFF	; 255
    48b6:	30 93 08 03 	sts	0x0308, r19	; 0x800308 <_ZL10gameFrames+0x1>
    48ba:	20 93 07 03 	sts	0x0307, r18	; 0x800307 <_ZL10gameFrames>
    record.playFrames++;
    48be:	40 91 3e 03 	lds	r20, 0x033E	; 0x80033e <record+0x4>
    48c2:	50 91 3f 03 	lds	r21, 0x033F	; 0x80033f <record+0x5>
    48c6:	60 91 40 03 	lds	r22, 0x0340	; 0x800340 <record+0x6>
    48ca:	70 91 41 03 	lds	r23, 0x0341	; 0x800341 <record+0x7>
    48ce:	4f 5f       	subi	r20, 0xFF	; 255
    48d0:	5f 4f       	sbci	r21, 0xFF	; 255
    48d2:	6f 4f       	sbci	r22, 0xFF	; 255
    48d4:	7f 4f       	sbci	r23, 0xFF	; 255
    48d6:	40 93 3e 03 	sts	0x033E, r20	; 0x80033e <record+0x4>
    48da:	50 93 3f 03 	sts	0x033F, r21	; 0x80033f <record+0x5>
    48de:	60 93 40 03 	sts	0x0340, r22	; 0x800340 <record+0x6>
    48e2:	70 93 41 03 	sts	0x0341, r23	; 0x800341 <record+0x7>
    isRecordDirty = true;
    48e6:	91 e0       	ldi	r25, 0x01	; 1
    48e8:	90 93 29 03 	sts	0x0329, r25	; 0x800329 <isRecordDirty>
        dprintln(isMuteki);
    }
    if (dbgRecvChar == 'q') isCleared = true;
#endif

    if (isDefeated || isCleared) {
    48ec:	90 91 45 01 	lds	r25, 0x0145	; 0x800145 <_ZL10isDefeated>
    48f0:	91 11       	cpse	r25, r1
    48f2:	0a c0       	rjmp	.+20     	; 0x4908 <_ZL13handlePlayingv+0x92>
    48f4:	81 11       	cpse	r24, r1
    48f6:	1b c0       	rjmp	.+54     	; 0x492e <_ZL13handlePlayingv+0xb8>
            dprintln(F("Clear!!"));
        }
        writeRecord();
        counter = 0;
        state = STATE_OVER;
    } else if (arduboy.buttonDown(A_BUTTON)) {
    48f8:	88 e0       	ldi	r24, 0x08	; 8
    48fa:	0e 94 f5 05 	call	0xbea	; 0xbea <_ZN10MyArduboy210buttonDownEh.constprop.43>
    48fe:	88 23       	and	r24, r24
    4900:	91 f0       	breq	.+36     	; 0x4926 <_ZL13handlePlayingv+0xb0>
        openGameMenu();
    4902:	0e 94 be 0f 	call	0x1f7c	; 0x1f7c <_ZL12openGameMenuv>
    4906:	0f c0       	rjmp	.+30     	; 0x4926 <_ZL13handlePlayingv+0xb0>
    if (dbgRecvChar == 'q') isCleared = true;
#endif

    if (isDefeated || isCleared) {
        if (isDefeated) {
            arduboy.playScore(soundOver, SND_PRIO_OVER);
    4908:	61 e0       	ldi	r22, 0x01	; 1
    490a:	86 e6       	ldi	r24, 0x66	; 102
    490c:	95 e0       	ldi	r25, 0x05	; 5
    490e:	0e 94 8c 12 	call	0x2518	; 0x2518 <_ZN10MyArduboy29playScoreEPKhha.constprop.27>
            sparkleLed(LED_IDX_OVER);
    4912:	85 e0       	ldi	r24, 0x05	; 5
    4914:	0e 94 ab 0b 	call	0x1756	; 0x1756 <_ZL10sparkleLedh>
        } else {
            arduboy.playScore(soundClear, SND_PRIO_OVER);
            record.isCleared = true;
            dprintln(F("Clear!!"));
        }
        writeRecord();
    4918:	0e 94 7b 23 	call	0x46f6	; 0x46f6 <_Z11writeRecordv>
        counter = 0;
    491c:	10 92 45 03 	sts	0x0345, r1	; 0x800345 <counter>
        state = STATE_OVER;
    4920:	82 e0       	ldi	r24, 0x02	; 2
    4922:	80 93 09 03 	sts	0x0309, r24	; 0x800309 <_ZL5state.lto_priv.52>
    } else if (arduboy.buttonDown(A_BUTTON)) {
        openGameMenu();
    }
    isInvalid = true;
    4926:	81 e0       	ldi	r24, 0x01	; 1
    4928:	80 93 4b 03 	sts	0x034B, r24	; 0x80034b <isInvalid>
}
    492c:	08 95       	ret
        if (isDefeated) {
            arduboy.playScore(soundOver, SND_PRIO_OVER);
            sparkleLed(LED_IDX_OVER);
            dprintln(F("Game over..."));
        } else {
            arduboy.playScore(soundClear, SND_PRIO_OVER);
    492e:	61 e0       	ldi	r22, 0x01	; 1
    4930:	8f e4       	ldi	r24, 0x4F	; 79
    4932:	95 e0       	ldi	r25, 0x05	; 5
    4934:	0e 94 8c 12 	call	0x2518	; 0x2518 <_ZN10MyArduboy29playScoreEPKhha.constprop.27>
            record.isCleared = true;
    4938:	80 91 3d 03 	lds	r24, 0x033D	; 0x80033d <record+0x3>
    493c:	80 68       	ori	r24, 0x80	; 128
    493e:	80 93 3d 03 	sts	0x033D, r24	; 0x80033d <record+0x3>
    4942:	ea cf       	rjmp	.-44     	; 0x4918 <_ZL13handlePlayingv+0xa2>

00004944 <_ZL11handleStartv>:
}

/*-----------------------------------------------------------------------------------------------*/

static void handleStart()
{
    4944:	cf 93       	push	r28
    if (counter >= START_OMIT) {
    4946:	c0 91 45 03 	lds	r28, 0x0345	; 0x800345 <counter>
    494a:	cc 33       	cpi	r28, 0x3C	; 60
    494c:	d8 f0       	brcs	.+54     	; 0x4984 <_ZL11handleStartv+0x40>
        updateShots();
    494e:	0e 94 1b 0b 	call	0x1636	; 0x1636 <_ZL11updateShotsv>
        updatePlayer();
    4952:	0e 94 28 0b 	call	0x1650	; 0x1650 <_ZL12updatePlayerv>
    }
    if (counter == START_DURATION) {
    4956:	c8 37       	cpi	r28, 0x78	; 120
    4958:	a9 f4       	brne	.+42     	; 0x4984 <_ZL11handleStartv+0x40>
        record.playCount++;
    495a:	80 91 42 03 	lds	r24, 0x0342	; 0x800342 <record+0x8>
    495e:	90 91 43 03 	lds	r25, 0x0343	; 0x800343 <record+0x9>
    4962:	01 96       	adiw	r24, 0x01	; 1
    4964:	90 93 43 03 	sts	0x0343, r25	; 0x800343 <record+0x9>
    4968:	80 93 42 03 	sts	0x0342, r24	; 0x800342 <record+0x8>
        isRecordDirty = true;
    496c:	c1 e0       	ldi	r28, 0x01	; 1
    496e:	c0 93 29 03 	sts	0x0329, r28	; 0x800329 <isRecordDirty>
        writeRecord();
    4972:	0e 94 7b 23 	call	0x46f6	; 0x46f6 <_Z11writeRecordv>
        state = STATE_PLAYING;
    4976:	c0 93 09 03 	sts	0x0309, r28	; 0x800309 <_ZL5state.lto_priv.52>
    } else if (arduboy.buttonDown(A_BUTTON)) {
        openGameMenu();
    }
    isInvalid = true;
    497a:	81 e0       	ldi	r24, 0x01	; 1
    497c:	80 93 4b 03 	sts	0x034B, r24	; 0x80034b <isInvalid>
}
    4980:	cf 91       	pop	r28
    4982:	08 95       	ret
    if (counter == START_DURATION) {
        record.playCount++;
        isRecordDirty = true;
        writeRecord();
        state = STATE_PLAYING;
    } else if (arduboy.buttonDown(A_BUTTON)) {
    4984:	88 e0       	ldi	r24, 0x08	; 8
    4986:	0e 94 f5 05 	call	0xbea	; 0xbea <_ZN10MyArduboy210buttonDownEh.constprop.43>
    498a:	88 23       	and	r24, r24
    498c:	b1 f3       	breq	.-20     	; 0x497a <_ZL11handleStartv+0x36>
        openGameMenu();
    498e:	0e 94 be 0f 	call	0x1f7c	; 0x1f7c <_ZL12openGameMenuv>
    4992:	f3 cf       	rjmp	.-26     	; 0x497a <_ZL11handleStartv+0x36>

00004994 <__vector_10>:
#endif
}

//	General interrupt
ISR(USB_GEN_vect)
{
    4994:	1f 92       	push	r1
    4996:	0f 92       	push	r0
    4998:	0f b6       	in	r0, 0x3f	; 63
    499a:	0f 92       	push	r0
    499c:	11 24       	eor	r1, r1
    499e:	8f 93       	push	r24
    49a0:	9f 93       	push	r25
	u8 udint = UDINT;
    49a2:	80 91 e1 00 	lds	r24, 0x00E1	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
	UDINT &= ~((1<<EORSTI) | (1<<SOFI)); // clear the IRQ flags for the IRQs which are handled here, except WAKEUPI and SUSPI (see below)
    49a6:	90 91 e1 00 	lds	r25, 0x00E1	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
    49aa:	93 7f       	andi	r25, 0xF3	; 243
    49ac:	90 93 e1 00 	sts	0x00E1, r25	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>

	//	End of Reset
	if (udint & (1<<EORSTI))
    49b0:	83 ff       	sbrs	r24, 3
    49b2:	0f c0       	rjmp	.+30     	; 0x49d2 <__vector_10+0x3e>
#define EP_SINGLE_16 0x12

static
void InitEP(u8 index, u8 type, u8 size)
{
	UENUM = index;
    49b4:	10 92 e9 00 	sts	0x00E9, r1	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
	UECONX = (1<<EPEN);
    49b8:	91 e0       	ldi	r25, 0x01	; 1
    49ba:	90 93 eb 00 	sts	0x00EB, r25	; 0x8000eb <__DATA_REGION_ORIGIN__+0x8b>
	UECFG0X = type;
    49be:	10 92 ec 00 	sts	0x00EC, r1	; 0x8000ec <__DATA_REGION_ORIGIN__+0x8c>
	UECFG1X = size;
    49c2:	92 e3       	ldi	r25, 0x32	; 50
    49c4:	90 93 ed 00 	sts	0x00ED, r25	; 0x8000ed <__DATA_REGION_ORIGIN__+0x8d>

	//	End of Reset
	if (udint & (1<<EORSTI))
	{
		InitEP(0,EP_TYPE_CONTROL,EP_SINGLE_64);	// init ep0
		_usbConfiguration = 0;			// not configured yet
    49c8:	10 92 70 03 	sts	0x0370, r1	; 0x800370 <_usbConfiguration>
		UEIENX = 1 << RXSTPE;			// Enable interrupts for ep0
    49cc:	98 e0       	ldi	r25, 0x08	; 8
    49ce:	90 93 f0 00 	sts	0x00F0, r25	; 0x8000f0 <__DATA_REGION_ORIGIN__+0x90>
	}

	//	Start of Frame - happens every millisecond so we use it for TX and RX LED one-shot timing, too
	if (udint & (1<<SOFI))
    49d2:	82 ff       	sbrs	r24, 2
    49d4:	22 c0       	rjmp	.+68     	; 0x4a1a <__vector_10+0x86>
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    49d6:	93 e0       	ldi	r25, 0x03	; 3
    49d8:	90 93 e9 00 	sts	0x00E9, r25	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
}

static inline u8 FifoByteCount()
{
	return UEBCLX;
    49dc:	90 91 f2 00 	lds	r25, 0x00F2	; 0x8000f2 <__DATA_REGION_ORIGIN__+0x92>
}

void USB_Flush(u8 ep)
{
	SetEP(ep);
	if (FifoByteCount())
    49e0:	99 23       	and	r25, r25
    49e2:	19 f0       	breq	.+6      	; 0x49ea <__vector_10+0x56>
	UEINTX = 0x6B;	// FIFOCON=0 NAKINI=1 RWAL=1 NAKOUTI=0 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=1
}

static inline void ReleaseTX()
{
	UEINTX = 0x3A;	// FIFOCON=0 NAKINI=0 RWAL=1 NAKOUTI=1 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=0
    49e4:	9a e3       	ldi	r25, 0x3A	; 58
    49e6:	90 93 e8 00 	sts	0x00E8, r25	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
	if (udint & (1<<SOFI))
	{
		USB_Flush(CDC_TX);				// Send a tx frame if found
		
		// check whether the one-shot period has elapsed.  if so, turn off the LED
		if (TxLEDPulse && !(--TxLEDPulse))
    49ea:	90 91 61 03 	lds	r25, 0x0361	; 0x800361 <TxLEDPulse>
    49ee:	99 23       	and	r25, r25
    49f0:	41 f0       	breq	.+16     	; 0x4a02 <__vector_10+0x6e>
    49f2:	90 91 61 03 	lds	r25, 0x0361	; 0x800361 <TxLEDPulse>
    49f6:	91 50       	subi	r25, 0x01	; 1
    49f8:	90 93 61 03 	sts	0x0361, r25	; 0x800361 <TxLEDPulse>
    49fc:	91 11       	cpse	r25, r1
    49fe:	01 c0       	rjmp	.+2      	; 0x4a02 <__vector_10+0x6e>
			TXLED0;
    4a00:	5d 9a       	sbi	0x0b, 5	; 11
		if (RxLEDPulse && !(--RxLEDPulse))
    4a02:	90 91 6f 03 	lds	r25, 0x036F	; 0x80036f <RxLEDPulse>
    4a06:	99 23       	and	r25, r25
    4a08:	41 f0       	breq	.+16     	; 0x4a1a <__vector_10+0x86>
    4a0a:	90 91 6f 03 	lds	r25, 0x036F	; 0x80036f <RxLEDPulse>
    4a0e:	91 50       	subi	r25, 0x01	; 1
    4a10:	90 93 6f 03 	sts	0x036F, r25	; 0x80036f <RxLEDPulse>
    4a14:	91 11       	cpse	r25, r1
    4a16:	01 c0       	rjmp	.+2      	; 0x4a1a <__vector_10+0x86>
			RXLED0;
    4a18:	28 9a       	sbi	0x05, 0	; 5
	}

	// the WAKEUPI interrupt is triggered as soon as there are non-idle patterns on the data
	// lines. Thus, the WAKEUPI interrupt can occur even if the controller is not in the "suspend" mode.
	// Therefore the we enable it only when USB is suspended
	if (udint & (1<<WAKEUPI))
    4a1a:	84 ff       	sbrs	r24, 4
    4a1c:	18 c0       	rjmp	.+48     	; 0x4a4e <__vector_10+0xba>
	{
		UDIEN = (UDIEN & ~(1<<WAKEUPE)) | (1<<SUSPE); // Disable interrupts for WAKEUP and enable interrupts for SUSPEND
    4a1e:	80 91 e2 00 	lds	r24, 0x00E2	; 0x8000e2 <__DATA_REGION_ORIGIN__+0x82>
    4a22:	8e 7e       	andi	r24, 0xEE	; 238
    4a24:	81 60       	ori	r24, 0x01	; 1
    4a26:	80 93 e2 00 	sts	0x00E2, r24	; 0x8000e2 <__DATA_REGION_ORIGIN__+0x82>

		//TODO
		// WAKEUPI shall be cleared by software (USB clock inputs must be enabled before).
		//USB_ClockEnable();
		UDINT &= ~(1<<WAKEUPI);
    4a2a:	80 91 e1 00 	lds	r24, 0x00E1	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
    4a2e:	8f 7e       	andi	r24, 0xEF	; 239
    4a30:	80 93 e1 00 	sts	0x00E1, r24	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
		_usbSuspendState = (_usbSuspendState & ~(1<<SUSPI)) | (1<<WAKEUPI);
    4a34:	80 91 62 03 	lds	r24, 0x0362	; 0x800362 <_usbSuspendState>
    4a38:	8e 7e       	andi	r24, 0xEE	; 238
    4a3a:	80 61       	ori	r24, 0x10	; 16

		//TODO
		//USB_ClockDisable();

		UDINT &= ~((1<<WAKEUPI) | (1<<SUSPI)); // clear any already pending WAKEUP IRQs and the SUSPI request
		_usbSuspendState = (_usbSuspendState & ~(1<<WAKEUPI)) | (1<<SUSPI);
    4a3c:	80 93 62 03 	sts	0x0362, r24	; 0x800362 <_usbSuspendState>
	}
}
    4a40:	9f 91       	pop	r25
    4a42:	8f 91       	pop	r24
    4a44:	0f 90       	pop	r0
    4a46:	0f be       	out	0x3f, r0	; 63
    4a48:	0f 90       	pop	r0
    4a4a:	1f 90       	pop	r1
    4a4c:	18 95       	reti
		// WAKEUPI shall be cleared by software (USB clock inputs must be enabled before).
		//USB_ClockEnable();
		UDINT &= ~(1<<WAKEUPI);
		_usbSuspendState = (_usbSuspendState & ~(1<<SUSPI)) | (1<<WAKEUPI);
	}
	else if (udint & (1<<SUSPI)) // only one of the WAKEUPI / SUSPI bits can be active at time
    4a4e:	80 ff       	sbrs	r24, 0
    4a50:	f7 cf       	rjmp	.-18     	; 0x4a40 <__vector_10+0xac>
	{
		UDIEN = (UDIEN & ~(1<<SUSPE)) | (1<<WAKEUPE); // Disable interrupts for SUSPEND and enable interrupts for WAKEUP
    4a52:	80 91 e2 00 	lds	r24, 0x00E2	; 0x8000e2 <__DATA_REGION_ORIGIN__+0x82>
    4a56:	8e 7e       	andi	r24, 0xEE	; 238
    4a58:	80 61       	ori	r24, 0x10	; 16
    4a5a:	80 93 e2 00 	sts	0x00E2, r24	; 0x8000e2 <__DATA_REGION_ORIGIN__+0x82>

		//TODO
		//USB_ClockDisable();

		UDINT &= ~((1<<WAKEUPI) | (1<<SUSPI)); // clear any already pending WAKEUP IRQs and the SUSPI request
    4a5e:	80 91 e1 00 	lds	r24, 0x00E1	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
    4a62:	8e 7e       	andi	r24, 0xEE	; 238
    4a64:	80 93 e1 00 	sts	0x00E1, r24	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
		_usbSuspendState = (_usbSuspendState & ~(1<<WAKEUPI)) | (1<<SUSPI);
    4a68:	80 91 62 03 	lds	r24, 0x0362	; 0x800362 <_usbSuspendState>
    4a6c:	8e 7e       	andi	r24, 0xEE	; 238
    4a6e:	81 60       	ori	r24, 0x01	; 1
    4a70:	e5 cf       	rjmp	.-54     	; 0x4a3c <__vector_10+0xa8>

00004a72 <__vector_11>:
	return true;
}

//	Endpoint 0 interrupt
ISR(USB_COM_vect)
{
    4a72:	1f 92       	push	r1
    4a74:	0f 92       	push	r0
    4a76:	0f b6       	in	r0, 0x3f	; 63
    4a78:	0f 92       	push	r0
    4a7a:	11 24       	eor	r1, r1
    4a7c:	cf 92       	push	r12
    4a7e:	df 92       	push	r13
    4a80:	ef 92       	push	r14
    4a82:	ff 92       	push	r15
    4a84:	0f 93       	push	r16
    4a86:	1f 93       	push	r17
    4a88:	2f 93       	push	r18
    4a8a:	3f 93       	push	r19
    4a8c:	4f 93       	push	r20
    4a8e:	5f 93       	push	r21
    4a90:	6f 93       	push	r22
    4a92:	7f 93       	push	r23
    4a94:	8f 93       	push	r24
    4a96:	9f 93       	push	r25
    4a98:	af 93       	push	r26
    4a9a:	bf 93       	push	r27
    4a9c:	ef 93       	push	r30
    4a9e:	ff 93       	push	r31
    4aa0:	cf 93       	push	r28
    4aa2:	df 93       	push	r29
    4aa4:	cd b7       	in	r28, 0x3d	; 61
    4aa6:	de b7       	in	r29, 0x3e	; 62
    4aa8:	6c 97       	sbiw	r28, 0x1c	; 28
    4aaa:	de bf       	out	0x3e, r29	; 62
    4aac:	cd bf       	out	0x3d, r28	; 61
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    4aae:	10 92 e9 00 	sts	0x00E9, r1	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
	return UEBCLX;
}

static inline u8 ReceivedSetupInt()
{
	return UEINTX & (1<<RXSTPI);
    4ab2:	80 91 e8 00 	lds	r24, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>

//	Endpoint 0 interrupt
ISR(USB_COM_vect)
{
    SetEP(0);
	if (!ReceivedSetupInt())
    4ab6:	83 ff       	sbrs	r24, 3
    4ab8:	25 c0       	rjmp	.+74     	; 0x4b04 <__vector_11+0x92>
		return;

	USBSetup setup;
	Recv((u8*)&setup,8);
    4aba:	68 e0       	ldi	r22, 0x08	; 8
    4abc:	ce 01       	movw	r24, r28
    4abe:	45 96       	adiw	r24, 0x15	; 21
    4ac0:	0e 94 c0 07 	call	0xf80	; 0xf80 <_ZL4RecvPVhh>
	return UEINTX & (1<<RXSTPI);
}

static inline void ClearSetupInt()
{
	UEINTX = ~((1<<RXSTPI) | (1<<RXOUTI) | (1<<TXINI));
    4ac4:	82 ef       	ldi	r24, 0xF2	; 242
    4ac6:	80 93 e8 00 	sts	0x00E8, r24	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>

	USBSetup setup;
	Recv((u8*)&setup,8);
	ClearSetupInt();

	u8 requestType = setup.bmRequestType;
    4aca:	8d 89       	ldd	r24, Y+21	; 0x15
	if (requestType & REQUEST_DEVICETOHOST)
    4acc:	87 ff       	sbrs	r24, 7
    4ace:	39 c0       	rjmp	.+114    	; 0x4b42 <__vector_11+0xd0>
volatile u8 _usbCurrentStatus = 0; // meaning of bits see usb_20.pdf, Figure 9-4. Information Returned by a GetStatus() Request to a Device
volatile u8 _usbSuspendState = 0; // copy of UDINT to check SUSPI and WAKEUPI bits

static inline void WaitIN(void)
{
	while (!(UEINTX & (1<<TXINI)))
    4ad0:	90 91 e8 00 	lds	r25, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
    4ad4:	90 ff       	sbrs	r25, 0
    4ad6:	fc cf       	rjmp	.-8      	; 0x4ad0 <__vector_11+0x5e>
		WaitIN();
	else
		ClearIN();

    bool ok = true;
	if (REQUEST_STANDARD == (requestType & REQUEST_TYPE))
    4ad8:	98 2f       	mov	r25, r24
    4ada:	90 76       	andi	r25, 0x60	; 96
    4adc:	09 f0       	breq	.+2      	; 0x4ae0 <__vector_11+0x6e>
    4ade:	34 c1       	rjmp	.+616    	; 0x4d48 <__vector_11+0x2d6>
	{
		//	Standard Requests
		u8 r = setup.bRequest;
    4ae0:	9e 89       	ldd	r25, Y+22	; 0x16
    4ae2:	4f 89       	ldd	r20, Y+23	; 0x17
    4ae4:	58 8d       	ldd	r21, Y+24	; 0x18
		u16 wValue = setup.wValueL | (setup.wValueH << 8);
    4ae6:	2f 89       	ldd	r18, Y+23	; 0x17
    4ae8:	f8 8c       	ldd	r15, Y+24	; 0x18
		if (GET_STATUS == r)
    4aea:	91 11       	cpse	r25, r1
    4aec:	31 c0       	rjmp	.+98     	; 0x4b50 <__vector_11+0xde>
		{
			if (requestType == (REQUEST_DEVICETOHOST | REQUEST_STANDARD | REQUEST_DEVICE))
    4aee:	80 38       	cpi	r24, 0x80	; 128
    4af0:	61 f5       	brne	.+88     	; 0x4b4a <__vector_11+0xd8>
			{
				Send8(_usbCurrentStatus);
    4af2:	80 91 60 03 	lds	r24, 0x0360	; 0x800360 <_usbCurrentStatus>
	return UEDATX;	
}

static inline void Send8(u8 d)
{
	UEDATX = d;
    4af6:	80 93 f1 00 	sts	0x00F1, r24	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
    4afa:	10 92 f1 00 	sts	0x00F1, r1	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
		;
}

static inline void ClearIN(void)
{
	UEINTX = ~(1<<TXINI);
    4afe:	8e ef       	ldi	r24, 0xFE	; 254
    4b00:	80 93 e8 00 	sts	0x00E8, r24	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
		ClearIN();
	else
	{
		Stall();
	}
}
    4b04:	6c 96       	adiw	r28, 0x1c	; 28
    4b06:	0f b6       	in	r0, 0x3f	; 63
    4b08:	f8 94       	cli
    4b0a:	de bf       	out	0x3e, r29	; 62
    4b0c:	0f be       	out	0x3f, r0	; 63
    4b0e:	cd bf       	out	0x3d, r28	; 61
    4b10:	df 91       	pop	r29
    4b12:	cf 91       	pop	r28
    4b14:	ff 91       	pop	r31
    4b16:	ef 91       	pop	r30
    4b18:	bf 91       	pop	r27
    4b1a:	af 91       	pop	r26
    4b1c:	9f 91       	pop	r25
    4b1e:	8f 91       	pop	r24
    4b20:	7f 91       	pop	r23
    4b22:	6f 91       	pop	r22
    4b24:	5f 91       	pop	r21
    4b26:	4f 91       	pop	r20
    4b28:	3f 91       	pop	r19
    4b2a:	2f 91       	pop	r18
    4b2c:	1f 91       	pop	r17
    4b2e:	0f 91       	pop	r16
    4b30:	ff 90       	pop	r15
    4b32:	ef 90       	pop	r14
    4b34:	df 90       	pop	r13
    4b36:	cf 90       	pop	r12
    4b38:	0f 90       	pop	r0
    4b3a:	0f be       	out	0x3f, r0	; 63
    4b3c:	0f 90       	pop	r0
    4b3e:	1f 90       	pop	r1
    4b40:	18 95       	reti
		;
}

static inline void ClearIN(void)
{
	UEINTX = ~(1<<TXINI);
    4b42:	9e ef       	ldi	r25, 0xFE	; 254
    4b44:	90 93 e8 00 	sts	0x00E8, r25	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
    4b48:	c7 cf       	rjmp	.-114    	; 0x4ad8 <__vector_11+0x66>
	return UEDATX;	
}

static inline void Send8(u8 d)
{
	UEDATX = d;
    4b4a:	10 92 f1 00 	sts	0x00F1, r1	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
    4b4e:	d5 cf       	rjmp	.-86     	; 0x4afa <__vector_11+0x88>
				// see "Figure 9-6. Information Returned by a GetStatus() Request to an Endpoint" in usb_20.pdf for more information
				Send8(0);
				Send8(0);
			}
		}
		else if (CLEAR_FEATURE == r)
    4b50:	91 30       	cpi	r25, 0x01	; 1
    4b52:	59 f4       	brne	.+22     	; 0x4b6a <__vector_11+0xf8>
		{
			if((requestType == (REQUEST_HOSTTODEVICE | REQUEST_STANDARD | REQUEST_DEVICE))
    4b54:	81 11       	cpse	r24, r1
    4b56:	d3 cf       	rjmp	.-90     	; 0x4afe <__vector_11+0x8c>
				&& (wValue == DEVICE_REMOTE_WAKEUP))
    4b58:	41 30       	cpi	r20, 0x01	; 1
    4b5a:	51 05       	cpc	r21, r1
    4b5c:	81 f6       	brne	.-96     	; 0x4afe <__vector_11+0x8c>
			{
				_usbCurrentStatus &= ~FEATURE_REMOTE_WAKEUP_ENABLED;
    4b5e:	80 91 60 03 	lds	r24, 0x0360	; 0x800360 <_usbCurrentStatus>
    4b62:	8d 7f       	andi	r24, 0xFD	; 253
		else if (SET_FEATURE == r)
		{
			if((requestType == (REQUEST_HOSTTODEVICE | REQUEST_STANDARD | REQUEST_DEVICE))
				&& (wValue == DEVICE_REMOTE_WAKEUP))
			{
				_usbCurrentStatus |= FEATURE_REMOTE_WAKEUP_ENABLED;
    4b64:	80 93 60 03 	sts	0x0360, r24	; 0x800360 <_usbCurrentStatus>
    4b68:	ca cf       	rjmp	.-108    	; 0x4afe <__vector_11+0x8c>
				&& (wValue == DEVICE_REMOTE_WAKEUP))
			{
				_usbCurrentStatus &= ~FEATURE_REMOTE_WAKEUP_ENABLED;
			}
		}
		else if (SET_FEATURE == r)
    4b6a:	93 30       	cpi	r25, 0x03	; 3
    4b6c:	49 f4       	brne	.+18     	; 0x4b80 <__vector_11+0x10e>
		{
			if((requestType == (REQUEST_HOSTTODEVICE | REQUEST_STANDARD | REQUEST_DEVICE))
    4b6e:	81 11       	cpse	r24, r1
    4b70:	c6 cf       	rjmp	.-116    	; 0x4afe <__vector_11+0x8c>
				&& (wValue == DEVICE_REMOTE_WAKEUP))
    4b72:	41 30       	cpi	r20, 0x01	; 1
    4b74:	51 05       	cpc	r21, r1
    4b76:	19 f6       	brne	.-122    	; 0x4afe <__vector_11+0x8c>
			{
				_usbCurrentStatus |= FEATURE_REMOTE_WAKEUP_ENABLED;
    4b78:	80 91 60 03 	lds	r24, 0x0360	; 0x800360 <_usbCurrentStatus>
    4b7c:	82 60       	ori	r24, 0x02	; 2
    4b7e:	f2 cf       	rjmp	.-28     	; 0x4b64 <__vector_11+0xf2>
			}
		}
		else if (SET_ADDRESS == r)
    4b80:	95 30       	cpi	r25, 0x05	; 5
    4b82:	41 f4       	brne	.+16     	; 0x4b94 <__vector_11+0x122>
volatile u8 _usbCurrentStatus = 0; // meaning of bits see usb_20.pdf, Figure 9-4. Information Returned by a GetStatus() Request to a Device
volatile u8 _usbSuspendState = 0; // copy of UDINT to check SUSPI and WAKEUPI bits

static inline void WaitIN(void)
{
	while (!(UEINTX & (1<<TXINI)))
    4b84:	80 91 e8 00 	lds	r24, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
    4b88:	80 ff       	sbrs	r24, 0
    4b8a:	fc cf       	rjmp	.-8      	; 0x4b84 <__vector_11+0x112>
			}
		}
		else if (SET_ADDRESS == r)
		{
			WaitIN();
			UDADDR = setup.wValueL | (1<<ADDEN);
    4b8c:	20 68       	ori	r18, 0x80	; 128
    4b8e:	20 93 e3 00 	sts	0x00E3, r18	; 0x8000e3 <__DATA_REGION_ORIGIN__+0x83>
    4b92:	b5 cf       	rjmp	.-150    	; 0x4afe <__vector_11+0x8c>
		}
		else if (GET_DESCRIPTOR == r)
    4b94:	96 30       	cpi	r25, 0x06	; 6
    4b96:	09 f0       	breq	.+2      	; 0x4b9a <__vector_11+0x128>
    4b98:	a9 c0       	rjmp	.+338    	; 0x4cec <__vector_11+0x27a>
    4b9a:	0b 8d       	ldd	r16, Y+27	; 0x1b
    4b9c:	1c 8d       	ldd	r17, Y+28	; 0x1c

static
bool SendDescriptor(USBSetup& setup)
{
	u8 t = setup.wValueH;
	if (USB_CONFIGURATION_DESCRIPTOR_TYPE == t)
    4b9e:	22 e0       	ldi	r18, 0x02	; 2
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    4ba0:	10 92 e9 00 	sts	0x00E9, r1	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
static int _cmark;
static int _cend;
void InitControl(int end)
{
	SetEP(0);
	_cmark = 0;
    4ba4:	10 92 5e 03 	sts	0x035E, r1	; 0x80035e <_ZL6_cmark+0x1>
    4ba8:	10 92 5d 03 	sts	0x035D, r1	; 0x80035d <_ZL6_cmark>

static
bool SendDescriptor(USBSetup& setup)
{
	u8 t = setup.wValueH;
	if (USB_CONFIGURATION_DESCRIPTOR_TYPE == t)
    4bac:	f2 12       	cpse	r15, r18
    4bae:	2e c0       	rjmp	.+92     	; 0x4c0c <__vector_11+0x19a>
static int _cend;
void InitControl(int end)
{
	SetEP(0);
	_cmark = 0;
	_cend = end;
    4bb0:	10 92 5c 03 	sts	0x035C, r1	; 0x80035c <_ZL5_cend+0x1>
    4bb4:	10 92 5b 03 	sts	0x035B, r1	; 0x80035b <_ZL5_cend>
static
bool SendConfiguration(int maxlen)
{
	//	Count and measure interfaces
	InitControl(0);
	u8 interfaces = SendInterfaces();
    4bb8:	0e 94 8f 07 	call	0xf1e	; 0xf1e <_ZL14SendInterfacesv>
	ConfigDescriptor config = D_CONFIG(_cmark + sizeof(ConfigDescriptor),interfaces);
    4bbc:	1f 82       	std	Y+7, r1	; 0x07
    4bbe:	99 e0       	ldi	r25, 0x09	; 9
    4bc0:	99 83       	std	Y+1, r25	; 0x01
    4bc2:	fa 82       	std	Y+2, r15	; 0x02
    4bc4:	91 e0       	ldi	r25, 0x01	; 1
    4bc6:	9e 83       	std	Y+6, r25	; 0x06
    4bc8:	90 ea       	ldi	r25, 0xA0	; 160
    4bca:	98 87       	std	Y+8, r25	; 0x08
    4bcc:	9a ef       	ldi	r25, 0xFA	; 250
    4bce:	99 87       	std	Y+9, r25	; 0x09
    4bd0:	20 91 5d 03 	lds	r18, 0x035D	; 0x80035d <_ZL6_cmark>
    4bd4:	30 91 5e 03 	lds	r19, 0x035E	; 0x80035e <_ZL6_cmark+0x1>
    4bd8:	27 5f       	subi	r18, 0xF7	; 247
    4bda:	3f 4f       	sbci	r19, 0xFF	; 255
    4bdc:	3c 83       	std	Y+4, r19	; 0x04
    4bde:	2b 83       	std	Y+3, r18	; 0x03
    4be0:	8d 83       	std	Y+5, r24	; 0x05
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    4be2:	10 92 e9 00 	sts	0x00E9, r1	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
static int _cmark;
static int _cend;
void InitControl(int end)
{
	SetEP(0);
	_cmark = 0;
    4be6:	10 92 5e 03 	sts	0x035E, r1	; 0x80035e <_ZL6_cmark+0x1>
    4bea:	10 92 5d 03 	sts	0x035D, r1	; 0x80035d <_ZL6_cmark>
	_cend = end;
    4bee:	10 93 5c 03 	sts	0x035C, r17	; 0x80035c <_ZL5_cend+0x1>
    4bf2:	00 93 5b 03 	sts	0x035B, r16	; 0x80035b <_ZL5_cend>
	u8 interfaces = SendInterfaces();
	ConfigDescriptor config = D_CONFIG(_cmark + sizeof(ConfigDescriptor),interfaces);

	//	Now send them
	InitControl(maxlen);
	USB_SendControl(0,&config,sizeof(ConfigDescriptor));
    4bf6:	49 e0       	ldi	r20, 0x09	; 9
    4bf8:	50 e0       	ldi	r21, 0x00	; 0
    4bfa:	be 01       	movw	r22, r28
    4bfc:	6f 5f       	subi	r22, 0xFF	; 255
    4bfe:	7f 4f       	sbci	r23, 0xFF	; 255
    4c00:	80 e0       	ldi	r24, 0x00	; 0
    4c02:	0e 94 69 07 	call	0xed2	; 0xed2 <_Z15USB_SendControlhPKvi>
	SendInterfaces();
    4c06:	0e 94 8f 07 	call	0xf1e	; 0xf1e <_ZL14SendInterfacesv>
    4c0a:	79 cf       	rjmp	.-270    	; 0x4afe <__vector_11+0x8c>
static int _cend;
void InitControl(int end)
{
	SetEP(0);
	_cmark = 0;
	_cend = end;
    4c0c:	10 93 5c 03 	sts	0x035C, r17	; 0x80035c <_ZL5_cend+0x1>
    4c10:	00 93 5b 03 	sts	0x035B, r16	; 0x80035b <_ZL5_cend>
	if (USB_CONFIGURATION_DESCRIPTOR_TYPE == t)
		return SendConfiguration(setup.wLength);

	InitControl(setup.wLength);
#ifdef PLUGGABLE_USB_ENABLED
	int ret = PluggableUSB().getDescriptor(setup);
    4c14:	0e 94 a6 06 	call	0xd4c	; 0xd4c <_Z12PluggableUSBv>
}

int PluggableUSB_::getDescriptor(USBSetup& setup)
{
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
    4c18:	dc 01       	movw	r26, r24
    4c1a:	12 96       	adiw	r26, 0x02	; 2
    4c1c:	0d 91       	ld	r16, X+
    4c1e:	1c 91       	ld	r17, X
    4c20:	01 15       	cp	r16, r1
    4c22:	11 05       	cpc	r17, r1
    4c24:	09 f4       	brne	.+2      	; 0x4c28 <__vector_11+0x1b6>
    4c26:	51 c1       	rjmp	.+674    	; 0x4eca <__vector_11+0x458>
		int ret = node->getDescriptor(setup);
    4c28:	d8 01       	movw	r26, r16
    4c2a:	ed 91       	ld	r30, X+
    4c2c:	fc 91       	ld	r31, X
    4c2e:	04 80       	ldd	r0, Z+4	; 0x04
    4c30:	f5 81       	ldd	r31, Z+5	; 0x05
    4c32:	e0 2d       	mov	r30, r0
    4c34:	be 01       	movw	r22, r28
    4c36:	6b 5e       	subi	r22, 0xEB	; 235
    4c38:	7f 4f       	sbci	r23, 0xFF	; 255
    4c3a:	c8 01       	movw	r24, r16
    4c3c:	09 95       	icall
		// ret!=0 -> request has been processed
		if (ret)
    4c3e:	00 97       	sbiw	r24, 0x00	; 0
    4c40:	09 f0       	breq	.+2      	; 0x4c44 <__vector_11+0x1d2>
    4c42:	3e c1       	rjmp	.+636    	; 0x4ec0 <__vector_11+0x44e>
}

int PluggableUSB_::getDescriptor(USBSetup& setup)
{
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
    4c44:	f8 01       	movw	r30, r16
    4c46:	00 85       	ldd	r16, Z+8	; 0x08
    4c48:	11 85       	ldd	r17, Z+9	; 0x09
    4c4a:	ea cf       	rjmp	.-44     	; 0x4c20 <__vector_11+0x1ae>
	const u8* desc_addr = 0;
	if (USB_DEVICE_DESCRIPTOR_TYPE == t)
	{
		desc_addr = (const u8*)&USB_DeviceDescriptorIAD;
	}
	else if (USB_STRING_DESCRIPTOR_TYPE == t)
    4c4c:	f3 e0       	ldi	r31, 0x03	; 3
    4c4e:	ff 12       	cpse	r15, r31
    4c50:	0e c0       	rjmp	.+28     	; 0x4c6e <__vector_11+0x1fc>
	{
		if (setup.wValueL == 0) {
    4c52:	8f 89       	ldd	r24, Y+23	; 0x17
    4c54:	88 23       	and	r24, r24
    4c56:	09 f4       	brne	.+2      	; 0x4c5a <__vector_11+0x1e8>
    4c58:	40 c0       	rjmp	.+128    	; 0x4cda <__vector_11+0x268>
			desc_addr = (const u8*)&STRING_LANGUAGE;
		}
		else if (setup.wValueL == IPRODUCT) {
    4c5a:	82 30       	cpi	r24, 0x02	; 2
    4c5c:	61 f4       	brne	.+24     	; 0x4c76 <__vector_11+0x204>
			return USB_SendStringDescriptor(STRING_PRODUCT, strlen(USB_PRODUCT), TRANSFER_PGM);
    4c5e:	40 e8       	ldi	r20, 0x80	; 128
    4c60:	60 e1       	ldi	r22, 0x10	; 16
    4c62:	82 e6       	ldi	r24, 0x62	; 98
    4c64:	9b e0       	ldi	r25, 0x0B	; 11
		}
		else if (setup.wValueL == ISERIAL) {
#ifdef PLUGGABLE_USB_ENABLED
			char name[ISERIAL_MAX_LEN];
			PluggableUSB().getShortName(name);
			return USB_SendStringDescriptor((uint8_t*)name, strlen(name), 0);
    4c66:	0e 94 d6 28 	call	0x51ac	; 0x51ac <_ZL24USB_SendStringDescriptorPKhhh>
	{
		InitControl(setup.wLength);		//	Max length of transfer
		ok = ClassInterfaceRequest(setup);
	}

	if (ok)
    4c6a:	81 11       	cpse	r24, r1
    4c6c:	48 cf       	rjmp	.-368    	; 0x4afe <__vector_11+0x8c>
	UEINTX = ~((1<<RXSTPI) | (1<<RXOUTI) | (1<<TXINI));
}

static inline void Stall()
{
	UECONX = (1<<STALLRQ) | (1<<EPEN);
    4c6e:	81 e2       	ldi	r24, 0x21	; 33
    4c70:	80 93 eb 00 	sts	0x00EB, r24	; 0x8000eb <__DATA_REGION_ORIGIN__+0x8b>
    4c74:	47 cf       	rjmp	.-370    	; 0x4b04 <__vector_11+0x92>
			desc_addr = (const u8*)&STRING_LANGUAGE;
		}
		else if (setup.wValueL == IPRODUCT) {
			return USB_SendStringDescriptor(STRING_PRODUCT, strlen(USB_PRODUCT), TRANSFER_PGM);
		}
		else if (setup.wValueL == IMANUFACTURER) {
    4c76:	81 30       	cpi	r24, 0x01	; 1
    4c78:	29 f4       	brne	.+10     	; 0x4c84 <__vector_11+0x212>
			return USB_SendStringDescriptor(STRING_MANUFACTURER, strlen(USB_MANUFACTURER), TRANSFER_PGM);
    4c7a:	40 e8       	ldi	r20, 0x80	; 128
    4c7c:	6b e0       	ldi	r22, 0x0B	; 11
    4c7e:	86 e5       	ldi	r24, 0x56	; 86
    4c80:	9b e0       	ldi	r25, 0x0B	; 11
    4c82:	f1 cf       	rjmp	.-30     	; 0x4c66 <__vector_11+0x1f4>
		}
		else if (setup.wValueL == ISERIAL) {
    4c84:	83 30       	cpi	r24, 0x03	; 3
    4c86:	99 f7       	brne	.-26     	; 0x4c6e <__vector_11+0x1fc>
#ifdef PLUGGABLE_USB_ENABLED
			char name[ISERIAL_MAX_LEN];
			PluggableUSB().getShortName(name);
    4c88:	0e 94 a6 06 	call	0xd4c	; 0xd4c <_Z12PluggableUSBv>
}

void PluggableUSB_::getShortName(char *iSerialNum)
{
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
    4c8c:	dc 01       	movw	r26, r24
    4c8e:	12 96       	adiw	r26, 0x02	; 2
    4c90:	ed 90       	ld	r14, X+
    4c92:	fc 90       	ld	r15, X
    4c94:	8e 01       	movw	r16, r28
    4c96:	0f 5f       	subi	r16, 0xFF	; 255
    4c98:	1f 4f       	sbci	r17, 0xFF	; 255
    4c9a:	68 01       	movw	r12, r16
    4c9c:	e1 14       	cp	r14, r1
    4c9e:	f1 04       	cpc	r15, r1
    4ca0:	79 f0       	breq	.+30     	; 0x4cc0 <__vector_11+0x24e>
		iSerialNum += node->getShortName(iSerialNum);
    4ca2:	d7 01       	movw	r26, r14
    4ca4:	ed 91       	ld	r30, X+
    4ca6:	fc 91       	ld	r31, X
    4ca8:	06 80       	ldd	r0, Z+6	; 0x06
    4caa:	f7 81       	ldd	r31, Z+7	; 0x07
    4cac:	e0 2d       	mov	r30, r0
    4cae:	b8 01       	movw	r22, r16
    4cb0:	c7 01       	movw	r24, r14
    4cb2:	09 95       	icall
    4cb4:	08 0f       	add	r16, r24
    4cb6:	11 1d       	adc	r17, r1
}

void PluggableUSB_::getShortName(char *iSerialNum)
{
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
    4cb8:	f7 01       	movw	r30, r14
    4cba:	e0 84       	ldd	r14, Z+8	; 0x08
    4cbc:	f1 84       	ldd	r15, Z+9	; 0x09
    4cbe:	ee cf       	rjmp	.-36     	; 0x4c9c <__vector_11+0x22a>
		iSerialNum += node->getShortName(iSerialNum);
	}
	*iSerialNum = 0;
    4cc0:	d8 01       	movw	r26, r16
    4cc2:	1c 92       	st	X, r1
			return USB_SendStringDescriptor((uint8_t*)name, strlen(name), 0);
    4cc4:	f6 01       	movw	r30, r12
    4cc6:	01 90       	ld	r0, Z+
    4cc8:	00 20       	and	r0, r0
    4cca:	e9 f7       	brne	.-6      	; 0x4cc6 <__vector_11+0x254>
    4ccc:	31 97       	sbiw	r30, 0x01	; 1
    4cce:	bf 01       	movw	r22, r30
    4cd0:	6c 19       	sub	r22, r12
    4cd2:	7d 09       	sbc	r23, r13
    4cd4:	40 e0       	ldi	r20, 0x00	; 0
    4cd6:	c6 01       	movw	r24, r12
    4cd8:	c6 cf       	rjmp	.-116    	; 0x4c66 <__vector_11+0x1f4>
		desc_addr = (const u8*)&USB_DeviceDescriptorIAD;
	}
	else if (USB_STRING_DESCRIPTOR_TYPE == t)
	{
		if (setup.wValueL == 0) {
			desc_addr = (const u8*)&STRING_LANGUAGE;
    4cda:	60 e4       	ldi	r22, 0x40	; 64
    4cdc:	7b e0       	ldi	r23, 0x0B	; 11
			return false;
	}

	if (desc_addr == 0)
		return false;
	u8 desc_length = pgm_read_byte(desc_addr);
    4cde:	fb 01       	movw	r30, r22
    4ce0:	44 91       	lpm	r20, Z

	USB_SendControl(TRANSFER_PGM,desc_addr,desc_length);
    4ce2:	50 e0       	ldi	r21, 0x00	; 0
    4ce4:	80 e8       	ldi	r24, 0x80	; 128

	if (REQUEST_DEVICETOHOST_CLASS_INTERFACE == requestType)
	{
		if (CDC_GET_LINE_CODING == r)
		{
			USB_SendControl(0,(void*)&_usbLineInfo,7);
    4ce6:	0e 94 69 07 	call	0xed2	; 0xed2 <_Z15USB_SendControlhPKvi>
    4cea:	09 cf       	rjmp	.-494    	; 0x4afe <__vector_11+0x8c>
		}
		else if (GET_DESCRIPTOR == r)
		{
			ok = SendDescriptor(setup);
		}
		else if (SET_DESCRIPTOR == r)
    4cec:	97 30       	cpi	r25, 0x07	; 7
    4cee:	09 f4       	brne	.+2      	; 0x4cf2 <__vector_11+0x280>
    4cf0:	be cf       	rjmp	.-132    	; 0x4c6e <__vector_11+0x1fc>
		{
			ok = false;
		}
		else if (GET_CONFIGURATION == r)
    4cf2:	98 30       	cpi	r25, 0x08	; 8
    4cf4:	21 f4       	brne	.+8      	; 0x4cfe <__vector_11+0x28c>
	return UEDATX;	
}

static inline void Send8(u8 d)
{
	UEDATX = d;
    4cf6:	81 e0       	ldi	r24, 0x01	; 1
    4cf8:	80 93 f1 00 	sts	0x00F1, r24	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
    4cfc:	00 cf       	rjmp	.-512    	; 0x4afe <__vector_11+0x8c>
		}
		else if (GET_CONFIGURATION == r)
		{
			Send8(1);
		}
		else if (SET_CONFIGURATION == r)
    4cfe:	99 30       	cpi	r25, 0x09	; 9
    4d00:	09 f0       	breq	.+2      	; 0x4d04 <__vector_11+0x292>
    4d02:	fd ce       	rjmp	.-518    	; 0x4afe <__vector_11+0x8c>
		{
			if (REQUEST_DEVICE == (requestType & REQUEST_RECIPIENT))
    4d04:	83 70       	andi	r24, 0x03	; 3
    4d06:	09 f0       	breq	.+2      	; 0x4d0a <__vector_11+0x298>
    4d08:	b2 cf       	rjmp	.-156    	; 0x4c6e <__vector_11+0x1fc>
    4d0a:	ec e1       	ldi	r30, 0x1C	; 28
    4d0c:	f1 e0       	ldi	r31, 0x01	; 1
}

static
void InitEndpoints()
{
	for (u8 i = 1; i < sizeof(_initEndpoints) && _initEndpoints[i] != 0; i++)
    4d0e:	81 e0       	ldi	r24, 0x01	; 1
	{
		UENUM = i;
		UECONX = (1<<EPEN);
    4d10:	31 e0       	ldi	r19, 0x01	; 1
		UECFG0X = _initEndpoints[i];
#if USB_EP_SIZE == 16
		UECFG1X = EP_SINGLE_16;
#elif USB_EP_SIZE == 64
		UECFG1X = EP_DOUBLE_64;
    4d12:	96 e3       	ldi	r25, 0x36	; 54
}

static
void InitEndpoints()
{
	for (u8 i = 1; i < sizeof(_initEndpoints) && _initEndpoints[i] != 0; i++)
    4d14:	21 91       	ld	r18, Z+
    4d16:	22 23       	and	r18, r18
    4d18:	71 f0       	breq	.+28     	; 0x4d36 <__vector_11+0x2c4>
	{
		UENUM = i;
    4d1a:	80 93 e9 00 	sts	0x00E9, r24	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
		UECONX = (1<<EPEN);
    4d1e:	30 93 eb 00 	sts	0x00EB, r19	; 0x8000eb <__DATA_REGION_ORIGIN__+0x8b>
		UECFG0X = _initEndpoints[i];
    4d22:	df 01       	movw	r26, r30
    4d24:	11 97       	sbiw	r26, 0x01	; 1
    4d26:	2c 91       	ld	r18, X
    4d28:	20 93 ec 00 	sts	0x00EC, r18	; 0x8000ec <__DATA_REGION_ORIGIN__+0x8c>
#if USB_EP_SIZE == 16
		UECFG1X = EP_SINGLE_16;
#elif USB_EP_SIZE == 64
		UECFG1X = EP_DOUBLE_64;
    4d2c:	90 93 ed 00 	sts	0x00ED, r25	; 0x8000ed <__DATA_REGION_ORIGIN__+0x8d>
}

static
void InitEndpoints()
{
	for (u8 i = 1; i < sizeof(_initEndpoints) && _initEndpoints[i] != 0; i++)
    4d30:	8f 5f       	subi	r24, 0xFF	; 255
    4d32:	87 30       	cpi	r24, 0x07	; 7
    4d34:	79 f7       	brne	.-34     	; 0x4d14 <__vector_11+0x2a2>
		UECFG1X = EP_DOUBLE_64;
#else
#error Unsupported value for USB_EP_SIZE
#endif
	}
	UERST = 0x7E;	// And reset them
    4d36:	8e e7       	ldi	r24, 0x7E	; 126
    4d38:	80 93 ea 00 	sts	0x00EA, r24	; 0x8000ea <__DATA_REGION_ORIGIN__+0x8a>
	UERST = 0;
    4d3c:	10 92 ea 00 	sts	0x00EA, r1	; 0x8000ea <__DATA_REGION_ORIGIN__+0x8a>
		else if (SET_CONFIGURATION == r)
		{
			if (REQUEST_DEVICE == (requestType & REQUEST_RECIPIENT))
			{
				InitEndpoints();
				_usbConfiguration = setup.wValueL;
    4d40:	8f 89       	ldd	r24, Y+23	; 0x17
    4d42:	80 93 70 03 	sts	0x0370, r24	; 0x800370 <_usbConfiguration>
    4d46:	db ce       	rjmp	.-586    	; 0x4afe <__vector_11+0x8c>
		{
		}
	}
	else
	{
		InitControl(setup.wLength);		//	Max length of transfer
    4d48:	8b 8d       	ldd	r24, Y+27	; 0x1b
    4d4a:	9c 8d       	ldd	r25, Y+28	; 0x1c
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    4d4c:	10 92 e9 00 	sts	0x00E9, r1	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
static int _cmark;
static int _cend;
void InitControl(int end)
{
	SetEP(0);
	_cmark = 0;
    4d50:	10 92 5e 03 	sts	0x035E, r1	; 0x80035e <_ZL6_cmark+0x1>
    4d54:	10 92 5d 03 	sts	0x035D, r1	; 0x80035d <_ZL6_cmark>
	_cend = end;
    4d58:	90 93 5c 03 	sts	0x035C, r25	; 0x80035c <_ZL5_cend+0x1>
    4d5c:	80 93 5b 03 	sts	0x035B, r24	; 0x80035b <_ZL5_cend>
static
bool ClassInterfaceRequest(USBSetup& setup)
{
	u8 i = setup.wIndex;

	if (CDC_ACM_INTERFACE == i)
    4d60:	89 8d       	ldd	r24, Y+25	; 0x19
    4d62:	81 11       	cpse	r24, r1
    4d64:	92 c0       	rjmp	.+292    	; 0x4e8a <__vector_11+0x418>
	return USB_SendControl(TRANSFER_PGM,&_cdcInterface,sizeof(_cdcInterface));
}

bool CDC_Setup(USBSetup& setup)
{
	u8 r = setup.bRequest;
    4d66:	8e 89       	ldd	r24, Y+22	; 0x16
	u8 requestType = setup.bmRequestType;
    4d68:	9d 89       	ldd	r25, Y+21	; 0x15

	if (REQUEST_DEVICETOHOST_CLASS_INTERFACE == requestType)
    4d6a:	91 3a       	cpi	r25, 0xA1	; 161
    4d6c:	49 f4       	brne	.+18     	; 0x4d80 <__vector_11+0x30e>
	{
		if (CDC_GET_LINE_CODING == r)
    4d6e:	81 32       	cpi	r24, 0x21	; 33
    4d70:	09 f0       	breq	.+2      	; 0x4d74 <__vector_11+0x302>
    4d72:	7d cf       	rjmp	.-262    	; 0x4c6e <__vector_11+0x1fc>
		{
			USB_SendControl(0,(void*)&_usbLineInfo,7);
    4d74:	47 e0       	ldi	r20, 0x07	; 7
    4d76:	50 e0       	ldi	r21, 0x00	; 0
    4d78:	6b e0       	ldi	r22, 0x0B	; 11
    4d7a:	71 e0       	ldi	r23, 0x01	; 1
    4d7c:	80 e0       	ldi	r24, 0x00	; 0
    4d7e:	b3 cf       	rjmp	.-154    	; 0x4ce6 <__vector_11+0x274>
			return true;
		}
	}

	if (REQUEST_HOSTTODEVICE_CLASS_INTERFACE == requestType)
    4d80:	91 32       	cpi	r25, 0x21	; 33
    4d82:	09 f0       	breq	.+2      	; 0x4d86 <__vector_11+0x314>
    4d84:	74 cf       	rjmp	.-280    	; 0x4c6e <__vector_11+0x1fc>
	{
		if (CDC_SEND_BREAK == r)
    4d86:	83 32       	cpi	r24, 0x23	; 35
    4d88:	69 f4       	brne	.+26     	; 0x4da4 <__vector_11+0x332>
		{
			breakValue = ((uint16_t)setup.wValueH << 8) | setup.wValueL;
    4d8a:	8f 89       	ldd	r24, Y+23	; 0x17
    4d8c:	98 8d       	ldd	r25, Y+24	; 0x18
    4d8e:	b0 e0       	ldi	r27, 0x00	; 0
    4d90:	a0 e0       	ldi	r26, 0x00	; 0
    4d92:	80 93 07 01 	sts	0x0107, r24	; 0x800107 <_ZL10breakValue>
    4d96:	90 93 08 01 	sts	0x0108, r25	; 0x800108 <_ZL10breakValue+0x1>
    4d9a:	a0 93 09 01 	sts	0x0109, r26	; 0x800109 <_ZL10breakValue+0x2>
    4d9e:	b0 93 0a 01 	sts	0x010A, r27	; 0x80010a <_ZL10breakValue+0x3>
    4da2:	ad ce       	rjmp	.-678    	; 0x4afe <__vector_11+0x8c>
		}

		if (CDC_SET_LINE_CODING == r)
    4da4:	80 32       	cpi	r24, 0x20	; 32
    4da6:	69 f4       	brne	.+26     	; 0x4dc2 <__vector_11+0x350>
	UEINTX = ~(1<<TXINI);
}

static inline void WaitOUT(void)
{
	while (!(UEINTX & (1<<RXOUTI)))
    4da8:	80 91 e8 00 	lds	r24, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
    4dac:	82 ff       	sbrs	r24, 2
    4dae:	fc cf       	rjmp	.-8      	; 0x4da8 <__vector_11+0x336>
			recvLength = 64;
		}

		// Write data to fit to the end (not the beginning) of the array
		WaitOUT();
		Recv((u8*)d + len - length, recvLength);
    4db0:	67 e0       	ldi	r22, 0x07	; 7
    4db2:	8b e0       	ldi	r24, 0x0B	; 11
    4db4:	91 e0       	ldi	r25, 0x01	; 1
    4db6:	0e 94 c0 07 	call	0xf80	; 0xf80 <_ZL4RecvPVhh>
	return (UEINTX & (1<<RXOUTI)) == 0;
}

static inline void ClearOUT(void)
{
	UEINTX = ~(1<<RXOUTI);
    4dba:	8b ef       	ldi	r24, 0xFB	; 251
    4dbc:	80 93 e8 00 	sts	0x00E8, r24	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
    4dc0:	9e ce       	rjmp	.-708    	; 0x4afe <__vector_11+0x8c>
		{
			USB_RecvControl((void*)&_usbLineInfo,7);
		}

		if (CDC_SET_CONTROL_LINE_STATE == r)
    4dc2:	82 32       	cpi	r24, 0x22	; 34
    4dc4:	09 f0       	breq	.+2      	; 0x4dc8 <__vector_11+0x356>
    4dc6:	9b ce       	rjmp	.-714    	; 0x4afe <__vector_11+0x8c>
		{
			_usbLineInfo.lineState = setup.wValueL;
    4dc8:	8f 89       	ldd	r24, Y+23	; 0x17
    4dca:	80 93 12 01 	sts	0x0112, r24	; 0x800112 <_ZL12_usbLineInfo+0x7>
	D_ENDPOINT(USB_ENDPOINT_IN (CDC_ENDPOINT_IN ),USB_ENDPOINT_TYPE_BULK,USB_EP_SIZE,0)
};

bool isLUFAbootloader()
{
	return pgm_read_word(FLASHEND - 1) == NEW_LUFA_SIGNATURE;
    4dce:	ee ef       	ldi	r30, 0xFE	; 254
    4dd0:	ff e7       	ldi	r31, 0x7F	; 127
    4dd2:	85 91       	lpm	r24, Z+
    4dd4:	94 91       	lpm	r25, Z
// This is used to keep compatible with the old leonardo bootloaders.
// You are still able to set the magic key position manually to RAMEND-1 to save a few bytes for this check.
#if MAGIC_KEY_POS != (RAMEND-1)
			// For future boards save the key in the inproblematic RAMEND
			// Which is reserved for the main() return value (which will never return)
			if (isLUFAbootloader()) {
    4dd6:	8b 3f       	cpi	r24, 0xFB	; 251
    4dd8:	9c 4d       	sbci	r25, 0xDC	; 220
    4dda:	51 f1       	breq	.+84     	; 0x4e30 <__vector_11+0x3be>
			// auto-reset into the bootloader is triggered when the port, already 
			// open at 1200 bps, is closed.  this is the signal to start the watchdog
			// with a relatively long period so it can finish housekeeping tasks
			// like servicing endpoints before the sketch ends

			uint16_t magic_key_pos = MAGIC_KEY_POS;
    4ddc:	e0 e0       	ldi	r30, 0x00	; 0
    4dde:	f8 e0       	ldi	r31, 0x08	; 8
				magic_key_pos = (RAMEND-1);
			}
#endif

			// We check DTR state to determine if host port is open (bit 0 of lineState).
			if (1200 == _usbLineInfo.dwDTERate && (_usbLineInfo.lineState & 0x01) == 0)
    4de0:	80 91 0b 01 	lds	r24, 0x010B	; 0x80010b <_ZL12_usbLineInfo>
    4de4:	90 91 0c 01 	lds	r25, 0x010C	; 0x80010c <_ZL12_usbLineInfo+0x1>
    4de8:	a0 91 0d 01 	lds	r26, 0x010D	; 0x80010d <_ZL12_usbLineInfo+0x2>
    4dec:	b0 91 0e 01 	lds	r27, 0x010E	; 0x80010e <_ZL12_usbLineInfo+0x3>
    4df0:	80 3b       	cpi	r24, 0xB0	; 176
    4df2:	94 40       	sbci	r25, 0x04	; 4
    4df4:	a1 05       	cpc	r26, r1
    4df6:	b1 05       	cpc	r27, r1
    4df8:	f1 f4       	brne	.+60     	; 0x4e36 <__vector_11+0x3c4>
    4dfa:	80 91 12 01 	lds	r24, 0x0112	; 0x800112 <_ZL12_usbLineInfo+0x7>
    4dfe:	80 fd       	sbrc	r24, 0
    4e00:	1a c0       	rjmp	.+52     	; 0x4e36 <__vector_11+0x3c4>
			{
#if MAGIC_KEY_POS != (RAMEND-1)
				// Backup ram value if its not a newer bootloader and it hasn't already been saved.
				// This should avoid memory corruption at least a bit, not fully
				if (magic_key_pos != (RAMEND-1) && *(uint16_t *)magic_key_pos != MAGIC_KEY) {
    4e02:	ee 3f       	cpi	r30, 0xFE	; 254
    4e04:	8a e0       	ldi	r24, 0x0A	; 10
    4e06:	f8 07       	cpc	r31, r24
    4e08:	89 f5       	brne	.+98     	; 0x4e6c <__vector_11+0x3fa>
					*(uint16_t *)(RAMEND-1) = *(uint16_t *)magic_key_pos;
				}
#endif
				// Store boot key
				*(uint16_t *)magic_key_pos = MAGIC_KEY;
    4e0a:	87 e7       	ldi	r24, 0x77	; 119
    4e0c:	97 e7       	ldi	r25, 0x77	; 119
    4e0e:	91 83       	std	Z+1, r25	; 0x01
    4e10:	80 83       	st	Z, r24
				// Save the watchdog state in case the reset is aborted.
				wdtcsr_save = WDTCSR;
    4e12:	80 91 60 00 	lds	r24, 0x0060	; 0x800060 <__DATA_REGION_ORIGIN__>
    4e16:	80 93 5f 03 	sts	0x035F, r24	; 0x80035f <_ZL11wdtcsr_save>
				: "n" (_SFR_MEM_ADDR(_WD_CONTROL_REG)),
				"r" ((uint8_t)(_BV(_WD_CHANGE_BIT) | _BV(WDE))),
				"r" ((uint8_t) ((value & 0x08 ? _WD_PS3_MASK : 0x00) |
						_BV(WDE) | (value & 0x07)) )
				: "r0"
		);
    4e1a:	88 e1       	ldi	r24, 0x18	; 24
    4e1c:	9b e0       	ldi	r25, 0x0B	; 11
    4e1e:	0f b6       	in	r0, 0x3f	; 63
    4e20:	f8 94       	cli
    4e22:	a8 95       	wdr
    4e24:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
    4e28:	0f be       	out	0x3f, r0	; 63
    4e2a:	90 93 60 00 	sts	0x0060, r25	; 0x800060 <__DATA_REGION_ORIGIN__>
    4e2e:	67 ce       	rjmp	.-818    	; 0x4afe <__vector_11+0x8c>
#if MAGIC_KEY_POS != (RAMEND-1)
			// For future boards save the key in the inproblematic RAMEND
			// Which is reserved for the main() return value (which will never return)
			if (isLUFAbootloader()) {
				// horray, we got a new bootloader!
				magic_key_pos = (RAMEND-1);
    4e30:	ee ef       	ldi	r30, 0xFE	; 254
    4e32:	fa e0       	ldi	r31, 0x0A	; 10
    4e34:	d5 cf       	rjmp	.-86     	; 0x4de0 <__vector_11+0x36e>
				*(uint16_t *)magic_key_pos = MAGIC_KEY;
				// Save the watchdog state in case the reset is aborted.
				wdtcsr_save = WDTCSR;
				wdt_enable(WDTO_120MS);
			}
			else if (*(uint16_t *)magic_key_pos == MAGIC_KEY)
    4e36:	80 81       	ld	r24, Z
    4e38:	91 81       	ldd	r25, Z+1	; 0x01
    4e3a:	87 37       	cpi	r24, 0x77	; 119
    4e3c:	97 47       	sbci	r25, 0x77	; 119
    4e3e:	09 f0       	breq	.+2      	; 0x4e42 <__vector_11+0x3d0>
    4e40:	5e ce       	rjmp	.-836    	; 0x4afe <__vector_11+0x8c>
				// To avoid spurious resets we set the watchdog to 120ms and eventually
				// cancel if DTR goes back high.
				// Cancellation is only done if an auto-reset was started, which is
				// indicated by the magic key having been set.

				wdt_reset();
    4e42:	a8 95       	wdr
				// Restore the watchdog state in case the sketch was using it.
				WDTCSR |= (1<<WDCE) | (1<<WDE);
    4e44:	80 91 60 00 	lds	r24, 0x0060	; 0x800060 <__DATA_REGION_ORIGIN__>
    4e48:	88 61       	ori	r24, 0x18	; 24
    4e4a:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
				WDTCSR = wdtcsr_save;
    4e4e:	80 91 5f 03 	lds	r24, 0x035F	; 0x80035f <_ZL11wdtcsr_save>
    4e52:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
#if MAGIC_KEY_POS != (RAMEND-1)
				// Restore backed up (old bootloader) magic key data
				if (magic_key_pos != (RAMEND-1)) {
    4e56:	ee 3f       	cpi	r30, 0xFE	; 254
    4e58:	2a e0       	ldi	r18, 0x0A	; 10
    4e5a:	f2 07       	cpc	r31, r18
    4e5c:	89 f0       	breq	.+34     	; 0x4e80 <__vector_11+0x40e>
					*(uint16_t *)magic_key_pos = *(uint16_t *)(RAMEND-1);
    4e5e:	80 91 fe 0a 	lds	r24, 0x0AFE	; 0x800afe <__bss_end+0x31b>
    4e62:	90 91 ff 0a 	lds	r25, 0x0AFF	; 0x800aff <__bss_end+0x31c>
    4e66:	91 83       	std	Z+1, r25	; 0x01
    4e68:	80 83       	st	Z, r24
    4e6a:	49 ce       	rjmp	.-878    	; 0x4afe <__vector_11+0x8c>
			if (1200 == _usbLineInfo.dwDTERate && (_usbLineInfo.lineState & 0x01) == 0)
			{
#if MAGIC_KEY_POS != (RAMEND-1)
				// Backup ram value if its not a newer bootloader and it hasn't already been saved.
				// This should avoid memory corruption at least a bit, not fully
				if (magic_key_pos != (RAMEND-1) && *(uint16_t *)magic_key_pos != MAGIC_KEY) {
    4e6c:	80 81       	ld	r24, Z
    4e6e:	91 81       	ldd	r25, Z+1	; 0x01
    4e70:	87 37       	cpi	r24, 0x77	; 119
    4e72:	98 07       	cpc	r25, r24
    4e74:	51 f2       	breq	.-108    	; 0x4e0a <__vector_11+0x398>
					*(uint16_t *)(RAMEND-1) = *(uint16_t *)magic_key_pos;
    4e76:	90 93 ff 0a 	sts	0x0AFF, r25	; 0x800aff <__bss_end+0x31c>
    4e7a:	80 93 fe 0a 	sts	0x0AFE, r24	; 0x800afe <__bss_end+0x31b>
    4e7e:	c5 cf       	rjmp	.-118    	; 0x4e0a <__vector_11+0x398>
					*(uint16_t *)magic_key_pos = *(uint16_t *)(RAMEND-1);
				} else
#endif
				{
				// Clean up RAMEND key
					*(uint16_t *)magic_key_pos = 0x0000;
    4e80:	10 92 ff 0a 	sts	0x0AFF, r1	; 0x800aff <__bss_end+0x31c>
    4e84:	10 92 fe 0a 	sts	0x0AFE, r1	; 0x800afe <__bss_end+0x31b>
    4e88:	3a ce       	rjmp	.-908    	; 0x4afe <__vector_11+0x8c>

	if (CDC_ACM_INTERFACE == i)
		return CDC_Setup(setup);

#ifdef PLUGGABLE_USB_ENABLED
	return PluggableUSB().setup(setup);
    4e8a:	0e 94 a6 06 	call	0xd4c	; 0xd4c <_Z12PluggableUSBv>
}

bool PluggableUSB_::setup(USBSetup& setup)
{
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
    4e8e:	dc 01       	movw	r26, r24
    4e90:	12 96       	adiw	r26, 0x02	; 2
    4e92:	0d 91       	ld	r16, X+
    4e94:	1c 91       	ld	r17, X
    4e96:	01 15       	cp	r16, r1
    4e98:	11 05       	cpc	r17, r1
    4e9a:	09 f4       	brne	.+2      	; 0x4e9e <__vector_11+0x42c>
    4e9c:	e8 ce       	rjmp	.-560    	; 0x4c6e <__vector_11+0x1fc>
		if (node->setup(setup)) {
    4e9e:	d8 01       	movw	r26, r16
    4ea0:	ed 91       	ld	r30, X+
    4ea2:	fc 91       	ld	r31, X
    4ea4:	01 90       	ld	r0, Z+
    4ea6:	f0 81       	ld	r31, Z
    4ea8:	e0 2d       	mov	r30, r0
    4eaa:	be 01       	movw	r22, r28
    4eac:	6b 5e       	subi	r22, 0xEB	; 235
    4eae:	7f 4f       	sbci	r23, 0xFF	; 255
    4eb0:	c8 01       	movw	r24, r16
    4eb2:	09 95       	icall
    4eb4:	81 11       	cpse	r24, r1
    4eb6:	23 ce       	rjmp	.-954    	; 0x4afe <__vector_11+0x8c>
}

bool PluggableUSB_::setup(USBSetup& setup)
{
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
    4eb8:	f8 01       	movw	r30, r16
    4eba:	00 85       	ldd	r16, Z+8	; 0x08
    4ebc:	11 85       	ldd	r17, Z+9	; 0x09
    4ebe:	eb cf       	rjmp	.-42     	; 0x4e96 <__vector_11+0x424>

	InitControl(setup.wLength);
#ifdef PLUGGABLE_USB_ENABLED
	int ret = PluggableUSB().getDescriptor(setup);
	if (ret != 0) {
		return (ret > 0 ? true : false);
    4ec0:	18 16       	cp	r1, r24
    4ec2:	19 06       	cpc	r1, r25
    4ec4:	0c f4       	brge	.+2      	; 0x4ec8 <__vector_11+0x456>
    4ec6:	1b ce       	rjmp	.-970    	; 0x4afe <__vector_11+0x8c>
    4ec8:	d2 ce       	rjmp	.-604    	; 0x4c6e <__vector_11+0x1fc>
	}
#endif

	const u8* desc_addr = 0;
	if (USB_DEVICE_DESCRIPTOR_TYPE == t)
    4eca:	f1 e0       	ldi	r31, 0x01	; 1
    4ecc:	ff 12       	cpse	r15, r31
    4ece:	be ce       	rjmp	.-644    	; 0x4c4c <__vector_11+0x1da>
	{
		desc_addr = (const u8*)&USB_DeviceDescriptorIAD;
    4ed0:	64 e4       	ldi	r22, 0x44	; 68
    4ed2:	7b e0       	ldi	r23, 0x0B	; 11
    4ed4:	04 cf       	rjmp	.-504    	; 0x4cde <__vector_11+0x26c>

00004ed6 <__vector_23>:
#if defined(TIM0_OVF_vect)
ISR(TIM0_OVF_vect)
#else
ISR(TIMER0_OVF_vect)
#endif
{
    4ed6:	1f 92       	push	r1
    4ed8:	0f 92       	push	r0
    4eda:	0f b6       	in	r0, 0x3f	; 63
    4edc:	0f 92       	push	r0
    4ede:	11 24       	eor	r1, r1
    4ee0:	2f 93       	push	r18
    4ee2:	3f 93       	push	r19
    4ee4:	8f 93       	push	r24
    4ee6:	9f 93       	push	r25
    4ee8:	af 93       	push	r26
    4eea:	bf 93       	push	r27
	// copy these to local variables so they can be stored in registers
	// (volatile variables must be read from memory on every access)
	unsigned long m = timer0_millis;
    4eec:	80 91 52 03 	lds	r24, 0x0352	; 0x800352 <timer0_millis>
    4ef0:	90 91 53 03 	lds	r25, 0x0353	; 0x800353 <timer0_millis+0x1>
    4ef4:	a0 91 54 03 	lds	r26, 0x0354	; 0x800354 <timer0_millis+0x2>
    4ef8:	b0 91 55 03 	lds	r27, 0x0355	; 0x800355 <timer0_millis+0x3>
	unsigned char f = timer0_fract;
    4efc:	30 91 4d 03 	lds	r19, 0x034D	; 0x80034d <timer0_fract>

	m += MILLIS_INC;
	f += FRACT_INC;
    4f00:	23 e0       	ldi	r18, 0x03	; 3
    4f02:	23 0f       	add	r18, r19
	if (f >= FRACT_MAX) {
    4f04:	2d 37       	cpi	r18, 0x7D	; 125
    4f06:	58 f5       	brcc	.+86     	; 0x4f5e <__vector_23+0x88>
	// copy these to local variables so they can be stored in registers
	// (volatile variables must be read from memory on every access)
	unsigned long m = timer0_millis;
	unsigned char f = timer0_fract;

	m += MILLIS_INC;
    4f08:	01 96       	adiw	r24, 0x01	; 1
    4f0a:	a1 1d       	adc	r26, r1
    4f0c:	b1 1d       	adc	r27, r1
	if (f >= FRACT_MAX) {
		f -= FRACT_MAX;
		m += 1;
	}

	timer0_fract = f;
    4f0e:	20 93 4d 03 	sts	0x034D, r18	; 0x80034d <timer0_fract>
	timer0_millis = m;
    4f12:	80 93 52 03 	sts	0x0352, r24	; 0x800352 <timer0_millis>
    4f16:	90 93 53 03 	sts	0x0353, r25	; 0x800353 <timer0_millis+0x1>
    4f1a:	a0 93 54 03 	sts	0x0354, r26	; 0x800354 <timer0_millis+0x2>
    4f1e:	b0 93 55 03 	sts	0x0355, r27	; 0x800355 <timer0_millis+0x3>
	timer0_overflow_count++;
    4f22:	80 91 4e 03 	lds	r24, 0x034E	; 0x80034e <timer0_overflow_count>
    4f26:	90 91 4f 03 	lds	r25, 0x034F	; 0x80034f <timer0_overflow_count+0x1>
    4f2a:	a0 91 50 03 	lds	r26, 0x0350	; 0x800350 <timer0_overflow_count+0x2>
    4f2e:	b0 91 51 03 	lds	r27, 0x0351	; 0x800351 <timer0_overflow_count+0x3>
    4f32:	01 96       	adiw	r24, 0x01	; 1
    4f34:	a1 1d       	adc	r26, r1
    4f36:	b1 1d       	adc	r27, r1
    4f38:	80 93 4e 03 	sts	0x034E, r24	; 0x80034e <timer0_overflow_count>
    4f3c:	90 93 4f 03 	sts	0x034F, r25	; 0x80034f <timer0_overflow_count+0x1>
    4f40:	a0 93 50 03 	sts	0x0350, r26	; 0x800350 <timer0_overflow_count+0x2>
    4f44:	b0 93 51 03 	sts	0x0351, r27	; 0x800351 <timer0_overflow_count+0x3>
}
    4f48:	bf 91       	pop	r27
    4f4a:	af 91       	pop	r26
    4f4c:	9f 91       	pop	r25
    4f4e:	8f 91       	pop	r24
    4f50:	3f 91       	pop	r19
    4f52:	2f 91       	pop	r18
    4f54:	0f 90       	pop	r0
    4f56:	0f be       	out	0x3f, r0	; 63
    4f58:	0f 90       	pop	r0
    4f5a:	1f 90       	pop	r1
    4f5c:	18 95       	reti
	unsigned char f = timer0_fract;

	m += MILLIS_INC;
	f += FRACT_INC;
	if (f >= FRACT_MAX) {
		f -= FRACT_MAX;
    4f5e:	26 e8       	ldi	r18, 0x86	; 134
    4f60:	23 0f       	add	r18, r19
		m += 1;
    4f62:	02 96       	adiw	r24, 0x02	; 2
    4f64:	a1 1d       	adc	r26, r1
    4f66:	b1 1d       	adc	r27, r1
    4f68:	d2 cf       	rjmp	.-92     	; 0x4f0e <__vector_23+0x38>

00004f6a <__vector_32>:
        if (!isAllMuted && timer1ToggleCount % timer1DutyCycle < 2) toggleTimerPin(1);
    }
}

ISR(TIMER3_COMPA_vect) // TIMER 3
{
    4f6a:	1f 92       	push	r1
    4f6c:	0f 92       	push	r0
    4f6e:	0f b6       	in	r0, 0x3f	; 63
    4f70:	0f 92       	push	r0
    4f72:	11 24       	eor	r1, r1
    4f74:	2f 93       	push	r18
    4f76:	3f 93       	push	r19
    4f78:	4f 93       	push	r20
    4f7a:	5f 93       	push	r21
    4f7c:	6f 93       	push	r22
    4f7e:	7f 93       	push	r23
    4f80:	8f 93       	push	r24
    4f82:	9f 93       	push	r25
    4f84:	af 93       	push	r26
    4f86:	bf 93       	push	r27
    4f88:	ef 93       	push	r30
    4f8a:	ff 93       	push	r31
    // Timer 3 is the one assigned first, so we keep it running always
    // and use it to time score waits, whether or not it is playing a note.
    if (isWaitTimerPlaying && !isMuteScore && !isAllMuted) {
    4f8c:	80 91 86 03 	lds	r24, 0x0386	; 0x800386 <_ZL18isWaitTimerPlaying>
    4f90:	88 23       	and	r24, r24
    4f92:	29 f1       	breq	.+74     	; 0x4fde <__vector_32+0x74>
    4f94:	80 91 7c 03 	lds	r24, 0x037C	; 0x80037c <_ZL11isMuteScore>
    4f98:	81 11       	cpse	r24, r1
    4f9a:	21 c0       	rjmp	.+66     	; 0x4fde <__vector_32+0x74>
    4f9c:	80 91 87 03 	lds	r24, 0x0387	; 0x800387 <_ZL10isAllMuted>
    4fa0:	81 11       	cpse	r24, r1
    4fa2:	1d c0       	rjmp	.+58     	; 0x4fde <__vector_32+0x74>
        if (timer3ToggleCount % timer3DutyCycle < 2) toggleTimerPin(3);
    4fa4:	60 91 82 03 	lds	r22, 0x0382	; 0x800382 <_ZL17timer3ToggleCount>
    4fa8:	70 91 83 03 	lds	r23, 0x0383	; 0x800383 <_ZL17timer3ToggleCount+0x1>
    4fac:	80 91 84 03 	lds	r24, 0x0384	; 0x800384 <_ZL17timer3ToggleCount+0x2>
    4fb0:	90 91 85 03 	lds	r25, 0x0385	; 0x800385 <_ZL17timer3ToggleCount+0x3>
    4fb4:	20 91 43 01 	lds	r18, 0x0143	; 0x800143 <_ZL15timer3DutyCycle>
    4fb8:	30 e0       	ldi	r19, 0x00	; 0
    4fba:	50 e0       	ldi	r21, 0x00	; 0
    4fbc:	40 e0       	ldi	r20, 0x00	; 0
    4fbe:	0e 94 73 2c 	call	0x58e6	; 0x58e6 <__udivmodsi4>
    4fc2:	62 30       	cpi	r22, 0x02	; 2
    4fc4:	71 05       	cpc	r23, r1
    4fc6:	81 05       	cpc	r24, r1
    4fc8:	91 05       	cpc	r25, r1
    4fca:	48 f4       	brcc	.+18     	; 0x4fde <__vector_32+0x74>
    4fcc:	90 91 26 03 	lds	r25, 0x0326	; 0x800326 <_ZL13timer3PinMask>
    4fd0:	e0 91 27 03 	lds	r30, 0x0327	; 0x800327 <_ZL13timer3PinPort>
    4fd4:	f0 91 28 03 	lds	r31, 0x0328	; 0x800328 <_ZL13timer3PinPort+0x1>
    4fd8:	80 81       	ld	r24, Z
    4fda:	89 27       	eor	r24, r25
    4fdc:	80 83       	st	Z, r24
    }
    if (timer3ToggleCount > 0 && --timer3ToggleCount == 0) {
    4fde:	80 91 82 03 	lds	r24, 0x0382	; 0x800382 <_ZL17timer3ToggleCount>
    4fe2:	90 91 83 03 	lds	r25, 0x0383	; 0x800383 <_ZL17timer3ToggleCount+0x1>
    4fe6:	a0 91 84 03 	lds	r26, 0x0384	; 0x800384 <_ZL17timer3ToggleCount+0x2>
    4fea:	b0 91 85 03 	lds	r27, 0x0385	; 0x800385 <_ZL17timer3ToggleCount+0x3>
    4fee:	89 2b       	or	r24, r25
    4ff0:	8a 2b       	or	r24, r26
    4ff2:	8b 2b       	or	r24, r27
    4ff4:	e9 f0       	breq	.+58     	; 0x5030 <__vector_32+0xc6>
    4ff6:	80 91 82 03 	lds	r24, 0x0382	; 0x800382 <_ZL17timer3ToggleCount>
    4ffa:	90 91 83 03 	lds	r25, 0x0383	; 0x800383 <_ZL17timer3ToggleCount+0x1>
    4ffe:	a0 91 84 03 	lds	r26, 0x0384	; 0x800384 <_ZL17timer3ToggleCount+0x2>
    5002:	b0 91 85 03 	lds	r27, 0x0385	; 0x800385 <_ZL17timer3ToggleCount+0x3>
    5006:	01 97       	sbiw	r24, 0x01	; 1
    5008:	a1 09       	sbc	r26, r1
    500a:	b1 09       	sbc	r27, r1
    500c:	80 93 82 03 	sts	0x0382, r24	; 0x800382 <_ZL17timer3ToggleCount>
    5010:	90 93 83 03 	sts	0x0383, r25	; 0x800383 <_ZL17timer3ToggleCount+0x1>
    5014:	a0 93 84 03 	sts	0x0384, r26	; 0x800384 <_ZL17timer3ToggleCount+0x2>
    5018:	b0 93 85 03 	sts	0x0385, r27	; 0x800385 <_ZL17timer3ToggleCount+0x3>
    501c:	89 2b       	or	r24, r25
    501e:	8a 2b       	or	r24, r26
    5020:	8b 2b       	or	r24, r27
    5022:	31 f4       	brne	.+12     	; 0x5030 <__vector_32+0xc6>
        (isScorePlaying) ? stepScore() : stopNote(0);
    5024:	80 91 8b 03 	lds	r24, 0x038B	; 0x80038b <_ZL14isScorePlaying>
    5028:	88 23       	and	r24, r24
    502a:	99 f0       	breq	.+38     	; 0x5052 <__vector_32+0xe8>
    502c:	0e 94 a6 11 	call	0x234c	; 0x234c <_ZL9stepScorev>
    }
}
    5030:	ff 91       	pop	r31
    5032:	ef 91       	pop	r30
    5034:	bf 91       	pop	r27
    5036:	af 91       	pop	r26
    5038:	9f 91       	pop	r25
    503a:	8f 91       	pop	r24
    503c:	7f 91       	pop	r23
    503e:	6f 91       	pop	r22
    5040:	5f 91       	pop	r21
    5042:	4f 91       	pop	r20
    5044:	3f 91       	pop	r19
    5046:	2f 91       	pop	r18
    5048:	0f 90       	pop	r0
    504a:	0f be       	out	0x3f, r0	; 63
    504c:	0f 90       	pop	r0
    504e:	1f 90       	pop	r1
    5050:	18 95       	reti
    // and use it to time score waits, whether or not it is playing a note.
    if (isWaitTimerPlaying && !isMuteScore && !isAllMuted) {
        if (timer3ToggleCount % timer3DutyCycle < 2) toggleTimerPin(3);
    }
    if (timer3ToggleCount > 0 && --timer3ToggleCount == 0) {
        (isScorePlaying) ? stepScore() : stopNote(0);
    5052:	80 e0       	ldi	r24, 0x00	; 0
    5054:	0e 94 08 0e 	call	0x1c10	; 0x1c10 <_ZL8stopNoteh>
    5058:	eb cf       	rjmp	.-42     	; 0x5030 <__vector_32+0xc6>

0000505a <__vector_17>:
/*---------------------------------------------------------------------------*/
/*                        Interrupt service routines                         */
/*---------------------------------------------------------------------------*/

ISR(TIMER1_COMPA_vect) // TIMER 1
{
    505a:	1f 92       	push	r1
    505c:	0f 92       	push	r0
    505e:	0f b6       	in	r0, 0x3f	; 63
    5060:	0f 92       	push	r0
    5062:	11 24       	eor	r1, r1
    5064:	2f 93       	push	r18
    5066:	3f 93       	push	r19
    5068:	4f 93       	push	r20
    506a:	5f 93       	push	r21
    506c:	6f 93       	push	r22
    506e:	7f 93       	push	r23
    5070:	8f 93       	push	r24
    5072:	9f 93       	push	r25
    5074:	af 93       	push	r26
    5076:	bf 93       	push	r27
    5078:	ef 93       	push	r30
    507a:	ff 93       	push	r31
    if (isTonePlaying) {
    507c:	80 91 81 03 	lds	r24, 0x0381	; 0x800381 <_ZL13isTonePlaying>
    5080:	88 23       	and	r24, r24
    5082:	09 f4       	brne	.+2      	; 0x5086 <__vector_17+0x2c>
    5084:	72 c0       	rjmp	.+228    	; 0x516a <__vector_17+0x110>
        if (timer1ToggleCount > 0) {
    5086:	80 91 7d 03 	lds	r24, 0x037D	; 0x80037d <_ZL17timer1ToggleCount>
    508a:	90 91 7e 03 	lds	r25, 0x037E	; 0x80037e <_ZL17timer1ToggleCount+0x1>
    508e:	a0 91 7f 03 	lds	r26, 0x037F	; 0x80037f <_ZL17timer1ToggleCount+0x2>
    5092:	b0 91 80 03 	lds	r27, 0x0380	; 0x800380 <_ZL17timer1ToggleCount+0x3>
    5096:	89 2b       	or	r24, r25
    5098:	8a 2b       	or	r24, r26
    509a:	8b 2b       	or	r24, r27
    509c:	09 f4       	brne	.+2      	; 0x50a0 <__vector_17+0x46>
    509e:	51 c0       	rjmp	.+162    	; 0x5142 <__vector_17+0xe8>
            if (!isAllMuted && timer1ToggleCount % timer1DutyCycle < 2) toggleTimerPin(1);
    50a0:	80 91 87 03 	lds	r24, 0x0387	; 0x800387 <_ZL10isAllMuted>
    50a4:	81 11       	cpse	r24, r1
    50a6:	1d c0       	rjmp	.+58     	; 0x50e2 <__vector_17+0x88>
    50a8:	60 91 7d 03 	lds	r22, 0x037D	; 0x80037d <_ZL17timer1ToggleCount>
    50ac:	70 91 7e 03 	lds	r23, 0x037E	; 0x80037e <_ZL17timer1ToggleCount+0x1>
    50b0:	80 91 7f 03 	lds	r24, 0x037F	; 0x80037f <_ZL17timer1ToggleCount+0x2>
    50b4:	90 91 80 03 	lds	r25, 0x0380	; 0x800380 <_ZL17timer1ToggleCount+0x3>
    50b8:	20 91 42 01 	lds	r18, 0x0142	; 0x800142 <_ZL15timer1DutyCycle>
    50bc:	30 e0       	ldi	r19, 0x00	; 0
    50be:	50 e0       	ldi	r21, 0x00	; 0
    50c0:	40 e0       	ldi	r20, 0x00	; 0
    50c2:	0e 94 73 2c 	call	0x58e6	; 0x58e6 <__udivmodsi4>
    50c6:	62 30       	cpi	r22, 0x02	; 2
    50c8:	71 05       	cpc	r23, r1
    50ca:	81 05       	cpc	r24, r1
    50cc:	91 05       	cpc	r25, r1
    50ce:	48 f4       	brcc	.+18     	; 0x50e2 <__vector_17+0x88>
    50d0:	90 91 23 03 	lds	r25, 0x0323	; 0x800323 <_ZL13timer1PinMask>
    50d4:	e0 91 24 03 	lds	r30, 0x0324	; 0x800324 <_ZL13timer1PinPort>
    50d8:	f0 91 25 03 	lds	r31, 0x0325	; 0x800325 <_ZL13timer1PinPort+0x1>
    50dc:	80 81       	ld	r24, Z
    50de:	89 27       	eor	r24, r25
    50e0:	80 83       	st	Z, r24
            if (timer1ToggleCount > 0) timer1ToggleCount--;
    50e2:	80 91 7d 03 	lds	r24, 0x037D	; 0x80037d <_ZL17timer1ToggleCount>
    50e6:	90 91 7e 03 	lds	r25, 0x037E	; 0x80037e <_ZL17timer1ToggleCount+0x1>
    50ea:	a0 91 7f 03 	lds	r26, 0x037F	; 0x80037f <_ZL17timer1ToggleCount+0x2>
    50ee:	b0 91 80 03 	lds	r27, 0x0380	; 0x800380 <_ZL17timer1ToggleCount+0x3>
    50f2:	89 2b       	or	r24, r25
    50f4:	8a 2b       	or	r24, r26
    50f6:	8b 2b       	or	r24, r27
    50f8:	99 f0       	breq	.+38     	; 0x5120 <__vector_17+0xc6>
    50fa:	80 91 7d 03 	lds	r24, 0x037D	; 0x80037d <_ZL17timer1ToggleCount>
    50fe:	90 91 7e 03 	lds	r25, 0x037E	; 0x80037e <_ZL17timer1ToggleCount+0x1>
    5102:	a0 91 7f 03 	lds	r26, 0x037F	; 0x80037f <_ZL17timer1ToggleCount+0x2>
    5106:	b0 91 80 03 	lds	r27, 0x0380	; 0x800380 <_ZL17timer1ToggleCount+0x3>
    510a:	01 97       	sbiw	r24, 0x01	; 1
    510c:	a1 09       	sbc	r26, r1
    510e:	b1 09       	sbc	r27, r1
    5110:	80 93 7d 03 	sts	0x037D, r24	; 0x80037d <_ZL17timer1ToggleCount>
    5114:	90 93 7e 03 	sts	0x037E, r25	; 0x80037e <_ZL17timer1ToggleCount+0x1>
    5118:	a0 93 7f 03 	sts	0x037F, r26	; 0x80037f <_ZL17timer1ToggleCount+0x2>
    511c:	b0 93 80 03 	sts	0x0380, r27	; 0x800380 <_ZL17timer1ToggleCount+0x3>
            stopTimer(1);
        }
    } else {
        if (!isAllMuted && timer1ToggleCount % timer1DutyCycle < 2) toggleTimerPin(1);
    }
}
    5120:	ff 91       	pop	r31
    5122:	ef 91       	pop	r30
    5124:	bf 91       	pop	r27
    5126:	af 91       	pop	r26
    5128:	9f 91       	pop	r25
    512a:	8f 91       	pop	r24
    512c:	7f 91       	pop	r23
    512e:	6f 91       	pop	r22
    5130:	5f 91       	pop	r21
    5132:	4f 91       	pop	r20
    5134:	3f 91       	pop	r19
    5136:	2f 91       	pop	r18
    5138:	0f 90       	pop	r0
    513a:	0f be       	out	0x3f, r0	; 63
    513c:	0f 90       	pop	r0
    513e:	1f 90       	pop	r1
    5140:	18 95       	reti
    if (isTonePlaying) {
        if (timer1ToggleCount > 0) {
            if (!isAllMuted && timer1ToggleCount % timer1DutyCycle < 2) toggleTimerPin(1);
            if (timer1ToggleCount > 0) timer1ToggleCount--;
        } else {
            isTonePlaying = isMuteScore = false;
    5142:	10 92 7c 03 	sts	0x037C, r1	; 0x80037c <_ZL11isMuteScore>
    5146:	10 92 81 03 	sts	0x0381, r1	; 0x800381 <_ZL13isTonePlaying>
            stopTimer(1);
    514a:	80 91 6f 00 	lds	r24, 0x006F	; 0x80006f <__DATA_REGION_ORIGIN__+0xf>
    514e:	8d 7f       	andi	r24, 0xFD	; 253
    5150:	80 93 6f 00 	sts	0x006F, r24	; 0x80006f <__DATA_REGION_ORIGIN__+0xf>
    5154:	80 91 23 03 	lds	r24, 0x0323	; 0x800323 <_ZL13timer1PinMask>
    5158:	e0 91 24 03 	lds	r30, 0x0324	; 0x800324 <_ZL13timer1PinPort>
    515c:	f0 91 25 03 	lds	r31, 0x0325	; 0x800325 <_ZL13timer1PinPort+0x1>
    5160:	90 81       	ld	r25, Z
    5162:	80 95       	com	r24
    5164:	89 23       	and	r24, r25
        }
    } else {
        if (!isAllMuted && timer1ToggleCount % timer1DutyCycle < 2) toggleTimerPin(1);
    5166:	80 83       	st	Z, r24
    5168:	db cf       	rjmp	.-74     	; 0x5120 <__vector_17+0xc6>
    516a:	80 91 87 03 	lds	r24, 0x0387	; 0x800387 <_ZL10isAllMuted>
    516e:	81 11       	cpse	r24, r1
    5170:	d7 cf       	rjmp	.-82     	; 0x5120 <__vector_17+0xc6>
    5172:	60 91 7d 03 	lds	r22, 0x037D	; 0x80037d <_ZL17timer1ToggleCount>
    5176:	70 91 7e 03 	lds	r23, 0x037E	; 0x80037e <_ZL17timer1ToggleCount+0x1>
    517a:	80 91 7f 03 	lds	r24, 0x037F	; 0x80037f <_ZL17timer1ToggleCount+0x2>
    517e:	90 91 80 03 	lds	r25, 0x0380	; 0x800380 <_ZL17timer1ToggleCount+0x3>
    5182:	20 91 42 01 	lds	r18, 0x0142	; 0x800142 <_ZL15timer1DutyCycle>
    5186:	30 e0       	ldi	r19, 0x00	; 0
    5188:	50 e0       	ldi	r21, 0x00	; 0
    518a:	40 e0       	ldi	r20, 0x00	; 0
    518c:	0e 94 73 2c 	call	0x58e6	; 0x58e6 <__udivmodsi4>
    5190:	62 30       	cpi	r22, 0x02	; 2
    5192:	71 05       	cpc	r23, r1
    5194:	81 05       	cpc	r24, r1
    5196:	91 05       	cpc	r25, r1
    5198:	18 f6       	brcc	.-122    	; 0x5120 <__vector_17+0xc6>
    519a:	90 91 23 03 	lds	r25, 0x0323	; 0x800323 <_ZL13timer1PinMask>
    519e:	e0 91 24 03 	lds	r30, 0x0324	; 0x800324 <_ZL13timer1PinPort>
    51a2:	f0 91 25 03 	lds	r31, 0x0325	; 0x800325 <_ZL13timer1PinPort+0x1>
    51a6:	80 81       	ld	r24, Z
    51a8:	89 27       	eor	r24, r25
    51aa:	dd cf       	rjmp	.-70     	; 0x5166 <__vector_17+0x10c>

000051ac <_ZL24USB_SendStringDescriptorPKhhh>:
}

// Send a USB descriptor string. The string is stored in PROGMEM as a
// plain ASCII string but is sent out as UTF-16 with the correct 2-byte
// prefix
static bool USB_SendStringDescriptor(const u8*string_P, u8 string_len, uint8_t flags) {
    51ac:	ef 92       	push	r14
    51ae:	ff 92       	push	r15
    51b0:	0f 93       	push	r16
    51b2:	1f 93       	push	r17
    51b4:	cf 93       	push	r28
    51b6:	df 93       	push	r29
    51b8:	f8 2e       	mov	r15, r24
    51ba:	19 2f       	mov	r17, r25
    51bc:	e6 2e       	mov	r14, r22
    51be:	04 2f       	mov	r16, r20
        SendControl(2 + string_len * 2);
    51c0:	81 e0       	ldi	r24, 0x01	; 1
    51c2:	86 0f       	add	r24, r22
    51c4:	88 0f       	add	r24, r24
    51c6:	0e 94 3b 07 	call	0xe76	; 0xe76 <_ZL11SendControlh>
        SendControl(3);
    51ca:	83 e0       	ldi	r24, 0x03	; 3
    51cc:	0e 94 3b 07 	call	0xe76	; 0xe76 <_ZL11SendControlh>
    51d0:	cf 2d       	mov	r28, r15
    51d2:	d1 2f       	mov	r29, r17
    51d4:	ec 0e       	add	r14, r28
    51d6:	fd 2e       	mov	r15, r29
    51d8:	f1 1c       	adc	r15, r1
        bool pgm = flags & TRANSFER_PGM;
        for(u8 i = 0; i < string_len; i++) {
    51da:	ce 15       	cp	r28, r14
    51dc:	df 05       	cpc	r29, r15
    51de:	b9 f0       	breq	.+46     	; 0x520e <_ZL24USB_SendStringDescriptorPKhhh+0x62>
                bool r = SendControl(pgm ? pgm_read_byte(&string_P[i]) : string_P[i]);
    51e0:	07 ff       	sbrs	r16, 7
    51e2:	13 c0       	rjmp	.+38     	; 0x520a <_ZL24USB_SendStringDescriptorPKhhh+0x5e>
    51e4:	fe 01       	movw	r30, r28
    51e6:	84 91       	lpm	r24, Z
    51e8:	0e 94 3b 07 	call	0xe76	; 0xe76 <_ZL11SendControlh>
    51ec:	18 2f       	mov	r17, r24
                r &= SendControl(0); // high byte
    51ee:	80 e0       	ldi	r24, 0x00	; 0
    51f0:	0e 94 3b 07 	call	0xe76	; 0xe76 <_ZL11SendControlh>
    51f4:	81 23       	and	r24, r17
    51f6:	21 96       	adiw	r28, 0x01	; 1
                if(!r) {
    51f8:	81 11       	cpse	r24, r1
    51fa:	ef cf       	rjmp	.-34     	; 0x51da <_ZL24USB_SendStringDescriptorPKhhh+0x2e>
                        return false;
                }
        }
        return true;
}
    51fc:	df 91       	pop	r29
    51fe:	cf 91       	pop	r28
    5200:	1f 91       	pop	r17
    5202:	0f 91       	pop	r16
    5204:	ff 90       	pop	r15
    5206:	ef 90       	pop	r14
    5208:	08 95       	ret
static bool USB_SendStringDescriptor(const u8*string_P, u8 string_len, uint8_t flags) {
        SendControl(2 + string_len * 2);
        SendControl(3);
        bool pgm = flags & TRANSFER_PGM;
        for(u8 i = 0; i < string_len; i++) {
                bool r = SendControl(pgm ? pgm_read_byte(&string_P[i]) : string_P[i]);
    520a:	88 81       	ld	r24, Y
    520c:	ed cf       	rjmp	.-38     	; 0x51e8 <_ZL24USB_SendStringDescriptorPKhhh+0x3c>
                r &= SendControl(0); // high byte
                if(!r) {
                        return false;
                }
        }
        return true;
    520e:	81 e0       	ldi	r24, 0x01	; 1
    5210:	f5 cf       	rjmp	.-22     	; 0x51fc <_ZL24USB_SendStringDescriptorPKhhh+0x50>

00005212 <_GLOBAL__I_65535_0_MyArduboy2.cpp.o.3185>:
    5212:	ed e8       	ldi	r30, 0x8D	; 141
    5214:	f7 e0       	ldi	r31, 0x07	; 7
    5216:	13 82       	std	Z+3, r1	; 0x03
    5218:	12 82       	std	Z+2, r1	; 0x02
    521a:	88 ee       	ldi	r24, 0xE8	; 232
    521c:	93 e0       	ldi	r25, 0x03	; 3
    521e:	a0 e0       	ldi	r26, 0x00	; 0
    5220:	b0 e0       	ldi	r27, 0x00	; 0
    5222:	84 83       	std	Z+4, r24	; 0x04
    5224:	95 83       	std	Z+5, r25	; 0x05
    5226:	a6 83       	std	Z+6, r26	; 0x06
    5228:	b7 83       	std	Z+7, r27	; 0x07
    522a:	86 e2       	ldi	r24, 0x26	; 38
    522c:	91 e0       	ldi	r25, 0x01	; 1
    522e:	91 83       	std	Z+1, r25	; 0x01
    5230:	80 83       	st	Z, r24
    5232:	8f ef       	ldi	r24, 0xFF	; 255
    5234:	9f ef       	ldi	r25, 0xFF	; 255
    5236:	95 87       	std	Z+13, r25	; 0x0d
    5238:	84 87       	std	Z+12, r24	; 0x0c
    523a:	ed ed       	ldi	r30, 0xDD	; 221
    523c:	f7 e0       	ldi	r31, 0x07	; 7
    523e:	13 82       	std	Z+3, r1	; 0x03
    5240:	12 82       	std	Z+2, r1	; 0x02
    5242:	88 e3       	ldi	r24, 0x38	; 56
    5244:	91 e0       	ldi	r25, 0x01	; 1
    5246:	91 83       	std	Z+1, r25	; 0x01
    5248:	80 83       	st	Z, r24
    524a:	08 95       	ret

0000524c <main>:

void init()
{
	// this needs to be called before setup() or some functions won't
	// work there
	sei();
    524c:	78 94       	sei
	
	// on the ATmega168, timer 0 is also used for fast hardware pwm
	// (using phase-correct PWM would mean that timer 0 overflowed half as often
	// resulting in different millis() behavior on the ATmega8 and ATmega168)
#if defined(TCCR0A) && defined(WGM01)
	sbi(TCCR0A, WGM01);
    524e:	84 b5       	in	r24, 0x24	; 36
    5250:	82 60       	ori	r24, 0x02	; 2
    5252:	84 bd       	out	0x24, r24	; 36
	sbi(TCCR0A, WGM00);
    5254:	84 b5       	in	r24, 0x24	; 36
    5256:	81 60       	ori	r24, 0x01	; 1
    5258:	84 bd       	out	0x24, r24	; 36
	// this combination is for the standard atmega8
	sbi(TCCR0, CS01);
	sbi(TCCR0, CS00);
#elif defined(TCCR0B) && defined(CS01) && defined(CS00)
	// this combination is for the standard 168/328/1280/2560
	sbi(TCCR0B, CS01);
    525a:	85 b5       	in	r24, 0x25	; 37
    525c:	82 60       	ori	r24, 0x02	; 2
    525e:	85 bd       	out	0x25, r24	; 37
	sbi(TCCR0B, CS00);
    5260:	85 b5       	in	r24, 0x25	; 37
    5262:	81 60       	ori	r24, 0x01	; 1
    5264:	85 bd       	out	0x25, r24	; 37

	// enable timer 0 overflow interrupt
#if defined(TIMSK) && defined(TOIE0)
	sbi(TIMSK, TOIE0);
#elif defined(TIMSK0) && defined(TOIE0)
	sbi(TIMSK0, TOIE0);
    5266:	80 91 6e 00 	lds	r24, 0x006E	; 0x80006e <__DATA_REGION_ORIGIN__+0xe>
    526a:	81 60       	ori	r24, 0x01	; 1
    526c:	80 93 6e 00 	sts	0x006E, r24	; 0x80006e <__DATA_REGION_ORIGIN__+0xe>
	// this is better for motors as it ensures an even waveform
	// note, however, that fast pwm mode can achieve a frequency of up
	// 8 MHz (with a 16 MHz clock) at 50% duty cycle

#if defined(TCCR1B) && defined(CS11) && defined(CS10)
	TCCR1B = 0;
    5270:	10 92 81 00 	sts	0x0081, r1	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>

	// set timer 1 prescale factor to 64
	sbi(TCCR1B, CS11);
    5274:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
    5278:	82 60       	ori	r24, 0x02	; 2
    527a:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
#if F_CPU >= 8000000L
	sbi(TCCR1B, CS10);
    527e:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
    5282:	81 60       	ori	r24, 0x01	; 1
    5284:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
	sbi(TCCR1, CS10);
#endif
#endif
	// put timer 1 in 8-bit phase correct pwm mode
#if defined(TCCR1A) && defined(WGM10)
	sbi(TCCR1A, WGM10);
    5288:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
    528c:	81 60       	ori	r24, 0x01	; 1
    528e:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
//#else
	// Timer 2 not finished (may not be present on this CPU)
#endif

#if defined(TCCR3B) && defined(CS31) && defined(WGM30)
	sbi(TCCR3B, CS31);		// set timer 3 prescale factor to 64
    5292:	80 91 91 00 	lds	r24, 0x0091	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
    5296:	82 60       	ori	r24, 0x02	; 2
    5298:	80 93 91 00 	sts	0x0091, r24	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
	sbi(TCCR3B, CS30);
    529c:	80 91 91 00 	lds	r24, 0x0091	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
    52a0:	81 60       	ori	r24, 0x01	; 1
    52a2:	80 93 91 00 	sts	0x0091, r24	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
	sbi(TCCR3A, WGM30);		// put timer 3 in 8-bit phase correct pwm mode
    52a6:	80 91 90 00 	lds	r24, 0x0090	; 0x800090 <__DATA_REGION_ORIGIN__+0x30>
    52aa:	81 60       	ori	r24, 0x01	; 1
    52ac:	80 93 90 00 	sts	0x0090, r24	; 0x800090 <__DATA_REGION_ORIGIN__+0x30>
#endif

#if defined(TCCR4A) && defined(TCCR4B) && defined(TCCR4D) /* beginning of timer4 block for 32U4 and similar */
	sbi(TCCR4B, CS42);		// set timer4 prescale factor to 64
    52b0:	80 91 c1 00 	lds	r24, 0x00C1	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
    52b4:	84 60       	ori	r24, 0x04	; 4
    52b6:	80 93 c1 00 	sts	0x00C1, r24	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
	sbi(TCCR4B, CS41);
    52ba:	80 91 c1 00 	lds	r24, 0x00C1	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
    52be:	82 60       	ori	r24, 0x02	; 2
    52c0:	80 93 c1 00 	sts	0x00C1, r24	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
	sbi(TCCR4B, CS40);
    52c4:	80 91 c1 00 	lds	r24, 0x00C1	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
    52c8:	81 60       	ori	r24, 0x01	; 1
    52ca:	80 93 c1 00 	sts	0x00C1, r24	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
	sbi(TCCR4D, WGM40);		// put timer 4 in phase- and frequency-correct PWM mode	
    52ce:	80 91 c3 00 	lds	r24, 0x00C3	; 0x8000c3 <__DATA_REGION_ORIGIN__+0x63>
    52d2:	81 60       	ori	r24, 0x01	; 1
    52d4:	80 93 c3 00 	sts	0x00C3, r24	; 0x8000c3 <__DATA_REGION_ORIGIN__+0x63>
	sbi(TCCR4A, PWM4A);		// enable PWM mode for comparator OCR4A
    52d8:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__DATA_REGION_ORIGIN__+0x60>
    52dc:	82 60       	ori	r24, 0x02	; 2
    52de:	80 93 c0 00 	sts	0x00C0, r24	; 0x8000c0 <__DATA_REGION_ORIGIN__+0x60>
	sbi(TCCR4C, PWM4D);		// enable PWM mode for comparator OCR4D
    52e2:	80 91 c2 00 	lds	r24, 0x00C2	; 0x8000c2 <__DATA_REGION_ORIGIN__+0x62>
    52e6:	81 60       	ori	r24, 0x01	; 1
    52e8:	80 93 c2 00 	sts	0x00C2, r24	; 0x8000c2 <__DATA_REGION_ORIGIN__+0x62>
#endif

#if defined(ADCSRA)
	// set a2d prescaler so we are inside the desired 50-200 KHz range.
	#if F_CPU >= 16000000 // 16 MHz / 128 = 125 KHz
		sbi(ADCSRA, ADPS2);
    52ec:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
    52f0:	84 60       	ori	r24, 0x04	; 4
    52f2:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
		sbi(ADCSRA, ADPS1);
    52f6:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
    52fa:	82 60       	ori	r24, 0x02	; 2
    52fc:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
		sbi(ADCSRA, ADPS0);
    5300:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
    5304:	81 60       	ori	r24, 0x01	; 1
    5306:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
		cbi(ADCSRA, ADPS2);
		cbi(ADCSRA, ADPS1);
		sbi(ADCSRA, ADPS0);
	#endif
	// enable a2d conversions
	sbi(ADCSRA, ADEN);
    530a:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
    530e:	80 68       	ori	r24, 0x80	; 128
    5310:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
{
}

void USBDevice_::attach()
{
	_usbConfiguration = 0;
    5314:	10 92 70 03 	sts	0x0370, r1	; 0x800370 <_usbConfiguration>
	_usbCurrentStatus = 0;
    5318:	10 92 60 03 	sts	0x0360, r1	; 0x800360 <_usbCurrentStatus>
	_usbSuspendState = 0;
    531c:	10 92 62 03 	sts	0x0362, r1	; 0x800362 <_usbSuspendState>
}

static inline void USB_ClockEnable()
{
#if defined(UHWCON)
	UHWCON |= (1<<UVREGE);			// power internal reg
    5320:	80 91 d7 00 	lds	r24, 0x00D7	; 0x8000d7 <__DATA_REGION_ORIGIN__+0x77>
    5324:	81 60       	ori	r24, 0x01	; 1
    5326:	80 93 d7 00 	sts	0x00D7, r24	; 0x8000d7 <__DATA_REGION_ORIGIN__+0x77>
#endif
	USBCON = (1<<USBE) | (1<<FRZCLK);	// clock frozen, usb enabled
    532a:	80 ea       	ldi	r24, 0xA0	; 160
    532c:	80 93 d8 00 	sts	0x00D8, r24	; 0x8000d8 <__DATA_REGION_ORIGIN__+0x78>

// ATmega32U4
#if defined(PINDIV)
#if F_CPU == 16000000UL
	PLLCSR |= (1<<PINDIV);                   // Need 16 MHz xtal
    5330:	89 b5       	in	r24, 0x29	; 41
    5332:	80 61       	ori	r24, 0x10	; 16
    5334:	89 bd       	out	0x29, r24	; 41
#endif
#else
#error "USB Chip not supported, please defined method of USB PLL initialization"
#endif

	PLLCSR |= (1<<PLLE);
    5336:	89 b5       	in	r24, 0x29	; 41
    5338:	82 60       	ori	r24, 0x02	; 2
    533a:	89 bd       	out	0x29, r24	; 41
	while (!(PLLCSR & (1<<PLOCK)))		// wait for lock pll
    533c:	09 b4       	in	r0, 0x29	; 41
    533e:	00 fe       	sbrs	r0, 0
    5340:	fd cf       	rjmp	.-6      	; 0x533c <main+0xf0>
	}

	// Some tests on specific versions of macosx (10.7.3), reported some
	// strange behaviors when the board is reset using the serial
	// port touch at 1200 bps. This delay fixes this behavior.
	delay(1);
    5342:	61 e0       	ldi	r22, 0x01	; 1
    5344:	70 e0       	ldi	r23, 0x00	; 0
    5346:	80 e0       	ldi	r24, 0x00	; 0
    5348:	90 e0       	ldi	r25, 0x00	; 0
    534a:	0e 94 1f 08 	call	0x103e	; 0x103e <delay>
#if defined(OTGPADE)
	USBCON = (USBCON & ~(1<<FRZCLK)) | (1<<OTGPADE);	// start USB clock, enable VBUS Pad
    534e:	80 91 d8 00 	lds	r24, 0x00D8	; 0x8000d8 <__DATA_REGION_ORIGIN__+0x78>
    5352:	8f 7c       	andi	r24, 0xCF	; 207
    5354:	80 61       	ori	r24, 0x10	; 16
    5356:	80 93 d8 00 	sts	0x00D8, r24	; 0x8000d8 <__DATA_REGION_ORIGIN__+0x78>
	USBCON &= ~(1 << FRZCLK);	// start USB clock
#endif

#if defined(RSTCPU)
#if defined(LSM)
	UDCON &= ~((1<<RSTCPU) | (1<<LSM) | (1<<RMWKUP) | (1<<DETACH));	// enable attach resistor, set full speed mode
    535a:	80 91 e0 00 	lds	r24, 0x00E0	; 0x8000e0 <__DATA_REGION_ORIGIN__+0x80>
    535e:	80 7f       	andi	r24, 0xF0	; 240
    5360:	80 93 e0 00 	sts	0x00E0, r24	; 0x8000e0 <__DATA_REGION_ORIGIN__+0x80>
	_usbConfiguration = 0;
	_usbCurrentStatus = 0;
	_usbSuspendState = 0;
	USB_ClockEnable();

	UDINT &= ~((1<<WAKEUPI) | (1<<SUSPI)); // clear already pending WAKEUP / SUSPEND requests
    5364:	80 91 e1 00 	lds	r24, 0x00E1	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
    5368:	8e 7e       	andi	r24, 0xEE	; 238
    536a:	80 93 e1 00 	sts	0x00E1, r24	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
	UDIEN = (1<<EORSTE) | (1<<SOFE) | (1<<SUSPE);	// Enable interrupts for EOR (End of Reset), SOF (start of frame) and SUSPEND
    536e:	8d e0       	ldi	r24, 0x0D	; 13
    5370:	80 93 e2 00 	sts	0x00E2, r24	; 0x8000e2 <__DATA_REGION_ORIGIN__+0x82>
	
	TX_RX_LED_INIT;
    5374:	55 9a       	sbi	0x0a, 5	; 10
    5376:	20 9a       	sbi	0x04, 0	; 4
  // ARDUBOY_SET_CPU_8MHZ will be set by the IDE using boards.txt
  setCPUSpeed8MHz();
  #endif

  // Select the ADC input here so a delay isn't required in generateRandomSeed()
  ADMUX = RAND_SEED_IN_ADMUX;
    5378:	81 ec       	ldi	r24, 0xC1	; 193
    537a:	80 93 7c 00 	sts	0x007C, r24	; 0x80007c <__DATA_REGION_ORIGIN__+0x1c>
void Arduboy2Core::bootPins()
{
#ifdef ARDUBOY_10

  // Port B INPUT_PULLUP or HIGH
  PORTB |= _BV(RED_LED_BIT) | _BV(GREEN_LED_BIT) | _BV(BLUE_LED_BIT) |
    537e:	85 b1       	in	r24, 0x05	; 5
    5380:	80 6f       	ori	r24, 0xF0	; 240
    5382:	85 b9       	out	0x05, r24	; 5
           _BV(B_BUTTON_BIT);
  // Port B INPUT or LOW (none)
  // Port B inputs
  DDRB &= ~(_BV(B_BUTTON_BIT) | _BV(SPI_MISO_BIT));
    5384:	84 b1       	in	r24, 0x04	; 4
    5386:	87 7e       	andi	r24, 0xE7	; 231
    5388:	84 b9       	out	0x04, r24	; 4
  // Port B outputs
  DDRB |= _BV(RED_LED_BIT) | _BV(GREEN_LED_BIT) | _BV(BLUE_LED_BIT) |
    538a:	84 b1       	in	r24, 0x04	; 4
    538c:	87 6e       	ori	r24, 0xE7	; 231
    538e:	84 b9       	out	0x04, r24	; 4

  // Port C
  // Speaker: Not set here. Controlled by audio class

  // Port D INPUT_PULLUP or HIGH
  PORTD |= _BV(CS_BIT);
    5390:	5e 9a       	sbi	0x0b, 6	; 11
  // Port D INPUT or LOW
  PORTD &= ~(_BV(RST_BIT));
    5392:	5f 98       	cbi	0x0b, 7	; 11
  // Port D inputs (none)
  // Port D outputs
  DDRD |= _BV(RST_BIT) | _BV(CS_BIT) | _BV(DC_BIT);
    5394:	8a b1       	in	r24, 0x0a	; 10
    5396:	80 6d       	ori	r24, 0xD0	; 208
    5398:	8a b9       	out	0x0a, r24	; 10

  // Port E INPUT_PULLUP or HIGH
  PORTE |= _BV(A_BUTTON_BIT);
    539a:	76 9a       	sbi	0x0e, 6	; 14
  // Port E INPUT or LOW (none)
  // Port E inputs
  DDRE &= ~(_BV(A_BUTTON_BIT));
    539c:	6e 98       	cbi	0x0d, 6	; 13
  // Port E outputs (none)

  // Port F INPUT_PULLUP or HIGH
  PORTF |= _BV(LEFT_BUTTON_BIT) | _BV(RIGHT_BUTTON_BIT) |
    539e:	81 b3       	in	r24, 0x11	; 17
    53a0:	80 6f       	ori	r24, 0xF0	; 240
    53a2:	81 bb       	out	0x11, r24	; 17
           _BV(UP_BUTTON_BIT) | _BV(DOWN_BUTTON_BIT);
  // Port F INPUT or LOW
  PORTF &= ~(_BV(RAND_SEED_IN_BIT));
    53a4:	89 98       	cbi	0x11, 1	; 17
  // Port F inputs
  DDRF &= ~(_BV(LEFT_BUTTON_BIT) | _BV(RIGHT_BUTTON_BIT) |
    53a6:	80 b3       	in	r24, 0x10	; 16
    53a8:	8d 70       	andi	r24, 0x0D	; 13
    53aa:	80 bb       	out	0x10, r24	; 16

// Initialize the SPI interface for the display
void Arduboy2Core::bootSPI()
{
// master, mode 0, MSB first, CPU clock / 2 (8MHz)
  SPCR = _BV(SPE) | _BV(MSTR);
    53ac:	80 e5       	ldi	r24, 0x50	; 80
    53ae:	8c bd       	out	0x2c, r24	; 44
  SPSR = _BV(SPI2X);
    53b0:	81 e0       	ldi	r24, 0x01	; 1
    53b2:	8d bd       	out	0x2d, r24	; 45
}

void Arduboy2Core::bootOLED()
{
  // reset the display
  delayShort(5); // reset pin should be low here. let it stay low a while
    53b4:	85 e0       	ldi	r24, 0x05	; 5
    53b6:	90 e0       	ldi	r25, 0x00	; 0
    53b8:	0e 94 d7 08 	call	0x11ae	; 0x11ae <_ZN12Arduboy2Core10delayShortEj>
  bitSet(RST_PORT, RST_BIT); // set high to come out of reset
    53bc:	5f 9a       	sbi	0x0b, 7	; 11
  delayShort(5); // wait a while
    53be:	85 e0       	ldi	r24, 0x05	; 5
    53c0:	90 e0       	ldi	r25, 0x00	; 0
    53c2:	0e 94 d7 08 	call	0x11ae	; 0x11ae <_ZN12Arduboy2Core10delayShortEj>

  // select the display (permanently, since nothing else is using SPI)
  bitClear(CS_PORT, CS_BIT);
    53c6:	5e 98       	cbi	0x0b, 6	; 11
  bitSet(DC_PORT, DC_BIT);
}

void Arduboy2Core::LCDCommandMode()
{
  bitClear(DC_PORT, DC_BIT);
    53c8:	5c 98       	cbi	0x0b, 4	; 11
    53ca:	ef ed       	ldi	r30, 0xDF	; 223
    53cc:	fa e0       	ldi	r31, 0x0A	; 10

  // run our customized boot-up command sequence against the
  // OLED to initialize it properly for Arduboy
  LCDCommandMode();
  for (uint8_t i = 0; i < sizeof(lcdBootProgram); i++) {
    SPItransfer(pgm_read_byte(lcdBootProgram + i));
    53ce:	84 91       	lpm	r24, Z
}

// Write to the SPI bus (MOSI pin)
void Arduboy2Core::SPItransfer(uint8_t data)
{
  SPDR = data;
    53d0:	8e bd       	out	0x2e, r24	; 46
   * The following NOP introduces a small delay that can prevent the wait
   * loop from iterating when running at the maximum speed. This gives
   * about 10% more speed, even if it seems counter-intuitive. At lower
   * speeds it is unnoticed.
   */
  asm volatile("nop");
    53d2:	00 00       	nop
  while (!(SPSR & _BV(SPIF))) { } // wait
    53d4:	0d b4       	in	r0, 0x2d	; 45
    53d6:	07 fe       	sbrs	r0, 7
    53d8:	fd cf       	rjmp	.-6      	; 0x53d4 <main+0x188>
    53da:	31 96       	adiw	r30, 0x01	; 1
  bitClear(CS_PORT, CS_BIT);

  // run our customized boot-up command sequence against the
  // OLED to initialize it properly for Arduboy
  LCDCommandMode();
  for (uint8_t i = 0; i < sizeof(lcdBootProgram); i++) {
    53dc:	8a e0       	ldi	r24, 0x0A	; 10
    53de:	ec 3e       	cpi	r30, 0xEC	; 236
    53e0:	f8 07       	cpc	r31, r24
    53e2:	a9 f7       	brne	.-22     	; 0x53ce <main+0x182>
  LCDDataMode();
}

void Arduboy2Core::LCDDataMode()
{
  bitSet(DC_PORT, DC_BIT);
    53e4:	5c 9a       	sbi	0x0b, 4	; 11

void Arduboy2Core::bootPowerSaving()
{
  // disable Two Wire Interface (I2C) and the ADC
  // All other bits will be written with 0 so will be enabled
  PRR0 = _BV(PRTWI) | _BV(PRADC);
    53e6:	81 e8       	ldi	r24, 0x81	; 129
    53e8:	80 93 64 00 	sts	0x0064, r24	; 0x800064 <__DATA_REGION_ORIGIN__+0x4>
  // disable USART1
  PRR1 |= _BV(PRUSART1);
    53ec:	80 91 65 00 	lds	r24, 0x0065	; 0x800065 <__DATA_REGION_ORIGIN__+0x5>
    53f0:	81 60       	ori	r24, 0x01	; 1
    53f2:	80 93 65 00 	sts	0x0065, r24	; 0x800065 <__DATA_REGION_ORIGIN__+0x5>
  }
}

void Arduboy2Base::display()
{
  paintScreen(sBuffer);
    53f6:	0e 94 e5 05 	call	0xbca	; 0xbca <_ZN12Arduboy2Core11paintScreenEPhb.constprop.46>
  return sBuffer;
}

bool Arduboy2Base::pressed(uint8_t buttons)
{
  return (buttonsState() & buttons) == buttons;
    53fa:	0e 94 dc 08 	call	0x11b8	; 0x11b8 <_ZN12Arduboy2Core12buttonsStateEv>
  audio.begin();
}

void Arduboy2Base::flashlight()
{
  if (!pressed(UP_BUTTON)) {
    53fe:	87 ff       	sbrs	r24, 7
    5400:	15 c0       	rjmp	.+42     	; 0x542c <main+0x1e0>
  bitSet(DC_PORT, DC_BIT);
}

void Arduboy2Core::LCDCommandMode()
{
  bitClear(DC_PORT, DC_BIT);
    5402:	5c 98       	cbi	0x0b, 4	; 11
}

// Write to the SPI bus (MOSI pin)
void Arduboy2Core::SPItransfer(uint8_t data)
{
  SPDR = data;
    5404:	85 ea       	ldi	r24, 0xA5	; 165
    5406:	8e bd       	out	0x2e, r24	; 46
   * The following NOP introduces a small delay that can prevent the wait
   * loop from iterating when running at the maximum speed. This gives
   * about 10% more speed, even if it seems counter-intuitive. At lower
   * speeds it is unnoticed.
   */
  asm volatile("nop");
    5408:	00 00       	nop
  while (!(SPSR & _BV(SPIF))) { } // wait
    540a:	0d b4       	in	r0, 0x2d	; 45
    540c:	07 fe       	sbrs	r0, 7
    540e:	fd cf       	rjmp	.-6      	; 0x540a <main+0x1be>
  LCDDataMode();
}

void Arduboy2Core::LCDDataMode()
{
  bitSet(DC_PORT, DC_BIT);
    5410:	5c 9a       	sbi	0x0b, 4	; 11
}

void Arduboy2Core::digitalWriteRGB(uint8_t red, uint8_t green, uint8_t blue)
{
#ifdef ARDUBOY_10
  bitWrite(RED_LED_PORT, RED_LED_BIT, red);
    5412:	2e 98       	cbi	0x05, 6	; 5
  bitWrite(GREEN_LED_PORT, GREEN_LED_BIT, green);
    5414:	2f 98       	cbi	0x05, 7	; 5
  bitWrite(BLUE_LED_PORT, BLUE_LED_BIT, blue);
    5416:	2d 98       	cbi	0x05, 5	; 5

#ifndef ARDUBOY_CORE // for Arduboy core timer 0 should remain enabled
  // prevent the bootloader magic number from being overwritten by timer 0
  // when a timer variable overlaps the magic number location, for when
  // flashlight mode is used for upload problem recovery
  power_timer0_disable();
    5418:	80 91 64 00 	lds	r24, 0x0064	; 0x800064 <__DATA_REGION_ORIGIN__+0x4>
    541c:	80 62       	ori	r24, 0x20	; 32
    541e:	80 93 64 00 	sts	0x0064, r24	; 0x800064 <__DATA_REGION_ORIGIN__+0x4>

/* Power Management */

void Arduboy2Core::idle()
{
  SMCR = _BV(SE); // select idle mode and enable sleeping
    5422:	81 e0       	ldi	r24, 0x01	; 1
    5424:	83 bf       	out	0x33, r24	; 51
  sleep_cpu();
    5426:	88 95       	sleep
  SMCR = 0; // disable sleeping
    5428:	13 be       	out	0x33, r1	; 51
    542a:	fc cf       	rjmp	.-8      	; 0x5424 <main+0x1d8>
  return sBuffer;
}

bool Arduboy2Base::pressed(uint8_t buttons)
{
  return (buttonsState() & buttons) == buttons;
    542c:	0e 94 dc 08 	call	0x11b8	; 0x11b8 <_ZN12Arduboy2Core12buttonsStateEv>
  }
}

void Arduboy2Base::systemButtons()
{
  while (pressed(B_BUTTON)) {
    5430:	82 ff       	sbrs	r24, 2
    5432:	46 c0       	rjmp	.+140    	; 0x54c0 <main+0x274>
  {
    bitWrite(GREEN_LED_PORT, GREEN_LED_BIT, val);
  }
  else if (color == BLUE_LED)
  {
    bitWrite(BLUE_LED_PORT, BLUE_LED_BIT, val);
    5434:	2d 98       	cbi	0x05, 5	; 5
  return sBuffer;
}

bool Arduboy2Base::pressed(uint8_t buttons)
{
  return (buttonsState() & buttons) == buttons;
    5436:	0e 94 dc 08 	call	0x11b8	; 0x11b8 <_ZN12Arduboy2Core12buttonsStateEv>
    543a:	84 78       	andi	r24, 0x84	; 132
  digitalWriteRGB(BLUE_LED, RGB_OFF); // turn off blue LED
}

void Arduboy2Base::sysCtrlSound(uint8_t buttons, uint8_t led, uint8_t eeVal)
{
  if (pressed(buttons)) {
    543c:	84 38       	cpi	r24, 0x84	; 132
    543e:	d9 f4       	brne	.+54     	; 0x5476 <main+0x22a>
void Arduboy2Core::digitalWriteRGB(uint8_t red, uint8_t green, uint8_t blue)
{
#ifdef ARDUBOY_10
  bitWrite(RED_LED_PORT, RED_LED_BIT, red);
  bitWrite(GREEN_LED_PORT, GREEN_LED_BIT, green);
  bitWrite(BLUE_LED_PORT, BLUE_LED_BIT, blue);
    5440:	2d 9a       	sbi	0x05, 5	; 5
    digitalWriteRGB(BLUE_LED, RGB_OFF); // turn off blue LED
    delayShort(200);
    5442:	88 ec       	ldi	r24, 0xC8	; 200
    5444:	90 e0       	ldi	r25, 0x00	; 0
    5446:	0e 94 d7 08 	call	0x11ae	; 0x11ae <_ZN12Arduboy2Core10delayShortEj>
  {
    bitWrite(RED_LED_PORT, RED_LED_BIT, val);
  }
  else if (color == GREEN_LED)
  {
    bitWrite(GREEN_LED_PORT, GREEN_LED_BIT, val);
    544a:	2f 98       	cbi	0x05, 7	; 5

    EERef( const int index )
        : index( index )                 {}
    
    //Access/read members.
    uint8_t operator*() const            { return eeprom_read_byte( (uint8_t*) index ); }
    544c:	82 e0       	ldi	r24, 0x02	; 2
    544e:	90 e0       	ldi	r25, 0x00	; 0
    5450:	0e 94 08 2c 	call	0x5810	; 0x5810 <eeprom_read_byte>
    EERef &operator &=( uint8_t in )     { return *this = **this & in; }
    EERef &operator |=( uint8_t in )     { return *this = **this | in; }
    EERef &operator <<=( uint8_t in )    { return *this = **this << in; }
    EERef &operator >>=( uint8_t in )    { return *this = **this >> in; }
    
    EERef &update( uint8_t in )          { return  in != *this ? *this = in : *this; }
    5454:	8f 3f       	cpi	r24, 0xFF	; 255
    5456:	29 f0       	breq	.+10     	; 0x5462 <main+0x216>
    uint8_t operator*() const            { return eeprom_read_byte( (uint8_t*) index ); }
    operator uint8_t() const             { return **this; }
    
    //Assignment/write members.
    EERef &operator=( const EERef &ref ) { return *this = *ref; }
    EERef &operator=( uint8_t in )       { return eeprom_write_byte( (uint8_t*) index, in ), *this;  }
    5458:	6f ef       	ldi	r22, 0xFF	; 255
    545a:	82 e0       	ldi	r24, 0x02	; 2
    545c:	90 e0       	ldi	r25, 0x00	; 0
    545e:	0e 94 26 2c 	call	0x584c	; 0x584c <eeprom_write_byte>
    digitalWriteRGB(led, RGB_ON); // turn on "acknowledge" LED
    EEPROM.update(eepromAudioOnOff, eeVal);
    delayShort(500);
    5462:	84 ef       	ldi	r24, 0xF4	; 244
    5464:	91 e0       	ldi	r25, 0x01	; 1
    5466:	0e 94 d7 08 	call	0x11ae	; 0x11ae <_ZN12Arduboy2Core10delayShortEj>
    546a:	2f 9a       	sbi	0x05, 7	; 5
  return sBuffer;
}

bool Arduboy2Base::pressed(uint8_t buttons)
{
  return (buttonsState() & buttons) == buttons;
    546c:	0e 94 dc 08 	call	0x11b8	; 0x11b8 <_ZN12Arduboy2Core12buttonsStateEv>
    5470:	84 78       	andi	r24, 0x84	; 132
    digitalWriteRGB(led, RGB_ON); // turn on "acknowledge" LED
    EEPROM.update(eepromAudioOnOff, eeVal);
    delayShort(500);
    digitalWriteRGB(led, RGB_OFF); // turn off "acknowledge" LED

    while (pressed(buttons)) { } // Wait for button release
    5472:	84 38       	cpi	r24, 0x84	; 132
    5474:	d9 f3       	breq	.-10     	; 0x546c <main+0x220>
  return sBuffer;
}

bool Arduboy2Base::pressed(uint8_t buttons)
{
  return (buttonsState() & buttons) == buttons;
    5476:	0e 94 dc 08 	call	0x11b8	; 0x11b8 <_ZN12Arduboy2Core12buttonsStateEv>
    547a:	84 71       	andi	r24, 0x14	; 20
  digitalWriteRGB(BLUE_LED, RGB_OFF); // turn off blue LED
}

void Arduboy2Base::sysCtrlSound(uint8_t buttons, uint8_t led, uint8_t eeVal)
{
  if (pressed(buttons)) {
    547c:	84 31       	cpi	r24, 0x14	; 20
    547e:	d9 f4       	brne	.+54     	; 0x54b6 <main+0x26a>
void Arduboy2Core::digitalWriteRGB(uint8_t red, uint8_t green, uint8_t blue)
{
#ifdef ARDUBOY_10
  bitWrite(RED_LED_PORT, RED_LED_BIT, red);
  bitWrite(GREEN_LED_PORT, GREEN_LED_BIT, green);
  bitWrite(BLUE_LED_PORT, BLUE_LED_BIT, blue);
    5480:	2d 9a       	sbi	0x05, 5	; 5
    digitalWriteRGB(BLUE_LED, RGB_OFF); // turn off blue LED
    delayShort(200);
    5482:	88 ec       	ldi	r24, 0xC8	; 200
    5484:	90 e0       	ldi	r25, 0x00	; 0
    5486:	0e 94 d7 08 	call	0x11ae	; 0x11ae <_ZN12Arduboy2Core10delayShortEj>
void Arduboy2Core::digitalWriteRGB(uint8_t color, uint8_t val)
{
#ifdef ARDUBOY_10
  if (color == RED_LED)
  {
    bitWrite(RED_LED_PORT, RED_LED_BIT, val);
    548a:	2e 98       	cbi	0x05, 6	; 5

    EERef( const int index )
        : index( index )                 {}
    
    //Access/read members.
    uint8_t operator*() const            { return eeprom_read_byte( (uint8_t*) index ); }
    548c:	82 e0       	ldi	r24, 0x02	; 2
    548e:	90 e0       	ldi	r25, 0x00	; 0
    5490:	0e 94 08 2c 	call	0x5810	; 0x5810 <eeprom_read_byte>
    EERef &operator &=( uint8_t in )     { return *this = **this & in; }
    EERef &operator |=( uint8_t in )     { return *this = **this | in; }
    EERef &operator <<=( uint8_t in )    { return *this = **this << in; }
    EERef &operator >>=( uint8_t in )    { return *this = **this >> in; }
    
    EERef &update( uint8_t in )          { return  in != *this ? *this = in : *this; }
    5494:	88 23       	and	r24, r24
    5496:	29 f0       	breq	.+10     	; 0x54a2 <main+0x256>
    uint8_t operator*() const            { return eeprom_read_byte( (uint8_t*) index ); }
    operator uint8_t() const             { return **this; }
    
    //Assignment/write members.
    EERef &operator=( const EERef &ref ) { return *this = *ref; }
    EERef &operator=( uint8_t in )       { return eeprom_write_byte( (uint8_t*) index, in ), *this;  }
    5498:	60 e0       	ldi	r22, 0x00	; 0
    549a:	82 e0       	ldi	r24, 0x02	; 2
    549c:	90 e0       	ldi	r25, 0x00	; 0
    549e:	0e 94 26 2c 	call	0x584c	; 0x584c <eeprom_write_byte>
    digitalWriteRGB(led, RGB_ON); // turn on "acknowledge" LED
    EEPROM.update(eepromAudioOnOff, eeVal);
    delayShort(500);
    54a2:	84 ef       	ldi	r24, 0xF4	; 244
    54a4:	91 e0       	ldi	r25, 0x01	; 1
    54a6:	0e 94 d7 08 	call	0x11ae	; 0x11ae <_ZN12Arduboy2Core10delayShortEj>
    54aa:	2e 9a       	sbi	0x05, 6	; 5
  return sBuffer;
}

bool Arduboy2Base::pressed(uint8_t buttons)
{
  return (buttonsState() & buttons) == buttons;
    54ac:	0e 94 dc 08 	call	0x11b8	; 0x11b8 <_ZN12Arduboy2Core12buttonsStateEv>
    54b0:	84 71       	andi	r24, 0x14	; 20
    digitalWriteRGB(led, RGB_ON); // turn on "acknowledge" LED
    EEPROM.update(eepromAudioOnOff, eeVal);
    delayShort(500);
    digitalWriteRGB(led, RGB_OFF); // turn off "acknowledge" LED

    while (pressed(buttons)) { } // Wait for button release
    54b2:	84 31       	cpi	r24, 0x14	; 20
    54b4:	d9 f3       	breq	.-10     	; 0x54ac <main+0x260>
{
  while (pressed(B_BUTTON)) {
    digitalWriteRGB(BLUE_LED, RGB_ON); // turn on blue LED
    sysCtrlSound(UP_BUTTON + B_BUTTON, GREEN_LED, 0xff);
    sysCtrlSound(DOWN_BUTTON + B_BUTTON, RED_LED, 0);
    delayShort(200);
    54b6:	88 ec       	ldi	r24, 0xC8	; 200
    54b8:	90 e0       	ldi	r25, 0x00	; 0
    54ba:	0e 94 d7 08 	call	0x11ae	; 0x11ae <_ZN12Arduboy2Core10delayShortEj>
    54be:	b6 cf       	rjmp	.-148    	; 0x542c <main+0x1e0>
void Arduboy2Core::digitalWriteRGB(uint8_t red, uint8_t green, uint8_t blue)
{
#ifdef ARDUBOY_10
  bitWrite(RED_LED_PORT, RED_LED_BIT, red);
  bitWrite(GREEN_LED_PORT, GREEN_LED_BIT, green);
  bitWrite(BLUE_LED_PORT, BLUE_LED_BIT, blue);
    54c0:	2d 9a       	sbi	0x05, 5	; 5

    EERef( const int index )
        : index( index )                 {}
    
    //Access/read members.
    uint8_t operator*() const            { return eeprom_read_byte( (uint8_t*) index ); }
    54c2:	82 e0       	ldi	r24, 0x02	; 2
    54c4:	90 e0       	ldi	r25, 0x00	; 0
    54c6:	0e 94 08 2c 	call	0x5810	; 0x5810 <eeprom_read_byte>
}

void Arduboy2Audio::begin()
{
  if (EEPROM.read(Arduboy2Base::eepromAudioOnOff))
    54ca:	88 23       	and	r24, r24
    54cc:	59 f1       	breq	.+86     	; 0x5524 <main+0x2d8>
    on();
    54ce:	0e 94 ec 08 	call	0x11d8	; 0x11d8 <_ZN13Arduboy2Audio2onEv>

/* Frame management */

void Arduboy2Base::setFrameRate(uint8_t rate)
{
  eachFrameMillis = 1000 / rate;
    54d2:	80 e1       	ldi	r24, 0x10	; 16
    54d4:	80 93 06 01 	sts	0x0106, r24	; 0x800106 <_ZN12Arduboy2Base15eachFrameMillisE>
    Serial.begin(115200);
#endif
    arduboy.beginNoLogo();
    arduboy.setFrameRate(FPS);
    //arduboy.setTextColors(WHITE, WHITE);
    mode = MODE_LOGO;
    54d8:	10 92 5a 03 	sts	0x035A, r1	; 0x80035a <_ZL4mode>
    callInitFunc(mode);
    54dc:	ec ee       	ldi	r30, 0xEC	; 236
    54de:	fa e0       	ldi	r31, 0x0A	; 10
    54e0:	85 91       	lpm	r24, Z+
    54e2:	94 91       	lpm	r25, Z
    54e4:	fc 01       	movw	r30, r24
    54e6:	09 95       	icall

    return false;
  }

  // pre-render
  justRendered = true;
    54e8:	ff 24       	eor	r15, r15
    54ea:	f3 94       	inc	r15
{
#ifdef DEBUG
    dbgCheckSerialRecv();
#endif
    if (!(arduboy.nextFrame())) return;
    MODE_T nextMode = callUpdateFunc(mode);
    54ec:	d6 e0       	ldi	r29, 0x06	; 6
	
	setup();
    
	for (;;) {
		loop();
		if (serialEventRun) serialEventRun();
    54ee:	00 e0       	ldi	r16, 0x00	; 0
    54f0:	10 e0       	ldi	r17, 0x00	; 0
    54f2:	ee 24       	eor	r14, r14
    54f4:	e3 94       	inc	r14
}

unsigned long millis()
{
	unsigned long m;
	uint8_t oldSREG = SREG;
    54f6:	8f b7       	in	r24, 0x3f	; 63

	// disable interrupts while we read timer0_millis or we might get an
	// inconsistent value (e.g. in the middle of a write to timer0_millis)
	cli();
    54f8:	f8 94       	cli
	m = timer0_millis;
    54fa:	40 91 52 03 	lds	r20, 0x0352	; 0x800352 <timer0_millis>
    54fe:	50 91 53 03 	lds	r21, 0x0353	; 0x800353 <timer0_millis+0x1>
    5502:	60 91 54 03 	lds	r22, 0x0354	; 0x800354 <timer0_millis+0x2>
    5506:	70 91 55 03 	lds	r23, 0x0355	; 0x800355 <timer0_millis+0x3>
	SREG = oldSREG;
    550a:	8f bf       	out	0x3f, r24	; 63
bool Arduboy2Base::nextFrame()
{
  uint8_t now = (uint8_t) millis();
  uint8_t frameDurationMs = now - thisFrameStart;

  if (justRendered) {
    550c:	80 91 58 03 	lds	r24, 0x0358	; 0x800358 <_ZN12Arduboy2Base12justRenderedE>
    5510:	88 23       	and	r24, r24
    5512:	59 f0       	breq	.+22     	; 0x552a <main+0x2de>
    lastFrameDurationMs = frameDurationMs;
    justRendered = false;
    5514:	10 92 58 03 	sts	0x0358, r1	; 0x800358 <_ZN12Arduboy2Base12justRenderedE>
    5518:	01 15       	cp	r16, r1
    551a:	11 05       	cpc	r17, r1
    551c:	61 f3       	breq	.-40     	; 0x54f6 <main+0x2aa>
    551e:	0e 94 00 00 	call	0	; 0x0 <__vectors>
    5522:	e9 cf       	rjmp	.-46     	; 0x54f6 <main+0x2aa>
  else
    off();
    5524:	0e 94 e7 08 	call	0x11ce	; 0x11ce <_ZN13Arduboy2Audio3offEv>
    5528:	d4 cf       	rjmp	.-88     	; 0x54d2 <main+0x286>
}

bool Arduboy2Base::nextFrame()
{
  uint8_t now = (uint8_t) millis();
  uint8_t frameDurationMs = now - thisFrameStart;
    552a:	80 91 59 03 	lds	r24, 0x0359	; 0x800359 <_ZN12Arduboy2Base14thisFrameStartE>
    552e:	f4 2f       	mov	r31, r20
    5530:	f8 1b       	sub	r31, r24
    5532:	8f 2f       	mov	r24, r31
  if (justRendered) {
    lastFrameDurationMs = frameDurationMs;
    justRendered = false;
    return false;
  }
  else if (frameDurationMs < eachFrameMillis) {
    5534:	90 91 06 01 	lds	r25, 0x0106	; 0x800106 <_ZN12Arduboy2Base15eachFrameMillisE>
    5538:	f9 17       	cp	r31, r25
    553a:	38 f4       	brcc	.+14     	; 0x554a <main+0x2fe>
    // Only idle if at least a full millisecond remains, since idle() may
    // sleep the processor until the next millisecond timer interrupt.
    if (++frameDurationMs < eachFrameMillis) {
    553c:	8f 5f       	subi	r24, 0xFF	; 255
    553e:	89 17       	cp	r24, r25
    5540:	58 f7       	brcc	.-42     	; 0x5518 <main+0x2cc>

/* Power Management */

void Arduboy2Core::idle()
{
  SMCR = _BV(SE); // select idle mode and enable sleeping
    5542:	f3 be       	out	0x33, r15	; 51
  sleep_cpu();
    5544:	88 95       	sleep
  SMCR = 0; // disable sleeping
    5546:	13 be       	out	0x33, r1	; 51
    5548:	e7 cf       	rjmp	.-50     	; 0x5518 <main+0x2cc>

    return false;
  }

  // pre-render
  justRendered = true;
    554a:	e0 92 58 03 	sts	0x0358, r14	; 0x800358 <_ZN12Arduboy2Base12justRenderedE>
  thisFrameStart = now;
    554e:	40 93 59 03 	sts	0x0359, r20	; 0x800359 <_ZN12Arduboy2Base14thisFrameStartE>
  frameCount++;
    5552:	80 91 56 03 	lds	r24, 0x0356	; 0x800356 <_ZN12Arduboy2Base10frameCountE>
    5556:	90 91 57 03 	lds	r25, 0x0357	; 0x800357 <_ZN12Arduboy2Base10frameCountE+0x1>
    555a:	01 96       	adiw	r24, 0x01	; 1
    555c:	90 93 57 03 	sts	0x0357, r25	; 0x800357 <_ZN12Arduboy2Base10frameCountE+0x1>
    5560:	80 93 56 03 	sts	0x0356, r24	; 0x800356 <_ZN12Arduboy2Base10frameCountE>

bool MyArduboy2::nextFrame(void)
{
    bool ret = Arduboy2::nextFrame();
    if (ret) {
        lastButtonState = currentButtonState;
    5564:	80 91 e2 07 	lds	r24, 0x07E2	; 0x8007e2 <arduboy+0x5>
    5568:	80 93 e1 07 	sts	0x07E1, r24	; 0x8007e1 <arduboy+0x4>
        currentButtonState = buttonsState();
    556c:	0e 94 dc 08 	call	0x11b8	; 0x11b8 <_ZN12Arduboy2Core12buttonsStateEv>
    5570:	80 93 e2 07 	sts	0x07E2, r24	; 0x8007e2 <arduboy+0x5>
    5574:	e0 91 5a 03 	lds	r30, 0x035A	; 0x80035a <_ZL4mode>
    5578:	de 9f       	mul	r29, r30
    557a:	f0 01       	movw	r30, r0
    557c:	11 24       	eor	r1, r1
    557e:	e2 51       	subi	r30, 0x12	; 18
    5580:	f5 4f       	sbci	r31, 0xF5	; 245
    5582:	85 91       	lpm	r24, Z+
    5584:	94 91       	lpm	r25, Z
    5586:	fc 01       	movw	r30, r24
    5588:	09 95       	icall
    558a:	c8 2f       	mov	r28, r24
    callDrawFunc(mode);
    558c:	e0 91 5a 03 	lds	r30, 0x035A	; 0x80035a <_ZL4mode>
    5590:	de 9f       	mul	r29, r30
    5592:	f0 01       	movw	r30, r0
    5594:	11 24       	eor	r1, r1
    5596:	e0 51       	subi	r30, 0x10	; 16
    5598:	f5 4f       	sbci	r31, 0xF5	; 245
    559a:	85 91       	lpm	r24, Z+
    559c:	94 91       	lpm	r25, Z
    559e:	fc 01       	movw	r30, r24
    55a0:	09 95       	icall
  }
}

void Arduboy2Base::display()
{
  paintScreen(sBuffer);
    55a2:	0e 94 e5 05 	call	0xbca	; 0xbca <_ZN12Arduboy2Core11paintScreenEPhb.constprop.46>
#ifdef DEBUG
    dbgRecvChar = '\0';
#endif
    arduboy.display();
    if (mode != nextMode) {
    55a6:	80 91 5a 03 	lds	r24, 0x035A	; 0x80035a <_ZL4mode>
    55aa:	c8 17       	cp	r28, r24
    55ac:	09 f4       	brne	.+2      	; 0x55b0 <main+0x364>
    55ae:	b4 cf       	rjmp	.-152    	; 0x5518 <main+0x2cc>
        mode = nextMode;
    55b0:	c0 93 5a 03 	sts	0x035A, r28	; 0x80035a <_ZL4mode>
        dprint(F("mode="));
        dprintln(mode);
        callInitFunc(mode);
    55b4:	dc 9f       	mul	r29, r28
    55b6:	f0 01       	movw	r30, r0
    55b8:	11 24       	eor	r1, r1
    55ba:	e4 51       	subi	r30, 0x14	; 20
    55bc:	f5 4f       	sbci	r31, 0xF5	; 245
    55be:	85 91       	lpm	r24, Z+
    55c0:	94 91       	lpm	r25, Z
    55c2:	fc 01       	movw	r30, r24
    55c4:	09 95       	icall
    55c6:	a8 cf       	rjmp	.-176    	; 0x5518 <main+0x2cc>

000055c8 <do_rand>:
    55c8:	8f 92       	push	r8
    55ca:	9f 92       	push	r9
    55cc:	af 92       	push	r10
    55ce:	bf 92       	push	r11
    55d0:	cf 92       	push	r12
    55d2:	df 92       	push	r13
    55d4:	ef 92       	push	r14
    55d6:	ff 92       	push	r15
    55d8:	cf 93       	push	r28
    55da:	df 93       	push	r29
    55dc:	ec 01       	movw	r28, r24
    55de:	68 81       	ld	r22, Y
    55e0:	79 81       	ldd	r23, Y+1	; 0x01
    55e2:	8a 81       	ldd	r24, Y+2	; 0x02
    55e4:	9b 81       	ldd	r25, Y+3	; 0x03
    55e6:	61 15       	cp	r22, r1
    55e8:	71 05       	cpc	r23, r1
    55ea:	81 05       	cpc	r24, r1
    55ec:	91 05       	cpc	r25, r1
    55ee:	21 f4       	brne	.+8      	; 0x55f8 <do_rand+0x30>
    55f0:	64 e2       	ldi	r22, 0x24	; 36
    55f2:	79 ed       	ldi	r23, 0xD9	; 217
    55f4:	8b e5       	ldi	r24, 0x5B	; 91
    55f6:	97 e0       	ldi	r25, 0x07	; 7
    55f8:	2d e1       	ldi	r18, 0x1D	; 29
    55fa:	33 ef       	ldi	r19, 0xF3	; 243
    55fc:	41 e0       	ldi	r20, 0x01	; 1
    55fe:	50 e0       	ldi	r21, 0x00	; 0
    5600:	0e 94 41 2c 	call	0x5882	; 0x5882 <__divmodsi4>
    5604:	49 01       	movw	r8, r18
    5606:	5a 01       	movw	r10, r20
    5608:	9b 01       	movw	r18, r22
    560a:	ac 01       	movw	r20, r24
    560c:	a7 ea       	ldi	r26, 0xA7	; 167
    560e:	b1 e4       	ldi	r27, 0x41	; 65
    5610:	0e 94 60 2c 	call	0x58c0	; 0x58c0 <__muluhisi3>
    5614:	6b 01       	movw	r12, r22
    5616:	7c 01       	movw	r14, r24
    5618:	ac ee       	ldi	r26, 0xEC	; 236
    561a:	b4 ef       	ldi	r27, 0xF4	; 244
    561c:	a5 01       	movw	r20, r10
    561e:	94 01       	movw	r18, r8
    5620:	0e 94 6e 2c 	call	0x58dc	; 0x58dc <__mulohisi3>
    5624:	dc 01       	movw	r26, r24
    5626:	cb 01       	movw	r24, r22
    5628:	8c 0d       	add	r24, r12
    562a:	9d 1d       	adc	r25, r13
    562c:	ae 1d       	adc	r26, r14
    562e:	bf 1d       	adc	r27, r15
    5630:	b7 ff       	sbrs	r27, 7
    5632:	03 c0       	rjmp	.+6      	; 0x563a <do_rand+0x72>
    5634:	01 97       	sbiw	r24, 0x01	; 1
    5636:	a1 09       	sbc	r26, r1
    5638:	b0 48       	sbci	r27, 0x80	; 128
    563a:	88 83       	st	Y, r24
    563c:	99 83       	std	Y+1, r25	; 0x01
    563e:	aa 83       	std	Y+2, r26	; 0x02
    5640:	bb 83       	std	Y+3, r27	; 0x03
    5642:	9f 77       	andi	r25, 0x7F	; 127
    5644:	df 91       	pop	r29
    5646:	cf 91       	pop	r28
    5648:	ff 90       	pop	r15
    564a:	ef 90       	pop	r14
    564c:	df 90       	pop	r13
    564e:	cf 90       	pop	r12
    5650:	bf 90       	pop	r11
    5652:	af 90       	pop	r10
    5654:	9f 90       	pop	r9
    5656:	8f 90       	pop	r8
    5658:	08 95       	ret

0000565a <rand_r>:
    565a:	0e 94 e4 2a 	call	0x55c8	; 0x55c8 <do_rand>
    565e:	08 95       	ret

00005660 <rand>:
    5660:	83 e1       	ldi	r24, 0x13	; 19
    5662:	91 e0       	ldi	r25, 0x01	; 1
    5664:	0e 94 e4 2a 	call	0x55c8	; 0x55c8 <do_rand>
    5668:	08 95       	ret

0000566a <srand>:
    566a:	b0 e0       	ldi	r27, 0x00	; 0
    566c:	a0 e0       	ldi	r26, 0x00	; 0
    566e:	80 93 13 01 	sts	0x0113, r24	; 0x800113 <next>
    5672:	90 93 14 01 	sts	0x0114, r25	; 0x800114 <next+0x1>
    5676:	a0 93 15 01 	sts	0x0115, r26	; 0x800115 <next+0x2>
    567a:	b0 93 16 01 	sts	0x0116, r27	; 0x800116 <next+0x3>
    567e:	08 95       	ret

00005680 <random_r>:
    5680:	8f 92       	push	r8
    5682:	9f 92       	push	r9
    5684:	af 92       	push	r10
    5686:	bf 92       	push	r11
    5688:	cf 92       	push	r12
    568a:	df 92       	push	r13
    568c:	ef 92       	push	r14
    568e:	ff 92       	push	r15
    5690:	cf 93       	push	r28
    5692:	df 93       	push	r29
    5694:	ec 01       	movw	r28, r24
    5696:	68 81       	ld	r22, Y
    5698:	79 81       	ldd	r23, Y+1	; 0x01
    569a:	8a 81       	ldd	r24, Y+2	; 0x02
    569c:	9b 81       	ldd	r25, Y+3	; 0x03
    569e:	61 15       	cp	r22, r1
    56a0:	71 05       	cpc	r23, r1
    56a2:	81 05       	cpc	r24, r1
    56a4:	91 05       	cpc	r25, r1
    56a6:	21 f4       	brne	.+8      	; 0x56b0 <random_r+0x30>
    56a8:	64 e2       	ldi	r22, 0x24	; 36
    56aa:	79 ed       	ldi	r23, 0xD9	; 217
    56ac:	8b e5       	ldi	r24, 0x5B	; 91
    56ae:	97 e0       	ldi	r25, 0x07	; 7
    56b0:	2d e1       	ldi	r18, 0x1D	; 29
    56b2:	33 ef       	ldi	r19, 0xF3	; 243
    56b4:	41 e0       	ldi	r20, 0x01	; 1
    56b6:	50 e0       	ldi	r21, 0x00	; 0
    56b8:	0e 94 41 2c 	call	0x5882	; 0x5882 <__divmodsi4>
    56bc:	49 01       	movw	r8, r18
    56be:	5a 01       	movw	r10, r20
    56c0:	9b 01       	movw	r18, r22
    56c2:	ac 01       	movw	r20, r24
    56c4:	a7 ea       	ldi	r26, 0xA7	; 167
    56c6:	b1 e4       	ldi	r27, 0x41	; 65
    56c8:	0e 94 60 2c 	call	0x58c0	; 0x58c0 <__muluhisi3>
    56cc:	6b 01       	movw	r12, r22
    56ce:	7c 01       	movw	r14, r24
    56d0:	ac ee       	ldi	r26, 0xEC	; 236
    56d2:	b4 ef       	ldi	r27, 0xF4	; 244
    56d4:	a5 01       	movw	r20, r10
    56d6:	94 01       	movw	r18, r8
    56d8:	0e 94 6e 2c 	call	0x58dc	; 0x58dc <__mulohisi3>
    56dc:	c6 0e       	add	r12, r22
    56de:	d7 1e       	adc	r13, r23
    56e0:	e8 1e       	adc	r14, r24
    56e2:	f9 1e       	adc	r15, r25
    56e4:	f7 fe       	sbrs	r15, 7
    56e6:	06 c0       	rjmp	.+12     	; 0x56f4 <random_r+0x74>
    56e8:	81 e0       	ldi	r24, 0x01	; 1
    56ea:	c8 1a       	sub	r12, r24
    56ec:	d1 08       	sbc	r13, r1
    56ee:	e1 08       	sbc	r14, r1
    56f0:	80 e8       	ldi	r24, 0x80	; 128
    56f2:	f8 0a       	sbc	r15, r24
    56f4:	c8 82       	st	Y, r12
    56f6:	d9 82       	std	Y+1, r13	; 0x01
    56f8:	ea 82       	std	Y+2, r14	; 0x02
    56fa:	fb 82       	std	Y+3, r15	; 0x03
    56fc:	c7 01       	movw	r24, r14
    56fe:	b6 01       	movw	r22, r12
    5700:	9f 77       	andi	r25, 0x7F	; 127
    5702:	df 91       	pop	r29
    5704:	cf 91       	pop	r28
    5706:	ff 90       	pop	r15
    5708:	ef 90       	pop	r14
    570a:	df 90       	pop	r13
    570c:	cf 90       	pop	r12
    570e:	bf 90       	pop	r11
    5710:	af 90       	pop	r10
    5712:	9f 90       	pop	r9
    5714:	8f 90       	pop	r8
    5716:	08 95       	ret

00005718 <random>:
    5718:	8f 92       	push	r8
    571a:	9f 92       	push	r9
    571c:	af 92       	push	r10
    571e:	bf 92       	push	r11
    5720:	cf 92       	push	r12
    5722:	df 92       	push	r13
    5724:	ef 92       	push	r14
    5726:	ff 92       	push	r15
    5728:	60 91 17 01 	lds	r22, 0x0117	; 0x800117 <next>
    572c:	70 91 18 01 	lds	r23, 0x0118	; 0x800118 <next+0x1>
    5730:	80 91 19 01 	lds	r24, 0x0119	; 0x800119 <next+0x2>
    5734:	90 91 1a 01 	lds	r25, 0x011A	; 0x80011a <next+0x3>
    5738:	61 15       	cp	r22, r1
    573a:	71 05       	cpc	r23, r1
    573c:	81 05       	cpc	r24, r1
    573e:	91 05       	cpc	r25, r1
    5740:	21 f4       	brne	.+8      	; 0x574a <random+0x32>
    5742:	64 e2       	ldi	r22, 0x24	; 36
    5744:	79 ed       	ldi	r23, 0xD9	; 217
    5746:	8b e5       	ldi	r24, 0x5B	; 91
    5748:	97 e0       	ldi	r25, 0x07	; 7
    574a:	2d e1       	ldi	r18, 0x1D	; 29
    574c:	33 ef       	ldi	r19, 0xF3	; 243
    574e:	41 e0       	ldi	r20, 0x01	; 1
    5750:	50 e0       	ldi	r21, 0x00	; 0
    5752:	0e 94 41 2c 	call	0x5882	; 0x5882 <__divmodsi4>
    5756:	49 01       	movw	r8, r18
    5758:	5a 01       	movw	r10, r20
    575a:	9b 01       	movw	r18, r22
    575c:	ac 01       	movw	r20, r24
    575e:	a7 ea       	ldi	r26, 0xA7	; 167
    5760:	b1 e4       	ldi	r27, 0x41	; 65
    5762:	0e 94 60 2c 	call	0x58c0	; 0x58c0 <__muluhisi3>
    5766:	6b 01       	movw	r12, r22
    5768:	7c 01       	movw	r14, r24
    576a:	ac ee       	ldi	r26, 0xEC	; 236
    576c:	b4 ef       	ldi	r27, 0xF4	; 244
    576e:	a5 01       	movw	r20, r10
    5770:	94 01       	movw	r18, r8
    5772:	0e 94 6e 2c 	call	0x58dc	; 0x58dc <__mulohisi3>
    5776:	c6 0e       	add	r12, r22
    5778:	d7 1e       	adc	r13, r23
    577a:	e8 1e       	adc	r14, r24
    577c:	f9 1e       	adc	r15, r25
    577e:	f7 fe       	sbrs	r15, 7
    5780:	06 c0       	rjmp	.+12     	; 0x578e <random+0x76>
    5782:	81 e0       	ldi	r24, 0x01	; 1
    5784:	c8 1a       	sub	r12, r24
    5786:	d1 08       	sbc	r13, r1
    5788:	e1 08       	sbc	r14, r1
    578a:	80 e8       	ldi	r24, 0x80	; 128
    578c:	f8 0a       	sbc	r15, r24
    578e:	c0 92 17 01 	sts	0x0117, r12	; 0x800117 <next>
    5792:	d0 92 18 01 	sts	0x0118, r13	; 0x800118 <next+0x1>
    5796:	e0 92 19 01 	sts	0x0119, r14	; 0x800119 <next+0x2>
    579a:	f0 92 1a 01 	sts	0x011A, r15	; 0x80011a <next+0x3>
    579e:	c7 01       	movw	r24, r14
    57a0:	b6 01       	movw	r22, r12
    57a2:	9f 77       	andi	r25, 0x7F	; 127
    57a4:	ff 90       	pop	r15
    57a6:	ef 90       	pop	r14
    57a8:	df 90       	pop	r13
    57aa:	cf 90       	pop	r12
    57ac:	bf 90       	pop	r11
    57ae:	af 90       	pop	r10
    57b0:	9f 90       	pop	r9
    57b2:	8f 90       	pop	r8
    57b4:	08 95       	ret

000057b6 <srandom>:
    57b6:	60 93 17 01 	sts	0x0117, r22	; 0x800117 <next>
    57ba:	70 93 18 01 	sts	0x0118, r23	; 0x800118 <next+0x1>
    57be:	80 93 19 01 	sts	0x0119, r24	; 0x800119 <next+0x2>
    57c2:	90 93 1a 01 	sts	0x011A, r25	; 0x80011a <next+0x3>
    57c6:	08 95       	ret

000057c8 <memcpy_P>:
    57c8:	fb 01       	movw	r30, r22
    57ca:	dc 01       	movw	r26, r24
    57cc:	02 c0       	rjmp	.+4      	; 0x57d2 <memcpy_P+0xa>
    57ce:	05 90       	lpm	r0, Z+
    57d0:	0d 92       	st	X+, r0
    57d2:	41 50       	subi	r20, 0x01	; 1
    57d4:	50 40       	sbci	r21, 0x00	; 0
    57d6:	d8 f7       	brcc	.-10     	; 0x57ce <memcpy_P+0x6>
    57d8:	08 95       	ret

000057da <strnlen_P>:
    57da:	fc 01       	movw	r30, r24
    57dc:	05 90       	lpm	r0, Z+
    57de:	61 50       	subi	r22, 0x01	; 1
    57e0:	70 40       	sbci	r23, 0x00	; 0
    57e2:	01 10       	cpse	r0, r1
    57e4:	d8 f7       	brcc	.-10     	; 0x57dc <strnlen_P+0x2>
    57e6:	80 95       	com	r24
    57e8:	90 95       	com	r25
    57ea:	8e 0f       	add	r24, r30
    57ec:	9f 1f       	adc	r25, r31
    57ee:	08 95       	ret

000057f0 <eeprom_read_block>:
    57f0:	dc 01       	movw	r26, r24
    57f2:	cb 01       	movw	r24, r22

000057f4 <eeprom_read_blraw>:
    57f4:	fc 01       	movw	r30, r24
    57f6:	f9 99       	sbic	0x1f, 1	; 31
    57f8:	fe cf       	rjmp	.-4      	; 0x57f6 <eeprom_read_blraw+0x2>
    57fa:	06 c0       	rjmp	.+12     	; 0x5808 <eeprom_read_blraw+0x14>
    57fc:	f2 bd       	out	0x22, r31	; 34
    57fe:	e1 bd       	out	0x21, r30	; 33
    5800:	f8 9a       	sbi	0x1f, 0	; 31
    5802:	31 96       	adiw	r30, 0x01	; 1
    5804:	00 b4       	in	r0, 0x20	; 32
    5806:	0d 92       	st	X+, r0
    5808:	41 50       	subi	r20, 0x01	; 1
    580a:	50 40       	sbci	r21, 0x00	; 0
    580c:	b8 f7       	brcc	.-18     	; 0x57fc <eeprom_read_blraw+0x8>
    580e:	08 95       	ret

00005810 <eeprom_read_byte>:
    5810:	f9 99       	sbic	0x1f, 1	; 31
    5812:	fe cf       	rjmp	.-4      	; 0x5810 <eeprom_read_byte>
    5814:	92 bd       	out	0x22, r25	; 34
    5816:	81 bd       	out	0x21, r24	; 33
    5818:	f8 9a       	sbi	0x1f, 0	; 31
    581a:	99 27       	eor	r25, r25
    581c:	80 b5       	in	r24, 0x20	; 32
    581e:	08 95       	ret

00005820 <eeprom_read_dword>:
    5820:	a6 e1       	ldi	r26, 0x16	; 22
    5822:	b0 e0       	ldi	r27, 0x00	; 0
    5824:	44 e0       	ldi	r20, 0x04	; 4
    5826:	50 e0       	ldi	r21, 0x00	; 0
    5828:	0c 94 fa 2b 	jmp	0x57f4	; 0x57f4 <eeprom_read_blraw>

0000582c <eeprom_read_word>:
    582c:	a8 e1       	ldi	r26, 0x18	; 24
    582e:	b0 e0       	ldi	r27, 0x00	; 0
    5830:	42 e0       	ldi	r20, 0x02	; 2
    5832:	50 e0       	ldi	r21, 0x00	; 0
    5834:	0c 94 fa 2b 	jmp	0x57f4	; 0x57f4 <eeprom_read_blraw>

00005838 <eeprom_write_block>:
    5838:	dc 01       	movw	r26, r24
    583a:	cb 01       	movw	r24, r22
    583c:	03 c0       	rjmp	.+6      	; 0x5844 <eeprom_write_block+0xc>
    583e:	2d 91       	ld	r18, X+
    5840:	0e 94 27 2c 	call	0x584e	; 0x584e <eeprom_write_r18>
    5844:	41 50       	subi	r20, 0x01	; 1
    5846:	50 40       	sbci	r21, 0x00	; 0
    5848:	d0 f7       	brcc	.-12     	; 0x583e <eeprom_write_block+0x6>
    584a:	08 95       	ret

0000584c <eeprom_write_byte>:
    584c:	26 2f       	mov	r18, r22

0000584e <eeprom_write_r18>:
    584e:	f9 99       	sbic	0x1f, 1	; 31
    5850:	fe cf       	rjmp	.-4      	; 0x584e <eeprom_write_r18>
    5852:	1f ba       	out	0x1f, r1	; 31
    5854:	92 bd       	out	0x22, r25	; 34
    5856:	81 bd       	out	0x21, r24	; 33
    5858:	20 bd       	out	0x20, r18	; 32
    585a:	0f b6       	in	r0, 0x3f	; 63
    585c:	f8 94       	cli
    585e:	fa 9a       	sbi	0x1f, 2	; 31
    5860:	f9 9a       	sbi	0x1f, 1	; 31
    5862:	0f be       	out	0x3f, r0	; 63
    5864:	01 96       	adiw	r24, 0x01	; 1
    5866:	08 95       	ret

00005868 <eeprom_write_dword>:
    5868:	24 2f       	mov	r18, r20
    586a:	0e 94 27 2c 	call	0x584e	; 0x584e <eeprom_write_r18>
    586e:	25 2f       	mov	r18, r21
    5870:	0e 94 27 2c 	call	0x584e	; 0x584e <eeprom_write_r18>
    5874:	0c 94 3c 2c 	jmp	0x5878	; 0x5878 <eeprom_write_word>

00005878 <eeprom_write_word>:
    5878:	0e 94 26 2c 	call	0x584c	; 0x584c <eeprom_write_byte>
    587c:	27 2f       	mov	r18, r23
    587e:	0c 94 27 2c 	jmp	0x584e	; 0x584e <eeprom_write_r18>

00005882 <__divmodsi4>:
    5882:	05 2e       	mov	r0, r21
    5884:	97 fb       	bst	r25, 7
    5886:	1e f4       	brtc	.+6      	; 0x588e <__divmodsi4+0xc>
    5888:	00 94       	com	r0
    588a:	0e 94 58 2c 	call	0x58b0	; 0x58b0 <__negsi2>
    588e:	57 fd       	sbrc	r21, 7
    5890:	07 d0       	rcall	.+14     	; 0x58a0 <__divmodsi4_neg2>
    5892:	0e 94 73 2c 	call	0x58e6	; 0x58e6 <__udivmodsi4>
    5896:	07 fc       	sbrc	r0, 7
    5898:	03 d0       	rcall	.+6      	; 0x58a0 <__divmodsi4_neg2>
    589a:	4e f4       	brtc	.+18     	; 0x58ae <__divmodsi4_exit>
    589c:	0c 94 58 2c 	jmp	0x58b0	; 0x58b0 <__negsi2>

000058a0 <__divmodsi4_neg2>:
    58a0:	50 95       	com	r21
    58a2:	40 95       	com	r20
    58a4:	30 95       	com	r19
    58a6:	21 95       	neg	r18
    58a8:	3f 4f       	sbci	r19, 0xFF	; 255
    58aa:	4f 4f       	sbci	r20, 0xFF	; 255
    58ac:	5f 4f       	sbci	r21, 0xFF	; 255

000058ae <__divmodsi4_exit>:
    58ae:	08 95       	ret

000058b0 <__negsi2>:
    58b0:	90 95       	com	r25
    58b2:	80 95       	com	r24
    58b4:	70 95       	com	r23
    58b6:	61 95       	neg	r22
    58b8:	7f 4f       	sbci	r23, 0xFF	; 255
    58ba:	8f 4f       	sbci	r24, 0xFF	; 255
    58bc:	9f 4f       	sbci	r25, 0xFF	; 255
    58be:	08 95       	ret

000058c0 <__muluhisi3>:
    58c0:	0e 94 95 2c 	call	0x592a	; 0x592a <__umulhisi3>
    58c4:	a5 9f       	mul	r26, r21
    58c6:	90 0d       	add	r25, r0
    58c8:	b4 9f       	mul	r27, r20
    58ca:	90 0d       	add	r25, r0
    58cc:	a4 9f       	mul	r26, r20
    58ce:	80 0d       	add	r24, r0
    58d0:	91 1d       	adc	r25, r1
    58d2:	11 24       	eor	r1, r1
    58d4:	08 95       	ret

000058d6 <__mulshisi3>:
    58d6:	b7 ff       	sbrs	r27, 7
    58d8:	0c 94 60 2c 	jmp	0x58c0	; 0x58c0 <__muluhisi3>

000058dc <__mulohisi3>:
    58dc:	0e 94 60 2c 	call	0x58c0	; 0x58c0 <__muluhisi3>
    58e0:	82 1b       	sub	r24, r18
    58e2:	93 0b       	sbc	r25, r19
    58e4:	08 95       	ret

000058e6 <__udivmodsi4>:
    58e6:	a1 e2       	ldi	r26, 0x21	; 33
    58e8:	1a 2e       	mov	r1, r26
    58ea:	aa 1b       	sub	r26, r26
    58ec:	bb 1b       	sub	r27, r27
    58ee:	fd 01       	movw	r30, r26
    58f0:	0d c0       	rjmp	.+26     	; 0x590c <__udivmodsi4_ep>

000058f2 <__udivmodsi4_loop>:
    58f2:	aa 1f       	adc	r26, r26
    58f4:	bb 1f       	adc	r27, r27
    58f6:	ee 1f       	adc	r30, r30
    58f8:	ff 1f       	adc	r31, r31
    58fa:	a2 17       	cp	r26, r18
    58fc:	b3 07       	cpc	r27, r19
    58fe:	e4 07       	cpc	r30, r20
    5900:	f5 07       	cpc	r31, r21
    5902:	20 f0       	brcs	.+8      	; 0x590c <__udivmodsi4_ep>
    5904:	a2 1b       	sub	r26, r18
    5906:	b3 0b       	sbc	r27, r19
    5908:	e4 0b       	sbc	r30, r20
    590a:	f5 0b       	sbc	r31, r21

0000590c <__udivmodsi4_ep>:
    590c:	66 1f       	adc	r22, r22
    590e:	77 1f       	adc	r23, r23
    5910:	88 1f       	adc	r24, r24
    5912:	99 1f       	adc	r25, r25
    5914:	1a 94       	dec	r1
    5916:	69 f7       	brne	.-38     	; 0x58f2 <__udivmodsi4_loop>
    5918:	60 95       	com	r22
    591a:	70 95       	com	r23
    591c:	80 95       	com	r24
    591e:	90 95       	com	r25
    5920:	9b 01       	movw	r18, r22
    5922:	ac 01       	movw	r20, r24
    5924:	bd 01       	movw	r22, r26
    5926:	cf 01       	movw	r24, r30
    5928:	08 95       	ret

0000592a <__umulhisi3>:
    592a:	a2 9f       	mul	r26, r18
    592c:	b0 01       	movw	r22, r0
    592e:	b3 9f       	mul	r27, r19
    5930:	c0 01       	movw	r24, r0
    5932:	a3 9f       	mul	r26, r19
    5934:	70 0d       	add	r23, r0
    5936:	81 1d       	adc	r24, r1
    5938:	11 24       	eor	r1, r1
    593a:	91 1d       	adc	r25, r1
    593c:	b2 9f       	mul	r27, r18
    593e:	70 0d       	add	r23, r0
    5940:	81 1d       	adc	r24, r1
    5942:	11 24       	eor	r1, r1
    5944:	91 1d       	adc	r25, r1
    5946:	08 95       	ret

00005948 <__subsf3>:
    5948:	50 58       	subi	r21, 0x80	; 128

0000594a <__addsf3>:
    594a:	bb 27       	eor	r27, r27
    594c:	aa 27       	eor	r26, r26
    594e:	0e 94 bc 2c 	call	0x5978	; 0x5978 <__addsf3x>
    5952:	0c 94 a6 2e 	jmp	0x5d4c	; 0x5d4c <__fp_round>
    5956:	0e 94 98 2e 	call	0x5d30	; 0x5d30 <__fp_pscA>
    595a:	38 f0       	brcs	.+14     	; 0x596a <__addsf3+0x20>
    595c:	0e 94 9f 2e 	call	0x5d3e	; 0x5d3e <__fp_pscB>
    5960:	20 f0       	brcs	.+8      	; 0x596a <__addsf3+0x20>
    5962:	39 f4       	brne	.+14     	; 0x5972 <__addsf3+0x28>
    5964:	9f 3f       	cpi	r25, 0xFF	; 255
    5966:	19 f4       	brne	.+6      	; 0x596e <__addsf3+0x24>
    5968:	26 f4       	brtc	.+8      	; 0x5972 <__addsf3+0x28>
    596a:	0c 94 6e 2e 	jmp	0x5cdc	; 0x5cdc <__fp_nan>
    596e:	0e f4       	brtc	.+2      	; 0x5972 <__addsf3+0x28>
    5970:	e0 95       	com	r30
    5972:	e7 fb       	bst	r30, 7
    5974:	0c 94 68 2e 	jmp	0x5cd0	; 0x5cd0 <__fp_inf>

00005978 <__addsf3x>:
    5978:	e9 2f       	mov	r30, r25
    597a:	0e 94 b7 2e 	call	0x5d6e	; 0x5d6e <__fp_split3>
    597e:	58 f3       	brcs	.-42     	; 0x5956 <__addsf3+0xc>
    5980:	ba 17       	cp	r27, r26
    5982:	62 07       	cpc	r22, r18
    5984:	73 07       	cpc	r23, r19
    5986:	84 07       	cpc	r24, r20
    5988:	95 07       	cpc	r25, r21
    598a:	20 f0       	brcs	.+8      	; 0x5994 <__addsf3x+0x1c>
    598c:	79 f4       	brne	.+30     	; 0x59ac <__addsf3x+0x34>
    598e:	a6 f5       	brtc	.+104    	; 0x59f8 <__addsf3x+0x80>
    5990:	0c 94 d9 2e 	jmp	0x5db2	; 0x5db2 <__fp_zero>
    5994:	0e f4       	brtc	.+2      	; 0x5998 <__addsf3x+0x20>
    5996:	e0 95       	com	r30
    5998:	0b 2e       	mov	r0, r27
    599a:	ba 2f       	mov	r27, r26
    599c:	a0 2d       	mov	r26, r0
    599e:	0b 01       	movw	r0, r22
    59a0:	b9 01       	movw	r22, r18
    59a2:	90 01       	movw	r18, r0
    59a4:	0c 01       	movw	r0, r24
    59a6:	ca 01       	movw	r24, r20
    59a8:	a0 01       	movw	r20, r0
    59aa:	11 24       	eor	r1, r1
    59ac:	ff 27       	eor	r31, r31
    59ae:	59 1b       	sub	r21, r25
    59b0:	99 f0       	breq	.+38     	; 0x59d8 <__addsf3x+0x60>
    59b2:	59 3f       	cpi	r21, 0xF9	; 249
    59b4:	50 f4       	brcc	.+20     	; 0x59ca <__addsf3x+0x52>
    59b6:	50 3e       	cpi	r21, 0xE0	; 224
    59b8:	68 f1       	brcs	.+90     	; 0x5a14 <__addsf3x+0x9c>
    59ba:	1a 16       	cp	r1, r26
    59bc:	f0 40       	sbci	r31, 0x00	; 0
    59be:	a2 2f       	mov	r26, r18
    59c0:	23 2f       	mov	r18, r19
    59c2:	34 2f       	mov	r19, r20
    59c4:	44 27       	eor	r20, r20
    59c6:	58 5f       	subi	r21, 0xF8	; 248
    59c8:	f3 cf       	rjmp	.-26     	; 0x59b0 <__addsf3x+0x38>
    59ca:	46 95       	lsr	r20
    59cc:	37 95       	ror	r19
    59ce:	27 95       	ror	r18
    59d0:	a7 95       	ror	r26
    59d2:	f0 40       	sbci	r31, 0x00	; 0
    59d4:	53 95       	inc	r21
    59d6:	c9 f7       	brne	.-14     	; 0x59ca <__addsf3x+0x52>
    59d8:	7e f4       	brtc	.+30     	; 0x59f8 <__addsf3x+0x80>
    59da:	1f 16       	cp	r1, r31
    59dc:	ba 0b       	sbc	r27, r26
    59de:	62 0b       	sbc	r22, r18
    59e0:	73 0b       	sbc	r23, r19
    59e2:	84 0b       	sbc	r24, r20
    59e4:	ba f0       	brmi	.+46     	; 0x5a14 <__addsf3x+0x9c>
    59e6:	91 50       	subi	r25, 0x01	; 1
    59e8:	a1 f0       	breq	.+40     	; 0x5a12 <__addsf3x+0x9a>
    59ea:	ff 0f       	add	r31, r31
    59ec:	bb 1f       	adc	r27, r27
    59ee:	66 1f       	adc	r22, r22
    59f0:	77 1f       	adc	r23, r23
    59f2:	88 1f       	adc	r24, r24
    59f4:	c2 f7       	brpl	.-16     	; 0x59e6 <__addsf3x+0x6e>
    59f6:	0e c0       	rjmp	.+28     	; 0x5a14 <__addsf3x+0x9c>
    59f8:	ba 0f       	add	r27, r26
    59fa:	62 1f       	adc	r22, r18
    59fc:	73 1f       	adc	r23, r19
    59fe:	84 1f       	adc	r24, r20
    5a00:	48 f4       	brcc	.+18     	; 0x5a14 <__addsf3x+0x9c>
    5a02:	87 95       	ror	r24
    5a04:	77 95       	ror	r23
    5a06:	67 95       	ror	r22
    5a08:	b7 95       	ror	r27
    5a0a:	f7 95       	ror	r31
    5a0c:	9e 3f       	cpi	r25, 0xFE	; 254
    5a0e:	08 f0       	brcs	.+2      	; 0x5a12 <__addsf3x+0x9a>
    5a10:	b0 cf       	rjmp	.-160    	; 0x5972 <__addsf3+0x28>
    5a12:	93 95       	inc	r25
    5a14:	88 0f       	add	r24, r24
    5a16:	08 f0       	brcs	.+2      	; 0x5a1a <__addsf3x+0xa2>
    5a18:	99 27       	eor	r25, r25
    5a1a:	ee 0f       	add	r30, r30
    5a1c:	97 95       	ror	r25
    5a1e:	87 95       	ror	r24
    5a20:	08 95       	ret
    5a22:	0e 94 98 2e 	call	0x5d30	; 0x5d30 <__fp_pscA>
    5a26:	60 f0       	brcs	.+24     	; 0x5a40 <__addsf3x+0xc8>
    5a28:	80 e8       	ldi	r24, 0x80	; 128
    5a2a:	91 e0       	ldi	r25, 0x01	; 1
    5a2c:	09 f4       	brne	.+2      	; 0x5a30 <__addsf3x+0xb8>
    5a2e:	9e ef       	ldi	r25, 0xFE	; 254
    5a30:	0e 94 9f 2e 	call	0x5d3e	; 0x5d3e <__fp_pscB>
    5a34:	28 f0       	brcs	.+10     	; 0x5a40 <__addsf3x+0xc8>
    5a36:	40 e8       	ldi	r20, 0x80	; 128
    5a38:	51 e0       	ldi	r21, 0x01	; 1
    5a3a:	71 f4       	brne	.+28     	; 0x5a58 <atan2+0x10>
    5a3c:	5e ef       	ldi	r21, 0xFE	; 254
    5a3e:	0c c0       	rjmp	.+24     	; 0x5a58 <atan2+0x10>
    5a40:	0c 94 6e 2e 	jmp	0x5cdc	; 0x5cdc <__fp_nan>
    5a44:	0c 94 d9 2e 	jmp	0x5db2	; 0x5db2 <__fp_zero>

00005a48 <atan2>:
    5a48:	e9 2f       	mov	r30, r25
    5a4a:	e0 78       	andi	r30, 0x80	; 128
    5a4c:	0e 94 b7 2e 	call	0x5d6e	; 0x5d6e <__fp_split3>
    5a50:	40 f3       	brcs	.-48     	; 0x5a22 <__addsf3x+0xaa>
    5a52:	09 2e       	mov	r0, r25
    5a54:	05 2a       	or	r0, r21
    5a56:	b1 f3       	breq	.-20     	; 0x5a44 <__addsf3x+0xcc>
    5a58:	26 17       	cp	r18, r22
    5a5a:	37 07       	cpc	r19, r23
    5a5c:	48 07       	cpc	r20, r24
    5a5e:	59 07       	cpc	r21, r25
    5a60:	38 f0       	brcs	.+14     	; 0x5a70 <atan2+0x28>
    5a62:	0e 2e       	mov	r0, r30
    5a64:	07 f8       	bld	r0, 7
    5a66:	e0 25       	eor	r30, r0
    5a68:	69 f0       	breq	.+26     	; 0x5a84 <atan2+0x3c>
    5a6a:	e0 25       	eor	r30, r0
    5a6c:	e0 64       	ori	r30, 0x40	; 64
    5a6e:	0a c0       	rjmp	.+20     	; 0x5a84 <atan2+0x3c>
    5a70:	ef 63       	ori	r30, 0x3F	; 63
    5a72:	07 f8       	bld	r0, 7
    5a74:	00 94       	com	r0
    5a76:	07 fa       	bst	r0, 7
    5a78:	db 01       	movw	r26, r22
    5a7a:	b9 01       	movw	r22, r18
    5a7c:	9d 01       	movw	r18, r26
    5a7e:	dc 01       	movw	r26, r24
    5a80:	ca 01       	movw	r24, r20
    5a82:	ad 01       	movw	r20, r26
    5a84:	ef 93       	push	r30
    5a86:	0e 94 9a 2d 	call	0x5b34	; 0x5b34 <__divsf3_pse>
    5a8a:	0e 94 a6 2e 	call	0x5d4c	; 0x5d4c <__fp_round>
    5a8e:	0e 94 54 2d 	call	0x5aa8	; 0x5aa8 <atan>
    5a92:	5f 91       	pop	r21
    5a94:	55 23       	and	r21, r21
    5a96:	39 f0       	breq	.+14     	; 0x5aa6 <atan2+0x5e>
    5a98:	2b ed       	ldi	r18, 0xDB	; 219
    5a9a:	3f e0       	ldi	r19, 0x0F	; 15
    5a9c:	49 e4       	ldi	r20, 0x49	; 73
    5a9e:	50 fd       	sbrc	r21, 0
    5aa0:	49 ec       	ldi	r20, 0xC9	; 201
    5aa2:	0c 94 a5 2c 	jmp	0x594a	; 0x594a <__addsf3>
    5aa6:	08 95       	ret

00005aa8 <atan>:
    5aa8:	df 93       	push	r29
    5aaa:	dd 27       	eor	r29, r29
    5aac:	b9 2f       	mov	r27, r25
    5aae:	bf 77       	andi	r27, 0x7F	; 127
    5ab0:	40 e8       	ldi	r20, 0x80	; 128
    5ab2:	5f e3       	ldi	r21, 0x3F	; 63
    5ab4:	16 16       	cp	r1, r22
    5ab6:	17 06       	cpc	r1, r23
    5ab8:	48 07       	cpc	r20, r24
    5aba:	5b 07       	cpc	r21, r27
    5abc:	18 f4       	brcc	.+6      	; 0x5ac4 <atan+0x1c>
    5abe:	d9 2f       	mov	r29, r25
    5ac0:	0e 94 e0 2e 	call	0x5dc0	; 0x5dc0 <inverse>
    5ac4:	9f 93       	push	r25
    5ac6:	8f 93       	push	r24
    5ac8:	7f 93       	push	r23
    5aca:	6f 93       	push	r22
    5acc:	0e 94 9b 2f 	call	0x5f36	; 0x5f36 <square>
    5ad0:	ec ea       	ldi	r30, 0xAC	; 172
    5ad2:	f0 e0       	ldi	r31, 0x00	; 0
    5ad4:	0e 94 71 2e 	call	0x5ce2	; 0x5ce2 <__fp_powser>
    5ad8:	0e 94 a6 2e 	call	0x5d4c	; 0x5d4c <__fp_round>
    5adc:	2f 91       	pop	r18
    5ade:	3f 91       	pop	r19
    5ae0:	4f 91       	pop	r20
    5ae2:	5f 91       	pop	r21
    5ae4:	0e 94 fb 2e 	call	0x5df6	; 0x5df6 <__mulsf3x>
    5ae8:	dd 23       	and	r29, r29
    5aea:	51 f0       	breq	.+20     	; 0x5b00 <atan+0x58>
    5aec:	90 58       	subi	r25, 0x80	; 128
    5aee:	a2 ea       	ldi	r26, 0xA2	; 162
    5af0:	2a ed       	ldi	r18, 0xDA	; 218
    5af2:	3f e0       	ldi	r19, 0x0F	; 15
    5af4:	49 ec       	ldi	r20, 0xC9	; 201
    5af6:	5f e3       	ldi	r21, 0x3F	; 63
    5af8:	d0 78       	andi	r29, 0x80	; 128
    5afa:	5d 27       	eor	r21, r29
    5afc:	0e 94 bc 2c 	call	0x5978	; 0x5978 <__addsf3x>
    5b00:	df 91       	pop	r29
    5b02:	0c 94 a6 2e 	jmp	0x5d4c	; 0x5d4c <__fp_round>

00005b06 <__divsf3>:
    5b06:	0e 94 97 2d 	call	0x5b2e	; 0x5b2e <__divsf3x>
    5b0a:	0c 94 a6 2e 	jmp	0x5d4c	; 0x5d4c <__fp_round>
    5b0e:	0e 94 9f 2e 	call	0x5d3e	; 0x5d3e <__fp_pscB>
    5b12:	58 f0       	brcs	.+22     	; 0x5b2a <__divsf3+0x24>
    5b14:	0e 94 98 2e 	call	0x5d30	; 0x5d30 <__fp_pscA>
    5b18:	40 f0       	brcs	.+16     	; 0x5b2a <__divsf3+0x24>
    5b1a:	29 f4       	brne	.+10     	; 0x5b26 <__divsf3+0x20>
    5b1c:	5f 3f       	cpi	r21, 0xFF	; 255
    5b1e:	29 f0       	breq	.+10     	; 0x5b2a <__divsf3+0x24>
    5b20:	0c 94 68 2e 	jmp	0x5cd0	; 0x5cd0 <__fp_inf>
    5b24:	51 11       	cpse	r21, r1
    5b26:	0c 94 da 2e 	jmp	0x5db4	; 0x5db4 <__fp_szero>
    5b2a:	0c 94 6e 2e 	jmp	0x5cdc	; 0x5cdc <__fp_nan>

00005b2e <__divsf3x>:
    5b2e:	0e 94 b7 2e 	call	0x5d6e	; 0x5d6e <__fp_split3>
    5b32:	68 f3       	brcs	.-38     	; 0x5b0e <__divsf3+0x8>

00005b34 <__divsf3_pse>:
    5b34:	99 23       	and	r25, r25
    5b36:	b1 f3       	breq	.-20     	; 0x5b24 <__divsf3+0x1e>
    5b38:	55 23       	and	r21, r21
    5b3a:	91 f3       	breq	.-28     	; 0x5b20 <__divsf3+0x1a>
    5b3c:	95 1b       	sub	r25, r21
    5b3e:	55 0b       	sbc	r21, r21
    5b40:	bb 27       	eor	r27, r27
    5b42:	aa 27       	eor	r26, r26
    5b44:	62 17       	cp	r22, r18
    5b46:	73 07       	cpc	r23, r19
    5b48:	84 07       	cpc	r24, r20
    5b4a:	38 f0       	brcs	.+14     	; 0x5b5a <__divsf3_pse+0x26>
    5b4c:	9f 5f       	subi	r25, 0xFF	; 255
    5b4e:	5f 4f       	sbci	r21, 0xFF	; 255
    5b50:	22 0f       	add	r18, r18
    5b52:	33 1f       	adc	r19, r19
    5b54:	44 1f       	adc	r20, r20
    5b56:	aa 1f       	adc	r26, r26
    5b58:	a9 f3       	breq	.-22     	; 0x5b44 <__divsf3_pse+0x10>
    5b5a:	35 d0       	rcall	.+106    	; 0x5bc6 <__divsf3_pse+0x92>
    5b5c:	0e 2e       	mov	r0, r30
    5b5e:	3a f0       	brmi	.+14     	; 0x5b6e <__divsf3_pse+0x3a>
    5b60:	e0 e8       	ldi	r30, 0x80	; 128
    5b62:	32 d0       	rcall	.+100    	; 0x5bc8 <__divsf3_pse+0x94>
    5b64:	91 50       	subi	r25, 0x01	; 1
    5b66:	50 40       	sbci	r21, 0x00	; 0
    5b68:	e6 95       	lsr	r30
    5b6a:	00 1c       	adc	r0, r0
    5b6c:	ca f7       	brpl	.-14     	; 0x5b60 <__divsf3_pse+0x2c>
    5b6e:	2b d0       	rcall	.+86     	; 0x5bc6 <__divsf3_pse+0x92>
    5b70:	fe 2f       	mov	r31, r30
    5b72:	29 d0       	rcall	.+82     	; 0x5bc6 <__divsf3_pse+0x92>
    5b74:	66 0f       	add	r22, r22
    5b76:	77 1f       	adc	r23, r23
    5b78:	88 1f       	adc	r24, r24
    5b7a:	bb 1f       	adc	r27, r27
    5b7c:	26 17       	cp	r18, r22
    5b7e:	37 07       	cpc	r19, r23
    5b80:	48 07       	cpc	r20, r24
    5b82:	ab 07       	cpc	r26, r27
    5b84:	b0 e8       	ldi	r27, 0x80	; 128
    5b86:	09 f0       	breq	.+2      	; 0x5b8a <__divsf3_pse+0x56>
    5b88:	bb 0b       	sbc	r27, r27
    5b8a:	80 2d       	mov	r24, r0
    5b8c:	bf 01       	movw	r22, r30
    5b8e:	ff 27       	eor	r31, r31
    5b90:	93 58       	subi	r25, 0x83	; 131
    5b92:	5f 4f       	sbci	r21, 0xFF	; 255
    5b94:	3a f0       	brmi	.+14     	; 0x5ba4 <__divsf3_pse+0x70>
    5b96:	9e 3f       	cpi	r25, 0xFE	; 254
    5b98:	51 05       	cpc	r21, r1
    5b9a:	78 f0       	brcs	.+30     	; 0x5bba <__divsf3_pse+0x86>
    5b9c:	0c 94 68 2e 	jmp	0x5cd0	; 0x5cd0 <__fp_inf>
    5ba0:	0c 94 da 2e 	jmp	0x5db4	; 0x5db4 <__fp_szero>
    5ba4:	5f 3f       	cpi	r21, 0xFF	; 255
    5ba6:	e4 f3       	brlt	.-8      	; 0x5ba0 <__divsf3_pse+0x6c>
    5ba8:	98 3e       	cpi	r25, 0xE8	; 232
    5baa:	d4 f3       	brlt	.-12     	; 0x5ba0 <__divsf3_pse+0x6c>
    5bac:	86 95       	lsr	r24
    5bae:	77 95       	ror	r23
    5bb0:	67 95       	ror	r22
    5bb2:	b7 95       	ror	r27
    5bb4:	f7 95       	ror	r31
    5bb6:	9f 5f       	subi	r25, 0xFF	; 255
    5bb8:	c9 f7       	brne	.-14     	; 0x5bac <__divsf3_pse+0x78>
    5bba:	88 0f       	add	r24, r24
    5bbc:	91 1d       	adc	r25, r1
    5bbe:	96 95       	lsr	r25
    5bc0:	87 95       	ror	r24
    5bc2:	97 f9       	bld	r25, 7
    5bc4:	08 95       	ret
    5bc6:	e1 e0       	ldi	r30, 0x01	; 1
    5bc8:	66 0f       	add	r22, r22
    5bca:	77 1f       	adc	r23, r23
    5bcc:	88 1f       	adc	r24, r24
    5bce:	bb 1f       	adc	r27, r27
    5bd0:	62 17       	cp	r22, r18
    5bd2:	73 07       	cpc	r23, r19
    5bd4:	84 07       	cpc	r24, r20
    5bd6:	ba 07       	cpc	r27, r26
    5bd8:	20 f0       	brcs	.+8      	; 0x5be2 <__divsf3_pse+0xae>
    5bda:	62 1b       	sub	r22, r18
    5bdc:	73 0b       	sbc	r23, r19
    5bde:	84 0b       	sbc	r24, r20
    5be0:	ba 0b       	sbc	r27, r26
    5be2:	ee 1f       	adc	r30, r30
    5be4:	88 f7       	brcc	.-30     	; 0x5bc8 <__divsf3_pse+0x94>
    5be6:	e0 95       	com	r30
    5be8:	08 95       	ret

00005bea <__fixsfsi>:
    5bea:	0e 94 fc 2d 	call	0x5bf8	; 0x5bf8 <__fixunssfsi>
    5bee:	68 94       	set
    5bf0:	b1 11       	cpse	r27, r1
    5bf2:	0c 94 da 2e 	jmp	0x5db4	; 0x5db4 <__fp_szero>
    5bf6:	08 95       	ret

00005bf8 <__fixunssfsi>:
    5bf8:	0e 94 bf 2e 	call	0x5d7e	; 0x5d7e <__fp_splitA>
    5bfc:	88 f0       	brcs	.+34     	; 0x5c20 <__fixunssfsi+0x28>
    5bfe:	9f 57       	subi	r25, 0x7F	; 127
    5c00:	98 f0       	brcs	.+38     	; 0x5c28 <__fixunssfsi+0x30>
    5c02:	b9 2f       	mov	r27, r25
    5c04:	99 27       	eor	r25, r25
    5c06:	b7 51       	subi	r27, 0x17	; 23
    5c08:	b0 f0       	brcs	.+44     	; 0x5c36 <__fixunssfsi+0x3e>
    5c0a:	e1 f0       	breq	.+56     	; 0x5c44 <__fixunssfsi+0x4c>
    5c0c:	66 0f       	add	r22, r22
    5c0e:	77 1f       	adc	r23, r23
    5c10:	88 1f       	adc	r24, r24
    5c12:	99 1f       	adc	r25, r25
    5c14:	1a f0       	brmi	.+6      	; 0x5c1c <__fixunssfsi+0x24>
    5c16:	ba 95       	dec	r27
    5c18:	c9 f7       	brne	.-14     	; 0x5c0c <__fixunssfsi+0x14>
    5c1a:	14 c0       	rjmp	.+40     	; 0x5c44 <__fixunssfsi+0x4c>
    5c1c:	b1 30       	cpi	r27, 0x01	; 1
    5c1e:	91 f0       	breq	.+36     	; 0x5c44 <__fixunssfsi+0x4c>
    5c20:	0e 94 d9 2e 	call	0x5db2	; 0x5db2 <__fp_zero>
    5c24:	b1 e0       	ldi	r27, 0x01	; 1
    5c26:	08 95       	ret
    5c28:	0c 94 d9 2e 	jmp	0x5db2	; 0x5db2 <__fp_zero>
    5c2c:	67 2f       	mov	r22, r23
    5c2e:	78 2f       	mov	r23, r24
    5c30:	88 27       	eor	r24, r24
    5c32:	b8 5f       	subi	r27, 0xF8	; 248
    5c34:	39 f0       	breq	.+14     	; 0x5c44 <__fixunssfsi+0x4c>
    5c36:	b9 3f       	cpi	r27, 0xF9	; 249
    5c38:	cc f3       	brlt	.-14     	; 0x5c2c <__fixunssfsi+0x34>
    5c3a:	86 95       	lsr	r24
    5c3c:	77 95       	ror	r23
    5c3e:	67 95       	ror	r22
    5c40:	b3 95       	inc	r27
    5c42:	d9 f7       	brne	.-10     	; 0x5c3a <__fixunssfsi+0x42>
    5c44:	3e f4       	brtc	.+14     	; 0x5c54 <__fixunssfsi+0x5c>
    5c46:	90 95       	com	r25
    5c48:	80 95       	com	r24
    5c4a:	70 95       	com	r23
    5c4c:	61 95       	neg	r22
    5c4e:	7f 4f       	sbci	r23, 0xFF	; 255
    5c50:	8f 4f       	sbci	r24, 0xFF	; 255
    5c52:	9f 4f       	sbci	r25, 0xFF	; 255
    5c54:	08 95       	ret

00005c56 <__floatunsisf>:
    5c56:	e8 94       	clt
    5c58:	09 c0       	rjmp	.+18     	; 0x5c6c <__floatsisf+0x12>

00005c5a <__floatsisf>:
    5c5a:	97 fb       	bst	r25, 7
    5c5c:	3e f4       	brtc	.+14     	; 0x5c6c <__floatsisf+0x12>
    5c5e:	90 95       	com	r25
    5c60:	80 95       	com	r24
    5c62:	70 95       	com	r23
    5c64:	61 95       	neg	r22
    5c66:	7f 4f       	sbci	r23, 0xFF	; 255
    5c68:	8f 4f       	sbci	r24, 0xFF	; 255
    5c6a:	9f 4f       	sbci	r25, 0xFF	; 255
    5c6c:	99 23       	and	r25, r25
    5c6e:	a9 f0       	breq	.+42     	; 0x5c9a <__floatsisf+0x40>
    5c70:	f9 2f       	mov	r31, r25
    5c72:	96 e9       	ldi	r25, 0x96	; 150
    5c74:	bb 27       	eor	r27, r27
    5c76:	93 95       	inc	r25
    5c78:	f6 95       	lsr	r31
    5c7a:	87 95       	ror	r24
    5c7c:	77 95       	ror	r23
    5c7e:	67 95       	ror	r22
    5c80:	b7 95       	ror	r27
    5c82:	f1 11       	cpse	r31, r1
    5c84:	f8 cf       	rjmp	.-16     	; 0x5c76 <__floatsisf+0x1c>
    5c86:	fa f4       	brpl	.+62     	; 0x5cc6 <__floatsisf+0x6c>
    5c88:	bb 0f       	add	r27, r27
    5c8a:	11 f4       	brne	.+4      	; 0x5c90 <__floatsisf+0x36>
    5c8c:	60 ff       	sbrs	r22, 0
    5c8e:	1b c0       	rjmp	.+54     	; 0x5cc6 <__floatsisf+0x6c>
    5c90:	6f 5f       	subi	r22, 0xFF	; 255
    5c92:	7f 4f       	sbci	r23, 0xFF	; 255
    5c94:	8f 4f       	sbci	r24, 0xFF	; 255
    5c96:	9f 4f       	sbci	r25, 0xFF	; 255
    5c98:	16 c0       	rjmp	.+44     	; 0x5cc6 <__floatsisf+0x6c>
    5c9a:	88 23       	and	r24, r24
    5c9c:	11 f0       	breq	.+4      	; 0x5ca2 <__floatsisf+0x48>
    5c9e:	96 e9       	ldi	r25, 0x96	; 150
    5ca0:	11 c0       	rjmp	.+34     	; 0x5cc4 <__floatsisf+0x6a>
    5ca2:	77 23       	and	r23, r23
    5ca4:	21 f0       	breq	.+8      	; 0x5cae <__floatsisf+0x54>
    5ca6:	9e e8       	ldi	r25, 0x8E	; 142
    5ca8:	87 2f       	mov	r24, r23
    5caa:	76 2f       	mov	r23, r22
    5cac:	05 c0       	rjmp	.+10     	; 0x5cb8 <__floatsisf+0x5e>
    5cae:	66 23       	and	r22, r22
    5cb0:	71 f0       	breq	.+28     	; 0x5cce <__floatsisf+0x74>
    5cb2:	96 e8       	ldi	r25, 0x86	; 134
    5cb4:	86 2f       	mov	r24, r22
    5cb6:	70 e0       	ldi	r23, 0x00	; 0
    5cb8:	60 e0       	ldi	r22, 0x00	; 0
    5cba:	2a f0       	brmi	.+10     	; 0x5cc6 <__floatsisf+0x6c>
    5cbc:	9a 95       	dec	r25
    5cbe:	66 0f       	add	r22, r22
    5cc0:	77 1f       	adc	r23, r23
    5cc2:	88 1f       	adc	r24, r24
    5cc4:	da f7       	brpl	.-10     	; 0x5cbc <__floatsisf+0x62>
    5cc6:	88 0f       	add	r24, r24
    5cc8:	96 95       	lsr	r25
    5cca:	87 95       	ror	r24
    5ccc:	97 f9       	bld	r25, 7
    5cce:	08 95       	ret

00005cd0 <__fp_inf>:
    5cd0:	97 f9       	bld	r25, 7
    5cd2:	9f 67       	ori	r25, 0x7F	; 127
    5cd4:	80 e8       	ldi	r24, 0x80	; 128
    5cd6:	70 e0       	ldi	r23, 0x00	; 0
    5cd8:	60 e0       	ldi	r22, 0x00	; 0
    5cda:	08 95       	ret

00005cdc <__fp_nan>:
    5cdc:	9f ef       	ldi	r25, 0xFF	; 255
    5cde:	80 ec       	ldi	r24, 0xC0	; 192
    5ce0:	08 95       	ret

00005ce2 <__fp_powser>:
    5ce2:	df 93       	push	r29
    5ce4:	cf 93       	push	r28
    5ce6:	1f 93       	push	r17
    5ce8:	0f 93       	push	r16
    5cea:	ff 92       	push	r15
    5cec:	ef 92       	push	r14
    5cee:	df 92       	push	r13
    5cf0:	7b 01       	movw	r14, r22
    5cf2:	8c 01       	movw	r16, r24
    5cf4:	68 94       	set
    5cf6:	06 c0       	rjmp	.+12     	; 0x5d04 <__fp_powser+0x22>
    5cf8:	da 2e       	mov	r13, r26
    5cfa:	ef 01       	movw	r28, r30
    5cfc:	0e 94 fb 2e 	call	0x5df6	; 0x5df6 <__mulsf3x>
    5d00:	fe 01       	movw	r30, r28
    5d02:	e8 94       	clt
    5d04:	a5 91       	lpm	r26, Z+
    5d06:	25 91       	lpm	r18, Z+
    5d08:	35 91       	lpm	r19, Z+
    5d0a:	45 91       	lpm	r20, Z+
    5d0c:	55 91       	lpm	r21, Z+
    5d0e:	a6 f3       	brts	.-24     	; 0x5cf8 <__fp_powser+0x16>
    5d10:	ef 01       	movw	r28, r30
    5d12:	0e 94 bc 2c 	call	0x5978	; 0x5978 <__addsf3x>
    5d16:	fe 01       	movw	r30, r28
    5d18:	97 01       	movw	r18, r14
    5d1a:	a8 01       	movw	r20, r16
    5d1c:	da 94       	dec	r13
    5d1e:	69 f7       	brne	.-38     	; 0x5cfa <__fp_powser+0x18>
    5d20:	df 90       	pop	r13
    5d22:	ef 90       	pop	r14
    5d24:	ff 90       	pop	r15
    5d26:	0f 91       	pop	r16
    5d28:	1f 91       	pop	r17
    5d2a:	cf 91       	pop	r28
    5d2c:	df 91       	pop	r29
    5d2e:	08 95       	ret

00005d30 <__fp_pscA>:
    5d30:	00 24       	eor	r0, r0
    5d32:	0a 94       	dec	r0
    5d34:	16 16       	cp	r1, r22
    5d36:	17 06       	cpc	r1, r23
    5d38:	18 06       	cpc	r1, r24
    5d3a:	09 06       	cpc	r0, r25
    5d3c:	08 95       	ret

00005d3e <__fp_pscB>:
    5d3e:	00 24       	eor	r0, r0
    5d40:	0a 94       	dec	r0
    5d42:	12 16       	cp	r1, r18
    5d44:	13 06       	cpc	r1, r19
    5d46:	14 06       	cpc	r1, r20
    5d48:	05 06       	cpc	r0, r21
    5d4a:	08 95       	ret

00005d4c <__fp_round>:
    5d4c:	09 2e       	mov	r0, r25
    5d4e:	03 94       	inc	r0
    5d50:	00 0c       	add	r0, r0
    5d52:	11 f4       	brne	.+4      	; 0x5d58 <__fp_round+0xc>
    5d54:	88 23       	and	r24, r24
    5d56:	52 f0       	brmi	.+20     	; 0x5d6c <__fp_round+0x20>
    5d58:	bb 0f       	add	r27, r27
    5d5a:	40 f4       	brcc	.+16     	; 0x5d6c <__fp_round+0x20>
    5d5c:	bf 2b       	or	r27, r31
    5d5e:	11 f4       	brne	.+4      	; 0x5d64 <__fp_round+0x18>
    5d60:	60 ff       	sbrs	r22, 0
    5d62:	04 c0       	rjmp	.+8      	; 0x5d6c <__fp_round+0x20>
    5d64:	6f 5f       	subi	r22, 0xFF	; 255
    5d66:	7f 4f       	sbci	r23, 0xFF	; 255
    5d68:	8f 4f       	sbci	r24, 0xFF	; 255
    5d6a:	9f 4f       	sbci	r25, 0xFF	; 255
    5d6c:	08 95       	ret

00005d6e <__fp_split3>:
    5d6e:	57 fd       	sbrc	r21, 7
    5d70:	90 58       	subi	r25, 0x80	; 128
    5d72:	44 0f       	add	r20, r20
    5d74:	55 1f       	adc	r21, r21
    5d76:	59 f0       	breq	.+22     	; 0x5d8e <__fp_splitA+0x10>
    5d78:	5f 3f       	cpi	r21, 0xFF	; 255
    5d7a:	71 f0       	breq	.+28     	; 0x5d98 <__fp_splitA+0x1a>
    5d7c:	47 95       	ror	r20

00005d7e <__fp_splitA>:
    5d7e:	88 0f       	add	r24, r24
    5d80:	97 fb       	bst	r25, 7
    5d82:	99 1f       	adc	r25, r25
    5d84:	61 f0       	breq	.+24     	; 0x5d9e <__fp_splitA+0x20>
    5d86:	9f 3f       	cpi	r25, 0xFF	; 255
    5d88:	79 f0       	breq	.+30     	; 0x5da8 <__fp_splitA+0x2a>
    5d8a:	87 95       	ror	r24
    5d8c:	08 95       	ret
    5d8e:	12 16       	cp	r1, r18
    5d90:	13 06       	cpc	r1, r19
    5d92:	14 06       	cpc	r1, r20
    5d94:	55 1f       	adc	r21, r21
    5d96:	f2 cf       	rjmp	.-28     	; 0x5d7c <__fp_split3+0xe>
    5d98:	46 95       	lsr	r20
    5d9a:	f1 df       	rcall	.-30     	; 0x5d7e <__fp_splitA>
    5d9c:	08 c0       	rjmp	.+16     	; 0x5dae <__fp_splitA+0x30>
    5d9e:	16 16       	cp	r1, r22
    5da0:	17 06       	cpc	r1, r23
    5da2:	18 06       	cpc	r1, r24
    5da4:	99 1f       	adc	r25, r25
    5da6:	f1 cf       	rjmp	.-30     	; 0x5d8a <__fp_splitA+0xc>
    5da8:	86 95       	lsr	r24
    5daa:	71 05       	cpc	r23, r1
    5dac:	61 05       	cpc	r22, r1
    5dae:	08 94       	sec
    5db0:	08 95       	ret

00005db2 <__fp_zero>:
    5db2:	e8 94       	clt

00005db4 <__fp_szero>:
    5db4:	bb 27       	eor	r27, r27
    5db6:	66 27       	eor	r22, r22
    5db8:	77 27       	eor	r23, r23
    5dba:	cb 01       	movw	r24, r22
    5dbc:	97 f9       	bld	r25, 7
    5dbe:	08 95       	ret

00005dc0 <inverse>:
    5dc0:	9b 01       	movw	r18, r22
    5dc2:	ac 01       	movw	r20, r24
    5dc4:	60 e0       	ldi	r22, 0x00	; 0
    5dc6:	70 e0       	ldi	r23, 0x00	; 0
    5dc8:	80 e8       	ldi	r24, 0x80	; 128
    5dca:	9f e3       	ldi	r25, 0x3F	; 63
    5dcc:	0c 94 83 2d 	jmp	0x5b06	; 0x5b06 <__divsf3>

00005dd0 <__mulsf3>:
    5dd0:	0e 94 fb 2e 	call	0x5df6	; 0x5df6 <__mulsf3x>
    5dd4:	0c 94 a6 2e 	jmp	0x5d4c	; 0x5d4c <__fp_round>
    5dd8:	0e 94 98 2e 	call	0x5d30	; 0x5d30 <__fp_pscA>
    5ddc:	38 f0       	brcs	.+14     	; 0x5dec <__mulsf3+0x1c>
    5dde:	0e 94 9f 2e 	call	0x5d3e	; 0x5d3e <__fp_pscB>
    5de2:	20 f0       	brcs	.+8      	; 0x5dec <__mulsf3+0x1c>
    5de4:	95 23       	and	r25, r21
    5de6:	11 f0       	breq	.+4      	; 0x5dec <__mulsf3+0x1c>
    5de8:	0c 94 68 2e 	jmp	0x5cd0	; 0x5cd0 <__fp_inf>
    5dec:	0c 94 6e 2e 	jmp	0x5cdc	; 0x5cdc <__fp_nan>
    5df0:	11 24       	eor	r1, r1
    5df2:	0c 94 da 2e 	jmp	0x5db4	; 0x5db4 <__fp_szero>

00005df6 <__mulsf3x>:
    5df6:	0e 94 b7 2e 	call	0x5d6e	; 0x5d6e <__fp_split3>
    5dfa:	70 f3       	brcs	.-36     	; 0x5dd8 <__mulsf3+0x8>

00005dfc <__mulsf3_pse>:
    5dfc:	95 9f       	mul	r25, r21
    5dfe:	c1 f3       	breq	.-16     	; 0x5df0 <__mulsf3+0x20>
    5e00:	95 0f       	add	r25, r21
    5e02:	50 e0       	ldi	r21, 0x00	; 0
    5e04:	55 1f       	adc	r21, r21
    5e06:	62 9f       	mul	r22, r18
    5e08:	f0 01       	movw	r30, r0
    5e0a:	72 9f       	mul	r23, r18
    5e0c:	bb 27       	eor	r27, r27
    5e0e:	f0 0d       	add	r31, r0
    5e10:	b1 1d       	adc	r27, r1
    5e12:	63 9f       	mul	r22, r19
    5e14:	aa 27       	eor	r26, r26
    5e16:	f0 0d       	add	r31, r0
    5e18:	b1 1d       	adc	r27, r1
    5e1a:	aa 1f       	adc	r26, r26
    5e1c:	64 9f       	mul	r22, r20
    5e1e:	66 27       	eor	r22, r22
    5e20:	b0 0d       	add	r27, r0
    5e22:	a1 1d       	adc	r26, r1
    5e24:	66 1f       	adc	r22, r22
    5e26:	82 9f       	mul	r24, r18
    5e28:	22 27       	eor	r18, r18
    5e2a:	b0 0d       	add	r27, r0
    5e2c:	a1 1d       	adc	r26, r1
    5e2e:	62 1f       	adc	r22, r18
    5e30:	73 9f       	mul	r23, r19
    5e32:	b0 0d       	add	r27, r0
    5e34:	a1 1d       	adc	r26, r1
    5e36:	62 1f       	adc	r22, r18
    5e38:	83 9f       	mul	r24, r19
    5e3a:	a0 0d       	add	r26, r0
    5e3c:	61 1d       	adc	r22, r1
    5e3e:	22 1f       	adc	r18, r18
    5e40:	74 9f       	mul	r23, r20
    5e42:	33 27       	eor	r19, r19
    5e44:	a0 0d       	add	r26, r0
    5e46:	61 1d       	adc	r22, r1
    5e48:	23 1f       	adc	r18, r19
    5e4a:	84 9f       	mul	r24, r20
    5e4c:	60 0d       	add	r22, r0
    5e4e:	21 1d       	adc	r18, r1
    5e50:	82 2f       	mov	r24, r18
    5e52:	76 2f       	mov	r23, r22
    5e54:	6a 2f       	mov	r22, r26
    5e56:	11 24       	eor	r1, r1
    5e58:	9f 57       	subi	r25, 0x7F	; 127
    5e5a:	50 40       	sbci	r21, 0x00	; 0
    5e5c:	9a f0       	brmi	.+38     	; 0x5e84 <__mulsf3_pse+0x88>
    5e5e:	f1 f0       	breq	.+60     	; 0x5e9c <__mulsf3_pse+0xa0>
    5e60:	88 23       	and	r24, r24
    5e62:	4a f0       	brmi	.+18     	; 0x5e76 <__mulsf3_pse+0x7a>
    5e64:	ee 0f       	add	r30, r30
    5e66:	ff 1f       	adc	r31, r31
    5e68:	bb 1f       	adc	r27, r27
    5e6a:	66 1f       	adc	r22, r22
    5e6c:	77 1f       	adc	r23, r23
    5e6e:	88 1f       	adc	r24, r24
    5e70:	91 50       	subi	r25, 0x01	; 1
    5e72:	50 40       	sbci	r21, 0x00	; 0
    5e74:	a9 f7       	brne	.-22     	; 0x5e60 <__mulsf3_pse+0x64>
    5e76:	9e 3f       	cpi	r25, 0xFE	; 254
    5e78:	51 05       	cpc	r21, r1
    5e7a:	80 f0       	brcs	.+32     	; 0x5e9c <__mulsf3_pse+0xa0>
    5e7c:	0c 94 68 2e 	jmp	0x5cd0	; 0x5cd0 <__fp_inf>
    5e80:	0c 94 da 2e 	jmp	0x5db4	; 0x5db4 <__fp_szero>
    5e84:	5f 3f       	cpi	r21, 0xFF	; 255
    5e86:	e4 f3       	brlt	.-8      	; 0x5e80 <__mulsf3_pse+0x84>
    5e88:	98 3e       	cpi	r25, 0xE8	; 232
    5e8a:	d4 f3       	brlt	.-12     	; 0x5e80 <__mulsf3_pse+0x84>
    5e8c:	86 95       	lsr	r24
    5e8e:	77 95       	ror	r23
    5e90:	67 95       	ror	r22
    5e92:	b7 95       	ror	r27
    5e94:	f7 95       	ror	r31
    5e96:	e7 95       	ror	r30
    5e98:	9f 5f       	subi	r25, 0xFF	; 255
    5e9a:	c1 f7       	brne	.-16     	; 0x5e8c <__mulsf3_pse+0x90>
    5e9c:	fe 2b       	or	r31, r30
    5e9e:	88 0f       	add	r24, r24
    5ea0:	91 1d       	adc	r25, r1
    5ea2:	96 95       	lsr	r25
    5ea4:	87 95       	ror	r24
    5ea6:	97 f9       	bld	r25, 7
    5ea8:	08 95       	ret
    5eaa:	19 f4       	brne	.+6      	; 0x5eb2 <__mulsf3_pse+0xb6>
    5eac:	16 f4       	brtc	.+4      	; 0x5eb2 <__mulsf3_pse+0xb6>
    5eae:	0c 94 6e 2e 	jmp	0x5cdc	; 0x5cdc <__fp_nan>
    5eb2:	0c 94 9f 2f 	jmp	0x5f3e	; 0x5f3e <__fp_mpack>

00005eb6 <sqrt>:
    5eb6:	0e 94 bf 2e 	call	0x5d7e	; 0x5d7e <__fp_splitA>
    5eba:	b8 f3       	brcs	.-18     	; 0x5eaa <__mulsf3_pse+0xae>
    5ebc:	99 23       	and	r25, r25
    5ebe:	c9 f3       	breq	.-14     	; 0x5eb2 <__mulsf3_pse+0xb6>
    5ec0:	b6 f3       	brts	.-20     	; 0x5eae <__mulsf3_pse+0xb2>
    5ec2:	9f 57       	subi	r25, 0x7F	; 127
    5ec4:	55 0b       	sbc	r21, r21
    5ec6:	87 ff       	sbrs	r24, 7
    5ec8:	0e 94 ad 2f 	call	0x5f5a	; 0x5f5a <__fp_norm2>
    5ecc:	00 24       	eor	r0, r0
    5ece:	a0 e6       	ldi	r26, 0x60	; 96
    5ed0:	40 ea       	ldi	r20, 0xA0	; 160
    5ed2:	90 01       	movw	r18, r0
    5ed4:	80 58       	subi	r24, 0x80	; 128
    5ed6:	56 95       	lsr	r21
    5ed8:	97 95       	ror	r25
    5eda:	28 f4       	brcc	.+10     	; 0x5ee6 <sqrt+0x30>
    5edc:	80 5c       	subi	r24, 0xC0	; 192
    5ede:	66 0f       	add	r22, r22
    5ee0:	77 1f       	adc	r23, r23
    5ee2:	88 1f       	adc	r24, r24
    5ee4:	20 f0       	brcs	.+8      	; 0x5eee <sqrt+0x38>
    5ee6:	26 17       	cp	r18, r22
    5ee8:	37 07       	cpc	r19, r23
    5eea:	48 07       	cpc	r20, r24
    5eec:	30 f4       	brcc	.+12     	; 0x5efa <sqrt+0x44>
    5eee:	62 1b       	sub	r22, r18
    5ef0:	73 0b       	sbc	r23, r19
    5ef2:	84 0b       	sbc	r24, r20
    5ef4:	20 29       	or	r18, r0
    5ef6:	31 29       	or	r19, r1
    5ef8:	4a 2b       	or	r20, r26
    5efa:	a6 95       	lsr	r26
    5efc:	17 94       	ror	r1
    5efe:	07 94       	ror	r0
    5f00:	20 25       	eor	r18, r0
    5f02:	31 25       	eor	r19, r1
    5f04:	4a 27       	eor	r20, r26
    5f06:	58 f7       	brcc	.-42     	; 0x5ede <sqrt+0x28>
    5f08:	66 0f       	add	r22, r22
    5f0a:	77 1f       	adc	r23, r23
    5f0c:	88 1f       	adc	r24, r24
    5f0e:	20 f0       	brcs	.+8      	; 0x5f18 <sqrt+0x62>
    5f10:	26 17       	cp	r18, r22
    5f12:	37 07       	cpc	r19, r23
    5f14:	48 07       	cpc	r20, r24
    5f16:	30 f4       	brcc	.+12     	; 0x5f24 <sqrt+0x6e>
    5f18:	62 0b       	sbc	r22, r18
    5f1a:	73 0b       	sbc	r23, r19
    5f1c:	84 0b       	sbc	r24, r20
    5f1e:	20 0d       	add	r18, r0
    5f20:	31 1d       	adc	r19, r1
    5f22:	41 1d       	adc	r20, r1
    5f24:	a0 95       	com	r26
    5f26:	81 f7       	brne	.-32     	; 0x5f08 <sqrt+0x52>
    5f28:	b9 01       	movw	r22, r18
    5f2a:	84 2f       	mov	r24, r20
    5f2c:	91 58       	subi	r25, 0x81	; 129
    5f2e:	88 0f       	add	r24, r24
    5f30:	96 95       	lsr	r25
    5f32:	87 95       	ror	r24
    5f34:	08 95       	ret

00005f36 <square>:
    5f36:	9b 01       	movw	r18, r22
    5f38:	ac 01       	movw	r20, r24
    5f3a:	0c 94 e8 2e 	jmp	0x5dd0	; 0x5dd0 <__mulsf3>

00005f3e <__fp_mpack>:
    5f3e:	9f 3f       	cpi	r25, 0xFF	; 255
    5f40:	31 f0       	breq	.+12     	; 0x5f4e <__fp_mpack_finite+0xc>

00005f42 <__fp_mpack_finite>:
    5f42:	91 50       	subi	r25, 0x01	; 1
    5f44:	20 f4       	brcc	.+8      	; 0x5f4e <__fp_mpack_finite+0xc>
    5f46:	87 95       	ror	r24
    5f48:	77 95       	ror	r23
    5f4a:	67 95       	ror	r22
    5f4c:	b7 95       	ror	r27
    5f4e:	88 0f       	add	r24, r24
    5f50:	91 1d       	adc	r25, r1
    5f52:	96 95       	lsr	r25
    5f54:	87 95       	ror	r24
    5f56:	97 f9       	bld	r25, 7
    5f58:	08 95       	ret

00005f5a <__fp_norm2>:
    5f5a:	91 50       	subi	r25, 0x01	; 1
    5f5c:	50 40       	sbci	r21, 0x00	; 0
    5f5e:	66 0f       	add	r22, r22
    5f60:	77 1f       	adc	r23, r23
    5f62:	88 1f       	adc	r24, r24
    5f64:	d2 f7       	brpl	.-12     	; 0x5f5a <__fp_norm2>
    5f66:	08 95       	ret

00005f68 <__udivmodqi4>:
    5f68:	99 1b       	sub	r25, r25
    5f6a:	79 e0       	ldi	r23, 0x09	; 9
    5f6c:	04 c0       	rjmp	.+8      	; 0x5f76 <__udivmodqi4_ep>

00005f6e <__udivmodqi4_loop>:
    5f6e:	99 1f       	adc	r25, r25
    5f70:	96 17       	cp	r25, r22
    5f72:	08 f0       	brcs	.+2      	; 0x5f76 <__udivmodqi4_ep>
    5f74:	96 1b       	sub	r25, r22

00005f76 <__udivmodqi4_ep>:
    5f76:	88 1f       	adc	r24, r24
    5f78:	7a 95       	dec	r23
    5f7a:	c9 f7       	brne	.-14     	; 0x5f6e <__udivmodqi4_loop>
    5f7c:	80 95       	com	r24
    5f7e:	08 95       	ret

00005f80 <__udivmodhi4>:
    5f80:	aa 1b       	sub	r26, r26
    5f82:	bb 1b       	sub	r27, r27
    5f84:	51 e1       	ldi	r21, 0x11	; 17
    5f86:	07 c0       	rjmp	.+14     	; 0x5f96 <__udivmodhi4_ep>

00005f88 <__udivmodhi4_loop>:
    5f88:	aa 1f       	adc	r26, r26
    5f8a:	bb 1f       	adc	r27, r27
    5f8c:	a6 17       	cp	r26, r22
    5f8e:	b7 07       	cpc	r27, r23
    5f90:	10 f0       	brcs	.+4      	; 0x5f96 <__udivmodhi4_ep>
    5f92:	a6 1b       	sub	r26, r22
    5f94:	b7 0b       	sbc	r27, r23

00005f96 <__udivmodhi4_ep>:
    5f96:	88 1f       	adc	r24, r24
    5f98:	99 1f       	adc	r25, r25
    5f9a:	5a 95       	dec	r21
    5f9c:	a9 f7       	brne	.-22     	; 0x5f88 <__udivmodhi4_loop>
    5f9e:	80 95       	com	r24
    5fa0:	90 95       	com	r25
    5fa2:	bc 01       	movw	r22, r24
    5fa4:	cd 01       	movw	r24, r26
    5fa6:	08 95       	ret

00005fa8 <__divmodhi4>:
    5fa8:	97 fb       	bst	r25, 7
    5faa:	07 2e       	mov	r0, r23
    5fac:	16 f4       	brtc	.+4      	; 0x5fb2 <__divmodhi4+0xa>
    5fae:	00 94       	com	r0
    5fb0:	07 d0       	rcall	.+14     	; 0x5fc0 <__divmodhi4_neg1>
    5fb2:	77 fd       	sbrc	r23, 7
    5fb4:	09 d0       	rcall	.+18     	; 0x5fc8 <__divmodhi4_neg2>
    5fb6:	0e 94 c0 2f 	call	0x5f80	; 0x5f80 <__udivmodhi4>
    5fba:	07 fc       	sbrc	r0, 7
    5fbc:	05 d0       	rcall	.+10     	; 0x5fc8 <__divmodhi4_neg2>
    5fbe:	3e f4       	brtc	.+14     	; 0x5fce <__divmodhi4_exit>

00005fc0 <__divmodhi4_neg1>:
    5fc0:	90 95       	com	r25
    5fc2:	81 95       	neg	r24
    5fc4:	9f 4f       	sbci	r25, 0xFF	; 255
    5fc6:	08 95       	ret

00005fc8 <__divmodhi4_neg2>:
    5fc8:	70 95       	com	r23
    5fca:	61 95       	neg	r22
    5fcc:	7f 4f       	sbci	r23, 0xFF	; 255

00005fce <__divmodhi4_exit>:
    5fce:	08 95       	ret

00005fd0 <__tablejump2__>:
    5fd0:	ee 0f       	add	r30, r30
    5fd2:	ff 1f       	adc	r31, r31
    5fd4:	05 90       	lpm	r0, Z+
    5fd6:	f4 91       	lpm	r31, Z
    5fd8:	e0 2d       	mov	r30, r0
    5fda:	09 94       	ijmp

00005fdc <_exit>:
    5fdc:	f8 94       	cli

00005fde <__stop_program>:
    5fde:	ff cf       	rjmp	.-2      	; 0x5fde <__stop_program>
