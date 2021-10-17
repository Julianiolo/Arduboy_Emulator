
hollow.ino.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
       0:	0c 94 2d 08 	jmp	0x105a	; 0x105a <__ctors_end>
       4:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
       8:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
       c:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
      10:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
      14:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
      18:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
      1c:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
      20:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
      24:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
      28:	0c 94 05 1f 	jmp	0x3e0a	; 0x3e0a <__vector_10>
      2c:	0c 94 74 1f 	jmp	0x3ee8	; 0x3ee8 <__vector_11>
      30:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
      34:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
      38:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
      3c:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
      40:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
      44:	0c 94 48 22 	jmp	0x4490	; 0x4490 <__vector_17>
      48:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
      4c:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
      50:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
      54:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
      58:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
      5c:	0c 94 a6 21 	jmp	0x434c	; 0x434c <__vector_23>
      60:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
      64:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
      68:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
      6c:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
      70:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
      74:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
      78:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
      7c:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
      80:	0c 94 f0 21 	jmp	0x43e0	; 0x43e0 <__vector_32>
      84:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
      88:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
      8c:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
      90:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
      94:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
      98:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
      9c:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
      a0:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
      a4:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
      a8:	0c 94 55 08 	jmp	0x10aa	; 0x10aa <__bad_interrupt>
      ac:	05 a8       	ldd	r0, Z+53	; 0x35
      ae:	4c cd       	rjmp	.-1384   	; 0xfffffb48 <__eeprom_end+0xff7efb48>
      b0:	b2 d4       	rcall	.+2404   	; 0xa16 <_ZL4font+0x9e>
      b2:	4e b9       	out	0x0e, r20	; 14
      b4:	38 36       	cpi	r19, 0x68	; 104
      b6:	a9 02       	muls	r26, r25
      b8:	0c 50       	subi	r16, 0x0C	; 12
      ba:	b9 91       	ld	r27, Y+
      bc:	86 88       	ldd	r8, Z+22	; 0x16
      be:	08 3c       	cpi	r16, 0xC8	; 200
      c0:	a6 aa       	std	Z+54, r10	; 0x36
      c2:	aa 2a       	or	r10, r26
      c4:	be 00       	.word	0x00be	; ????
      c6:	00 00       	nop
      c8:	80 3f       	cpi	r24, 0xF0	; 240

000000ca <__trampolines_end>:
      ca:	54 48       	sbci	r21, 0x84	; 132
      cc:	45 20       	and	r4, r5
      ce:	4d 49       	sbci	r20, 0x9D	; 157
      d0:	54 20       	and	r5, r4
      d2:	4c 49       	sbci	r20, 0x9C	; 156
      d4:	43 45       	sbci	r20, 0x53	; 83
      d6:	4e 53       	subi	r20, 0x3E	; 62
      d8:	45 2e       	mov	r4, r21
	...

000000db <_ZL7credit4>:
      db:	52 45 4c 45 41 53 45 44 20 55 4e 44 45 52 00        RELEASED UNDER.

000000ea <_ZL7credit3>:
      ea:	54 48 49 53 20 50 52 4f 47 52 41 4d 20 49 53 00     THIS PROGRAM IS.

000000fa <_ZL7credit2>:
      fa:	50 52 4f 47 52 45 4d 4d 45 44 20 42 59 20 4f 42     PROGREMMED BY OB
     10a:	4f 4e 4f 00                                         ONO.

0000010e <_ZL7credit1>:
     10e:	44 45 43 45 4d 42 45 52 20 32 30 31 36 00           DECEMBER 2016.

0000011c <_ZL7credit0>:
     11c:	2d 20 48 4f 4c 4c 4f 57 20 53 45 45 4b 45 52 20     - HOLLOW SEEKER 
     12c:	2d 00                                               -.

0000012e <_ZL10menuCredit>:
     12e:	43 52 45 44 49 54 00                                CREDIT.

00000135 <_ZL10menuRecord>:
     135:	52 45 43 4f 52 44 00                                RECORD.

0000013c <_ZL8menuGame>:
     13c:	53 54 41 52 54 20 47 41 4d 45 00                    START GAME.

00000147 <_ZL7imgFont>:
     147:	00 00 00 00 00 70 01 00 c0 00 0c 00 ca a7 7c 0a     .....p........|.
     157:	42 f5 55 08 53 42 48 19 5e f5 51 12 00 30 00 00     B.U.SBH.^.Q..0..
     167:	00 27 45 00 40 94 1c 00 14 f3 19 05 04 f1 11 04     .'E.@...........
     177:	20 04 00 00 04 41 10 04 00 04 00 00 10 42 08 01      ....A.......B..
     187:	5e 14 45 0f 40 f0 01 00 59 55 55 13 51 55 5d 0d     ^.E.@...YUU.QU].
     197:	8c 92 7c 08 57 55 55 0d 5e 55 55 0d 51 52 0c 01     ..|.WUU.^UU.QR..
     1a7:	5e 55 55 0f 56 55 55 0f 00 a0 00 00 00 a4 00 00     ^UU.VUU.........
     1b7:	00 c2 28 00 80 a2 28 00 80 62 08 00 40 50 0d 00     ..(...(..b..@P..
     1c7:	00 e3 18 00 9c 92 24 1f 5f 55 5d 0d 9c 14 45 11     ......$._U]...E.
     1d7:	5f 14 25 07 5f 55 55 11 5f 51 14 01 5e 54 55 1d     _.%._UU._Q..^TU.
     1e7:	1f 41 10 1f 40 f4 45 00 10 04 21 07 1f 41 18 1d     .A..@.E...!..A..
     1f7:	1f 04 41 10 5e f0 04 1f 9c 10 04 1f 5e 54 45 0f     ..A.^.......^TE.
     207:	5f 92 14 03 5e d4 45 1f 5f 92 34 1b 56 55 55 0d     _...^.E._.4.VUU.
     217:	41 f0 05 01 1f 04 21 07 1f 42 08 01 1f e4 41 0f     A.....!..B....A.
     227:	17 43 18 1d 07 c1 09 01 51 56 4d 11 00 f0 45 00     .C......QVM...E.
     237:	00 f0 01 00 40 f4 01 00 80 10 0c 00 10 04 41 10     ....@.........A.

00000247 <_ZL10soundStart>:
     247:	90 48 00 64 80 00 19 90 4a 00 64 80 00 19 90 4c     .H.d....J.d....L
     257:	00 64 80 00 19 90 4d 00 64 80 00 19 90 4f 00 c8     .d....M.d....O..
     267:	80 f0                                               ..

00000269 <_ZL13soundGameOver>:
     269:	90 37 00 78 80 00 0a 90 36 00 8c 80 00 14 90 35     .7.x....6......5
     279:	00 a0 80 00 1e 90 34 00 b4 80 00 28 90 33 00 c8     ......4....(.3..
     289:	80 00 32 90 32 00 dc 80 00 3c 90 31 00 f0 80 00     ..2.2....<.1....
     299:	46 90 30 00 04 80 f0                                F.0....

000002a0 <_ZL9soundMove>:
     2a0:	90 43 00 0a 90 4f 00 0a 90 4c 00 0a 80 f0           .C...O...L....

000002ae <_ZL10soundCrush>:
     2ae:	90 14 91 13 01 f4 80 81 f0                          .........

000002b7 <_ZL9imgPlayer>:
     2b7:	10 83 ac 69 6d ad 82 10 00 13 6c 69 ed ad 02 20     ...im.....li... 
     2c7:	00 23 2c e9 ed 2d 02 20 20 06 d8 d2 5a 5a c4 10     .#,..-.  ...ZZ..
     2d7:	10 82 ad 6d 69 ac 83 10 20 02 ad ed 69 6c 13 00     ...mi... ...il..
     2e7:	20 02 2d ed e9 2c 23 00 10 c4 5a 5a d2 d8 06 20      .-..,#...ZZ... 

000002f7 <_ZZ8drawGamevE3__c_1>:
     2f7:	4e 45 57 20 52 45 43 4f 52 44 00                    NEW RECORD.

00000302 <_ZZ8drawGamevE3__c_0>:
     302:	53 43 4f 52 45 00                                   SCORE.

00000308 <_ZZ8drawGamevE3__c>:
     308:	59 4f 55 52 00                                      YOUR.

0000030d <_ZL11imgGameOver>:
     30d:	00 00 e0 f0 f8 3c 9c 9c 9c 9c 9c 80 00 00 c0 60     .....<.........`
     31d:	60 60 60 e0 c0 80 00 e0 e0 e0 40 60 60 e0 e0 c0     ```.......@``...
     32d:	60 60 e0 e0 c0 00 80 c0 e0 e0 60 60 e0 c0 80 00     ``........``....
     33d:	e0 f0 f8 3c 1c 1c 1c 3c f8 f0 e0 00 60 e0 e0 e0     ...<...<....`...
     34d:	00 00 e0 e0 e0 60 80 c0 e0 e0 60 60 e0 c0 80 00     .....`....``....
     35d:	e0 e0 e0 c0 e0 e0 00 00 00 00 07 0f 1f 3c 3b 3b     .............<;;
     36d:	3b 3f 3f 1f 00 1c 3e 3f 33 33 13 3f 3f 3f 00 3f     ;??...>?33.???.?
     37d:	3f 3f 00 00 00 3f 3f 3f 00 00 3f 3f 3f 00 0f 1f     ??...???..???...
     38d:	3f 36 36 36 37 37 07 00 07 0f 1f 3c 38 38 38 3c     ?66677.....<888<
     39d:	1f 0f 07 00 00 03 1f 3f 3e 3e 3f 1f 03 00 0f 1f     .......?>>?.....
     3ad:	3f 36 36 36 37 37 07 00 3f 3f 3f 00 00 00 00 00     ?66677..???.....

000003bd <_ZL8imgReady>:
     3bd:	00 00 fc fc fc 8c 8c cc fc f8 78 00 80 c0 e0 e0     ..........x.....
     3cd:	60 60 e0 c0 80 00 00 c0 60 60 60 60 e0 c0 80 00     ``......````....
     3dd:	80 c0 e0 e0 e0 e0 c0 fe fe fe 00 20 e0 e0 e0 00     ........... ....
     3ed:	00 e0 e0 e0 60 00 00 38 1c 1c 9c fc fc 78 00 00     ....`..8.....x..
     3fd:	00 00 3f 3f 3f 03 07 1f 3e 3e 38 20 0f 1f 3f 36     ..???...>>8 ..?6
     40d:	36 36 37 37 07 00 1c 3e 3f 33 33 13 3f 3f 3f 00     6677...>?33.???.
     41d:	0f 1f 3f 31 30 30 18 3f 3f 3f 00 00 00 c3 cf ff     ..?100.???......
     42d:	fc 7f 1f 03 00 00 00 00 38 3b 3b 39 00 00 00 00     ........8;;9....

0000043d <_ZL7imgCave>:
     43d:	90 06 4e e4 c0 88 18 99                             ..N.....

00000445 <_ZL9imgNumber>:
     445:	e0 f8 fc 1c 1c fc f8 f0 0f 1f 3f 38 38 3f 1f 07     ..........?88?..
     455:	38 38 38 fc fc fc 00 00 00 00 00 3f 3f 3f 00 00     888........???..
     465:	00 38 1c 1c 9c fc f8 78 38 3c 3e 3b 3b 39 38 38     .8.....x8<>;;988
     475:	00 1c dc dc dc fc 78 38 00 38 39 39 39 3f 1f 0e     ......x8.8999?..
     485:	00 c0 f0 7c fc fc fc 00 0f 0f 0d 0c 3f 3f 3f 0c     ...|........???.
     495:	fc fc fc fc dc dc 9c 00 39 38 38 38 38 3f 1f 0f     ........98888?..
     4a5:	e0 f0 f8 bc dc dc dc 80 0f 1f 3f 39 39 3f 1f 0f     ..........?99?..
     4b5:	1c 1c 1c 9c dc fc 7c 1c 00 30 3e 3f 3f 03 00 00     ......|..0>??...
     4c5:	70 f8 fc 8c 8c fc f8 70 0e 1f 3f 31 31 3f 1f 0e     p......p..?11?..
     4d5:	f0 f8 fc 9c 9c fc f8 e0 00 39 39 39 3d 1f 1f 07     .........999=...

000004e5 <_ZZ8drawLogovE3__c>:
     4e5:	4f 42 4e 2d 59 30 31 20 56 45 52 20 30 2e 33 32     OBN-Y01 VER 0.32
	...

000004f6 <_ZL7imgSoft>:
     4f6:	c0 c6 cf df ff fb 73 03 7c fe ff c7 e3 ff 7f 3e     ......s.|......>
     506:	00 ff ff ff 1b 1b 1b 03 00 03 03 ff ff ff 03 03     ................

00000516 <_ZL6imgOBN>:
	...
     51e:	80 80 80 80 00 00 00 00 00 00 00 00 00 00 00 00     ................
     52e:	80 e0 f0 58 ac 56 ab 55 ab 55 00 ff 01 01 01 02     ...X.V.U.U......
     53e:	02 04 08 10 60 80 00 00 3f ff aa 55 aa 55 aa 55     ....`...?..U.U.U
     54e:	aa 55 a8 5f ac 5c ac 5c ac 5c ac 5c 0c cf 3c 00     .U._.\.\.\.\..<.
     55e:	00 00 01 03 06 0d 1a 15 2a 25 2a 25 2a 25 22 15     ........*%*%*%".
     56e:	12 09 04 02 01 00 00 00 ff ff 57 ab 57 ab 57 ab     ..........W.W.W.
     57e:	57 ab 03 ff 80 80 80 00 00 00 00 00 00 00 00 00     W...............
     58e:	ff ff 55 aa 55 aa 55 aa 55 aa 00 ff 00 00 00 01     ..U.U.U.U.......
     59e:	01 02 04 08 30 c0 00 00 1f 7f d5 aa 55 aa 55 aa     ....0.......U.U.
     5ae:	55 aa 54 af 56 ae 56 ae 56 ae 56 2e 86 67 1e 00     U.T.V.V.V.V..g..
     5be:	00 00 00 01 03 06 0d 0a 15 12 15 12 15 12 11 0a     ................
     5ce:	09 04 02 01 00 00 00 00 00 00 00 00 00 00 80 80     ................
     5de:	c0 c0 c0 c0 80 80 80 00 00 00 00 00 00 00 00 00     ................
     5ee:	c0 f0 78 ac 56 ab 55 aa 55 aa 00 ff 00 00 00 01     ..x.V.U.U.......
     5fe:	01 02 04 08 30 c0 00 00 ff ff 55 aa 55 aa 55 aa     ....0.....U.U.U.
     60e:	55 aa 00 ff fe ae 56 ae 56 ae 56 ae 56 07 fe 00     U.....V.V.V.V...
     61e:	1f 17 15 12 15 12 15 12 15 12 10 1f 17 12 15 12     ................
     62e:	15 12 15 12 15 10 1f 00                             ........

00000636 <_ZL6sound1>:
     636:	90 45 00 0a 80 f0                                   .E....

0000063c <_ZL12imgHeadLight>:
     63c:	3c 7e ff ff ff 7e 3c                                <~...~<

00000643 <_ZL7imgEyes>:
     643:	fd 81 81 fd fd fd fe c0 c0 fe fd 8d 8d fd fd fd     ................
     653:	fe c6 c6 fe dd dd dd dd fd fd ee ee ee ee           ..............

00000661 <_ZL12creditsTable>:
     661:	1c 01 00 00 0e 01 fa 00 00 00 ea 00 db 00 ca 00     ................

00000671 <_ZZ9drawTitlevE3__c_7>:
     671:	50 4c 41 59 20 54 49 4d 45 20 20 00                 PLAY TIME  .

0000067d <_ZZ9drawTitlevE3__c_6>:
     67d:	50 4c 41 59 20 43 4f 55 4e 54 20 00                 PLAY COUNT .

00000689 <_ZZ9drawTitlevE3__c_5>:
     689:	5d 20 00                                            ] .

0000068c <_ZZ9drawTitlevE3__c_4>:
     68c:	5b 00                                               [.

0000068e <_ZZ9drawTitlevE3__c_3>:
     68e:	42 45 53 54 20 31 30 20 53 43 4f 52 45 53 00        BEST 10 SCORES.

0000069d <_ZZ9drawTitlevE3__c_2>:
     69d:	4f 46 46 00                                         OFF.

000006a1 <_ZZ9drawTitlevE3__c_1>:
     6a1:	4f 4e 00                                            ON.

000006a4 <_ZL9menuSound>:
     6a4:	53 4f 55 4e 44 20 00                                SOUND .

000006ab <_ZL10menusTable>:
     6ab:	3c 01 a4 06 35 01 2e 01                             <...5...

000006b3 <_ZZ9drawTitlevE3__c_0>:
     6b3:	53 43 4f 52 45 00                                   SCORE.

000006b9 <_ZZ9drawTitlevE3__c>:
     6b9:	4c 41 53 54 00                                      LAST.

000006be <_ZL6imgMan>:
     6be:	00 00 00 00 00 00 00 80 c0 e0 f0 70 78 78 00 f8     ...........pxx..
     6ce:	fc 06 f3 f9 fd fd fd f9 f2 04 f8 00 60 40 80 00     ............`@..
	...
     6e6:	00 00 00 e0 d8 d6 cb d4 ea e4 ea f5 f2 f5 f2 f9     ................
     6f6:	f7 f6 ec ed eb eb eb e9 f4 fa f9 f8 fa 79 7a 7b     .............yz{
     706:	7c 60 00 00 00 00 00 00 00 00 00 07 07 07 3f c7     |`............?.
     716:	07 03 ab 53 fb fb fb fd fd 81 81 fd fd fd fe c0     ...S............
     726:	c0 fe fe fe fe ff 1f 00 00 00 00 00 00 00 00 00     ................
     736:	00 c0 20 10 28 48 84 04 a5 56 ac 59 aa 5d b7 57     .. .(H...V.Y.].W
     746:	b7 6f af 69 a8 28 e8 6e af 57 b7 57 ab 54 aa 56     .o.i.(.n.W.W.T.V
     756:	ea 42 e2 16 0c 04 08 f0 00 03 04 04 04 05 02 03     .B..............
     766:	01 0f f9 20 20 25 22 25 2a 35 2a 35 ea 20 3f f5     ...  %"%*5*5. ?.
     776:	2a 35 2a 25 22 25 20 f0 3f 00 00 01 01 01 01 00     *5*%"% .?.......

00000786 <_ZL9imgTitle2>:
     786:	f0 f8 fc fe fe 9e 1e 1e 1e 1e 3c 00 00 00 00 00     ..........<.....
     796:	80 80 c0 c0 c0 c0 c0 c0 80 00 00 00 00 00 80 80     ................
     7a6:	c0 c0 c0 c0 c0 c0 80 00 00 00 ff ff ff ff ff 00     ................
     7b6:	00 80 c0 c0 c0 c0 c0 c0 00 00 80 80 c0 c0 c0 c0     ................
     7c6:	c0 c0 80 00 00 00 c0 c0 c0 c0 c0 80 c0 c0 c0 00     ................
     7d6:	e1 c3 c7 87 8f 8f 9f ff fe fe fc f8 00 00 7c ff     ..............|.
     7e6:	ff ff ff bb 39 39 3f 3f 3f bf 3e 00 7c ff ff ff     ....99???.>.|...
     7f6:	ff bb 39 39 3f 3f 3f bf 3e 00 ff ff ff ff ff 18     ..99???.>.......
     806:	7e ff ff ff ff e7 83 00 7c ff ff ff ff bb 39 39     ~.......|.....99
     816:	3f 3f 3f bf 3e 00 ff ff ff ff ff 07 03 03 03 00     ???.>...........
     826:	03 07 07 07 07 07 07 07 03 03 01 00 00 00 00 01     ................
     836:	03 03 07 07 07 07 07 07 07 03 00 00 00 01 03 03     ................
     846:	07 07 07 07 07 07 07 03 00 00 07 07 07 07 07 00     ................
     856:	00 01 07 07 07 07 07 07 04 01 03 03 07 07 07 07     ................
     866:	07 07 07 03 00 00 07 07 07 07 07 00 00 00 00 00     ................

00000876 <_ZL9imgTitle1>:
     876:	fe fe fe fe fe 80 80 80 80 80 80 80 fe fe fe fe     ................
     886:	fe 00 00 00 00 80 80 c0 c0 c0 c0 c0 c0 80 80 00     ................
     896:	00 00 ff ff ff ff ff 00 00 ff ff ff ff ff 00 00     ................
     8a6:	00 00 80 80 c0 c0 c0 c0 c0 c0 80 80 00 00 c0 c0     ................
     8b6:	c0 c0 c0 c0 00 00 00 c0 c0 c0 c0 c0 80 00 00 c0     ................
     8c6:	c0 c0 c0 c0 ff ff ff ff ff 0f 0f 0f 0f 0f 0f 0f     ................
     8d6:	ff ff ff ff ff 00 00 7c ff ff ff ff c7 83 83 c7     .......|........
     8e6:	ff ff ff ff 7c 00 ff ff ff ff ff 00 00 ff ff ff     ....|...........
     8f6:	ff ff 00 00 7c ff ff ff ff c7 83 83 c7 ff ff ff     ....|...........
     906:	ff 7c 00 0f 7f ff ff ff f0 f0 ff ff 1f 1f ff ff     .|..............
     916:	ff f0 f0 ff ff 7f 07 00 07 07 07 07 07 00 00 00     ................
     926:	00 00 00 00 07 07 07 07 07 00 00 00 01 03 03 07     ................
     936:	07 07 07 07 07 03 03 01 00 00 07 07 07 07 07 00     ................
     946:	00 07 07 07 07 07 00 00 00 01 03 03 07 07 07 07     ................
     956:	07 07 03 03 01 00 00 00 00 07 07 07 07 07 07 03     ................
     966:	00 00 07 07 07 07 07 07 03 00 00 00                 ............

00000972 <_ZL6sound2>:
     972:	90 4a 00 14 80 f0                                   .J....

00000978 <_ZL4font>:
     978:	00 00 00 00 00 3e 5b 4f 5b 3e 3e 6b 4f 6b 3e 1c     .....>[O[>>kOk>.
     988:	3e 7c 3e 1c 18 3c 7e 3c 18 1c 57 7d 57 1c 1c 5e     >|>..<~<..W}W..^
     998:	7f 5e 1c 00 18 3c 18 00 ff e7 c3 e7 ff 00 18 24     .^...<.........$
     9a8:	18 00 ff e7 db e7 ff 30 48 3a 06 0e 26 29 79 29     .......0H:..&)y)
     9b8:	26 40 7f 05 05 07 40 7f 05 25 3f 5a 3c e7 3c 5a     &@....@..%?Z<.<Z
     9c8:	7f 3e 1c 1c 08 08 1c 1c 3e 7f 14 22 7f 22 14 5f     .>......>.."."._
     9d8:	5f 00 5f 5f 06 09 7f 01 7f 00 66 89 95 6a 60 60     _.__......f..j``
     9e8:	60 60 60 94 a2 ff a2 94 08 04 7e 04 08 10 20 7e     ```.......~... ~
     9f8:	20 10 08 08 2a 1c 08 08 1c 2a 08 08 1e 10 10 10      ...*....*......
     a08:	10 0c 1e 0c 1e 0c 30 38 3e 38 30 06 0e 3e 0e 06     ......08>80..>..
     a18:	00 00 00 00 00 00 00 5f 00 00 00 07 00 07 00 14     ......._........
     a28:	7f 14 7f 14 24 2a 7f 2a 12 23 13 08 64 62 36 49     ....$*.*.#..db6I
     a38:	56 20 50 00 08 07 03 00 00 1c 22 41 00 00 41 22     V P......."A..A"
     a48:	1c 00 2a 1c 7f 1c 2a 08 08 3e 08 08 00 80 70 30     ..*...*..>....p0
     a58:	00 08 08 08 08 08 00 00 60 60 00 20 10 08 04 02     ........``. ....
     a68:	3e 51 49 45 3e 00 42 7f 40 00 72 49 49 49 46 21     >QIE>.B.@.rIIIF!
     a78:	41 49 4d 33 18 14 12 7f 10 27 45 45 45 39 3c 4a     AIM3.....'EEE9<J
     a88:	49 49 31 41 21 11 09 07 36 49 49 49 36 46 49 49     II1A!...6III6FII
     a98:	29 1e 00 00 14 00 00 00 40 34 00 00 00 08 14 22     ).......@4....."
     aa8:	41 14 14 14 14 14 00 41 22 14 08 02 01 59 09 06     A......A"....Y..
     ab8:	3e 41 5d 59 4e 7c 12 11 12 7c 7f 49 49 49 36 3e     >A]YN|...|.III6>
     ac8:	41 41 41 22 7f 41 41 41 3e 7f 49 49 49 41 7f 09     AAA".AAA>.IIIA..
     ad8:	09 09 01 3e 41 41 51 73 7f 08 08 08 7f 00 41 7f     ...>AAQs......A.
     ae8:	41 00 20 40 41 3f 01 7f 08 14 22 41 7f 40 40 40     A. @A?...."A.@@@
     af8:	40 7f 02 1c 02 7f 7f 04 08 10 7f 3e 41 41 41 3e     @..........>AAA>
     b08:	7f 09 09 09 06 3e 41 51 21 5e 7f 09 19 29 46 26     .....>AQ!^...)F&
     b18:	49 49 49 32 03 01 7f 01 03 3f 40 40 40 3f 1f 20     III2.....?@@@?. 
     b28:	40 20 1f 3f 40 38 40 3f 63 14 08 14 63 03 04 78     @ .?@8@?c...c..x
     b38:	04 03 61 59 49 4d 43 00 7f 41 41 41 02 04 08 10     ..aYIMC..AAA....
     b48:	20 00 41 41 41 7f 04 02 01 02 04 40 40 40 40 40      .AAA......@@@@@
     b58:	00 03 07 08 00 20 54 54 78 40 7f 28 44 44 38 38     ..... TTx@.(DD88
     b68:	44 44 44 28 38 44 44 28 7f 38 54 54 54 18 00 08     DDD(8DD(.8TTT...
     b78:	7e 09 02 18 a4 a4 9c 78 7f 08 04 04 78 00 44 7d     ~......x....x.D}
     b88:	40 00 20 40 40 3d 00 7f 10 28 44 00 00 41 7f 40     @. @@=...(D..A.@
     b98:	00 7c 04 78 04 78 7c 08 04 04 78 38 44 44 44 38     .|.x.x|...x8DDD8
     ba8:	fc 18 24 24 18 18 24 24 18 fc 7c 08 04 04 08 48     ..$$..$$..|....H
     bb8:	54 54 54 24 04 04 3f 44 24 3c 40 40 20 7c 1c 20     TTT$..?D$<@@ |. 
     bc8:	40 20 1c 3c 40 30 40 3c 44 28 10 28 44 4c 90 90     @ .<@0@<D(.(DL..
     bd8:	90 7c 44 64 54 4c 44 00 08 36 41 00 00 00 77 00     .|DdTLD..6A...w.
     be8:	00 00 41 36 08 00 02 01 02 04 02 3c 26 23 26 3c     ..A6.......<&#&<
     bf8:	1e a1 a1 61 12 3a 40 40 20 7a 38 54 54 55 59 21     ...a.:@@ z8TTUY!
     c08:	55 55 79 41 21 54 54 78 41 21 55 54 78 40 20 54     UUyA!TTxA!UTx@ T
     c18:	55 79 40 0c 1e 52 72 12 39 55 55 55 59 39 54 54     Uy@..Rr.9UUUY9TT
     c28:	54 59 39 55 54 54 58 00 00 45 7c 41 00 02 45 7d     TY9UTTX..E|A..E}
     c38:	42 00 01 45 7c 40 f0 29 24 29 f0 f0 28 25 28 f0     B..E|@.)$)..(%(.
     c48:	7c 54 55 45 00 20 54 54 7c 54 7c 0a 09 7f 49 32     |TUE. TT|T|...I2
     c58:	49 49 49 32 32 48 48 48 32 32 4a 48 48 30 3a 41     III22HHH22JHH0:A
     c68:	41 21 7a 3a 42 40 20 78 00 9d a0 a0 7d 39 44 44     A!z:B@ x....}9DD
     c78:	44 39 3d 40 40 40 3d 3c 24 ff 24 24 48 7e 49 43     D9=@@@=<$.$$H~IC
     c88:	66 2b 2f fc 2f 2b ff 09 29 f6 20 c0 88 7e 09 03     f+/./+..). ..~..
     c98:	20 54 54 79 41 00 00 44 7d 41 30 48 48 4a 32 38      TTyA..D}A0HHJ28
     ca8:	40 40 22 7a 00 7a 0a 0a 72 7d 0d 19 31 7d 26 29     @@"z.z..r}..1}&)
     cb8:	29 2f 28 26 29 29 29 26 30 48 4d 40 20 38 08 08     )/(&)))&0HM@ 8..
     cc8:	08 08 08 08 08 08 38 2f 10 c8 ac ba 2f 10 28 34     ......8/..../.(4
     cd8:	fa 00 00 7b 00 00 08 14 2a 14 22 22 14 2a 14 08     ...{....*."".*..
     ce8:	95 00 22 00 95 aa 00 55 00 aa aa 55 aa 55 aa 00     .."....U...U.U..
     cf8:	00 00 ff 00 10 10 10 ff 00 14 14 14 ff 00 10 10     ................
     d08:	ff 00 ff 10 10 f0 10 f0 14 14 14 fc 00 14 14 f7     ................
     d18:	00 ff 00 00 ff 00 ff 14 14 f4 04 fc 14 14 17 10     ................
     d28:	1f 10 10 1f 10 1f 14 14 14 1f 00 10 10 10 f0 00     ................
     d38:	00 00 00 1f 10 10 10 10 1f 10 10 10 10 f0 10 00     ................
     d48:	00 00 ff 10 10 10 10 10 10 10 10 10 ff 10 00 00     ................
     d58:	00 ff 14 00 00 ff 00 ff 00 00 1f 10 17 00 00 fc     ................
     d68:	04 f4 14 14 17 10 17 14 14 f4 04 f4 00 00 ff 00     ................
     d78:	f7 14 14 14 14 14 14 14 f7 00 f7 14 14 14 17 14     ................
     d88:	10 10 1f 10 1f 14 14 14 f4 14 10 10 f0 10 f0 00     ................
     d98:	00 1f 10 1f 00 00 00 1f 14 00 00 00 fc 14 00 00     ................
     da8:	f0 10 f0 10 10 ff 10 ff 14 14 14 ff 14 10 10 10     ................
     db8:	1f 00 00 00 00 f0 10 ff ff ff ff ff f0 f0 f0 f0     ................
     dc8:	f0 ff ff ff 00 00 00 00 00 ff ff 0f 0f 0f 0f 0f     ................
     dd8:	38 44 44 38 44 7c 2a 2a 3e 14 7e 02 02 06 06 02     8DD8D|**>.~.....
     de8:	7e 02 7e 02 63 55 49 41 63 38 44 44 3c 04 40 7e     ~.~.cUIAc8DD<.@~
     df8:	20 1e 20 06 02 7e 02 02 99 a5 e7 a5 99 1c 2a 49      . ..~........*I
     e08:	2a 1c 4c 72 01 72 4c 30 4a 4d 4d 30 30 48 78 48     *.Lr.rL0JMM00HxH
     e18:	30 bc 62 5a 46 3d 3e 49 49 49 00 7e 01 01 01 7e     0.bZF=>III.~...~
     e28:	2a 2a 2a 2a 2a 44 44 5f 44 44 40 51 4a 44 40 40     *****DD_DD@QJD@@
     e38:	44 4a 51 40 00 00 ff 01 03 e0 80 ff 00 00 08 08     DJQ@............
     e48:	6b 6b 08 36 12 36 24 36 06 0f 09 0f 06 00 00 18     kk.6.6$6........
     e58:	18 00 00 00 10 10 00 30 40 ff 01 01 00 1f 01 01     .......0@.......
     e68:	1e 00 19 1d 17 12 00 3c 3c 3c 3c 00 00 00 00 00     .......<<<<.....

00000e78 <_ZL27_midi_word_note_frequencies>:
     e78:	06 01 15 01 26 01 37 01 4a 01 5d 01 72 01 88 01     ....&.7.J.].r...
     e88:	9f 01 b8 01 d2 01 ee 01 0b 02 2a 02 4b 02 6e 02     ..........*.K.n.
     e98:	93 02 ba 02 e4 02 10 03 3f 03 70 03 a4 03 dc 03     ........?.p.....
     ea8:	17 04 55 04 97 04 dd 04 27 05 75 05 c8 05 20 06     ..U.....'.u... .
     eb8:	7d 06 e0 06 49 07 b8 07 2d 08 a9 08 2d 09 b9 09     }...I...-...-...
     ec8:	4d 0a ea 0a 90 0b 40 0c fa 0c c0 0d 91 0e 6f 0f     M.....@.......o.
     ed8:	5a 10 53 11 5b 12 72 13 9a 14 d4 15 20 17 80 18     Z.S.[.r..... ...
     ee8:	f5 19 80 1b 23 1d de 1e b4 20 a6 22 b5 24 e4 26     ....#.... .".$.&
     ef8:	34 29 a7 2b 40 2e 00 31 ea 33 00 37 45 3a bc 3d     4).+@..1.3.7E:.=
     f08:	68 41 4c 45 6b 49 c8 4d 68 52 4f 57 80 5c 00 62     hALEkI.MhROW.\.b

00000f18 <_ZL27_midi_byte_note_frequencies>:
     f18:	10 11 12 13 15 16 17 18 1a 1c 1d 1f 21 23 25 27     ............!#%'
     f28:	29 2c 2e 31 34 37 3a 3e 41 45 49 4e 52 57 5c 62     ),.147:>AEINRW\b
     f38:	68 6e 75 7b 83 8b 93 9c a5 af b9 c4 d0 dc e9 f7     hnu{............

00000f48 <digital_pin_to_timer_PGM>:
     f48:	00 00 00 02 00 09 0f 00 00 03 04 01 00 0c 00 00     ................
	...

00000f67 <_ZL21tune_pin_to_timer_PGM>:
     f67:	03 01                                               ..

00000f69 <port_to_mode_PGM>:
     f69:	00 00 00 00 24 00 27 00 2a 00 2d 00 30 00           ....$.'.*.-.0.

00000f77 <_ZL14lcdBootProgram>:
     f77:	d5 f0 8d 14 a1 c8 81 cf d9 f1 af 20 00              ........... .

00000f84 <digital_pin_to_bit_mask_PGM>:
     f84:	04 08 02 01 10 40 80 40 10 20 40 80 40 80 08 02     .....@.@. @.@...
     f94:	04 01 80 40 20 10 02 01 10 80 10 20 40 40 20        ...@ ...... @@ 

00000fa3 <port_to_output_PGM>:
     fa3:	00 00 00 00 25 00 28 00 2b 00 2e 00 31 00           ....%.(.+...1.

00000fb1 <digital_pin_to_port_PGM>:
     fb1:	04 04 04 04 04 03 04 05 02 02 02 02 04 03 02 02     ................
     fc1:	02 02 06 06 06 06 06 06 04 04 02 02 02 04 04        ...............

00000fd0 <_ZL14pinBootProgram>:
     fd0:	14 02 13 02 12 02 15 02 07 02 08 02 04 01 0c 01     ................
     fe0:	06 01 00                                            ...

00000fe3 <_cdcInterface>:
     fe3:	08 0b 00 02 02 02 00 00 09 04 00 00 01 02 02 00     ................
     ff3:	00 05 24 00 10 01 05 24 01 01 01 04 24 02 06 05     ..$....$....$...
    1003:	24 06 00 01 07 05 81 03 10 00 40 09 04 01 00 02     $.........@.....
    1013:	0a 00 00 00 07 05 02 02 40 00 00 07 05 83 02 40     ........@......@
	...

00001025 <STRING_LANGUAGE>:
    1025:	04 03 09 04                                         ....

00001029 <USB_DeviceDescriptorIAD>:
    1029:	12 01 00 02 ef 02 01 40 41 23 36 80 00 01 01 02     .......@A#6.....
    1039:	03 01                                               ..

0000103b <STRING_MANUFACTURER>:
    103b:	41 72 64 75 69 6e 6f 20 4c 4c 43 00                 Arduino LLC.

00001047 <STRING_PRODUCT>:
    1047:	41 72 64 75 69 6e 6f 20 4c 65 6f 6e 61 72 64 6f     Arduino Leonardo
	...

00001058 <__ctors_start>:
    1058:	b3 22       	and	r11, r19

0000105a <__ctors_end>:
    105a:	11 24       	eor	r1, r1
    105c:	1f be       	out	0x3f, r1	; 63
    105e:	cf ef       	ldi	r28, 0xFF	; 255
    1060:	da e0       	ldi	r29, 0x0A	; 10
    1062:	de bf       	out	0x3e, r29	; 62
    1064:	cd bf       	out	0x3d, r28	; 61

00001066 <__do_copy_data>:
    1066:	11 e0       	ldi	r17, 0x01	; 1
    1068:	a0 e0       	ldi	r26, 0x00	; 0
    106a:	b1 e0       	ldi	r27, 0x01	; 1
    106c:	e2 ef       	ldi	r30, 0xF2	; 242
    106e:	f8 e5       	ldi	r31, 0x58	; 88
    1070:	02 c0       	rjmp	.+4      	; 0x1076 <__do_copy_data+0x10>
    1072:	05 90       	lpm	r0, Z+
    1074:	0d 92       	st	X+, r0
    1076:	a6 35       	cpi	r26, 0x56	; 86
    1078:	b1 07       	cpc	r27, r17
    107a:	d9 f7       	brne	.-10     	; 0x1072 <__do_copy_data+0xc>

0000107c <__do_clear_bss>:
    107c:	27 e0       	ldi	r18, 0x07	; 7
    107e:	a6 e5       	ldi	r26, 0x56	; 86
    1080:	b1 e0       	ldi	r27, 0x01	; 1
    1082:	01 c0       	rjmp	.+2      	; 0x1086 <.do_clear_bss_start>

00001084 <.do_clear_bss_loop>:
    1084:	1d 92       	st	X+, r1

00001086 <.do_clear_bss_start>:
    1086:	ae 38       	cpi	r26, 0x8E	; 142
    1088:	b2 07       	cpc	r27, r18
    108a:	e1 f7       	brne	.-8      	; 0x1084 <.do_clear_bss_loop>

0000108c <__do_global_ctors>:
    108c:	18 e0       	ldi	r17, 0x08	; 8
    108e:	cd e2       	ldi	r28, 0x2D	; 45
    1090:	d8 e0       	ldi	r29, 0x08	; 8
    1092:	04 c0       	rjmp	.+8      	; 0x109c <__do_global_ctors+0x10>
    1094:	21 97       	sbiw	r28, 0x01	; 1
    1096:	fe 01       	movw	r30, r28
    1098:	0e 94 8b 29 	call	0x5316	; 0x5316 <__tablejump2__>
    109c:	cc 32       	cpi	r28, 0x2C	; 44
    109e:	d1 07       	cpc	r29, r17
    10a0:	c9 f7       	brne	.-14     	; 0x1094 <__do_global_ctors+0x8>
    10a2:	0e 94 ea 22 	call	0x45d4	; 0x45d4 <main>
    10a6:	0c 94 77 2c 	jmp	0x58ee	; 0x58ee <_exit>

000010aa <__bad_interrupt>:
    10aa:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000010ae <_ZN9MyArduboy14drawFastVLine2Eiiah.constprop.34>:
    drawFastHLine2(x, y + h - 1, w, color);
    drawFastVLine2(x, y + 1, h - 2, color);
    drawFastVLine2(x + w - 1, y + 1, h - 2, color);
}

void MyArduboy::drawFastVLine2(int16_t x, int16_t y, int8_t h, uint8_t color)
    10ae:	cf 93       	push	r28
    10b0:	df 93       	push	r29
    10b2:	dc 01       	movw	r26, r24
{
    /*  Check parameters  */
    if (y < 0) {
    10b4:	77 ff       	sbrs	r23, 7
    10b6:	13 c0       	rjmp	.+38     	; 0x10de <_ZN9MyArduboy14drawFastVLine2Eiiah.constprop.34+0x30>
        if (h <= -y) return;
    10b8:	22 27       	eor	r18, r18
    10ba:	33 27       	eor	r19, r19
    10bc:	26 1b       	sub	r18, r22
    10be:	37 0b       	sbc	r19, r23
    10c0:	84 2f       	mov	r24, r20
    10c2:	04 2e       	mov	r0, r20
    10c4:	00 0c       	add	r0, r0
    10c6:	99 0b       	sbc	r25, r25
    10c8:	28 17       	cp	r18, r24
    10ca:	39 07       	cpc	r19, r25
    10cc:	2c f4       	brge	.+10     	; 0x10d8 <_ZN9MyArduboy14drawFastVLine2Eiiah.constprop.34+0x2a>
        h += y;
    10ce:	46 0f       	add	r20, r22
        y = 0;
    10d0:	70 e0       	ldi	r23, 0x00	; 0
    10d2:	60 e0       	ldi	r22, 0x00	; 0
    }
    if (h <= 0 || y >= HEIGHT || x < 0 || x >= WIDTH) return;
    10d4:	14 16       	cp	r1, r20
    10d6:	44 f0       	brlt	.+16     	; 0x10e8 <_ZN9MyArduboy14drawFastVLine2Eiiah.constprop.34+0x3a>
        } else {
            *p |= d;
        }
        d = 0xFF;
    }
}
    10d8:	df 91       	pop	r29
    10da:	cf 91       	pop	r28
    10dc:	08 95       	ret
    if (y < 0) {
        if (h <= -y) return;
        h += y;
        y = 0;
    }
    if (h <= 0 || y >= HEIGHT || x < 0 || x >= WIDTH) return;
    10de:	14 16       	cp	r1, r20
    10e0:	dc f7       	brge	.-10     	; 0x10d8 <_ZN9MyArduboy14drawFastVLine2Eiiah.constprop.34+0x2a>
    10e2:	60 34       	cpi	r22, 0x40	; 64
    10e4:	71 05       	cpc	r23, r1
    10e6:	c4 f7       	brge	.-16     	; 0x10d8 <_ZN9MyArduboy14drawFastVLine2Eiiah.constprop.34+0x2a>
    10e8:	a0 38       	cpi	r26, 0x80	; 128
    10ea:	b1 05       	cpc	r27, r1
    10ec:	a9 f3       	breq	.-22     	; 0x10d8 <_ZN9MyArduboy14drawFastVLine2Eiiah.constprop.34+0x2a>
    10ee:	26 2f       	mov	r18, r22
    if (y + h > HEIGHT) h = HEIGHT - y;
    10f0:	cb 01       	movw	r24, r22
    10f2:	84 0f       	add	r24, r20
    10f4:	91 1d       	adc	r25, r1
    10f6:	47 fd       	sbrc	r20, 7
    10f8:	9a 95       	dec	r25
    10fa:	81 34       	cpi	r24, 0x41	; 65
    10fc:	91 05       	cpc	r25, r1
    10fe:	14 f0       	brlt	.+4      	; 0x1104 <_ZN9MyArduboy14drawFastVLine2Eiiah.constprop.34+0x56>
    1100:	40 e4       	ldi	r20, 0x40	; 64
    1102:	46 1b       	sub	r20, r22

    /*  Draw a vertical line  */
    uint8_t yOdd = y & 7;
    1104:	27 70       	andi	r18, 0x07	; 7
    uint8_t d = 0xFF << yOdd;
    1106:	9f ef       	ldi	r25, 0xFF	; 255
    1108:	02 2e       	mov	r0, r18
    110a:	01 c0       	rjmp	.+2      	; 0x110e <_ZN9MyArduboy14drawFastVLine2Eiiah.constprop.34+0x60>
    110c:	99 0f       	add	r25, r25
    110e:	0a 94       	dec	r0
    1110:	ea f7       	brpl	.-6      	; 0x110c <_ZN9MyArduboy14drawFastVLine2Eiiah.constprop.34+0x5e>
    y -= yOdd;
    h += yOdd;
    1112:	42 0f       	add	r20, r18
    for (buffer_t *p = getBuffer() + x + (y / 8) * WIDTH; h > 0; h -= 8, p += WIDTH) {
    1114:	62 1b       	sub	r22, r18
    1116:	71 09       	sbc	r23, r1
    1118:	77 ff       	sbrs	r23, 7
    111a:	02 c0       	rjmp	.+4      	; 0x1120 <_ZN9MyArduboy14drawFastVLine2Eiiah.constprop.34+0x72>
    111c:	69 5f       	subi	r22, 0xF9	; 249
    111e:	7f 4f       	sbci	r23, 0xFF	; 255
    1120:	83 e0       	ldi	r24, 0x03	; 3
    1122:	75 95       	asr	r23
    1124:	67 95       	ror	r22
    1126:	8a 95       	dec	r24
    1128:	e1 f7       	brne	.-8      	; 0x1122 <_ZN9MyArduboy14drawFastVLine2Eiiah.constprop.34+0x74>
    112a:	fb 01       	movw	r30, r22
    112c:	f6 95       	lsr	r31
    112e:	fe 2f       	mov	r31, r30
    1130:	ee 27       	eor	r30, r30
    1132:	f7 95       	ror	r31
    1134:	e7 95       	ror	r30
    1136:	ea 0f       	add	r30, r26
    1138:	fb 1f       	adc	r31, r27
    113a:	ee 57       	subi	r30, 0x7E	; 126
    113c:	fc 4f       	sbci	r31, 0xFC	; 252
        if (h < 8) d &= 0xFF >> (8 - h);
    113e:	28 e0       	ldi	r18, 0x08	; 8
    1140:	30 e0       	ldi	r19, 0x00	; 0
    1142:	6f ef       	ldi	r22, 0xFF	; 255
    1144:	70 e0       	ldi	r23, 0x00	; 0
    /*  Draw a vertical line  */
    uint8_t yOdd = y & 7;
    uint8_t d = 0xFF << yOdd;
    y -= yOdd;
    h += yOdd;
    for (buffer_t *p = getBuffer() + x + (y / 8) * WIDTH; h > 0; h -= 8, p += WIDTH) {
    1146:	14 16       	cp	r1, r20
    1148:	3c f6       	brge	.-114    	; 0x10d8 <_ZN9MyArduboy14drawFastVLine2Eiiah.constprop.34+0x2a>
        if (h < 8) d &= 0xFF >> (8 - h);
    114a:	48 30       	cpi	r20, 0x08	; 8
    114c:	64 f4       	brge	.+24     	; 0x1166 <_ZN9MyArduboy14drawFastVLine2Eiiah.constprop.34+0xb8>
    114e:	d9 01       	movw	r26, r18
    1150:	a4 1b       	sub	r26, r20
    1152:	b1 09       	sbc	r27, r1
    1154:	47 fd       	sbrc	r20, 7
    1156:	b3 95       	inc	r27
    1158:	eb 01       	movw	r28, r22
    115a:	02 c0       	rjmp	.+4      	; 0x1160 <_ZN9MyArduboy14drawFastVLine2Eiiah.constprop.34+0xb2>
    115c:	d5 95       	asr	r29
    115e:	c7 95       	ror	r28
    1160:	aa 95       	dec	r26
    1162:	e2 f7       	brpl	.-8      	; 0x115c <_ZN9MyArduboy14drawFastVLine2Eiiah.constprop.34+0xae>
    1164:	9c 23       	and	r25, r28
        if (color == BLACK) {
            *p &= ~d;
        } else {
            *p |= d;
    1166:	80 81       	ld	r24, Z
    1168:	98 2b       	or	r25, r24
    116a:	90 83       	st	Z, r25
    116c:	48 50       	subi	r20, 0x08	; 8
    /*  Draw a vertical line  */
    uint8_t yOdd = y & 7;
    uint8_t d = 0xFF << yOdd;
    y -= yOdd;
    h += yOdd;
    for (buffer_t *p = getBuffer() + x + (y / 8) * WIDTH; h > 0; h -= 8, p += WIDTH) {
    116e:	e0 58       	subi	r30, 0x80	; 128
    1170:	ff 4f       	sbci	r31, 0xFF	; 255
        if (color == BLACK) {
            *p &= ~d;
        } else {
            *p |= d;
        }
        d = 0xFF;
    1172:	9f ef       	ldi	r25, 0xFF	; 255
    1174:	e8 cf       	rjmp	.-48     	; 0x1146 <_ZN9MyArduboy14drawFastVLine2Eiiah.constprop.34+0x98>

00001176 <_ZN9MyArduboy9fillRect2Eiihah.constprop.30>:
    } else {
        fillBeltWhite(p, d, w);
    }
}

void MyArduboy::fillRect2(int16_t x, int16_t y, uint8_t w, int8_t h, uint8_t color)
    1176:	0f 93       	push	r16
    1178:	cf 93       	push	r28
    117a:	df 93       	push	r29
    if (x < 0) {
        if (w <= -x) return;
        w += x;
        x = 0;
    }
    if (y < 0) {
    117c:	77 ff       	sbrs	r23, 7
    117e:	14 c0       	rjmp	.+40     	; 0x11a8 <_ZN9MyArduboy9fillRect2Eiihah.constprop.30+0x32>
        if (h <= -y) return;
    1180:	aa 27       	eor	r26, r26
    1182:	bb 27       	eor	r27, r27
    1184:	a6 1b       	sub	r26, r22
    1186:	b7 0b       	sbc	r27, r23
    1188:	e2 2f       	mov	r30, r18
    118a:	02 2e       	mov	r0, r18
    118c:	00 0c       	add	r0, r0
    118e:	ff 0b       	sbc	r31, r31
    1190:	ae 17       	cp	r26, r30
    1192:	bf 07       	cpc	r27, r31
    1194:	2c f4       	brge	.+10     	; 0x11a0 <_ZN9MyArduboy9fillRect2Eiihah.constprop.30+0x2a>
        h += y;
    1196:	26 0f       	add	r18, r22
        y = 0;
    1198:	70 e0       	ldi	r23, 0x00	; 0
    119a:	60 e0       	ldi	r22, 0x00	; 0
    }
    if (w <= 0 || x >= WIDTH || h <= 0 || y >= HEIGHT) return;
    119c:	12 16       	cp	r1, r18
    119e:	3c f0       	brlt	.+14     	; 0x11ae <_ZN9MyArduboy9fillRect2Eiihah.constprop.30+0x38>
        } else {
            fillBeltWhite(p, d, w);
        }
        d = 0xFF;
    }
}
    11a0:	df 91       	pop	r29
    11a2:	cf 91       	pop	r28
    11a4:	0f 91       	pop	r16
    11a6:	08 95       	ret
    if (y < 0) {
        if (h <= -y) return;
        h += y;
        y = 0;
    }
    if (w <= 0 || x >= WIDTH || h <= 0 || y >= HEIGHT) return;
    11a8:	60 34       	cpi	r22, 0x40	; 64
    11aa:	71 05       	cpc	r23, r1
    11ac:	cc f7       	brge	.-14     	; 0x11a0 <_ZN9MyArduboy9fillRect2Eiihah.constprop.30+0x2a>
    if (x + w > WIDTH) w = WIDTH - x;
    11ae:	fc 01       	movw	r30, r24
    11b0:	e4 0f       	add	r30, r20
    11b2:	f1 1d       	adc	r31, r1
    11b4:	e1 38       	cpi	r30, 0x81	; 129
    11b6:	f1 05       	cpc	r31, r1
    11b8:	14 f0       	brlt	.+4      	; 0x11be <_ZN9MyArduboy9fillRect2Eiihah.constprop.30+0x48>
    11ba:	40 e8       	ldi	r20, 0x80	; 128
    11bc:	48 1b       	sub	r20, r24
    11be:	56 2f       	mov	r21, r22
    if (y + h > HEIGHT) h = HEIGHT - y;
    11c0:	fb 01       	movw	r30, r22
    11c2:	e2 0f       	add	r30, r18
    11c4:	f1 1d       	adc	r31, r1
    11c6:	27 fd       	sbrc	r18, 7
    11c8:	fa 95       	dec	r31
    11ca:	e1 34       	cpi	r30, 0x41	; 65
    11cc:	f1 05       	cpc	r31, r1
    11ce:	14 f0       	brlt	.+4      	; 0x11d4 <_ZN9MyArduboy9fillRect2Eiihah.constprop.30+0x5e>
    11d0:	20 e4       	ldi	r18, 0x40	; 64
    11d2:	26 1b       	sub	r18, r22

    /*  Draw a filled rectangle  */
    uint8_t yOdd = y & 7;
    11d4:	57 70       	andi	r21, 0x07	; 7
    uint8_t d = 0xFF << yOdd;
    11d6:	3f ef       	ldi	r19, 0xFF	; 255
    11d8:	05 2e       	mov	r0, r21
    11da:	01 c0       	rjmp	.+2      	; 0x11de <_ZN9MyArduboy9fillRect2Eiihah.constprop.30+0x68>
    11dc:	33 0f       	add	r19, r19
    11de:	0a 94       	dec	r0
    11e0:	ea f7       	brpl	.-6      	; 0x11dc <_ZN9MyArduboy9fillRect2Eiihah.constprop.30+0x66>
    y -= yOdd;
    h += yOdd;
    11e2:	25 0f       	add	r18, r21
    for (buffer_t *p = getBuffer() + x + (y / 8) * WIDTH; h > 0; h -= 8, p += WIDTH) {
    11e4:	65 1b       	sub	r22, r21
    11e6:	71 09       	sbc	r23, r1
    11e8:	77 ff       	sbrs	r23, 7
    11ea:	02 c0       	rjmp	.+4      	; 0x11f0 <_ZN9MyArduboy9fillRect2Eiihah.constprop.30+0x7a>
    11ec:	69 5f       	subi	r22, 0xF9	; 249
    11ee:	7f 4f       	sbci	r23, 0xFF	; 255
    11f0:	53 e0       	ldi	r21, 0x03	; 3
    11f2:	75 95       	asr	r23
    11f4:	67 95       	ror	r22
    11f6:	5a 95       	dec	r21
    11f8:	e1 f7       	brne	.-8      	; 0x11f2 <_ZN9MyArduboy9fillRect2Eiihah.constprop.30+0x7c>
    11fa:	76 95       	lsr	r23
    11fc:	76 2f       	mov	r23, r22
    11fe:	66 27       	eor	r22, r22
    1200:	77 95       	ror	r23
    1202:	67 95       	ror	r22
    1204:	86 0f       	add	r24, r22
    1206:	97 1f       	adc	r25, r23
    1208:	8e 57       	subi	r24, 0x7E	; 126
    120a:	9c 4f       	sbci	r25, 0xFC	; 252
        if (h < 8) d &= 0xFF >> (8 - h);
    120c:	a8 e0       	ldi	r26, 0x08	; 8
    120e:	b0 e0       	ldi	r27, 0x00	; 0
    1210:	cf ef       	ldi	r28, 0xFF	; 255
    1212:	d0 e0       	ldi	r29, 0x00	; 0
    /*  Draw a filled rectangle  */
    uint8_t yOdd = y & 7;
    uint8_t d = 0xFF << yOdd;
    y -= yOdd;
    h += yOdd;
    for (buffer_t *p = getBuffer() + x + (y / 8) * WIDTH; h > 0; h -= 8, p += WIDTH) {
    1214:	12 16       	cp	r1, r18
    1216:	24 f6       	brge	.-120    	; 0x11a0 <_ZN9MyArduboy9fillRect2Eiihah.constprop.30+0x2a>
        if (h < 8) d &= 0xFF >> (8 - h);
    1218:	28 30       	cpi	r18, 0x08	; 8
    121a:	64 f4       	brge	.+24     	; 0x1234 <_ZN9MyArduboy9fillRect2Eiihah.constprop.30+0xbe>
    121c:	bd 01       	movw	r22, r26
    121e:	62 1b       	sub	r22, r18
    1220:	71 09       	sbc	r23, r1
    1222:	27 fd       	sbrc	r18, 7
    1224:	73 95       	inc	r23
    1226:	fe 01       	movw	r30, r28
    1228:	02 c0       	rjmp	.+4      	; 0x122e <_ZN9MyArduboy9fillRect2Eiihah.constprop.30+0xb8>
    122a:	f5 95       	asr	r31
    122c:	e7 95       	ror	r30
    122e:	6a 95       	dec	r22
    1230:	e2 f7       	brpl	.-8      	; 0x122a <_ZN9MyArduboy9fillRect2Eiihah.constprop.30+0xb4>
    1232:	3e 23       	and	r19, r30
        if (color == BLACK) {
    1234:	01 11       	cpse	r16, r1
    1236:	0d c0       	rjmp	.+26     	; 0x1252 <_ZN9MyArduboy9fillRect2Eiihah.constprop.30+0xdc>
    }
}

void MyArduboy::fillBeltBlack(buffer_t *p, uint8_t d, uint8_t w)
{
    d = ~d;
    1238:	30 95       	com	r19
    123a:	fc 01       	movw	r30, r24
    123c:	54 2f       	mov	r21, r20
    for (; w > 0; w--) {
        *p++ &= d;
    123e:	60 81       	ld	r22, Z
    1240:	63 23       	and	r22, r19
    1242:	61 93       	st	Z+, r22
}

void MyArduboy::fillBeltBlack(buffer_t *p, uint8_t d, uint8_t w)
{
    d = ~d;
    for (; w > 0; w--) {
    1244:	51 50       	subi	r21, 0x01	; 1
    1246:	d9 f7       	brne	.-10     	; 0x123e <_ZN9MyArduboy9fillRect2Eiihah.constprop.30+0xc8>
    1248:	28 50       	subi	r18, 0x08	; 8
    /*  Draw a filled rectangle  */
    uint8_t yOdd = y & 7;
    uint8_t d = 0xFF << yOdd;
    y -= yOdd;
    h += yOdd;
    for (buffer_t *p = getBuffer() + x + (y / 8) * WIDTH; h > 0; h -= 8, p += WIDTH) {
    124a:	80 58       	subi	r24, 0x80	; 128
    124c:	9f 4f       	sbci	r25, 0xFF	; 255
        if (color == BLACK) {
            fillBeltBlack(p, d, w);
        } else {
            fillBeltWhite(p, d, w);
        }
        d = 0xFF;
    124e:	3f ef       	ldi	r19, 0xFF	; 255
    1250:	e1 cf       	rjmp	.-62     	; 0x1214 <_ZN9MyArduboy9fillRect2Eiihah.constprop.30+0x9e>
    1252:	fc 01       	movw	r30, r24
    uint8_t d = 0xFF << yOdd;
    y -= yOdd;
    h += yOdd;
    for (buffer_t *p = getBuffer() + x + (y / 8) * WIDTH; h > 0; h -= 8, p += WIDTH) {
        if (h < 8) d &= 0xFF >> (8 - h);
        if (color == BLACK) {
    1254:	54 2f       	mov	r21, r20
}

void MyArduboy::fillBeltWhite(buffer_t *p, uint8_t d, uint8_t w)
{
    for (; w > 0; w--) {
        *p++ |= d;
    1256:	60 81       	ld	r22, Z
    1258:	63 2b       	or	r22, r19
    125a:	61 93       	st	Z+, r22
    }
}

void MyArduboy::fillBeltWhite(buffer_t *p, uint8_t d, uint8_t w)
{
    for (; w > 0; w--) {
    125c:	51 50       	subi	r21, 0x01	; 1
    125e:	d9 f7       	brne	.-10     	; 0x1256 <_ZN9MyArduboy9fillRect2Eiihah.constprop.30+0xe0>
    1260:	f3 cf       	rjmp	.-26     	; 0x1248 <_ZN9MyArduboy9fillRect2Eiihah.constprop.30+0xd2>

00001262 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28>:

    drawFastHLine(a, y, b-a+1, color);
  }
}

void Arduboy::drawBitmap
    1262:	2f 92       	push	r2
    1264:	3f 92       	push	r3
    1266:	4f 92       	push	r4
    1268:	5f 92       	push	r5
    126a:	6f 92       	push	r6
    126c:	7f 92       	push	r7
    126e:	8f 92       	push	r8
    1270:	9f 92       	push	r9
    1272:	af 92       	push	r10
    1274:	bf 92       	push	r11
    1276:	cf 92       	push	r12
    1278:	df 92       	push	r13
    127a:	ef 92       	push	r14
    127c:	ff 92       	push	r15
    127e:	0f 93       	push	r16
    1280:	1f 93       	push	r17
    1282:	cf 93       	push	r28
    1284:	df 93       	push	r29
    1286:	00 d0       	rcall	.+0      	; 0x1288 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x26>
    1288:	00 d0       	rcall	.+0      	; 0x128a <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x28>
    128a:	cd b7       	in	r28, 0x3d	; 61
    128c:	de b7       	in	r29, 0x3e	; 62
(int16_t x, int16_t y, const uint8_t *bitmap, uint8_t w, uint8_t h, 
 uint8_t color)
{
  // no need to dar at all of we're offscreen
  if (x+w < 0 || x > WIDTH-1 || y+h < 0 || y > HEIGHT-1)
    128e:	82 2e       	mov	r8, r18
    1290:	91 2c       	mov	r9, r1
    1292:	94 01       	movw	r18, r8
    1294:	28 0f       	add	r18, r24
    1296:	39 1f       	adc	r19, r25
    1298:	37 fd       	sbrc	r19, 7
    129a:	b0 c0       	rjmp	.+352    	; 0x13fc <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x19a>
    129c:	80 38       	cpi	r24, 0x80	; 128
    129e:	91 05       	cpc	r25, r1
    12a0:	0c f0       	brlt	.+2      	; 0x12a4 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x42>
    12a2:	ac c0       	rjmp	.+344    	; 0x13fc <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x19a>
    12a4:	9b 01       	movw	r18, r22
    12a6:	20 0f       	add	r18, r16
    12a8:	31 1d       	adc	r19, r1
    12aa:	37 fd       	sbrc	r19, 7
    12ac:	a7 c0       	rjmp	.+334    	; 0x13fc <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x19a>
    12ae:	60 34       	cpi	r22, 0x40	; 64
    12b0:	71 05       	cpc	r23, r1
    12b2:	0c f0       	brlt	.+2      	; 0x12b6 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x54>
    12b4:	a3 c0       	rjmp	.+326    	; 0x13fc <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x19a>
    return;

  int yOffset = abs(y) % 8;
    12b6:	db 01       	movw	r26, r22
    12b8:	77 ff       	sbrs	r23, 7
    12ba:	04 c0       	rjmp	.+8      	; 0x12c4 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x62>
    12bc:	aa 27       	eor	r26, r26
    12be:	bb 27       	eor	r27, r27
    12c0:	a6 1b       	sub	r26, r22
    12c2:	b7 0b       	sbc	r27, r23
    12c4:	a7 70       	andi	r26, 0x07	; 7
    12c6:	bb 27       	eor	r27, r27
  int sRow = y / 8;
    12c8:	9b 01       	movw	r18, r22
    12ca:	77 ff       	sbrs	r23, 7
    12cc:	02 c0       	rjmp	.+4      	; 0x12d2 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x70>
    12ce:	29 5f       	subi	r18, 0xF9	; 249
    12d0:	3f 4f       	sbci	r19, 0xFF	; 255
    12d2:	f3 e0       	ldi	r31, 0x03	; 3
    12d4:	35 95       	asr	r19
    12d6:	27 95       	ror	r18
    12d8:	fa 95       	dec	r31
    12da:	e1 f7       	brne	.-8      	; 0x12d4 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x72>
  if (y < 0) {
    12dc:	77 ff       	sbrs	r23, 7
    12de:	08 c0       	rjmp	.+16     	; 0x12f0 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x8e>
    sRow--;
    12e0:	21 50       	subi	r18, 0x01	; 1
    12e2:	31 09       	sbc	r19, r1
    yOffset = 8 - yOffset;
    12e4:	68 e0       	ldi	r22, 0x08	; 8
    12e6:	70 e0       	ldi	r23, 0x00	; 0
    12e8:	fb 01       	movw	r30, r22
    12ea:	ea 1b       	sub	r30, r26
    12ec:	fb 0b       	sbc	r31, r27
    12ee:	df 01       	movw	r26, r30
  }
  int rows = h/8;
    12f0:	20 2e       	mov	r2, r16
    12f2:	26 94       	lsr	r2
    12f4:	26 94       	lsr	r2
    12f6:	26 94       	lsr	r2
    12f8:	31 2c       	mov	r3, r1
  if (h%8!=0) rows++;
    12fa:	07 70       	andi	r16, 0x07	; 7
    12fc:	19 f0       	breq	.+6      	; 0x1304 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0xa2>
    12fe:	ff ef       	ldi	r31, 0xFF	; 255
    1300:	2f 1a       	sub	r2, r31
    1302:	3f 0a       	sbc	r3, r31
    1304:	b9 01       	movw	r22, r18
    1306:	76 95       	lsr	r23
    1308:	76 2f       	mov	r23, r22
    130a:	66 27       	eor	r22, r22
    130c:	77 95       	ror	r23
    130e:	67 95       	ror	r22
    1310:	68 0f       	add	r22, r24
    1312:	79 1f       	adc	r23, r25
    1314:	62 59       	subi	r22, 0x92	; 146
    1316:	7c 4f       	sbci	r23, 0xFC	; 252
    1318:	8a 01       	movw	r16, r20
    131a:	22 0e       	add	r2, r18
    131c:	33 1e       	adc	r3, r19
    131e:	48 e0       	ldi	r20, 0x08	; 8
    1320:	50 e0       	ldi	r21, 0x00	; 0
    1322:	3a 01       	movw	r6, r20
    1324:	6a 1a       	sub	r6, r26
    1326:	7b 0a       	sbc	r7, r27
  for (int a = 0; a < rows; a++) {
    int bRow = sRow + a;
    if (bRow > (HEIGHT/8)-1) break;
    if (bRow > -2) {
    1328:	2f 3f       	cpi	r18, 0xFF	; 255
    132a:	4f ef       	ldi	r20, 0xFF	; 255
    132c:	34 07       	cpc	r19, r20
    132e:	0c f4       	brge	.+2      	; 0x1332 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0xd0>
    1330:	58 c0       	rjmp	.+176    	; 0x13e2 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x180>
    1332:	7c 83       	std	Y+4, r23	; 0x04
    1334:	6b 83       	std	Y+3, r22	; 0x03
    1336:	6c 01       	movw	r12, r24
      for (int iCol = 0; iCol<w; iCol++) {
    1338:	50 e0       	ldi	r21, 0x00	; 0
    133a:	40 e0       	ldi	r20, 0x00	; 0
    133c:	2b 01       	movw	r4, r22
    133e:	f0 e8       	ldi	r31, 0x80	; 128
    1340:	4f 0e       	add	r4, r31
    1342:	51 1c       	adc	r5, r1
        if (iCol + x > (WIDTH-1)) break;
        if (iCol + x >= 0) {
    1344:	d7 fc       	sbrc	r13, 7
    1346:	3b c0       	rjmp	.+118    	; 0x13be <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x15c>
          if (bRow >= 0) {
    1348:	2f 3f       	cpi	r18, 0xFF	; 255
    134a:	32 07       	cpc	r19, r18
    134c:	09 f4       	brne	.+2      	; 0x1350 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0xee>
    134e:	a6 c0       	rjmp	.+332    	; 0x149c <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x23a>
    1350:	5a 01       	movw	r10, r20
    1352:	a0 0e       	add	r10, r16
    1354:	b1 1e       	adc	r11, r17
    1356:	eb 81       	ldd	r30, Y+3	; 0x03
    1358:	fc 81       	ldd	r31, Y+4	; 0x04
    135a:	f4 88       	ldd	r15, Z+20	; 0x14
            if      (color == WHITE) this->sBuffer[ (bRow*WIDTH) + x + iCol ] |= pgm_read_byte(bitmap+(a*w)+iCol) << yOffset;
    135c:	f1 e0       	ldi	r31, 0x01	; 1
    135e:	ef 12       	cpse	r14, r31
    1360:	64 c0       	rjmp	.+200    	; 0x142a <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x1c8>
    1362:	f5 01       	movw	r30, r10
    1364:	a4 90       	lpm	r10, Z
    1366:	ea 2d       	mov	r30, r10
    1368:	0a 2e       	mov	r0, r26
    136a:	01 c0       	rjmp	.+2      	; 0x136e <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x10c>
    136c:	ee 0f       	add	r30, r30
    136e:	0a 94       	dec	r0
    1370:	ea f7       	brpl	.-6      	; 0x136c <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x10a>
    1372:	fe 2a       	or	r15, r30
            else if (color == BLACK) this->sBuffer[ (bRow*WIDTH) + x + iCol ] &= ~(pgm_read_byte(bitmap+(a*w)+iCol) << yOffset);
            else                     this->sBuffer[ (bRow*WIDTH) + x + iCol ] ^= pgm_read_byte(bitmap+(a*w)+iCol) << yOffset;
    1374:	eb 81       	ldd	r30, Y+3	; 0x03
    1376:	fc 81       	ldd	r31, Y+4	; 0x04
    1378:	f4 8a       	std	Z+20, r15	; 0x14
          }
          if (yOffset && bRow<(HEIGHT/8)-1 && bRow > -2) {
    137a:	10 97       	sbiw	r26, 0x00	; 0
    137c:	01 f1       	breq	.+64     	; 0x13be <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x15c>
    137e:	27 30       	cpi	r18, 0x07	; 7
    1380:	31 05       	cpc	r19, r1
    1382:	e9 f0       	breq	.+58     	; 0x13be <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x15c>
    1384:	fa 01       	movw	r30, r20
    1386:	e0 0f       	add	r30, r16
    1388:	f1 1f       	adc	r31, r17
    138a:	fa 83       	std	Y+2, r31	; 0x02
    138c:	e9 83       	std	Y+1, r30	; 0x01
    138e:	52 01       	movw	r10, r4
    1390:	a4 0e       	add	r10, r20
    1392:	b5 1e       	adc	r11, r21
    1394:	f5 01       	movw	r30, r10
    1396:	f4 88       	ldd	r15, Z+20	; 0x14
            if      (color == WHITE) this->sBuffer[ ((bRow+1)*WIDTH) + x + iCol ] |= pgm_read_byte(bitmap+(a*w)+iCol) >> (8-yOffset);
    1398:	f1 e0       	ldi	r31, 0x01	; 1
    139a:	ef 12       	cpse	r14, r31
    139c:	5f c0       	rjmp	.+190    	; 0x145c <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x1fa>
    139e:	e9 81       	ldd	r30, Y+1	; 0x01
    13a0:	fa 81       	ldd	r31, Y+2	; 0x02
    13a2:	f4 91       	lpm	r31, Z
    13a4:	ef 2f       	mov	r30, r31
    13a6:	f0 e0       	ldi	r31, 0x00	; 0
    13a8:	fa 83       	std	Y+2, r31	; 0x02
    13aa:	e9 83       	std	Y+1, r30	; 0x01
    13ac:	06 2c       	mov	r0, r6
    13ae:	02 c0       	rjmp	.+4      	; 0x13b4 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x152>
    13b0:	f5 95       	asr	r31
    13b2:	e7 95       	ror	r30
    13b4:	0a 94       	dec	r0
    13b6:	e2 f7       	brpl	.-8      	; 0x13b0 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x14e>
    13b8:	fe 2a       	or	r15, r30
            else if (color == BLACK) this->sBuffer[ ((bRow+1)*WIDTH) + x + iCol ] &= ~(pgm_read_byte(bitmap+(a*w)+iCol) >> (8-yOffset));
            else                     this->sBuffer[ ((bRow+1)*WIDTH) + x + iCol ] ^= pgm_read_byte(bitmap+(a*w)+iCol) >> (8-yOffset);
    13ba:	f5 01       	movw	r30, r10
    13bc:	f4 8a       	std	Z+20, r15	; 0x14
  if (h%8!=0) rows++;
  for (int a = 0; a < rows; a++) {
    int bRow = sRow + a;
    if (bRow > (HEIGHT/8)-1) break;
    if (bRow > -2) {
      for (int iCol = 0; iCol<w; iCol++) {
    13be:	4f 5f       	subi	r20, 0xFF	; 255
    13c0:	5f 4f       	sbci	r21, 0xFF	; 255
    13c2:	ff ef       	ldi	r31, 0xFF	; 255
    13c4:	cf 1a       	sub	r12, r31
    13c6:	df 0a       	sbc	r13, r31
    13c8:	eb 81       	ldd	r30, Y+3	; 0x03
    13ca:	fc 81       	ldd	r31, Y+4	; 0x04
    13cc:	31 96       	adiw	r30, 0x01	; 1
    13ce:	fc 83       	std	Y+4, r31	; 0x04
    13d0:	eb 83       	std	Y+3, r30	; 0x03
    13d2:	48 15       	cp	r20, r8
    13d4:	59 05       	cpc	r21, r9
    13d6:	2c f4       	brge	.+10     	; 0x13e2 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x180>
        if (iCol + x > (WIDTH-1)) break;
    13d8:	e0 e8       	ldi	r30, 0x80	; 128
    13da:	ce 16       	cp	r12, r30
    13dc:	d1 04       	cpc	r13, r1
    13de:	09 f0       	breq	.+2      	; 0x13e2 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x180>
    13e0:	b1 cf       	rjmp	.-158    	; 0x1344 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0xe2>
    13e2:	2f 5f       	subi	r18, 0xFF	; 255
    13e4:	3f 4f       	sbci	r19, 0xFF	; 255
    13e6:	60 58       	subi	r22, 0x80	; 128
    13e8:	7f 4f       	sbci	r23, 0xFF	; 255
    13ea:	08 0d       	add	r16, r8
    13ec:	19 1d       	adc	r17, r9
    sRow--;
    yOffset = 8 - yOffset;
  }
  int rows = h/8;
  if (h%8!=0) rows++;
  for (int a = 0; a < rows; a++) {
    13ee:	22 15       	cp	r18, r2
    13f0:	33 05       	cpc	r19, r3
    13f2:	21 f0       	breq	.+8      	; 0x13fc <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x19a>
    int bRow = sRow + a;
    if (bRow > (HEIGHT/8)-1) break;
    13f4:	28 30       	cpi	r18, 0x08	; 8
    13f6:	31 05       	cpc	r19, r1
    13f8:	09 f0       	breq	.+2      	; 0x13fc <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x19a>
    13fa:	96 cf       	rjmp	.-212    	; 0x1328 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0xc6>
          }
        }
      }
    }
  }
}
    13fc:	0f 90       	pop	r0
    13fe:	0f 90       	pop	r0
    1400:	0f 90       	pop	r0
    1402:	0f 90       	pop	r0
    1404:	df 91       	pop	r29
    1406:	cf 91       	pop	r28
    1408:	1f 91       	pop	r17
    140a:	0f 91       	pop	r16
    140c:	ff 90       	pop	r15
    140e:	ef 90       	pop	r14
    1410:	df 90       	pop	r13
    1412:	cf 90       	pop	r12
    1414:	bf 90       	pop	r11
    1416:	af 90       	pop	r10
    1418:	9f 90       	pop	r9
    141a:	8f 90       	pop	r8
    141c:	7f 90       	pop	r7
    141e:	6f 90       	pop	r6
    1420:	5f 90       	pop	r5
    1422:	4f 90       	pop	r4
    1424:	3f 90       	pop	r3
    1426:	2f 90       	pop	r2
    1428:	08 95       	ret
      for (int iCol = 0; iCol<w; iCol++) {
        if (iCol + x > (WIDTH-1)) break;
        if (iCol + x >= 0) {
          if (bRow >= 0) {
            if      (color == WHITE) this->sBuffer[ (bRow*WIDTH) + x + iCol ] |= pgm_read_byte(bitmap+(a*w)+iCol) << yOffset;
            else if (color == BLACK) this->sBuffer[ (bRow*WIDTH) + x + iCol ] &= ~(pgm_read_byte(bitmap+(a*w)+iCol) << yOffset);
    142a:	f5 01       	movw	r30, r10
    142c:	e1 10       	cpse	r14, r1
    142e:	0d c0       	rjmp	.+26     	; 0x144a <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x1e8>
    1430:	a4 90       	lpm	r10, Z
    1432:	ea 2d       	mov	r30, r10
    1434:	f0 e0       	ldi	r31, 0x00	; 0
    1436:	0a 2e       	mov	r0, r26
    1438:	02 c0       	rjmp	.+4      	; 0x143e <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x1dc>
    143a:	ee 0f       	add	r30, r30
    143c:	ff 1f       	adc	r31, r31
    143e:	0a 94       	dec	r0
    1440:	e2 f7       	brpl	.-8      	; 0x143a <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x1d8>
    1442:	e0 95       	com	r30
    1444:	f0 95       	com	r31
    1446:	fe 22       	and	r15, r30
    1448:	95 cf       	rjmp	.-214    	; 0x1374 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x112>
            else                     this->sBuffer[ (bRow*WIDTH) + x + iCol ] ^= pgm_read_byte(bitmap+(a*w)+iCol) << yOffset;
    144a:	a4 90       	lpm	r10, Z
    144c:	ea 2d       	mov	r30, r10
    144e:	0a 2e       	mov	r0, r26
    1450:	01 c0       	rjmp	.+2      	; 0x1454 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x1f2>
    1452:	ee 0f       	add	r30, r30
    1454:	0a 94       	dec	r0
    1456:	ea f7       	brpl	.-6      	; 0x1452 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x1f0>
    1458:	fe 26       	eor	r15, r30
    145a:	8c cf       	rjmp	.-232    	; 0x1374 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x112>
          }
          if (yOffset && bRow<(HEIGHT/8)-1 && bRow > -2) {
            if      (color == WHITE) this->sBuffer[ ((bRow+1)*WIDTH) + x + iCol ] |= pgm_read_byte(bitmap+(a*w)+iCol) >> (8-yOffset);
            else if (color == BLACK) this->sBuffer[ ((bRow+1)*WIDTH) + x + iCol ] &= ~(pgm_read_byte(bitmap+(a*w)+iCol) >> (8-yOffset));
    145c:	e9 81       	ldd	r30, Y+1	; 0x01
    145e:	fa 81       	ldd	r31, Y+2	; 0x02
    1460:	e1 10       	cpse	r14, r1
    1462:	0f c0       	rjmp	.+30     	; 0x1482 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x220>
    1464:	f4 91       	lpm	r31, Z
    1466:	ef 2f       	mov	r30, r31
    1468:	f0 e0       	ldi	r31, 0x00	; 0
    146a:	fa 83       	std	Y+2, r31	; 0x02
    146c:	e9 83       	std	Y+1, r30	; 0x01
    146e:	06 2c       	mov	r0, r6
    1470:	02 c0       	rjmp	.+4      	; 0x1476 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x214>
    1472:	f5 95       	asr	r31
    1474:	e7 95       	ror	r30
    1476:	0a 94       	dec	r0
    1478:	e2 f7       	brpl	.-8      	; 0x1472 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x210>
    147a:	e0 95       	com	r30
    147c:	f0 95       	com	r31
    147e:	fe 22       	and	r15, r30
    1480:	9c cf       	rjmp	.-200    	; 0x13ba <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x158>
            else                     this->sBuffer[ ((bRow+1)*WIDTH) + x + iCol ] ^= pgm_read_byte(bitmap+(a*w)+iCol) >> (8-yOffset);
    1482:	f4 91       	lpm	r31, Z
    1484:	ef 2f       	mov	r30, r31
    1486:	f0 e0       	ldi	r31, 0x00	; 0
    1488:	fa 83       	std	Y+2, r31	; 0x02
    148a:	e9 83       	std	Y+1, r30	; 0x01
    148c:	06 2c       	mov	r0, r6
    148e:	02 c0       	rjmp	.+4      	; 0x1494 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x232>
    1490:	f5 95       	asr	r31
    1492:	e7 95       	ror	r30
    1494:	0a 94       	dec	r0
    1496:	e2 f7       	brpl	.-8      	; 0x1490 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x22e>
    1498:	fe 26       	eor	r15, r30
    149a:	8f cf       	rjmp	.-226    	; 0x13ba <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x158>
          if (bRow >= 0) {
            if      (color == WHITE) this->sBuffer[ (bRow*WIDTH) + x + iCol ] |= pgm_read_byte(bitmap+(a*w)+iCol) << yOffset;
            else if (color == BLACK) this->sBuffer[ (bRow*WIDTH) + x + iCol ] &= ~(pgm_read_byte(bitmap+(a*w)+iCol) << yOffset);
            else                     this->sBuffer[ (bRow*WIDTH) + x + iCol ] ^= pgm_read_byte(bitmap+(a*w)+iCol) << yOffset;
          }
          if (yOffset && bRow<(HEIGHT/8)-1 && bRow > -2) {
    149c:	10 97       	sbiw	r26, 0x00	; 0
    149e:	09 f0       	breq	.+2      	; 0x14a2 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x240>
    14a0:	71 cf       	rjmp	.-286    	; 0x1384 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x122>
    14a2:	8d cf       	rjmp	.-230    	; 0x13be <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28+0x15c>

000014a4 <_ZN7Arduboy10fillScreenEh.constprop.23>:
    // input: sBuffer, color
    // modified: Z (r30, r31), r27
    :
    : "r" (sBuffer), "r" (color)
    : "r30", "r31", "r27"
  );
    14a4:	82 e8       	ldi	r24, 0x82	; 130
    14a6:	93 e0       	ldi	r25, 0x03	; 3
    14a8:	20 e0       	ldi	r18, 0x00	; 0
    14aa:	b2 2f       	mov	r27, r18
    14ac:	b1 11       	cpse	r27, r1
    14ae:	bf ef       	ldi	r27, 0xFF	; 255
    14b0:	fc 01       	movw	r30, r24
    14b2:	00 24       	eor	r0, r0

000014b4 <loopto>:
    14b4:	b1 93       	st	Z+, r27
    14b6:	b1 93       	st	Z+, r27
    14b8:	b1 93       	st	Z+, r27
    14ba:	b1 93       	st	Z+, r27
    14bc:	03 94       	inc	r0
    14be:	d1 f7       	brne	.-12     	; 0x14b4 <loopto>
}
    14c0:	08 95       	ret

000014c2 <_Z8USB_RecvhPvi.constprop.5>:
	return FifoByteCount();
}

//	Non Blocking receive
//	Return number of bytes read
int USB_Recv(u8 ep, void* d, int len)
    14c2:	fc 01       	movw	r30, r24
{
	if (!_usbConfiguration || len < 0)
    14c4:	80 91 16 03 	lds	r24, 0x0316	; 0x800316 <_usbConfiguration>
    14c8:	88 23       	and	r24, r24
    14ca:	11 f1       	breq	.+68     	; 0x1510 <_Z8USB_RecvhPvi.constprop.5+0x4e>
#define USB_RECV_TIMEOUT
class LockEP
{
	u8 _sreg;
public:
	LockEP(u8 ep) : _sreg(SREG)
    14cc:	3f b7       	in	r19, 0x3f	; 63
	{
		cli();
    14ce:	f8 94       	cli
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    14d0:	82 e0       	ldi	r24, 0x02	; 2
    14d2:	80 93 e9 00 	sts	0x00E9, r24	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
}

static inline u8 FifoByteCount()
{
	return UEBCLX;
    14d6:	20 91 f2 00 	lds	r18, 0x00F2	; 0x8000f2 <__DATA_REGION_ORIGIN__+0x92>
	if (!_usbConfiguration || len < 0)
		return -1;
	
	LockEP lock(ep);
	u8 n = FifoByteCount();
	len = min(n,len);
    14da:	82 2f       	mov	r24, r18
    14dc:	90 e0       	ldi	r25, 0x00	; 0
    14de:	18 16       	cp	r1, r24
    14e0:	19 06       	cpc	r1, r25
    14e2:	14 f4       	brge	.+4      	; 0x14e8 <_Z8USB_RecvhPvi.constprop.5+0x26>
    14e4:	81 e0       	ldi	r24, 0x01	; 1
    14e6:	90 e0       	ldi	r25, 0x00	; 0
	n = len;
	u8* dst = (u8*)d;
	while (n--)
    14e8:	88 23       	and	r24, r24
    14ea:	39 f0       	breq	.+14     	; 0x14fa <_Z8USB_RecvhPvi.constprop.5+0x38>
	RxLEDPulse = TX_RX_LED_PULSE_MS;	
}

static inline u8 Recv8()
{
	RXLED1;					// light the RX LED
    14ec:	28 98       	cbi	0x05, 0	; 5
	RxLEDPulse = TX_RX_LED_PULSE_MS;
    14ee:	44 e6       	ldi	r20, 0x64	; 100
    14f0:	40 93 15 03 	sts	0x0315, r20	; 0x800315 <RxLEDPulse>

	return UEDATX;	
    14f4:	40 91 f1 00 	lds	r20, 0x00F1	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
	u8 n = FifoByteCount();
	len = min(n,len);
	n = len;
	u8* dst = (u8*)d;
	while (n--)
		*dst++ = Recv8();
    14f8:	40 83       	st	Z, r20
	if (len && !FifoByteCount())	// release empty buffer
    14fa:	22 23       	and	r18, r18
    14fc:	39 f0       	breq	.+14     	; 0x150c <_Z8USB_RecvhPvi.constprop.5+0x4a>
	UENUM = ep;
}

static inline u8 FifoByteCount()
{
	return UEBCLX;
    14fe:	20 91 f2 00 	lds	r18, 0x00F2	; 0x8000f2 <__DATA_REGION_ORIGIN__+0x92>
	len = min(n,len);
	n = len;
	u8* dst = (u8*)d;
	while (n--)
		*dst++ = Recv8();
	if (len && !FifoByteCount())	// release empty buffer
    1502:	21 11       	cpse	r18, r1
    1504:	03 c0       	rjmp	.+6      	; 0x150c <_Z8USB_RecvhPvi.constprop.5+0x4a>
	return UEINTX & (1<<FIFOCON);
}

static inline void ReleaseRX()
{
	UEINTX = 0x6B;	// FIFOCON=0 NAKINI=1 RWAL=1 NAKOUTI=0 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=1
    1506:	2b e6       	ldi	r18, 0x6B	; 107
    1508:	20 93 e8 00 	sts	0x00E8, r18	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
		cli();
		SetEP(ep & 7);
	}
	~LockEP()
	{
		SREG = _sreg;
    150c:	3f bf       	out	0x3f, r19	; 63
    150e:	08 95       	ret
//	Non Blocking receive
//	Return number of bytes read
int USB_Recv(u8 ep, void* d, int len)
{
	if (!_usbConfiguration || len < 0)
		return -1;
    1510:	8f ef       	ldi	r24, 0xFF	; 255
    1512:	9f ef       	ldi	r25, 0xFF	; 255
		*dst++ = Recv8();
	if (len && !FifoByteCount())	// release empty buffer
		ReleaseRX();
	
	return len;
}
    1514:	08 95       	ret

00001516 <_Z13USB_SendSpaceh.constprop.3>:
#define USB_RECV_TIMEOUT
class LockEP
{
	u8 _sreg;
public:
	LockEP(u8 ep) : _sreg(SREG)
    1516:	2f b7       	in	r18, 0x3f	; 63
	{
		cli();
    1518:	f8 94       	cli
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    151a:	83 e0       	ldi	r24, 0x03	; 3
    151c:	80 93 e9 00 	sts	0x00E9, r24	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
	UECONX = (1<<STALLRQ) | (1<<EPEN);
}

static inline u8 ReadWriteAllowed()
{
	return UEINTX & (1<<RWAL);
    1520:	90 91 e8 00 	lds	r25, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>

//	Space in send EP
u8 USB_SendSpace(u8 ep)
{
	LockEP lock(ep);
	if (!ReadWriteAllowed())
    1524:	89 2f       	mov	r24, r25
    1526:	80 72       	andi	r24, 0x20	; 32
    1528:	95 ff       	sbrs	r25, 5
    152a:	04 c0       	rjmp	.+8      	; 0x1534 <_Z13USB_SendSpaceh.constprop.3+0x1e>
	UENUM = ep;
}

static inline u8 FifoByteCount()
{
	return UEBCLX;
    152c:	90 91 f2 00 	lds	r25, 0x00F2	; 0x8000f2 <__DATA_REGION_ORIGIN__+0x92>
u8 USB_SendSpace(u8 ep)
{
	LockEP lock(ep);
	if (!ReadWriteAllowed())
		return 0;
	return USB_EP_SIZE - FifoByteCount();
    1530:	80 e4       	ldi	r24, 0x40	; 64
    1532:	89 1b       	sub	r24, r25
		cli();
		SetEP(ep & 7);
	}
	~LockEP()
	{
		SREG = _sreg;
    1534:	2f bf       	out	0x3f, r18	; 63
{
	LockEP lock(ep);
	if (!ReadWriteAllowed())
		return 0;
	return USB_EP_SIZE - FifoByteCount();
}
    1536:	08 95       	ret

00001538 <_Z12PluggableUSBv>:
	// restart USB layer???
}

PluggableUSB_& PluggableUSB()
{
	static PluggableUSB_ obj;
    1538:	80 91 0d 03 	lds	r24, 0x030D	; 0x80030d <_ZGVZ12PluggableUSBvE3obj>
    153c:	81 11       	cpse	r24, r1
    153e:	0d c0       	rjmp	.+26     	; 0x155a <_Z12PluggableUSBv+0x22>
	return obj;
}

PluggableUSB_::PluggableUSB_() : lastIf(CDC_ACM_INTERFACE + CDC_INTERFACE_COUNT),
                                 lastEp(CDC_FIRST_ENDPOINT + CDC_ENPOINT_COUNT),
                                 rootNode(NULL)
    1540:	82 e0       	ldi	r24, 0x02	; 2
    1542:	80 93 09 03 	sts	0x0309, r24	; 0x800309 <_ZZ12PluggableUSBvE3obj>
    1546:	84 e0       	ldi	r24, 0x04	; 4
    1548:	80 93 0a 03 	sts	0x030A, r24	; 0x80030a <_ZZ12PluggableUSBvE3obj+0x1>
    154c:	10 92 0c 03 	sts	0x030C, r1	; 0x80030c <_ZZ12PluggableUSBvE3obj+0x3>
    1550:	10 92 0b 03 	sts	0x030B, r1	; 0x80030b <_ZZ12PluggableUSBvE3obj+0x2>
	// restart USB layer???
}

PluggableUSB_& PluggableUSB()
{
	static PluggableUSB_ obj;
    1554:	81 e0       	ldi	r24, 0x01	; 1
    1556:	80 93 0d 03 	sts	0x030D, r24	; 0x80030d <_ZGVZ12PluggableUSBvE3obj>
	return obj;
}
    155a:	89 e0       	ldi	r24, 0x09	; 9
    155c:	93 e0       	ldi	r25, 0x03	; 3
    155e:	08 95       	ret

00001560 <_ZN7Serial_5writeEh>:
{
	USB_Flush(CDC_TX);
}

size_t Serial_::write(uint8_t c)
{
    1560:	cf 93       	push	r28
    1562:	df 93       	push	r29
    1564:	1f 92       	push	r1
    1566:	cd b7       	in	r28, 0x3d	; 61
    1568:	de b7       	in	r29, 0x3e	; 62
    156a:	69 83       	std	Y+1, r22	; 0x01
	return write(&c, 1);
    156c:	dc 01       	movw	r26, r24
    156e:	ed 91       	ld	r30, X+
    1570:	fc 91       	ld	r31, X
    1572:	02 80       	ldd	r0, Z+2	; 0x02
    1574:	f3 81       	ldd	r31, Z+3	; 0x03
    1576:	e0 2d       	mov	r30, r0
    1578:	41 e0       	ldi	r20, 0x01	; 1
    157a:	50 e0       	ldi	r21, 0x00	; 0
    157c:	be 01       	movw	r22, r28
    157e:	6f 5f       	subi	r22, 0xFF	; 255
    1580:	7f 4f       	sbci	r23, 0xFF	; 255
    1582:	09 95       	icall
}
    1584:	0f 90       	pop	r0
    1586:	df 91       	pop	r29
    1588:	cf 91       	pop	r28
    158a:	08 95       	ret

0000158c <_ZN7Serial_5flushEv>:
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    158c:	83 e0       	ldi	r24, 0x03	; 3
    158e:	80 93 e9 00 	sts	0x00E9, r24	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
}

static inline u8 FifoByteCount()
{
	return UEBCLX;
    1592:	80 91 f2 00 	lds	r24, 0x00F2	; 0x8000f2 <__DATA_REGION_ORIGIN__+0x92>
}

void USB_Flush(u8 ep)
{
	SetEP(ep);
	if (FifoByteCount())
    1596:	88 23       	and	r24, r24
    1598:	19 f0       	breq	.+6      	; 0x15a0 <_ZN7Serial_5flushEv+0x14>
	UEINTX = 0x6B;	// FIFOCON=0 NAKINI=1 RWAL=1 NAKOUTI=0 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=1
}

static inline void ReleaseTX()
{
	UEINTX = 0x3A;	// FIFOCON=0 NAKINI=0 RWAL=1 NAKOUTI=1 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=0
    159a:	8a e3       	ldi	r24, 0x3A	; 58
    159c:	80 93 e8 00 	sts	0x00E8, r24	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
}

void Serial_::flush(void)
{
	USB_Flush(CDC_TX);
}
    15a0:	08 95       	ret

000015a2 <_ZN7Serial_17availableForWriteEv>:
	return USB_Recv(CDC_RX);
}

int Serial_::availableForWrite(void)
{
	return USB_SendSpace(CDC_TX);
    15a2:	0e 94 8b 0a 	call	0x1516	; 0x1516 <_Z13USB_SendSpaceh.constprop.3>
}
    15a6:	90 e0       	ldi	r25, 0x00	; 0
    15a8:	08 95       	ret

000015aa <_ZN7Serial_4readEv>:
		peek_buffer = USB_Recv(CDC_RX);
	return peek_buffer;
}

int Serial_::read(void)
{
    15aa:	cf 93       	push	r28
    15ac:	df 93       	push	r29
    15ae:	1f 92       	push	r1
    15b0:	cd b7       	in	r28, 0x3d	; 61
    15b2:	de b7       	in	r29, 0x3e	; 62
    15b4:	fc 01       	movw	r30, r24
	if (peek_buffer >= 0) {
    15b6:	84 85       	ldd	r24, Z+12	; 0x0c
    15b8:	95 85       	ldd	r25, Z+13	; 0x0d
    15ba:	97 fd       	sbrc	r25, 7
    15bc:	08 c0       	rjmp	.+16     	; 0x15ce <_ZN7Serial_4readEv+0x24>
		int c = peek_buffer;
		peek_buffer = -1;
    15be:	2f ef       	ldi	r18, 0xFF	; 255
    15c0:	3f ef       	ldi	r19, 0xFF	; 255
    15c2:	35 87       	std	Z+13, r19	; 0x0d
    15c4:	24 87       	std	Z+12, r18	; 0x0c
		return c;
	}
	return USB_Recv(CDC_RX);
}
    15c6:	0f 90       	pop	r0
    15c8:	df 91       	pop	r29
    15ca:	cf 91       	pop	r28
    15cc:	08 95       	ret

//	Recv 1 byte if ready
int USB_Recv(u8 ep)
{
	u8 c;
	if (USB_Recv(ep,&c,1) != 1)
    15ce:	ce 01       	movw	r24, r28
    15d0:	01 96       	adiw	r24, 0x01	; 1
    15d2:	0e 94 61 0a 	call	0x14c2	; 0x14c2 <_Z8USB_RecvhPvi.constprop.5>
    15d6:	01 97       	sbiw	r24, 0x01	; 1
    15d8:	19 f4       	brne	.+6      	; 0x15e0 <_ZN7Serial_4readEv+0x36>
		return -1;
	return c;
    15da:	89 81       	ldd	r24, Y+1	; 0x01
    15dc:	90 e0       	ldi	r25, 0x00	; 0
    15de:	f3 cf       	rjmp	.-26     	; 0x15c6 <_ZN7Serial_4readEv+0x1c>
//	Recv 1 byte if ready
int USB_Recv(u8 ep)
{
	u8 c;
	if (USB_Recv(ep,&c,1) != 1)
		return -1;
    15e0:	8f ef       	ldi	r24, 0xFF	; 255
    15e2:	9f ef       	ldi	r25, 0xFF	; 255
    15e4:	f0 cf       	rjmp	.-32     	; 0x15c6 <_ZN7Serial_4readEv+0x1c>

000015e6 <_ZN7Serial_4peekEv>:
	}
	return USB_Available(CDC_RX);
}

int Serial_::peek(void)
{
    15e6:	0f 93       	push	r16
    15e8:	1f 93       	push	r17
    15ea:	cf 93       	push	r28
    15ec:	df 93       	push	r29
    15ee:	1f 92       	push	r1
    15f0:	cd b7       	in	r28, 0x3d	; 61
    15f2:	de b7       	in	r29, 0x3e	; 62
    15f4:	8c 01       	movw	r16, r24
	if (peek_buffer < 0)
    15f6:	fc 01       	movw	r30, r24
    15f8:	84 85       	ldd	r24, Z+12	; 0x0c
    15fa:	95 85       	ldd	r25, Z+13	; 0x0d
    15fc:	97 ff       	sbrs	r25, 7
    15fe:	0b c0       	rjmp	.+22     	; 0x1616 <_ZN7Serial_4peekEv+0x30>

//	Recv 1 byte if ready
int USB_Recv(u8 ep)
{
	u8 c;
	if (USB_Recv(ep,&c,1) != 1)
    1600:	ce 01       	movw	r24, r28
    1602:	01 96       	adiw	r24, 0x01	; 1
    1604:	0e 94 61 0a 	call	0x14c2	; 0x14c2 <_Z8USB_RecvhPvi.constprop.5>
    1608:	01 97       	sbiw	r24, 0x01	; 1
    160a:	71 f4       	brne	.+28     	; 0x1628 <_ZN7Serial_4peekEv+0x42>
		return -1;
	return c;
    160c:	89 81       	ldd	r24, Y+1	; 0x01
    160e:	90 e0       	ldi	r25, 0x00	; 0
		peek_buffer = USB_Recv(CDC_RX);
    1610:	f8 01       	movw	r30, r16
    1612:	95 87       	std	Z+13, r25	; 0x0d
    1614:	84 87       	std	Z+12, r24	; 0x0c
	return peek_buffer;
}
    1616:	f8 01       	movw	r30, r16
    1618:	84 85       	ldd	r24, Z+12	; 0x0c
    161a:	95 85       	ldd	r25, Z+13	; 0x0d
    161c:	0f 90       	pop	r0
    161e:	df 91       	pop	r29
    1620:	cf 91       	pop	r28
    1622:	1f 91       	pop	r17
    1624:	0f 91       	pop	r16
    1626:	08 95       	ret
//	Recv 1 byte if ready
int USB_Recv(u8 ep)
{
	u8 c;
	if (USB_Recv(ep,&c,1) != 1)
		return -1;
    1628:	8f ef       	ldi	r24, 0xFF	; 255
    162a:	9f ef       	ldi	r25, 0xFF	; 255
    162c:	f1 cf       	rjmp	.-30     	; 0x1610 <_ZN7Serial_4peekEv+0x2a>

0000162e <_ZN7Serial_9availableEv>:
{
}

int Serial_::available(void)
{
	if (peek_buffer >= 0) {
    162e:	fc 01       	movw	r30, r24
    1630:	84 85       	ldd	r24, Z+12	; 0x0c
    1632:	95 85       	ldd	r25, Z+13	; 0x0d
    1634:	97 fd       	sbrc	r25, 7
    1636:	0b c0       	rjmp	.+22     	; 0x164e <_ZN7Serial_9availableEv+0x20>
#define USB_RECV_TIMEOUT
class LockEP
{
	u8 _sreg;
public:
	LockEP(u8 ep) : _sreg(SREG)
    1638:	9f b7       	in	r25, 0x3f	; 63
	{
		cli();
    163a:	f8 94       	cli
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    163c:	82 e0       	ldi	r24, 0x02	; 2
    163e:	80 93 e9 00 	sts	0x00E9, r24	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
}

static inline u8 FifoByteCount()
{
	return UEBCLX;
    1642:	80 91 f2 00 	lds	r24, 0x00F2	; 0x8000f2 <__DATA_REGION_ORIGIN__+0x92>
		cli();
		SetEP(ep & 7);
	}
	~LockEP()
	{
		SREG = _sreg;
    1646:	9f bf       	out	0x3f, r25	; 63
		return 1 + USB_Available(CDC_RX);
    1648:	90 e0       	ldi	r25, 0x00	; 0
    164a:	01 96       	adiw	r24, 0x01	; 1
    164c:	08 95       	ret
#define USB_RECV_TIMEOUT
class LockEP
{
	u8 _sreg;
public:
	LockEP(u8 ep) : _sreg(SREG)
    164e:	9f b7       	in	r25, 0x3f	; 63
	{
		cli();
    1650:	f8 94       	cli
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    1652:	82 e0       	ldi	r24, 0x02	; 2
    1654:	80 93 e9 00 	sts	0x00E9, r24	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
}

static inline u8 FifoByteCount()
{
	return UEBCLX;
    1658:	80 91 f2 00 	lds	r24, 0x00F2	; 0x8000f2 <__DATA_REGION_ORIGIN__+0x92>
		cli();
		SetEP(ep & 7);
	}
	~LockEP()
	{
		SREG = _sreg;
    165c:	9f bf       	out	0x3f, r25	; 63
	}
	return USB_Available(CDC_RX);
    165e:	90 e0       	ldi	r25, 0x00	; 0
}
    1660:	08 95       	ret

00001662 <_ZL11SendControlh>:
}

static
bool SendControl(u8 d)
{
	if (_cmark < _cend)
    1662:	40 91 03 03 	lds	r20, 0x0303	; 0x800303 <_ZL6_cmark>
    1666:	50 91 04 03 	lds	r21, 0x0304	; 0x800304 <_ZL6_cmark+0x1>
    166a:	20 91 01 03 	lds	r18, 0x0301	; 0x800301 <_ZL5_cend>
    166e:	30 91 02 03 	lds	r19, 0x0302	; 0x800302 <_ZL5_cend+0x1>
    1672:	42 17       	cp	r20, r18
    1674:	53 07       	cpc	r21, r19
    1676:	b4 f4       	brge	.+44     	; 0x16a4 <_ZL11SendControlh+0x42>
		;
}

static inline u8 WaitForINOrOUT()
{
	while (!(UEINTX & ((1<<TXINI)|(1<<RXOUTI))))
    1678:	90 91 e8 00 	lds	r25, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
    167c:	95 70       	andi	r25, 0x05	; 5
    167e:	e1 f3       	breq	.-8      	; 0x1678 <_ZL11SendControlh+0x16>
		;
	return (UEINTX & (1<<RXOUTI)) == 0;
    1680:	90 91 e8 00 	lds	r25, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
static
bool SendControl(u8 d)
{
	if (_cmark < _cend)
	{
		if (!WaitForINOrOUT())
    1684:	92 fd       	sbrc	r25, 2
    1686:	19 c0       	rjmp	.+50     	; 0x16ba <_ZL11SendControlh+0x58>
	return UEDATX;	
}

static inline void Send8(u8 d)
{
	UEDATX = d;
    1688:	80 93 f1 00 	sts	0x00F1, r24	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
	if (_cmark < _cend)
	{
		if (!WaitForINOrOUT())
			return false;
		Send8(d);
		if (!((_cmark + 1) & 0x3F))
    168c:	80 91 03 03 	lds	r24, 0x0303	; 0x800303 <_ZL6_cmark>
    1690:	90 91 04 03 	lds	r25, 0x0304	; 0x800304 <_ZL6_cmark+0x1>
    1694:	01 96       	adiw	r24, 0x01	; 1
    1696:	8f 73       	andi	r24, 0x3F	; 63
    1698:	99 27       	eor	r25, r25
    169a:	89 2b       	or	r24, r25
    169c:	19 f4       	brne	.+6      	; 0x16a4 <_ZL11SendControlh+0x42>
		;
}

static inline void ClearIN(void)
{
	UEINTX = ~(1<<TXINI);
    169e:	8e ef       	ldi	r24, 0xFE	; 254
    16a0:	80 93 e8 00 	sts	0x00E8, r24	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
			return false;
		Send8(d);
		if (!((_cmark + 1) & 0x3F))
			ClearIN();	// Fifo is full, release this packet
	}
	_cmark++;
    16a4:	80 91 03 03 	lds	r24, 0x0303	; 0x800303 <_ZL6_cmark>
    16a8:	90 91 04 03 	lds	r25, 0x0304	; 0x800304 <_ZL6_cmark+0x1>
    16ac:	01 96       	adiw	r24, 0x01	; 1
    16ae:	90 93 04 03 	sts	0x0304, r25	; 0x800304 <_ZL6_cmark+0x1>
    16b2:	80 93 03 03 	sts	0x0303, r24	; 0x800303 <_ZL6_cmark>
	return true;
    16b6:	81 e0       	ldi	r24, 0x01	; 1
    16b8:	08 95       	ret
bool SendControl(u8 d)
{
	if (_cmark < _cend)
	{
		if (!WaitForINOrOUT())
			return false;
    16ba:	80 e0       	ldi	r24, 0x00	; 0
		if (!((_cmark + 1) & 0x3F))
			ClearIN();	// Fifo is full, release this packet
	}
	_cmark++;
	return true;
}
    16bc:	08 95       	ret

000016be <_ZL24USB_SendStringDescriptorPKhhh>:
}

// Send a USB descriptor string. The string is stored in PROGMEM as a
// plain ASCII string but is sent out as UTF-16 with the correct 2-byte
// prefix
static bool USB_SendStringDescriptor(const u8*string_P, u8 string_len, uint8_t flags) {
    16be:	ef 92       	push	r14
    16c0:	ff 92       	push	r15
    16c2:	0f 93       	push	r16
    16c4:	1f 93       	push	r17
    16c6:	cf 93       	push	r28
    16c8:	df 93       	push	r29
    16ca:	f8 2e       	mov	r15, r24
    16cc:	19 2f       	mov	r17, r25
    16ce:	e6 2e       	mov	r14, r22
    16d0:	04 2f       	mov	r16, r20
        SendControl(2 + string_len * 2);
    16d2:	81 e0       	ldi	r24, 0x01	; 1
    16d4:	86 0f       	add	r24, r22
    16d6:	88 0f       	add	r24, r24
    16d8:	0e 94 31 0b 	call	0x1662	; 0x1662 <_ZL11SendControlh>
        SendControl(3);
    16dc:	83 e0       	ldi	r24, 0x03	; 3
    16de:	0e 94 31 0b 	call	0x1662	; 0x1662 <_ZL11SendControlh>
    16e2:	cf 2d       	mov	r28, r15
    16e4:	d1 2f       	mov	r29, r17
    16e6:	ec 0e       	add	r14, r28
    16e8:	fd 2e       	mov	r15, r29
    16ea:	f1 1c       	adc	r15, r1
        bool pgm = flags & TRANSFER_PGM;
        for(u8 i = 0; i < string_len; i++) {
    16ec:	ce 15       	cp	r28, r14
    16ee:	df 05       	cpc	r29, r15
    16f0:	b9 f0       	breq	.+46     	; 0x1720 <_ZL24USB_SendStringDescriptorPKhhh+0x62>
                bool r = SendControl(pgm ? pgm_read_byte(&string_P[i]) : string_P[i]);
    16f2:	07 ff       	sbrs	r16, 7
    16f4:	13 c0       	rjmp	.+38     	; 0x171c <_ZL24USB_SendStringDescriptorPKhhh+0x5e>
    16f6:	fe 01       	movw	r30, r28
    16f8:	84 91       	lpm	r24, Z
    16fa:	0e 94 31 0b 	call	0x1662	; 0x1662 <_ZL11SendControlh>
    16fe:	18 2f       	mov	r17, r24
                r &= SendControl(0); // high byte
    1700:	80 e0       	ldi	r24, 0x00	; 0
    1702:	0e 94 31 0b 	call	0x1662	; 0x1662 <_ZL11SendControlh>
    1706:	81 23       	and	r24, r17
    1708:	21 96       	adiw	r28, 0x01	; 1
                if(!r) {
    170a:	81 11       	cpse	r24, r1
    170c:	ef cf       	rjmp	.-34     	; 0x16ec <_ZL24USB_SendStringDescriptorPKhhh+0x2e>
                        return false;
                }
        }
        return true;
}
    170e:	df 91       	pop	r29
    1710:	cf 91       	pop	r28
    1712:	1f 91       	pop	r17
    1714:	0f 91       	pop	r16
    1716:	ff 90       	pop	r15
    1718:	ef 90       	pop	r14
    171a:	08 95       	ret
static bool USB_SendStringDescriptor(const u8*string_P, u8 string_len, uint8_t flags) {
        SendControl(2 + string_len * 2);
        SendControl(3);
        bool pgm = flags & TRANSFER_PGM;
        for(u8 i = 0; i < string_len; i++) {
                bool r = SendControl(pgm ? pgm_read_byte(&string_P[i]) : string_P[i]);
    171c:	88 81       	ld	r24, Y
    171e:	ed cf       	rjmp	.-38     	; 0x16fa <_ZL24USB_SendStringDescriptorPKhhh+0x3c>
                r &= SendControl(0); // high byte
                if(!r) {
                        return false;
                }
        }
        return true;
    1720:	81 e0       	ldi	r24, 0x01	; 1
    1722:	f5 cf       	rjmp	.-22     	; 0x170e <_ZL24USB_SendStringDescriptorPKhhh+0x50>

00001724 <_Z15USB_SendControlhPKvi>:
	return true;
}

//	Clipped by _cmark/_cend
int USB_SendControl(u8 flags, const void* d, int len)
{
    1724:	df 92       	push	r13
    1726:	ef 92       	push	r14
    1728:	ff 92       	push	r15
    172a:	0f 93       	push	r16
    172c:	1f 93       	push	r17
    172e:	cf 93       	push	r28
    1730:	df 93       	push	r29
    1732:	d8 2e       	mov	r13, r24
    1734:	8a 01       	movw	r16, r20
    1736:	eb 01       	movw	r28, r22
    1738:	7b 01       	movw	r14, r22
    173a:	e4 0e       	add	r14, r20
    173c:	f5 1e       	adc	r15, r21
	int sent = len;
	const u8* data = (const u8*)d;
	bool pgm = flags & TRANSFER_PGM;
	while (len--)
    173e:	ce 15       	cp	r28, r14
    1740:	df 05       	cpc	r29, r15
    1742:	59 f0       	breq	.+22     	; 0x175a <_Z15USB_SendControlhPKvi+0x36>
	{
		u8 c = pgm ? pgm_read_byte(data++) : *data++;
    1744:	d7 fe       	sbrs	r13, 7
    1746:	12 c0       	rjmp	.+36     	; 0x176c <_Z15USB_SendControlhPKvi+0x48>
    1748:	fe 01       	movw	r30, r28
    174a:	84 91       	lpm	r24, Z
		if (!SendControl(c))
    174c:	0e 94 31 0b 	call	0x1662	; 0x1662 <_ZL11SendControlh>
    1750:	21 96       	adiw	r28, 0x01	; 1
    1752:	81 11       	cpse	r24, r1
    1754:	f4 cf       	rjmp	.-24     	; 0x173e <_Z15USB_SendControlhPKvi+0x1a>
			return -1;
    1756:	0f ef       	ldi	r16, 0xFF	; 255
    1758:	1f ef       	ldi	r17, 0xFF	; 255
	}
	return sent;
}
    175a:	c8 01       	movw	r24, r16
    175c:	df 91       	pop	r29
    175e:	cf 91       	pop	r28
    1760:	1f 91       	pop	r17
    1762:	0f 91       	pop	r16
    1764:	ff 90       	pop	r15
    1766:	ef 90       	pop	r14
    1768:	df 90       	pop	r13
    176a:	08 95       	ret
	int sent = len;
	const u8* data = (const u8*)d;
	bool pgm = flags & TRANSFER_PGM;
	while (len--)
	{
		u8 c = pgm ? pgm_read_byte(data++) : *data++;
    176c:	88 81       	ld	r24, Y
    176e:	ee cf       	rjmp	.-36     	; 0x174c <_Z15USB_SendControlhPKvi+0x28>

00001770 <_ZL14SendInterfacesv>:
	}
	return len;
}

static u8 SendInterfaces()
{
    1770:	0f 93       	push	r16
    1772:	1f 93       	push	r17
    1774:	cf 93       	push	r28
    1776:	df 93       	push	r29
    1778:	1f 92       	push	r1
    177a:	cd b7       	in	r28, 0x3d	; 61
    177c:	de b7       	in	r29, 0x3e	; 62
	return pgm_read_word(FLASHEND - 1) == NEW_LUFA_SIGNATURE;
}

int CDC_GetInterface(u8* interfaceNum)
{
	interfaceNum[0] += 2;	// uses 2
    177e:	82 e0       	ldi	r24, 0x02	; 2
    1780:	89 83       	std	Y+1, r24	; 0x01
	return USB_SendControl(TRANSFER_PGM,&_cdcInterface,sizeof(_cdcInterface));
    1782:	42 e4       	ldi	r20, 0x42	; 66
    1784:	50 e0       	ldi	r21, 0x00	; 0
    1786:	63 ee       	ldi	r22, 0xE3	; 227
    1788:	7f e0       	ldi	r23, 0x0F	; 15
    178a:	80 e8       	ldi	r24, 0x80	; 128
    178c:	0e 94 92 0b 	call	0x1724	; 0x1724 <_Z15USB_SendControlhPKvi>
	u8 interfaces = 0;

	CDC_GetInterface(&interfaces);

#ifdef PLUGGABLE_USB_ENABLED
	PluggableUSB().getInterface(&interfaces);
    1790:	0e 94 9c 0a 	call	0x1538	; 0x1538 <_Z12PluggableUSBv>

int PluggableUSB_::getInterface(uint8_t* interfaceCount)
{
	int sent = 0;
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
    1794:	dc 01       	movw	r26, r24
    1796:	12 96       	adiw	r26, 0x02	; 2
    1798:	0d 91       	ld	r16, X+
    179a:	1c 91       	ld	r17, X
    179c:	01 15       	cp	r16, r1
    179e:	11 05       	cpc	r17, r1
    17a0:	89 f0       	breq	.+34     	; 0x17c4 <_ZL14SendInterfacesv+0x54>
		int res = node->getInterface(interfaceCount);
    17a2:	d8 01       	movw	r26, r16
    17a4:	ed 91       	ld	r30, X+
    17a6:	fc 91       	ld	r31, X
    17a8:	02 80       	ldd	r0, Z+2	; 0x02
    17aa:	f3 81       	ldd	r31, Z+3	; 0x03
    17ac:	e0 2d       	mov	r30, r0
    17ae:	be 01       	movw	r22, r28
    17b0:	6f 5f       	subi	r22, 0xFF	; 255
    17b2:	7f 4f       	sbci	r23, 0xFF	; 255
    17b4:	c8 01       	movw	r24, r16
    17b6:	09 95       	icall
		if (res < 0)
    17b8:	97 fd       	sbrc	r25, 7
    17ba:	04 c0       	rjmp	.+8      	; 0x17c4 <_ZL14SendInterfacesv+0x54>

int PluggableUSB_::getInterface(uint8_t* interfaceCount)
{
	int sent = 0;
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
    17bc:	f8 01       	movw	r30, r16
    17be:	00 85       	ldd	r16, Z+8	; 0x08
    17c0:	11 85       	ldd	r17, Z+9	; 0x09
    17c2:	ec cf       	rjmp	.-40     	; 0x179c <_ZL14SendInterfacesv+0x2c>
#endif

	return interfaces;
}
    17c4:	89 81       	ldd	r24, Y+1	; 0x01
    17c6:	0f 90       	pop	r0
    17c8:	df 91       	pop	r29
    17ca:	cf 91       	pop	r28
    17cc:	1f 91       	pop	r17
    17ce:	0f 91       	pop	r16
    17d0:	08 95       	ret

000017d2 <_ZL4RecvPVhh>:
	UEINTX = ~(1<<RXOUTI);
}

static inline void Recv(volatile u8* data, u8 count)
{
	while (count--)
    17d2:	61 50       	subi	r22, 0x01	; 1
    17d4:	30 f0       	brcs	.+12     	; 0x17e2 <_ZL4RecvPVhh+0x10>
		*data++ = UEDATX;
    17d6:	20 91 f1 00 	lds	r18, 0x00F1	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
    17da:	fc 01       	movw	r30, r24
    17dc:	20 83       	st	Z, r18
    17de:	01 96       	adiw	r24, 0x01	; 1
    17e0:	f8 cf       	rjmp	.-16     	; 0x17d2 <_ZL4RecvPVhh>
	
	RXLED1;					// light the RX LED
    17e2:	28 98       	cbi	0x05, 0	; 5
	RxLEDPulse = TX_RX_LED_PULSE_MS;	
    17e4:	84 e6       	ldi	r24, 0x64	; 100
    17e6:	80 93 15 03 	sts	0x0315, r24	; 0x800315 <RxLEDPulse>
}
    17ea:	08 95       	ret

000017ec <_Z8initLogov>:

/*---------------------------------------------------------------------------*/

void initLogo(void)
{
    counter = 120; // 2 secs
    17ec:	88 e7       	ldi	r24, 0x78	; 120
    17ee:	80 93 fa 02 	sts	0x02FA, r24	; 0x8002fa <_ZL7counter.lto_priv.56>
}
    17f2:	08 95       	ret

000017f4 <_ZN5Print5writeEPKhj>:

// Public Methods //////////////////////////////////////////////////////////////

/* default implementation: may be overridden */
size_t Print::write(const uint8_t *buffer, size_t size)
{
    17f4:	af 92       	push	r10
    17f6:	bf 92       	push	r11
    17f8:	cf 92       	push	r12
    17fa:	df 92       	push	r13
    17fc:	ef 92       	push	r14
    17fe:	ff 92       	push	r15
    1800:	0f 93       	push	r16
    1802:	1f 93       	push	r17
    1804:	cf 93       	push	r28
    1806:	df 93       	push	r29
    1808:	6c 01       	movw	r12, r24
    180a:	7b 01       	movw	r14, r22
    180c:	8b 01       	movw	r16, r22
    180e:	04 0f       	add	r16, r20
    1810:	15 1f       	adc	r17, r21
    1812:	eb 01       	movw	r28, r22
    1814:	5e 01       	movw	r10, r28
    1816:	ae 18       	sub	r10, r14
    1818:	bf 08       	sbc	r11, r15
  size_t n = 0;
  while (size--) {
    181a:	c0 17       	cp	r28, r16
    181c:	d1 07       	cpc	r29, r17
    181e:	59 f0       	breq	.+22     	; 0x1836 <_ZN5Print5writeEPKhj+0x42>
    if (write(*buffer++)) n++;
    1820:	69 91       	ld	r22, Y+
    1822:	d6 01       	movw	r26, r12
    1824:	ed 91       	ld	r30, X+
    1826:	fc 91       	ld	r31, X
    1828:	01 90       	ld	r0, Z+
    182a:	f0 81       	ld	r31, Z
    182c:	e0 2d       	mov	r30, r0
    182e:	c6 01       	movw	r24, r12
    1830:	09 95       	icall
    1832:	89 2b       	or	r24, r25
    1834:	79 f7       	brne	.-34     	; 0x1814 <_ZN5Print5writeEPKhj+0x20>
    else break;
  }
  return n;
}
    1836:	c5 01       	movw	r24, r10
    1838:	df 91       	pop	r29
    183a:	cf 91       	pop	r28
    183c:	1f 91       	pop	r17
    183e:	0f 91       	pop	r16
    1840:	ff 90       	pop	r15
    1842:	ef 90       	pop	r14
    1844:	df 90       	pop	r13
    1846:	cf 90       	pop	r12
    1848:	bf 90       	pop	r11
    184a:	af 90       	pop	r10
    184c:	08 95       	ret

0000184e <digitalWrite>:
	}
}

void digitalWrite(uint8_t pin, uint8_t val)
{
	uint8_t timer = digitalPinToTimer(pin);
    184e:	28 2f       	mov	r18, r24
    1850:	30 e0       	ldi	r19, 0x00	; 0
    1852:	f9 01       	movw	r30, r18
    1854:	e8 5b       	subi	r30, 0xB8	; 184
    1856:	f0 4f       	sbci	r31, 0xF0	; 240
    1858:	94 91       	lpm	r25, Z
	uint8_t bit = digitalPinToBitMask(pin);
    185a:	f9 01       	movw	r30, r18
    185c:	ec 57       	subi	r30, 0x7C	; 124
    185e:	f0 4f       	sbci	r31, 0xF0	; 240
    1860:	84 91       	lpm	r24, Z
	uint8_t port = digitalPinToPort(pin);
    1862:	2f 54       	subi	r18, 0x4F	; 79
    1864:	30 4f       	sbci	r19, 0xF0	; 240
    1866:	f9 01       	movw	r30, r18
    1868:	24 91       	lpm	r18, Z
	volatile uint8_t *out;

	if (port == NOT_A_PIN) return;
    186a:	22 23       	and	r18, r18
    186c:	09 f4       	brne	.+2      	; 0x1870 <digitalWrite+0x22>
    186e:	30 c0       	rjmp	.+96     	; 0x18d0 <digitalWrite+0x82>

	// If the pin that support PWM output, we need to turn it off
	// before doing a digital write.
	if (timer != NOT_ON_TIMER) turnOffPWM(timer);
    1870:	99 23       	and	r25, r25
    1872:	e9 f0       	breq	.+58     	; 0x18ae <digitalWrite+0x60>
//
//static inline void turnOffPWM(uint8_t timer) __attribute__ ((always_inline));
//static inline void turnOffPWM(uint8_t timer)
static void turnOffPWM(uint8_t timer)
{
	switch (timer)
    1874:	91 50       	subi	r25, 0x01	; 1
    1876:	9f 30       	cpi	r25, 0x0F	; 15
    1878:	d0 f4       	brcc	.+52     	; 0x18ae <digitalWrite+0x60>
    187a:	e9 2f       	mov	r30, r25
    187c:	f0 e0       	ldi	r31, 0x00	; 0
    187e:	ed 5b       	subi	r30, 0xBD	; 189
    1880:	f3 4f       	sbci	r31, 0xF3	; 243
    1882:	0c 94 8b 29 	jmp	0x5316	; 0x5316 <__tablejump2__>
    1886:	71 0c       	add	r7, r1
    1888:	75 0c       	add	r7, r5
    188a:	52 0c       	add	r5, r2
    188c:	69 0c       	add	r6, r9
    188e:	6d 0c       	add	r6, r13
    1890:	57 0c       	add	r5, r7
    1892:	57 0c       	add	r5, r7
    1894:	57 0c       	add	r5, r7
    1896:	78 0c       	add	r7, r8
    1898:	7e 0c       	add	r7, r14
    189a:	82 0c       	add	r8, r2
    189c:	86 0c       	add	r8, r6
    189e:	8c 0c       	add	r8, r12
    18a0:	57 0c       	add	r5, r7
    18a2:	90 0c       	add	r9, r0
	{
		#if defined(TCCR1A) && defined(COM1A1)
		case TIMER1A:   cbi(TCCR1A, COM1A1);    break;
    18a4:	90 91 80 00 	lds	r25, 0x0080	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
    18a8:	9f 77       	andi	r25, 0x7F	; 127
		#endif
		#if defined(TCCR1A) && defined(COM1B1)
		case TIMER1B:   cbi(TCCR1A, COM1B1);    break;
		#endif
		#if defined(TCCR1A) && defined(COM1C1)
		case TIMER1C:   cbi(TCCR1A, COM1C1);    break;
    18aa:	90 93 80 00 	sts	0x0080, r25	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>

	// If the pin that support PWM output, we need to turn it off
	// before doing a digital write.
	if (timer != NOT_ON_TIMER) turnOffPWM(timer);

	out = portOutputRegister(port);
    18ae:	e2 2f       	mov	r30, r18
    18b0:	f0 e0       	ldi	r31, 0x00	; 0
    18b2:	ee 0f       	add	r30, r30
    18b4:	ff 1f       	adc	r31, r31
    18b6:	ed 55       	subi	r30, 0x5D	; 93
    18b8:	f0 4f       	sbci	r31, 0xF0	; 240
    18ba:	a5 91       	lpm	r26, Z+
    18bc:	b4 91       	lpm	r27, Z

	uint8_t oldSREG = SREG;
    18be:	9f b7       	in	r25, 0x3f	; 63
	cli();
    18c0:	f8 94       	cli

	if (val == LOW) {
		*out &= ~bit;
    18c2:	ec 91       	ld	r30, X
	out = portOutputRegister(port);

	uint8_t oldSREG = SREG;
	cli();

	if (val == LOW) {
    18c4:	61 11       	cpse	r22, r1
    18c6:	32 c0       	rjmp	.+100    	; 0x192c <digitalWrite+0xde>
		*out &= ~bit;
    18c8:	80 95       	com	r24
    18ca:	8e 23       	and	r24, r30
	} else {
		*out |= bit;
    18cc:	8c 93       	st	X, r24
	}

	SREG = oldSREG;
    18ce:	9f bf       	out	0x3f, r25	; 63
}
    18d0:	08 95       	ret
	{
		#if defined(TCCR1A) && defined(COM1A1)
		case TIMER1A:   cbi(TCCR1A, COM1A1);    break;
		#endif
		#if defined(TCCR1A) && defined(COM1B1)
		case TIMER1B:   cbi(TCCR1A, COM1B1);    break;
    18d2:	90 91 80 00 	lds	r25, 0x0080	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
    18d6:	9f 7d       	andi	r25, 0xDF	; 223
    18d8:	e8 cf       	rjmp	.-48     	; 0x18aa <digitalWrite+0x5c>
		#endif
		#if defined(TCCR1A) && defined(COM1C1)
		case TIMER1C:   cbi(TCCR1A, COM1C1);    break;
    18da:	90 91 80 00 	lds	r25, 0x0080	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
    18de:	97 7f       	andi	r25, 0xF7	; 247
    18e0:	e4 cf       	rjmp	.-56     	; 0x18aa <digitalWrite+0x5c>
		#if defined(TCCR2) && defined(COM21)
		case  TIMER2:   cbi(TCCR2, COM21);      break;
		#endif
		
		#if defined(TCCR0A) && defined(COM0A1)
		case  TIMER0A:  cbi(TCCR0A, COM0A1);    break;
    18e2:	94 b5       	in	r25, 0x24	; 36
    18e4:	9f 77       	andi	r25, 0x7F	; 127
		#endif
		
		#if defined(TCCR0A) && defined(COM0B1)
		case  TIMER0B:  cbi(TCCR0A, COM0B1);    break;
    18e6:	94 bd       	out	0x24, r25	; 36
    18e8:	e2 cf       	rjmp	.-60     	; 0x18ae <digitalWrite+0x60>
    18ea:	94 b5       	in	r25, 0x24	; 36
    18ec:	9f 7d       	andi	r25, 0xDF	; 223
    18ee:	fb cf       	rjmp	.-10     	; 0x18e6 <digitalWrite+0x98>
		#if defined(TCCR2A) && defined(COM2B1)
		case  TIMER2B:  cbi(TCCR2A, COM2B1);    break;
		#endif
		
		#if defined(TCCR3A) && defined(COM3A1)
		case  TIMER3A:  cbi(TCCR3A, COM3A1);    break;
    18f0:	90 91 90 00 	lds	r25, 0x0090	; 0x800090 <__DATA_REGION_ORIGIN__+0x30>
    18f4:	9f 77       	andi	r25, 0x7F	; 127
		#endif
		#if defined(TCCR3A) && defined(COM3B1)
		case  TIMER3B:  cbi(TCCR3A, COM3B1);    break;
		#endif
		#if defined(TCCR3A) && defined(COM3C1)
		case  TIMER3C:  cbi(TCCR3A, COM3C1);    break;
    18f6:	90 93 90 00 	sts	0x0090, r25	; 0x800090 <__DATA_REGION_ORIGIN__+0x30>
    18fa:	d9 cf       	rjmp	.-78     	; 0x18ae <digitalWrite+0x60>
		
		#if defined(TCCR3A) && defined(COM3A1)
		case  TIMER3A:  cbi(TCCR3A, COM3A1);    break;
		#endif
		#if defined(TCCR3A) && defined(COM3B1)
		case  TIMER3B:  cbi(TCCR3A, COM3B1);    break;
    18fc:	90 91 90 00 	lds	r25, 0x0090	; 0x800090 <__DATA_REGION_ORIGIN__+0x30>
    1900:	9f 7d       	andi	r25, 0xDF	; 223
    1902:	f9 cf       	rjmp	.-14     	; 0x18f6 <digitalWrite+0xa8>
		#endif
		#if defined(TCCR3A) && defined(COM3C1)
		case  TIMER3C:  cbi(TCCR3A, COM3C1);    break;
    1904:	90 91 90 00 	lds	r25, 0x0090	; 0x800090 <__DATA_REGION_ORIGIN__+0x30>
    1908:	97 7f       	andi	r25, 0xF7	; 247
    190a:	f5 cf       	rjmp	.-22     	; 0x18f6 <digitalWrite+0xa8>
		#endif

		#if defined(TCCR4A) && defined(COM4A1)
		case  TIMER4A:  cbi(TCCR4A, COM4A1);    break;
    190c:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__DATA_REGION_ORIGIN__+0x60>
    1910:	9f 77       	andi	r25, 0x7F	; 127
		#endif					
		#if defined(TCCR4A) && defined(COM4B1)
		case  TIMER4B:  cbi(TCCR4A, COM4B1);    break;
    1912:	90 93 c0 00 	sts	0x00C0, r25	; 0x8000c0 <__DATA_REGION_ORIGIN__+0x60>
    1916:	cb cf       	rjmp	.-106    	; 0x18ae <digitalWrite+0x60>
    1918:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__DATA_REGION_ORIGIN__+0x60>
    191c:	9f 7d       	andi	r25, 0xDF	; 223
    191e:	f9 cf       	rjmp	.-14     	; 0x1912 <digitalWrite+0xc4>
		#endif
		#if defined(TCCR4A) && defined(COM4C1)
		case  TIMER4C:  cbi(TCCR4A, COM4C1);    break;
		#endif			
		#if defined(TCCR4C) && defined(COM4D1)
		case TIMER4D:	cbi(TCCR4C, COM4D1);	break;
    1920:	90 91 c2 00 	lds	r25, 0x00C2	; 0x8000c2 <__DATA_REGION_ORIGIN__+0x62>
    1924:	97 7f       	andi	r25, 0xF7	; 247
    1926:	90 93 c2 00 	sts	0x00C2, r25	; 0x8000c2 <__DATA_REGION_ORIGIN__+0x62>
    192a:	c1 cf       	rjmp	.-126    	; 0x18ae <digitalWrite+0x60>
	cli();

	if (val == LOW) {
		*out &= ~bit;
	} else {
		*out |= bit;
    192c:	8e 2b       	or	r24, r30
    192e:	ce cf       	rjmp	.-100    	; 0x18cc <digitalWrite+0x7e>

00001930 <pinMode>:
#define ARDUINO_MAIN
#include "wiring_private.h"
#include "pins_arduino.h"

void pinMode(uint8_t pin, uint8_t mode)
{
    1930:	cf 93       	push	r28
    1932:	df 93       	push	r29
	uint8_t bit = digitalPinToBitMask(pin);
    1934:	90 e0       	ldi	r25, 0x00	; 0
    1936:	fc 01       	movw	r30, r24
    1938:	ec 57       	subi	r30, 0x7C	; 124
    193a:	f0 4f       	sbci	r31, 0xF0	; 240
    193c:	24 91       	lpm	r18, Z
	uint8_t port = digitalPinToPort(pin);
    193e:	8f 54       	subi	r24, 0x4F	; 79
    1940:	90 4f       	sbci	r25, 0xF0	; 240
    1942:	fc 01       	movw	r30, r24
    1944:	84 91       	lpm	r24, Z
	volatile uint8_t *reg, *out;

	if (port == NOT_A_PIN) return;
    1946:	88 23       	and	r24, r24
    1948:	c9 f0       	breq	.+50     	; 0x197c <pinMode+0x4c>

	// JWS: can I let the optimizer do this?
	reg = portModeRegister(port);
    194a:	90 e0       	ldi	r25, 0x00	; 0
    194c:	88 0f       	add	r24, r24
    194e:	99 1f       	adc	r25, r25
    1950:	fc 01       	movw	r30, r24
    1952:	e7 59       	subi	r30, 0x97	; 151
    1954:	f0 4f       	sbci	r31, 0xF0	; 240
    1956:	a5 91       	lpm	r26, Z+
    1958:	b4 91       	lpm	r27, Z
	out = portOutputRegister(port);
    195a:	fc 01       	movw	r30, r24
    195c:	ed 55       	subi	r30, 0x5D	; 93
    195e:	f0 4f       	sbci	r31, 0xF0	; 240
    1960:	c5 91       	lpm	r28, Z+
    1962:	d4 91       	lpm	r29, Z

	if (mode == INPUT) { 
    1964:	61 11       	cpse	r22, r1
    1966:	0d c0       	rjmp	.+26     	; 0x1982 <pinMode+0x52>
		uint8_t oldSREG = SREG;
    1968:	9f b7       	in	r25, 0x3f	; 63
                cli();
    196a:	f8 94       	cli
		*reg &= ~bit;
    196c:	8c 91       	ld	r24, X
    196e:	20 95       	com	r18
    1970:	82 23       	and	r24, r18
    1972:	8c 93       	st	X, r24
		*out &= ~bit;
    1974:	88 81       	ld	r24, Y
    1976:	28 23       	and	r18, r24
		SREG = oldSREG;
	} else if (mode == INPUT_PULLUP) {
		uint8_t oldSREG = SREG;
                cli();
		*reg &= ~bit;
		*out |= bit;
    1978:	28 83       	st	Y, r18
		SREG = oldSREG;
    197a:	9f bf       	out	0x3f, r25	; 63
		uint8_t oldSREG = SREG;
                cli();
		*reg |= bit;
		SREG = oldSREG;
	}
}
    197c:	df 91       	pop	r29
    197e:	cf 91       	pop	r28
    1980:	08 95       	ret
		uint8_t oldSREG = SREG;
                cli();
		*reg &= ~bit;
		*out &= ~bit;
		SREG = oldSREG;
	} else if (mode == INPUT_PULLUP) {
    1982:	62 30       	cpi	r22, 0x02	; 2
    1984:	51 f4       	brne	.+20     	; 0x199a <pinMode+0x6a>
		uint8_t oldSREG = SREG;
    1986:	9f b7       	in	r25, 0x3f	; 63
                cli();
    1988:	f8 94       	cli
		*reg &= ~bit;
    198a:	3c 91       	ld	r19, X
    198c:	82 2f       	mov	r24, r18
    198e:	80 95       	com	r24
    1990:	83 23       	and	r24, r19
    1992:	8c 93       	st	X, r24
		*out |= bit;
    1994:	e8 81       	ld	r30, Y
    1996:	2e 2b       	or	r18, r30
    1998:	ef cf       	rjmp	.-34     	; 0x1978 <pinMode+0x48>
		SREG = oldSREG;
	} else {
		uint8_t oldSREG = SREG;
    199a:	8f b7       	in	r24, 0x3f	; 63
                cli();
    199c:	f8 94       	cli
		*reg |= bit;
    199e:	ec 91       	ld	r30, X
    19a0:	2e 2b       	or	r18, r30
    19a2:	2c 93       	st	X, r18
		SREG = oldSREG;
    19a4:	8f bf       	out	0x3f, r24	; 63
    19a6:	ea cf       	rjmp	.-44     	; 0x197c <pinMode+0x4c>

000019a8 <analogWrite>:
// Right now, PWM output only works on the pins with
// hardware support.  These are defined in the appropriate
// pins_*.c file.  For the rest of the pins, we default
// to digital output.
void analogWrite(uint8_t pin, int val)
{
    19a8:	1f 93       	push	r17
    19aa:	cf 93       	push	r28
    19ac:	df 93       	push	r29
    19ae:	18 2f       	mov	r17, r24
    19b0:	eb 01       	movw	r28, r22
	// We need to make sure the PWM output is enabled for those pins
	// that support it, as we turn it off when digitally reading or
	// writing with them.  Also, make sure the pin is in output mode
	// for consistenty with Wiring, which doesn't require a pinMode
	// call for the analog output pins.
	pinMode(pin, OUTPUT);
    19b2:	61 e0       	ldi	r22, 0x01	; 1
    19b4:	0e 94 98 0c 	call	0x1930	; 0x1930 <pinMode>
	if (val == 0)
    19b8:	20 97       	sbiw	r28, 0x00	; 0
    19ba:	39 f4       	brne	.+14     	; 0x19ca <analogWrite+0x22>
	{
		digitalWrite(pin, LOW);
    19bc:	60 e0       	ldi	r22, 0x00	; 0
	}
	else if (val == 255)
	{
		digitalWrite(pin, HIGH);
    19be:	81 2f       	mov	r24, r17
				} else {
					digitalWrite(pin, HIGH);
				}
		}
	}
}
    19c0:	df 91       	pop	r29
    19c2:	cf 91       	pop	r28
    19c4:	1f 91       	pop	r17
	{
		digitalWrite(pin, LOW);
	}
	else if (val == 255)
	{
		digitalWrite(pin, HIGH);
    19c6:	0c 94 27 0c 	jmp	0x184e	; 0x184e <digitalWrite>
	pinMode(pin, OUTPUT);
	if (val == 0)
	{
		digitalWrite(pin, LOW);
	}
	else if (val == 255)
    19ca:	cf 3f       	cpi	r28, 0xFF	; 255
    19cc:	d1 05       	cpc	r29, r1
    19ce:	11 f4       	brne	.+4      	; 0x19d4 <analogWrite+0x2c>
	{
		digitalWrite(pin, HIGH);
    19d0:	61 e0       	ldi	r22, 0x01	; 1
    19d2:	f5 cf       	rjmp	.-22     	; 0x19be <analogWrite+0x16>
	}
	else
	{
		switch(digitalPinToTimer(pin))
    19d4:	e1 2f       	mov	r30, r17
    19d6:	f0 e0       	ldi	r31, 0x00	; 0
    19d8:	e8 5b       	subi	r30, 0xB8	; 184
    19da:	f0 4f       	sbci	r31, 0xF0	; 240
    19dc:	e4 91       	lpm	r30, Z
    19de:	e1 50       	subi	r30, 0x01	; 1
    19e0:	ef 30       	cpi	r30, 0x0F	; 15
    19e2:	08 f0       	brcs	.+2      	; 0x19e6 <analogWrite+0x3e>
    19e4:	7f c0       	rjmp	.+254    	; 0x1ae4 <analogWrite+0x13c>
    19e6:	f0 e0       	ldi	r31, 0x00	; 0
    19e8:	e8 50       	subi	r30, 0x08	; 8
    19ea:	f3 4f       	sbci	r31, 0xF3	; 243
    19ec:	0c 94 8b 29 	jmp	0x5316	; 0x5316 <__tablejump2__>
    19f0:	07 0d       	add	r16, r7
    19f2:	0f 0d       	add	r16, r15
    19f4:	14 0d       	add	r17, r4
    19f6:	1e 0d       	add	r17, r14
    19f8:	28 0d       	add	r18, r8
    19fa:	72 0d       	add	r23, r2
    19fc:	72 0d       	add	r23, r2
    19fe:	72 0d       	add	r23, r2
    1a00:	32 0d       	add	r19, r2
    1a02:	3c 0d       	add	r19, r12
    1a04:	46 0d       	add	r20, r6
    1a06:	50 0d       	add	r21, r0
    1a08:	5d 0d       	add	r21, r13
    1a0a:	72 0d       	add	r23, r2
    1a0c:	65 0d       	add	r22, r5
			#endif

			#if defined(TCCR0A) && defined(COM0A1)
			case TIMER0A:
				// connect pwm to pin on timer 0, channel A
				sbi(TCCR0A, COM0A1);
    1a0e:	84 b5       	in	r24, 0x24	; 36
    1a10:	80 68       	ori	r24, 0x80	; 128
    1a12:	84 bd       	out	0x24, r24	; 36
				OCR0A = val; // set pwm duty
    1a14:	c7 bd       	out	0x27, r28	; 39
				} else {
					digitalWrite(pin, HIGH);
				}
		}
	}
}
    1a16:	df 91       	pop	r29
    1a18:	cf 91       	pop	r28
    1a1a:	1f 91       	pop	r17
    1a1c:	08 95       	ret
			#endif

			#if defined(TCCR0A) && defined(COM0B1)
			case TIMER0B:
				// connect pwm to pin on timer 0, channel B
				sbi(TCCR0A, COM0B1);
    1a1e:	84 b5       	in	r24, 0x24	; 36
    1a20:	80 62       	ori	r24, 0x20	; 32
    1a22:	84 bd       	out	0x24, r24	; 36
				OCR0B = val; // set pwm duty
    1a24:	c8 bd       	out	0x28, r28	; 40
    1a26:	f7 cf       	rjmp	.-18     	; 0x1a16 <analogWrite+0x6e>
			#endif

			#if defined(TCCR1A) && defined(COM1A1)
			case TIMER1A:
				// connect pwm to pin on timer 1, channel A
				sbi(TCCR1A, COM1A1);
    1a28:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
    1a2c:	80 68       	ori	r24, 0x80	; 128
    1a2e:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
				OCR1A = val; // set pwm duty
    1a32:	d0 93 89 00 	sts	0x0089, r29	; 0x800089 <__DATA_REGION_ORIGIN__+0x29>
    1a36:	c0 93 88 00 	sts	0x0088, r28	; 0x800088 <__DATA_REGION_ORIGIN__+0x28>
    1a3a:	ed cf       	rjmp	.-38     	; 0x1a16 <analogWrite+0x6e>
			#endif

			#if defined(TCCR1A) && defined(COM1B1)
			case TIMER1B:
				// connect pwm to pin on timer 1, channel B
				sbi(TCCR1A, COM1B1);
    1a3c:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
    1a40:	80 62       	ori	r24, 0x20	; 32
    1a42:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
				OCR1B = val; // set pwm duty
    1a46:	d0 93 8b 00 	sts	0x008B, r29	; 0x80008b <__DATA_REGION_ORIGIN__+0x2b>
    1a4a:	c0 93 8a 00 	sts	0x008A, r28	; 0x80008a <__DATA_REGION_ORIGIN__+0x2a>
    1a4e:	e3 cf       	rjmp	.-58     	; 0x1a16 <analogWrite+0x6e>
			#endif

			#if defined(TCCR1A) && defined(COM1C1)
			case TIMER1C:
				// connect pwm to pin on timer 1, channel C
				sbi(TCCR1A, COM1C1);
    1a50:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
    1a54:	88 60       	ori	r24, 0x08	; 8
    1a56:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
				OCR1C = val; // set pwm duty
    1a5a:	d0 93 8d 00 	sts	0x008D, r29	; 0x80008d <__DATA_REGION_ORIGIN__+0x2d>
    1a5e:	c0 93 8c 00 	sts	0x008C, r28	; 0x80008c <__DATA_REGION_ORIGIN__+0x2c>
    1a62:	d9 cf       	rjmp	.-78     	; 0x1a16 <analogWrite+0x6e>
			#endif

			#if defined(TCCR3A) && defined(COM3A1)
			case TIMER3A:
				// connect pwm to pin on timer 3, channel A
				sbi(TCCR3A, COM3A1);
    1a64:	80 91 90 00 	lds	r24, 0x0090	; 0x800090 <__DATA_REGION_ORIGIN__+0x30>
    1a68:	80 68       	ori	r24, 0x80	; 128
    1a6a:	80 93 90 00 	sts	0x0090, r24	; 0x800090 <__DATA_REGION_ORIGIN__+0x30>
				OCR3A = val; // set pwm duty
    1a6e:	d0 93 99 00 	sts	0x0099, r29	; 0x800099 <__DATA_REGION_ORIGIN__+0x39>
    1a72:	c0 93 98 00 	sts	0x0098, r28	; 0x800098 <__DATA_REGION_ORIGIN__+0x38>
    1a76:	cf cf       	rjmp	.-98     	; 0x1a16 <analogWrite+0x6e>
			#endif

			#if defined(TCCR3A) && defined(COM3B1)
			case TIMER3B:
				// connect pwm to pin on timer 3, channel B
				sbi(TCCR3A, COM3B1);
    1a78:	80 91 90 00 	lds	r24, 0x0090	; 0x800090 <__DATA_REGION_ORIGIN__+0x30>
    1a7c:	80 62       	ori	r24, 0x20	; 32
    1a7e:	80 93 90 00 	sts	0x0090, r24	; 0x800090 <__DATA_REGION_ORIGIN__+0x30>
				OCR3B = val; // set pwm duty
    1a82:	d0 93 9b 00 	sts	0x009B, r29	; 0x80009b <__DATA_REGION_ORIGIN__+0x3b>
    1a86:	c0 93 9a 00 	sts	0x009A, r28	; 0x80009a <__DATA_REGION_ORIGIN__+0x3a>
    1a8a:	c5 cf       	rjmp	.-118    	; 0x1a16 <analogWrite+0x6e>
			#endif

			#if defined(TCCR3A) && defined(COM3C1)
			case TIMER3C:
				// connect pwm to pin on timer 3, channel C
				sbi(TCCR3A, COM3C1);
    1a8c:	80 91 90 00 	lds	r24, 0x0090	; 0x800090 <__DATA_REGION_ORIGIN__+0x30>
    1a90:	88 60       	ori	r24, 0x08	; 8
    1a92:	80 93 90 00 	sts	0x0090, r24	; 0x800090 <__DATA_REGION_ORIGIN__+0x30>
				OCR3C = val; // set pwm duty
    1a96:	d0 93 9d 00 	sts	0x009D, r29	; 0x80009d <__DATA_REGION_ORIGIN__+0x3d>
    1a9a:	c0 93 9c 00 	sts	0x009C, r28	; 0x80009c <__DATA_REGION_ORIGIN__+0x3c>
    1a9e:	bb cf       	rjmp	.-138    	; 0x1a16 <analogWrite+0x6e>
			#endif

			#if defined(TCCR4A)
			case TIMER4A:
				//connect pwm to pin on timer 4, channel A
				sbi(TCCR4A, COM4A1);
    1aa0:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__DATA_REGION_ORIGIN__+0x60>
    1aa4:	80 68       	ori	r24, 0x80	; 128
    1aa6:	80 93 c0 00 	sts	0x00C0, r24	; 0x8000c0 <__DATA_REGION_ORIGIN__+0x60>
				#if defined(COM4A0)		// only used on 32U4
				cbi(TCCR4A, COM4A0);
    1aaa:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__DATA_REGION_ORIGIN__+0x60>
    1aae:	8f 7b       	andi	r24, 0xBF	; 191
    1ab0:	80 93 c0 00 	sts	0x00C0, r24	; 0x8000c0 <__DATA_REGION_ORIGIN__+0x60>
				#endif
				OCR4A = val;	// set pwm duty
    1ab4:	c0 93 cf 00 	sts	0x00CF, r28	; 0x8000cf <__DATA_REGION_ORIGIN__+0x6f>
    1ab8:	ae cf       	rjmp	.-164    	; 0x1a16 <analogWrite+0x6e>
			#endif
			
			#if defined(TCCR4A) && defined(COM4B1)
			case TIMER4B:
				// connect pwm to pin on timer 4, channel B
				sbi(TCCR4A, COM4B1);
    1aba:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__DATA_REGION_ORIGIN__+0x60>
    1abe:	80 62       	ori	r24, 0x20	; 32
    1ac0:	80 93 c0 00 	sts	0x00C0, r24	; 0x8000c0 <__DATA_REGION_ORIGIN__+0x60>
				OCR4B = val; // set pwm duty
    1ac4:	c0 93 d0 00 	sts	0x00D0, r28	; 0x8000d0 <__DATA_REGION_ORIGIN__+0x70>
    1ac8:	a6 cf       	rjmp	.-180    	; 0x1a16 <analogWrite+0x6e>
			#endif
				
			#if defined(TCCR4C) && defined(COM4D1)
			case TIMER4D:				
				// connect pwm to pin on timer 4, channel D
				sbi(TCCR4C, COM4D1);
    1aca:	80 91 c2 00 	lds	r24, 0x00C2	; 0x8000c2 <__DATA_REGION_ORIGIN__+0x62>
    1ace:	88 60       	ori	r24, 0x08	; 8
    1ad0:	80 93 c2 00 	sts	0x00C2, r24	; 0x8000c2 <__DATA_REGION_ORIGIN__+0x62>
				#if defined(COM4D0)		// only used on 32U4
				cbi(TCCR4C, COM4D0);
    1ad4:	80 91 c2 00 	lds	r24, 0x00C2	; 0x8000c2 <__DATA_REGION_ORIGIN__+0x62>
    1ad8:	8b 7f       	andi	r24, 0xFB	; 251
    1ada:	80 93 c2 00 	sts	0x00C2, r24	; 0x8000c2 <__DATA_REGION_ORIGIN__+0x62>
				#endif
				OCR4D = val;	// set pwm duty
    1ade:	c0 93 d2 00 	sts	0x00D2, r28	; 0x8000d2 <__DATA_REGION_ORIGIN__+0x72>
    1ae2:	99 cf       	rjmp	.-206    	; 0x1a16 <analogWrite+0x6e>
				break;
			#endif

			case NOT_ON_TIMER:
			default:
				if (val < 128) {
    1ae4:	c0 38       	cpi	r28, 0x80	; 128
    1ae6:	d1 05       	cpc	r29, r1
    1ae8:	0c f0       	brlt	.+2      	; 0x1aec <analogWrite+0x144>
    1aea:	72 cf       	rjmp	.-284    	; 0x19d0 <analogWrite+0x28>
    1aec:	67 cf       	rjmp	.-306    	; 0x19bc <analogWrite+0x14>

00001aee <micros>:
	return m;
}

unsigned long micros() {
	unsigned long m;
	uint8_t oldSREG = SREG, t;
    1aee:	3f b7       	in	r19, 0x3f	; 63
	
	cli();
    1af0:	f8 94       	cli
	m = timer0_overflow_count;
    1af2:	80 91 e9 02 	lds	r24, 0x02E9	; 0x8002e9 <timer0_overflow_count>
    1af6:	90 91 ea 02 	lds	r25, 0x02EA	; 0x8002ea <timer0_overflow_count+0x1>
    1afa:	a0 91 eb 02 	lds	r26, 0x02EB	; 0x8002eb <timer0_overflow_count+0x2>
    1afe:	b0 91 ec 02 	lds	r27, 0x02EC	; 0x8002ec <timer0_overflow_count+0x3>
#if defined(TCNT0)
	t = TCNT0;
    1b02:	26 b5       	in	r18, 0x26	; 38
#else
	#error TIMER 0 not defined
#endif

#ifdef TIFR0
	if ((TIFR0 & _BV(TOV0)) && (t < 255))
    1b04:	a8 9b       	sbis	0x15, 0	; 21
    1b06:	05 c0       	rjmp	.+10     	; 0x1b12 <micros+0x24>
    1b08:	2f 3f       	cpi	r18, 0xFF	; 255
    1b0a:	19 f0       	breq	.+6      	; 0x1b12 <micros+0x24>
		m++;
    1b0c:	01 96       	adiw	r24, 0x01	; 1
    1b0e:	a1 1d       	adc	r26, r1
    1b10:	b1 1d       	adc	r27, r1
#else
	if ((TIFR & _BV(TOV0)) && (t < 255))
		m++;
#endif

	SREG = oldSREG;
    1b12:	3f bf       	out	0x3f, r19	; 63
	
	return ((m << 8) + t) * (64 / clockCyclesPerMicrosecond());
    1b14:	ba 2f       	mov	r27, r26
    1b16:	a9 2f       	mov	r26, r25
    1b18:	98 2f       	mov	r25, r24
    1b1a:	88 27       	eor	r24, r24
    1b1c:	bc 01       	movw	r22, r24
    1b1e:	cd 01       	movw	r24, r26
    1b20:	62 0f       	add	r22, r18
    1b22:	71 1d       	adc	r23, r1
    1b24:	81 1d       	adc	r24, r1
    1b26:	91 1d       	adc	r25, r1
    1b28:	42 e0       	ldi	r20, 0x02	; 2
    1b2a:	66 0f       	add	r22, r22
    1b2c:	77 1f       	adc	r23, r23
    1b2e:	88 1f       	adc	r24, r24
    1b30:	99 1f       	adc	r25, r25
    1b32:	4a 95       	dec	r20
    1b34:	d1 f7       	brne	.-12     	; 0x1b2a <micros+0x3c>
}
    1b36:	08 95       	ret

00001b38 <delay>:

void delay(unsigned long ms)
{
    1b38:	8f 92       	push	r8
    1b3a:	9f 92       	push	r9
    1b3c:	af 92       	push	r10
    1b3e:	bf 92       	push	r11
    1b40:	cf 92       	push	r12
    1b42:	df 92       	push	r13
    1b44:	ef 92       	push	r14
    1b46:	ff 92       	push	r15
    1b48:	4b 01       	movw	r8, r22
    1b4a:	5c 01       	movw	r10, r24
	uint32_t start = micros();
    1b4c:	0e 94 77 0d 	call	0x1aee	; 0x1aee <micros>
    1b50:	6b 01       	movw	r12, r22
    1b52:	7c 01       	movw	r14, r24

	while (ms > 0) {
		yield();
		while ( ms > 0 && (micros() - start) >= 1000) {
    1b54:	0e 94 77 0d 	call	0x1aee	; 0x1aee <micros>
    1b58:	6c 19       	sub	r22, r12
    1b5a:	7d 09       	sbc	r23, r13
    1b5c:	8e 09       	sbc	r24, r14
    1b5e:	9f 09       	sbc	r25, r15
    1b60:	68 3e       	cpi	r22, 0xE8	; 232
    1b62:	73 40       	sbci	r23, 0x03	; 3
    1b64:	81 05       	cpc	r24, r1
    1b66:	91 05       	cpc	r25, r1
    1b68:	a8 f3       	brcs	.-22     	; 0x1b54 <delay+0x1c>
			ms--;
    1b6a:	21 e0       	ldi	r18, 0x01	; 1
    1b6c:	82 1a       	sub	r8, r18
    1b6e:	91 08       	sbc	r9, r1
    1b70:	a1 08       	sbc	r10, r1
    1b72:	b1 08       	sbc	r11, r1
			start += 1000;
    1b74:	88 ee       	ldi	r24, 0xE8	; 232
    1b76:	c8 0e       	add	r12, r24
    1b78:	83 e0       	ldi	r24, 0x03	; 3
    1b7a:	d8 1e       	adc	r13, r24
    1b7c:	e1 1c       	adc	r14, r1
    1b7e:	f1 1c       	adc	r15, r1
{
	uint32_t start = micros();

	while (ms > 0) {
		yield();
		while ( ms > 0 && (micros() - start) >= 1000) {
    1b80:	81 14       	cp	r8, r1
    1b82:	91 04       	cpc	r9, r1
    1b84:	a1 04       	cpc	r10, r1
    1b86:	b1 04       	cpc	r11, r1
    1b88:	29 f7       	brne	.-54     	; 0x1b54 <delay+0x1c>
			ms--;
			start += 1000;
		}
	}
}
    1b8a:	ff 90       	pop	r15
    1b8c:	ef 90       	pop	r14
    1b8e:	df 90       	pop	r13
    1b90:	cf 90       	pop	r12
    1b92:	bf 90       	pop	r11
    1b94:	af 90       	pop	r10
    1b96:	9f 90       	pop	r9
    1b98:	8f 90       	pop	r8
    1b9a:	08 95       	ret

00001b9c <_ZN7Serial_5writeEPKhj>:
{
	return write(&c, 1);
}

size_t Serial_::write(const uint8_t *buffer, size_t size)
{
    1b9c:	8f 92       	push	r8
    1b9e:	9f 92       	push	r9
    1ba0:	af 92       	push	r10
    1ba2:	bf 92       	push	r11
    1ba4:	cf 92       	push	r12
    1ba6:	df 92       	push	r13
    1ba8:	ef 92       	push	r14
    1baa:	ff 92       	push	r15
    1bac:	0f 93       	push	r16
    1bae:	1f 93       	push	r17
    1bb0:	cf 93       	push	r28
    1bb2:	df 93       	push	r29
    1bb4:	6c 01       	movw	r12, r24
    1bb6:	7b 01       	movw	r14, r22
    1bb8:	8a 01       	movw	r16, r20
	 the connection is closed are lost - just like with a UART. */
	
	// TODO - ZE - check behavior on different OSes and test what happens if an
	// open connection isn't broken cleanly (cable is yanked out, host dies
	// or locks up, or host virtual serial port hangs)
	if (_usbLineInfo.lineState > 0)	{
    1bba:	80 91 0b 01 	lds	r24, 0x010B	; 0x80010b <_ZL12_usbLineInfo+0x7>
    1bbe:	88 23       	and	r24, r24
    1bc0:	09 f4       	brne	.+2      	; 0x1bc4 <_ZN7Serial_5writeEPKhj+0x28>
    1bc2:	5c c0       	rjmp	.+184    	; 0x1c7c <_ZN7Serial_5writeEPKhj+0xe0>
}

//	Blocking Send of data to an endpoint
int USB_Send(u8 ep, const void* d, int len)
{
	if (!_usbConfiguration)
    1bc4:	80 91 16 03 	lds	r24, 0x0316	; 0x800316 <_usbConfiguration>
    1bc8:	88 23       	and	r24, r24
    1bca:	09 f4       	brne	.+2      	; 0x1bce <_ZN7Serial_5writeEPKhj+0x32>
    1bcc:	57 c0       	rjmp	.+174    	; 0x1c7c <_ZN7Serial_5writeEPKhj+0xe0>
		return -1;

	if (_usbSuspendState & (1<<SUSPI)) {
    1bce:	80 91 08 03 	lds	r24, 0x0308	; 0x800308 <_usbSuspendState>
    1bd2:	80 ff       	sbrs	r24, 0
    1bd4:	05 c0       	rjmp	.+10     	; 0x1be0 <_ZN7Serial_5writeEPKhj+0x44>
		//send a remote wakeup
		UDCON |= (1 << RMWKUP);
    1bd6:	80 91 e0 00 	lds	r24, 0x00E0	; 0x8000e0 <__DATA_REGION_ORIGIN__+0x80>
    1bda:	82 60       	ori	r24, 0x02	; 2
    1bdc:	80 93 e0 00 	sts	0x00E0, r24	; 0x8000e0 <__DATA_REGION_ORIGIN__+0x80>
{
	return write(&c, 1);
}

size_t Serial_::write(const uint8_t *buffer, size_t size)
{
    1be0:	e8 01       	movw	r28, r16
    1be2:	b1 2c       	mov	r11, r1
    1be4:	8a ef       	ldi	r24, 0xFA	; 250
    1be6:	a8 2e       	mov	r10, r24
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    1be8:	93 e0       	ldi	r25, 0x03	; 3
    1bea:	89 2e       	mov	r8, r25
	UEINTX = 0x6B;	// FIFOCON=0 NAKINI=1 RWAL=1 NAKOUTI=0 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=1
}

static inline void ReleaseTX()
{
	UEINTX = 0x3A;	// FIFOCON=0 NAKINI=0 RWAL=1 NAKOUTI=1 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=0
    1bec:	2a e3       	ldi	r18, 0x3A	; 58
    1bee:	92 2e       	mov	r9, r18
	int r = len;
	const u8* data = (const u8*)d;
	u8 timeout = 250;		// 250ms timeout on send? TODO
	bool sendZlp = false;

	while (len || sendZlp)
    1bf0:	20 97       	sbiw	r28, 0x00	; 0
    1bf2:	11 f4       	brne	.+4      	; 0x1bf8 <_ZN7Serial_5writeEPKhj+0x5c>
    1bf4:	bb 20       	and	r11, r11
    1bf6:	d9 f1       	breq	.+118    	; 0x1c6e <_ZN7Serial_5writeEPKhj+0xd2>
	{
		u8 n = USB_SendSpace(ep);
    1bf8:	0e 94 8b 0a 	call	0x1516	; 0x1516 <_Z13USB_SendSpaceh.constprop.3>
		if (n == 0)
    1bfc:	81 11       	cpse	r24, r1
    1bfe:	0a c0       	rjmp	.+20     	; 0x1c14 <_ZN7Serial_5writeEPKhj+0x78>
		{
			if (!(--timeout))
    1c00:	aa 94       	dec	r10
    1c02:	aa 20       	and	r10, r10
    1c04:	d9 f1       	breq	.+118    	; 0x1c7c <_ZN7Serial_5writeEPKhj+0xe0>
				return -1;
			delay(1);
    1c06:	61 e0       	ldi	r22, 0x01	; 1
    1c08:	70 e0       	ldi	r23, 0x00	; 0
    1c0a:	80 e0       	ldi	r24, 0x00	; 0
    1c0c:	90 e0       	ldi	r25, 0x00	; 0
    1c0e:	0e 94 9c 0d 	call	0x1b38	; 0x1b38 <delay>
    1c12:	ee cf       	rjmp	.-36     	; 0x1bf0 <_ZN7Serial_5writeEPKhj+0x54>
			continue;
		}

		if (n > len) {
    1c14:	8c 17       	cp	r24, r28
    1c16:	1d 06       	cpc	r1, r29
    1c18:	11 f0       	breq	.+4      	; 0x1c1e <_ZN7Serial_5writeEPKhj+0x82>
    1c1a:	0c f0       	brlt	.+2      	; 0x1c1e <_ZN7Serial_5writeEPKhj+0x82>
			n = len;
    1c1c:	8c 2f       	mov	r24, r28
#define USB_RECV_TIMEOUT
class LockEP
{
	u8 _sreg;
public:
	LockEP(u8 ep) : _sreg(SREG)
    1c1e:	9f b7       	in	r25, 0x3f	; 63
	{
		cli();
    1c20:	f8 94       	cli
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    1c22:	80 92 e9 00 	sts	0x00E9, r8	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
	UECONX = (1<<STALLRQ) | (1<<EPEN);
}

static inline u8 ReadWriteAllowed()
{
	return UEINTX & (1<<RWAL);
    1c26:	20 91 e8 00 	lds	r18, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
		}

		{
			LockEP lock(ep);
			// Frame may have been released by the SOF interrupt handler
			if (!ReadWriteAllowed())
    1c2a:	25 fd       	sbrc	r18, 5
    1c2c:	02 c0       	rjmp	.+4      	; 0x1c32 <_ZN7Serial_5writeEPKhj+0x96>
		cli();
		SetEP(ep & 7);
	}
	~LockEP()
	{
		SREG = _sreg;
    1c2e:	9f bf       	out	0x3f, r25	; 63
    1c30:	df cf       	rjmp	.-66     	; 0x1bf0 <_ZN7Serial_5writeEPKhj+0x54>
			LockEP lock(ep);
			// Frame may have been released by the SOF interrupt handler
			if (!ReadWriteAllowed())
				continue;

			len -= n;
    1c32:	28 2f       	mov	r18, r24
    1c34:	30 e0       	ldi	r19, 0x00	; 0
    1c36:	c2 1b       	sub	r28, r18
    1c38:	d3 0b       	sbc	r29, r19
    1c3a:	f7 01       	movw	r30, r14
				while (n--)
					Send8(pgm_read_byte(data++));
			}
			else
			{
				while (n--)
    1c3c:	81 50       	subi	r24, 0x01	; 1
    1c3e:	20 f0       	brcs	.+8      	; 0x1c48 <_ZN7Serial_5writeEPKhj+0xac>
					Send8(*data++);
    1c40:	41 91       	ld	r20, Z+
	return UEDATX;	
}

static inline void Send8(u8 d)
{
	UEDATX = d;
    1c42:	40 93 f1 00 	sts	0x00F1, r20	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
    1c46:	fa cf       	rjmp	.-12     	; 0x1c3c <_ZN7Serial_5writeEPKhj+0xa0>
    1c48:	e2 0e       	add	r14, r18
    1c4a:	f3 1e       	adc	r15, r19
			{
				while (n--)
					Send8(*data++);
			}

			if (sendZlp) {
    1c4c:	bb 20       	and	r11, r11
    1c4e:	21 f0       	breq	.+8      	; 0x1c58 <_ZN7Serial_5writeEPKhj+0xbc>
	UEINTX = 0x6B;	// FIFOCON=0 NAKINI=1 RWAL=1 NAKOUTI=0 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=1
}

static inline void ReleaseTX()
{
	UEINTX = 0x3A;	// FIFOCON=0 NAKINI=0 RWAL=1 NAKOUTI=1 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=0
    1c50:	90 92 e8 00 	sts	0x00E8, r9	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
			if (sendZlp) {
				ReleaseTX();
				sendZlp = false;
			} else if (!ReadWriteAllowed()) { // ...release if buffer is full...
				ReleaseTX();
				if (len == 0) sendZlp = true;
    1c54:	b1 2c       	mov	r11, r1
    1c56:	eb cf       	rjmp	.-42     	; 0x1c2e <_ZN7Serial_5writeEPKhj+0x92>
	UECONX = (1<<STALLRQ) | (1<<EPEN);
}

static inline u8 ReadWriteAllowed()
{
	return UEINTX & (1<<RWAL);
    1c58:	80 91 e8 00 	lds	r24, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
			}

			if (sendZlp) {
				ReleaseTX();
				sendZlp = false;
			} else if (!ReadWriteAllowed()) { // ...release if buffer is full...
    1c5c:	85 fd       	sbrc	r24, 5
    1c5e:	e7 cf       	rjmp	.-50     	; 0x1c2e <_ZN7Serial_5writeEPKhj+0x92>
	UEINTX = 0x6B;	// FIFOCON=0 NAKINI=1 RWAL=1 NAKOUTI=0 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=1
}

static inline void ReleaseTX()
{
	UEINTX = 0x3A;	// FIFOCON=0 NAKINI=0 RWAL=1 NAKOUTI=1 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=0
    1c60:	90 92 e8 00 	sts	0x00E8, r9	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
			if (sendZlp) {
				ReleaseTX();
				sendZlp = false;
			} else if (!ReadWriteAllowed()) { // ...release if buffer is full...
				ReleaseTX();
				if (len == 0) sendZlp = true;
    1c64:	bb 24       	eor	r11, r11
    1c66:	b3 94       	inc	r11
    1c68:	20 97       	sbiw	r28, 0x00	; 0
    1c6a:	09 f3       	breq	.-62     	; 0x1c2e <_ZN7Serial_5writeEPKhj+0x92>
    1c6c:	f3 cf       	rjmp	.-26     	; 0x1c54 <_ZN7Serial_5writeEPKhj+0xb8>
				// XXX: TRANSFER_RELEASE is never used can be removed?
				ReleaseTX();
			}
		}
	}
	TXLED1;					// light the TX LED
    1c6e:	5d 98       	cbi	0x0b, 5	; 11
	TxLEDPulse = TX_RX_LED_PULSE_MS;
    1c70:	84 e6       	ldi	r24, 0x64	; 100
    1c72:	80 93 07 03 	sts	0x0307, r24	; 0x800307 <TxLEDPulse>
	// TODO - ZE - check behavior on different OSes and test what happens if an
	// open connection isn't broken cleanly (cable is yanked out, host dies
	// or locks up, or host virtual serial port hangs)
	if (_usbLineInfo.lineState > 0)	{
		int r = USB_Send(CDC_TX,buffer,size);
		if (r > 0) {
    1c76:	10 16       	cp	r1, r16
    1c78:	11 06       	cpc	r1, r17
    1c7a:	3c f0       	brlt	.+14     	; 0x1c8a <_ZN7Serial_5writeEPKhj+0xee>
  private:
    int write_error;
    size_t printNumber(unsigned long, uint8_t);
    size_t printFloat(double, uint8_t);
  protected:
    void setWriteError(int err = 1) { write_error = err; }
    1c7c:	81 e0       	ldi	r24, 0x01	; 1
    1c7e:	90 e0       	ldi	r25, 0x00	; 0
    1c80:	f6 01       	movw	r30, r12
    1c82:	93 83       	std	Z+3, r25	; 0x03
    1c84:	82 83       	std	Z+2, r24	; 0x02
			return r;
		} else {
			setWriteError();
			return 0;
    1c86:	10 e0       	ldi	r17, 0x00	; 0
    1c88:	00 e0       	ldi	r16, 0x00	; 0
		}
	}
	setWriteError();
	return 0;
}
    1c8a:	c8 01       	movw	r24, r16
    1c8c:	df 91       	pop	r29
    1c8e:	cf 91       	pop	r28
    1c90:	1f 91       	pop	r17
    1c92:	0f 91       	pop	r16
    1c94:	ff 90       	pop	r15
    1c96:	ef 90       	pop	r14
    1c98:	df 90       	pop	r13
    1c9a:	cf 90       	pop	r12
    1c9c:	bf 90       	pop	r11
    1c9e:	af 90       	pop	r10
    1ca0:	9f 90       	pop	r9
    1ca2:	8f 90       	pop	r8
    1ca4:	08 95       	ret

00001ca6 <_ZN11ArduboyCore12buttonsStateEv>:
  buttons = buttons | (((~PINC) & B01000000) >> 4);
  // A and B
  buttons = buttons | (((~PINF) & B11000000) >> 6);
#elif defined(ARDUBOY_10)
  // down, up, left right
  buttons = ((~PINF) & B11110000);
    1ca6:	4f b1       	in	r20, 0x0f	; 15
  // A (left)
  buttons = buttons | (((~PINE) & B01000000) >> 3);
    1ca8:	8c b1       	in	r24, 0x0c	; 12
  // B (right)
  buttons = buttons | (((~PINB) & B00010000) >> 2);
    1caa:	23 b1       	in	r18, 0x03	; 3
  buttons = buttons | (((~PINF) & B11000000) >> 6);
#elif defined(ARDUBOY_10)
  // down, up, left right
  buttons = ((~PINF) & B11110000);
  // A (left)
  buttons = buttons | (((~PINE) & B01000000) >> 3);
    1cac:	90 e0       	ldi	r25, 0x00	; 0
    1cae:	80 95       	com	r24
    1cb0:	90 95       	com	r25
    1cb2:	33 e0       	ldi	r19, 0x03	; 3
    1cb4:	95 95       	asr	r25
    1cb6:	87 95       	ror	r24
    1cb8:	3a 95       	dec	r19
    1cba:	e1 f7       	brne	.-8      	; 0x1cb4 <_ZN11ArduboyCore12buttonsStateEv+0xe>
    1cbc:	88 70       	andi	r24, 0x08	; 8
  // B (right)
  buttons = buttons | (((~PINB) & B00010000) >> 2);
    1cbe:	30 e0       	ldi	r19, 0x00	; 0
    1cc0:	20 95       	com	r18
    1cc2:	30 95       	com	r19
    1cc4:	35 95       	asr	r19
    1cc6:	27 95       	ror	r18
    1cc8:	35 95       	asr	r19
    1cca:	27 95       	ror	r18
    1ccc:	24 70       	andi	r18, 0x04	; 4
    1cce:	82 2b       	or	r24, r18
  buttons = buttons | (((~PINC) & B01000000) >> 4);
  // A and B
  buttons = buttons | (((~PINF) & B11000000) >> 6);
#elif defined(ARDUBOY_10)
  // down, up, left right
  buttons = ((~PINF) & B11110000);
    1cd0:	94 2f       	mov	r25, r20
    1cd2:	90 95       	com	r25
    1cd4:	90 7f       	andi	r25, 0xF0	; 240
  // B (right)
  buttons = buttons | (((~PINB) & B00010000) >> 2);
#endif
  
  return buttons;
}
    1cd6:	89 2b       	or	r24, r25
    1cd8:	08 95       	ret

00001cda <_ZN11ArduboyCore4idleEv>:

/* Power Management */

void ArduboyCore::idle()
{
  set_sleep_mode(SLEEP_MODE_IDLE);
    1cda:	83 b7       	in	r24, 0x33	; 51
    1cdc:	81 7f       	andi	r24, 0xF1	; 241
    1cde:	83 bf       	out	0x33, r24	; 51
  sleep_mode();
    1ce0:	83 b7       	in	r24, 0x33	; 51
    1ce2:	81 60       	ori	r24, 0x01	; 1
    1ce4:	83 bf       	out	0x33, r24	; 51
    1ce6:	88 95       	sleep
    1ce8:	83 b7       	in	r24, 0x33	; 51
    1cea:	8e 7f       	andi	r24, 0xFE	; 254
    1cec:	83 bf       	out	0x33, r24	; 51
}
    1cee:	08 95       	ret

00001cf0 <_ZN11ArduboyCore14LCDCommandModeEv>:
  *csport &= ~cspinmask;
}

void ArduboyCore::LCDCommandMode()
{
  *csport |= cspinmask;
    1cf0:	e0 91 f8 02 	lds	r30, 0x02F8	; 0x8002f8 <_ZN11ArduboyCore6csportE>
    1cf4:	f0 91 f9 02 	lds	r31, 0x02F9	; 0x8002f9 <_ZN11ArduboyCore6csportE+0x1>
    1cf8:	90 81       	ld	r25, Z
    1cfa:	80 91 f7 02 	lds	r24, 0x02F7	; 0x8002f7 <_ZN11ArduboyCore9cspinmaskE>
    1cfe:	98 2b       	or	r25, r24
    1d00:	90 83       	st	Z, r25
  *dcport &= ~dcpinmask;
    1d02:	a0 91 f5 02 	lds	r26, 0x02F5	; 0x8002f5 <_ZN11ArduboyCore6dcportE>
    1d06:	b0 91 f6 02 	lds	r27, 0x02F6	; 0x8002f6 <_ZN11ArduboyCore6dcportE+0x1>
    1d0a:	2c 91       	ld	r18, X
    1d0c:	90 91 f4 02 	lds	r25, 0x02F4	; 0x8002f4 <_ZN11ArduboyCore9dcpinmaskE>
    1d10:	90 95       	com	r25
    1d12:	92 23       	and	r25, r18
    1d14:	9c 93       	st	X, r25
  *csport &= ~cspinmask;
    1d16:	90 81       	ld	r25, Z
    1d18:	80 95       	com	r24
    1d1a:	89 23       	and	r24, r25
    1d1c:	80 83       	st	Z, r24
}
    1d1e:	08 95       	ret

00001d20 <_ZN11ArduboyCore11LCDDataModeEv>:
  LCDDataMode();
}

void ArduboyCore::LCDDataMode()
{
  *dcport |= dcpinmask;
    1d20:	e0 91 f5 02 	lds	r30, 0x02F5	; 0x8002f5 <_ZN11ArduboyCore6dcportE>
    1d24:	f0 91 f6 02 	lds	r31, 0x02F6	; 0x8002f6 <_ZN11ArduboyCore6dcportE+0x1>
    1d28:	80 81       	ld	r24, Z
    1d2a:	90 91 f4 02 	lds	r25, 0x02F4	; 0x8002f4 <_ZN11ArduboyCore9dcpinmaskE>
    1d2e:	89 2b       	or	r24, r25
    1d30:	80 83       	st	Z, r24
  *csport &= ~cspinmask;
    1d32:	e0 91 f8 02 	lds	r30, 0x02F8	; 0x8002f8 <_ZN11ArduboyCore6csportE>
    1d36:	f0 91 f9 02 	lds	r31, 0x02F9	; 0x8002f9 <_ZN11ArduboyCore6csportE+0x1>
    1d3a:	90 81       	ld	r25, Z
    1d3c:	80 91 f7 02 	lds	r24, 0x02F7	; 0x8002f7 <_ZN11ArduboyCore9cspinmaskE>
    1d40:	80 95       	com	r24
    1d42:	89 23       	and	r24, r25
    1d44:	80 83       	st	Z, r24
}
    1d46:	08 95       	ret

00001d48 <_ZN12ArduboyTunes8playNoteEhh.part.2>:
      stopNote(0);
      break;
  }
}

void ArduboyTunes::playNote(byte chan, byte note)
    1d48:	cf 92       	push	r12
    1d4a:	df 92       	push	r13
    1d4c:	ef 92       	push	r14
    1d4e:	ff 92       	push	r15
    1d50:	0f 93       	push	r16
    1d52:	1f 93       	push	r17
    1d54:	cf 93       	push	r28
  // we only have frequencies for 128 notes
  if (note > 127) {
    return;
  }

  timer_num = pgm_read_byte(tune_pin_to_timer_PGM + chan);
    1d56:	e8 2f       	mov	r30, r24
    1d58:	f0 e0       	ldi	r31, 0x00	; 0
    1d5a:	e9 59       	subi	r30, 0x99	; 153
    1d5c:	f0 4f       	sbci	r31, 0xF0	; 240
    1d5e:	c4 91       	lpm	r28, Z
    1d60:	e6 2f       	mov	r30, r22
    1d62:	f0 e0       	ldi	r31, 0x00	; 0
  if (note < 48) {
    1d64:	60 33       	cpi	r22, 0x30	; 48
    1d66:	98 f5       	brcc	.+102    	; 0x1dce <_ZN12ArduboyTunes8playNoteEhh.part.2+0x86>
    frequency2 = pgm_read_byte(_midi_byte_note_frequencies + note);
    1d68:	e8 5e       	subi	r30, 0xE8	; 232
    1d6a:	f0 4f       	sbci	r31, 0xF0	; 240
    1d6c:	e4 91       	lpm	r30, Z
    1d6e:	0e 2f       	mov	r16, r30
    1d70:	10 e0       	ldi	r17, 0x00	; 0
    frequency2 = pgm_read_word(_midi_word_note_frequencies + note - 48);
  }

  //******  16-bit timer  *********
  // two choices for the 16 bit timers: ck/1 or ck/64
  ocr = F_CPU / frequency2 - 1;
    1d72:	f1 2c       	mov	r15, r1
    1d74:	e1 2c       	mov	r14, r1
    1d76:	60 e0       	ldi	r22, 0x00	; 0
    1d78:	74 e2       	ldi	r23, 0x24	; 36
    1d7a:	84 ef       	ldi	r24, 0xF4	; 244
    1d7c:	90 e0       	ldi	r25, 0x00	; 0
    1d7e:	a7 01       	movw	r20, r14
    1d80:	98 01       	movw	r18, r16
    1d82:	0e 94 e9 26 	call	0x4dd2	; 0x4dd2 <__divmodsi4>
    1d86:	21 50       	subi	r18, 0x01	; 1
    1d88:	31 09       	sbc	r19, r1
    1d8a:	41 09       	sbc	r20, r1
    1d8c:	51 09       	sbc	r21, r1
  prescalar_bits = 0b001;
    1d8e:	91 e0       	ldi	r25, 0x01	; 1
  if (ocr > 0xffff) {
    1d90:	21 15       	cp	r18, r1
    1d92:	31 05       	cpc	r19, r1
    1d94:	81 e0       	ldi	r24, 0x01	; 1
    1d96:	48 07       	cpc	r20, r24
    1d98:	51 05       	cpc	r21, r1
    1d9a:	6c f0       	brlt	.+26     	; 0x1db6 <_ZN12ArduboyTunes8playNoteEhh.part.2+0x6e>
    ocr = F_CPU / frequency2 / 64 - 1;
    1d9c:	60 e9       	ldi	r22, 0x90	; 144
    1d9e:	70 ed       	ldi	r23, 0xD0	; 208
    1da0:	83 e0       	ldi	r24, 0x03	; 3
    1da2:	90 e0       	ldi	r25, 0x00	; 0
    1da4:	a7 01       	movw	r20, r14
    1da6:	98 01       	movw	r18, r16
    1da8:	0e 94 e9 26 	call	0x4dd2	; 0x4dd2 <__divmodsi4>
    1dac:	21 50       	subi	r18, 0x01	; 1
    1dae:	31 09       	sbc	r19, r1
    1db0:	41 09       	sbc	r20, r1
    1db2:	51 09       	sbc	r21, r1
    prescalar_bits = 0b011;
    1db4:	93 e0       	ldi	r25, 0x03	; 3
  }
  // Set the OCR for the given timer, then turn on the interrupts
  switch (timer_num) {
    1db6:	c1 30       	cpi	r28, 0x01	; 1
    1db8:	89 f0       	breq	.+34     	; 0x1ddc <_ZN12ArduboyTunes8playNoteEhh.part.2+0x94>
    1dba:	c3 30       	cpi	r28, 0x03	; 3
    1dbc:	f9 f0       	breq	.+62     	; 0x1dfc <_ZN12ArduboyTunes8playNoteEhh.part.2+0xb4>
      wait_timer_frequency2 = frequency2;  // for "tune_delay" function
      wait_timer_playing = true;
      bitWrite(TIMSK3, OCIE3A, 1);
      break;
  }
}
    1dbe:	cf 91       	pop	r28
    1dc0:	1f 91       	pop	r17
    1dc2:	0f 91       	pop	r16
    1dc4:	ff 90       	pop	r15
    1dc6:	ef 90       	pop	r14
    1dc8:	df 90       	pop	r13
    1dca:	cf 90       	pop	r12
    1dcc:	08 95       	ret

  timer_num = pgm_read_byte(tune_pin_to_timer_PGM + chan);
  if (note < 48) {
    frequency2 = pgm_read_byte(_midi_byte_note_frequencies + note);
  } else {
    frequency2 = pgm_read_word(_midi_word_note_frequencies + note - 48);
    1dce:	ee 0f       	add	r30, r30
    1dd0:	ff 1f       	adc	r31, r31
    1dd2:	e8 5e       	subi	r30, 0xE8	; 232
    1dd4:	f1 4f       	sbci	r31, 0xF1	; 241
    1dd6:	05 91       	lpm	r16, Z+
    1dd8:	14 91       	lpm	r17, Z
    1dda:	cb cf       	rjmp	.-106    	; 0x1d72 <_ZN12ArduboyTunes8playNoteEhh.part.2+0x2a>
    prescalar_bits = 0b011;
  }
  // Set the OCR for the given timer, then turn on the interrupts
  switch (timer_num) {
    case 1:
      TCCR1B = (TCCR1B & 0b11111000) | prescalar_bits;
    1ddc:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
    1de0:	88 7f       	andi	r24, 0xF8	; 248
    1de2:	89 2b       	or	r24, r25
    1de4:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
      OCR1A = ocr;
    1de8:	30 93 89 00 	sts	0x0089, r19	; 0x800089 <__DATA_REGION_ORIGIN__+0x29>
    1dec:	20 93 88 00 	sts	0x0088, r18	; 0x800088 <__DATA_REGION_ORIGIN__+0x28>
      bitWrite(TIMSK1, OCIE1A, 1);
    1df0:	80 91 6f 00 	lds	r24, 0x006F	; 0x80006f <__DATA_REGION_ORIGIN__+0xf>
    1df4:	82 60       	ori	r24, 0x02	; 2
    1df6:	80 93 6f 00 	sts	0x006F, r24	; 0x80006f <__DATA_REGION_ORIGIN__+0xf>
    1dfa:	e1 cf       	rjmp	.-62     	; 0x1dbe <_ZN12ArduboyTunes8playNoteEhh.part.2+0x76>
      break;
    case 3:
      TCCR3B = (TCCR3B & 0b11111000) | prescalar_bits;
    1dfc:	80 91 91 00 	lds	r24, 0x0091	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
    1e00:	88 7f       	andi	r24, 0xF8	; 248
    1e02:	89 2b       	or	r24, r25
    1e04:	80 93 91 00 	sts	0x0091, r24	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
      OCR3A = ocr;
    1e08:	30 93 99 00 	sts	0x0099, r19	; 0x800099 <__DATA_REGION_ORIGIN__+0x39>
    1e0c:	20 93 98 00 	sts	0x0098, r18	; 0x800098 <__DATA_REGION_ORIGIN__+0x38>
      wait_timer_frequency2 = frequency2;  // for "tune_delay" function
    1e10:	10 93 e7 02 	sts	0x02E7, r17	; 0x8002e7 <wait_timer_frequency2+0x1>
    1e14:	00 93 e6 02 	sts	0x02E6, r16	; 0x8002e6 <wait_timer_frequency2>
      wait_timer_playing = true;
    1e18:	81 e0       	ldi	r24, 0x01	; 1
    1e1a:	80 93 e5 02 	sts	0x02E5, r24	; 0x8002e5 <wait_timer_playing>
      bitWrite(TIMSK3, OCIE3A, 1);
    1e1e:	80 91 71 00 	lds	r24, 0x0071	; 0x800071 <__DATA_REGION_ORIGIN__+0x11>
    1e22:	82 60       	ori	r24, 0x02	; 2
    1e24:	80 93 71 00 	sts	0x0071, r24	; 0x800071 <__DATA_REGION_ORIGIN__+0x11>
    1e28:	ca cf       	rjmp	.-108    	; 0x1dbe <_ZN12ArduboyTunes8playNoteEhh.part.2+0x76>

00001e2a <_ZN12ArduboyTunes8stopNoteEh>:
}

void ArduboyTunes::stopNote(byte chan)
{
  byte timer_num;
  timer_num = pgm_read_byte(tune_pin_to_timer_PGM + chan);
    1e2a:	e8 2f       	mov	r30, r24
    1e2c:	f0 e0       	ldi	r31, 0x00	; 0
    1e2e:	e9 59       	subi	r30, 0x99	; 153
    1e30:	f0 4f       	sbci	r31, 0xF0	; 240
    1e32:	e4 91       	lpm	r30, Z
  switch (timer_num) {
    1e34:	e1 30       	cpi	r30, 0x01	; 1
    1e36:	19 f0       	breq	.+6      	; 0x1e3e <_ZN12ArduboyTunes8stopNoteEh+0x14>
    1e38:	e3 30       	cpi	r30, 0x03	; 3
    1e3a:	89 f0       	breq	.+34     	; 0x1e5e <_ZN12ArduboyTunes8stopNoteEh+0x34>
    1e3c:	08 95       	ret
    case 1:
      TIMSK1 &= ~(1 << OCIE1A);                 // disable the interrupt
    1e3e:	80 91 6f 00 	lds	r24, 0x006F	; 0x80006f <__DATA_REGION_ORIGIN__+0xf>
    1e42:	8d 7f       	andi	r24, 0xFD	; 253
    1e44:	80 93 6f 00 	sts	0x006F, r24	; 0x80006f <__DATA_REGION_ORIGIN__+0xf>
      *_tunes_timer1_pin_port &= ~(_tunes_timer1_pin_mask);   // keep pin low after stop
    1e48:	80 91 f0 02 	lds	r24, 0x02F0	; 0x8002f0 <_tunes_timer1_pin_mask>
    1e4c:	e0 91 f1 02 	lds	r30, 0x02F1	; 0x8002f1 <_tunes_timer1_pin_port>
    1e50:	f0 91 f2 02 	lds	r31, 0x02F2	; 0x8002f2 <_tunes_timer1_pin_port+0x1>
      break;
    case 3:
      wait_timer_playing = false;
      *_tunes_timer3_pin_port &= ~(_tunes_timer3_pin_mask);   // keep pin low after stop
    1e54:	90 81       	ld	r25, Z
    1e56:	80 95       	com	r24
    1e58:	89 23       	and	r24, r25
    1e5a:	80 83       	st	Z, r24
      break;
  }
}
    1e5c:	08 95       	ret
    case 1:
      TIMSK1 &= ~(1 << OCIE1A);                 // disable the interrupt
      *_tunes_timer1_pin_port &= ~(_tunes_timer1_pin_mask);   // keep pin low after stop
      break;
    case 3:
      wait_timer_playing = false;
    1e5e:	10 92 e5 02 	sts	0x02E5, r1	; 0x8002e5 <wait_timer_playing>
      *_tunes_timer3_pin_port &= ~(_tunes_timer3_pin_mask);   // keep pin low after stop
    1e62:	80 91 ed 02 	lds	r24, 0x02ED	; 0x8002ed <_tunes_timer3_pin_mask>
    1e66:	e0 91 ee 02 	lds	r30, 0x02EE	; 0x8002ee <_tunes_timer3_pin_port>
    1e6a:	f0 91 ef 02 	lds	r31, 0x02EF	; 0x8002ef <_tunes_timer3_pin_port+0x1>
    1e6e:	f2 cf       	rjmp	.-28     	; 0x1e54 <_ZN12ArduboyTunes8stopNoteEh+0x2a>

00001e70 <_ZN12ArduboyTunes4stepEv>:
{
  byte command, opcode, chan;
  unsigned duration;

  while (1) {
    command = pgm_read_byte(score_cursor++);
    1e70:	e0 91 19 03 	lds	r30, 0x0319	; 0x800319 <score_cursor>
    1e74:	f0 91 1a 03 	lds	r31, 0x031A	; 0x80031a <score_cursor+0x1>
    1e78:	bf 01       	movw	r22, r30
    1e7a:	6f 5f       	subi	r22, 0xFF	; 255
    1e7c:	7f 4f       	sbci	r23, 0xFF	; 255
    1e7e:	70 93 1a 03 	sts	0x031A, r23	; 0x80031a <score_cursor+0x1>
    1e82:	60 93 19 03 	sts	0x0319, r22	; 0x800319 <score_cursor>
    1e86:	24 91       	lpm	r18, Z
    opcode = command & 0xf0;
    1e88:	92 2f       	mov	r25, r18
    1e8a:	90 7f       	andi	r25, 0xF0	; 240
    chan = command & 0x0f;
    1e8c:	82 2f       	mov	r24, r18
    1e8e:	8f 70       	andi	r24, 0x0F	; 15
    if (opcode == TUNE_OP_STOPNOTE) { /* stop note */
    1e90:	90 38       	cpi	r25, 0x80	; 128
    1e92:	19 f4       	brne	.+6      	; 0x1e9a <_ZN12ArduboyTunes4stepEv+0x2a>
      stopNote(chan);
    1e94:	0e 94 15 0f 	call	0x1e2a	; 0x1e2a <_ZN12ArduboyTunes8stopNoteEh>
    1e98:	eb cf       	rjmp	.-42     	; 0x1e70 <_ZN12ArduboyTunes4stepEv>
    }
    else if (opcode == TUNE_OP_PLAYNOTE) { /* play note */
    1e9a:	90 39       	cpi	r25, 0x90	; 144
    1e9c:	81 f4       	brne	.+32     	; 0x1ebe <_ZN12ArduboyTunes4stepEv+0x4e>
      playNote(chan, pgm_read_byte(score_cursor++));
    1e9e:	32 96       	adiw	r30, 0x02	; 2
    1ea0:	f0 93 1a 03 	sts	0x031A, r31	; 0x80031a <score_cursor+0x1>
    1ea4:	e0 93 19 03 	sts	0x0319, r30	; 0x800319 <score_cursor>
    1ea8:	fb 01       	movw	r30, r22
    1eaa:	64 91       	lpm	r22, Z
  byte prescalar_bits;
  unsigned int frequency2; /* frequency times 2 */
  unsigned long ocr;

  // we can't plan on a channel that does not exist
  if (chan >= _tune_num_chans)
    1eac:	90 91 17 03 	lds	r25, 0x0317	; 0x800317 <_tune_num_chans>
    1eb0:	89 17       	cp	r24, r25
    1eb2:	f0 f6       	brcc	.-68     	; 0x1e70 <_ZN12ArduboyTunes4stepEv>
    return;

  // we only have frequencies for 128 notes
  if (note > 127) {
    1eb4:	67 fd       	sbrc	r22, 7
    1eb6:	dc cf       	rjmp	.-72     	; 0x1e70 <_ZN12ArduboyTunes4stepEv>
    1eb8:	0e 94 a4 0e 	call	0x1d48	; 0x1d48 <_ZN12ArduboyTunes8playNoteEhh.part.2>
    1ebc:	d9 cf       	rjmp	.-78     	; 0x1e70 <_ZN12ArduboyTunes4stepEv>
      stopNote(chan);
    }
    else if (opcode == TUNE_OP_PLAYNOTE) { /* play note */
      playNote(chan, pgm_read_byte(score_cursor++));
    }
    else if (opcode == TUNE_OP_RESTART) { /* restart score */
    1ebe:	90 3e       	cpi	r25, 0xE0	; 224
    1ec0:	49 f4       	brne	.+18     	; 0x1ed4 <_ZN12ArduboyTunes4stepEv+0x64>
      score_cursor = score_start;
    1ec2:	80 91 1b 03 	lds	r24, 0x031B	; 0x80031b <score_start>
    1ec6:	90 91 1c 03 	lds	r25, 0x031C	; 0x80031c <score_start+0x1>
    1eca:	90 93 1a 03 	sts	0x031A, r25	; 0x80031a <score_cursor+0x1>
    1ece:	80 93 19 03 	sts	0x0319, r24	; 0x800319 <score_cursor>
    1ed2:	ce cf       	rjmp	.-100    	; 0x1e70 <_ZN12ArduboyTunes4stepEv>
    }
    else if (opcode == TUNE_OP_STOP) { /* stop score */
    1ed4:	90 3f       	cpi	r25, 0xF0	; 240
    1ed6:	19 f4       	brne	.+6      	; 0x1ede <_ZN12ArduboyTunes4stepEv+0x6e>
      tune_playing = false;
    1ed8:	10 92 18 03 	sts	0x0318, r1	; 0x800318 <tune_playing>
    1edc:	08 95       	ret
      break;
    }
    else if (opcode < 0x80) { /* wait count in msec. */
    1ede:	97 fd       	sbrc	r25, 7
    1ee0:	c7 cf       	rjmp	.-114    	; 0x1e70 <_ZN12ArduboyTunes4stepEv>
      duration = ((unsigned)command << 8) | (pgm_read_byte(score_cursor++));
    1ee2:	32 96       	adiw	r30, 0x02	; 2
    1ee4:	f0 93 1a 03 	sts	0x031A, r31	; 0x80031a <score_cursor+0x1>
    1ee8:	e0 93 19 03 	sts	0x0319, r30	; 0x800319 <score_cursor>
    1eec:	fb 01       	movw	r30, r22
    1eee:	64 91       	lpm	r22, Z
      wait_toggle_count = ((unsigned long) wait_timer_frequency2 * duration + 500) / 1000;
    1ef0:	a0 91 e6 02 	lds	r26, 0x02E6	; 0x8002e6 <wait_timer_frequency2>
    1ef4:	b0 91 e7 02 	lds	r27, 0x02E7	; 0x8002e7 <wait_timer_frequency2+0x1>
    else if (opcode == TUNE_OP_STOP) { /* stop score */
      tune_playing = false;
      break;
    }
    else if (opcode < 0x80) { /* wait count in msec. */
      duration = ((unsigned)command << 8) | (pgm_read_byte(score_cursor++));
    1ef8:	32 2f       	mov	r19, r18
    1efa:	26 2f       	mov	r18, r22
      wait_toggle_count = ((unsigned long) wait_timer_frequency2 * duration + 500) / 1000;
    1efc:	0e 94 3d 27 	call	0x4e7a	; 0x4e7a <__umulhisi3>
    1f00:	6c 50       	subi	r22, 0x0C	; 12
    1f02:	7e 4f       	sbci	r23, 0xFE	; 254
    1f04:	8f 4f       	sbci	r24, 0xFF	; 255
    1f06:	9f 4f       	sbci	r25, 0xFF	; 255
    1f08:	28 ee       	ldi	r18, 0xE8	; 232
    1f0a:	33 e0       	ldi	r19, 0x03	; 3
    1f0c:	40 e0       	ldi	r20, 0x00	; 0
    1f0e:	50 e0       	ldi	r21, 0x00	; 0
    1f10:	0e 94 1b 27 	call	0x4e36	; 0x4e36 <__udivmodsi4>
    1f14:	20 93 e1 02 	sts	0x02E1, r18	; 0x8002e1 <wait_toggle_count>
    1f18:	30 93 e2 02 	sts	0x02E2, r19	; 0x8002e2 <wait_toggle_count+0x1>
    1f1c:	40 93 e3 02 	sts	0x02E3, r20	; 0x8002e3 <wait_toggle_count+0x2>
    1f20:	50 93 e4 02 	sts	0x02E4, r21	; 0x8002e4 <wait_toggle_count+0x3>
      if (wait_toggle_count == 0) wait_toggle_count = 1;
    1f24:	80 91 e1 02 	lds	r24, 0x02E1	; 0x8002e1 <wait_toggle_count>
    1f28:	90 91 e2 02 	lds	r25, 0x02E2	; 0x8002e2 <wait_toggle_count+0x1>
    1f2c:	a0 91 e3 02 	lds	r26, 0x02E3	; 0x8002e3 <wait_toggle_count+0x2>
    1f30:	b0 91 e4 02 	lds	r27, 0x02E4	; 0x8002e4 <wait_toggle_count+0x3>
    1f34:	89 2b       	or	r24, r25
    1f36:	8a 2b       	or	r24, r26
    1f38:	8b 2b       	or	r24, r27
    1f3a:	61 f4       	brne	.+24     	; 0x1f54 <_ZN12ArduboyTunes4stepEv+0xe4>
    1f3c:	81 e0       	ldi	r24, 0x01	; 1
    1f3e:	90 e0       	ldi	r25, 0x00	; 0
    1f40:	a0 e0       	ldi	r26, 0x00	; 0
    1f42:	b0 e0       	ldi	r27, 0x00	; 0
    1f44:	80 93 e1 02 	sts	0x02E1, r24	; 0x8002e1 <wait_toggle_count>
    1f48:	90 93 e2 02 	sts	0x02E2, r25	; 0x8002e2 <wait_toggle_count+0x1>
    1f4c:	a0 93 e3 02 	sts	0x02E3, r26	; 0x8002e3 <wait_toggle_count+0x2>
    1f50:	b0 93 e4 02 	sts	0x02E4, r27	; 0x8002e4 <wait_toggle_count+0x3>
      break;
    }
  }
}
    1f54:	08 95       	ret

00001f56 <_ZN9MyArduboy10playScore2EPKhh.constprop.29>:
void MyArduboy::saveAudioOnOff(void)
{
    myAudio.saveOnOff();
}

void MyArduboy::playScore2(const byte *score, uint8_t priority)
    1f56:	0f 93       	push	r16
    1f58:	1f 93       	push	r17
    1f5a:	cf 93       	push	r28
    1f5c:	df 93       	push	r29
{
    if (!isAudioEnabled()) return;
    1f5e:	20 91 1d 03 	lds	r18, 0x031D	; 0x80031d <_ZN12ArduboyAudio13audio_enabledE>
    1f62:	22 23       	and	r18, r18
    1f64:	29 f1       	breq	.+74     	; 0x1fb0 <_ZN9MyArduboy10playScore2EPKhh.constprop.29+0x5a>
    1f66:	16 2f       	mov	r17, r22
    1f68:	ec 01       	movw	r28, r24
  tune_playing = false;
}

bool ArduboyTunes::playing()
{
  return tune_playing;
    1f6a:	80 91 18 03 	lds	r24, 0x0318	; 0x800318 <tune_playing>
    if (pTunes->playing()) {
    1f6e:	88 23       	and	r24, r24
    1f70:	81 f0       	breq	.+32     	; 0x1f92 <_ZN9MyArduboy10playScore2EPKhh.constprop.29+0x3c>
        if (priority > playScorePriority) return;
    1f72:	80 91 8c 07 	lds	r24, 0x078C	; 0x80078c <arduboy+0x41e>
    1f76:	86 17       	cp	r24, r22
    1f78:	d8 f0       	brcs	.+54     	; 0x1fb0 <_ZN9MyArduboy10playScore2EPKhh.constprop.29+0x5a>
  tune_playing = true;  /* release the interrupt routine */
}

void ArduboyTunes::stopScore (void)
{
  for (uint8_t i = 0; i < _tune_num_chans; i++)
    1f7a:	00 e0       	ldi	r16, 0x00	; 0
    1f7c:	80 91 17 03 	lds	r24, 0x0317	; 0x800317 <_tune_num_chans>
    1f80:	08 17       	cp	r16, r24
    1f82:	28 f4       	brcc	.+10     	; 0x1f8e <_ZN9MyArduboy10playScore2EPKhh.constprop.29+0x38>
    stopNote(i);
    1f84:	80 2f       	mov	r24, r16
    1f86:	0e 94 15 0f 	call	0x1e2a	; 0x1e2a <_ZN12ArduboyTunes8stopNoteEh>
  tune_playing = true;  /* release the interrupt routine */
}

void ArduboyTunes::stopScore (void)
{
  for (uint8_t i = 0; i < _tune_num_chans; i++)
    1f8a:	0f 5f       	subi	r16, 0xFF	; 255
    1f8c:	f7 cf       	rjmp	.-18     	; 0x1f7c <_ZN9MyArduboy10playScore2EPKhh.constprop.29+0x26>
    stopNote(i);
  tune_playing = false;
    1f8e:	10 92 18 03 	sts	0x0318, r1	; 0x800318 <tune_playing>
        pTunes->stopScore();
    }
    playScorePriority = priority;
    1f92:	10 93 8c 07 	sts	0x078C, r17	; 0x80078c <arduboy+0x41e>
  }
}

void ArduboyTunes::playScore(const byte *score)
{
  score_start = score;
    1f96:	d0 93 1c 03 	sts	0x031C, r29	; 0x80031c <score_start+0x1>
    1f9a:	c0 93 1b 03 	sts	0x031B, r28	; 0x80031b <score_start>
  score_cursor = score_start;
    1f9e:	d0 93 1a 03 	sts	0x031A, r29	; 0x80031a <score_cursor+0x1>
    1fa2:	c0 93 19 03 	sts	0x0319, r28	; 0x800319 <score_cursor>
  step();  /* execute initial commands */
    1fa6:	0e 94 38 0f 	call	0x1e70	; 0x1e70 <_ZN12ArduboyTunes4stepEv>
  tune_playing = true;  /* release the interrupt routine */
    1faa:	81 e0       	ldi	r24, 0x01	; 1
    1fac:	80 93 18 03 	sts	0x0318, r24	; 0x800318 <tune_playing>
    pTunes->playScore(score);
}
    1fb0:	df 91       	pop	r29
    1fb2:	cf 91       	pop	r28
    1fb4:	1f 91       	pop	r17
    1fb6:	0f 91       	pop	r16
    1fb8:	08 95       	ret

00001fba <_ZN12ArduboyAudio3offEv>:
  return audio_enabled;
}

void ArduboyAudio::off()
{
  audio_enabled = false;
    1fba:	10 92 1d 03 	sts	0x031D, r1	; 0x80031d <_ZN12ArduboyAudio13audio_enabledE>
  power_timer1_disable();
    1fbe:	e4 e6       	ldi	r30, 0x64	; 100
    1fc0:	f0 e0       	ldi	r31, 0x00	; 0
    1fc2:	80 81       	ld	r24, Z
    1fc4:	88 60       	ori	r24, 0x08	; 8
    1fc6:	80 83       	st	Z, r24
  power_timer3_disable();
    1fc8:	e5 e6       	ldi	r30, 0x65	; 101
    1fca:	f0 e0       	ldi	r31, 0x00	; 0
    1fcc:	80 81       	ld	r24, Z
    1fce:	88 60       	ori	r24, 0x08	; 8
    1fd0:	80 83       	st	Z, r24
}
    1fd2:	08 95       	ret

00001fd4 <_ZN12ArduboyAudio2onEv>:

bool ArduboyAudio::audio_enabled = false;

void ArduboyAudio::on()
{
  power_timer1_enable();
    1fd4:	e4 e6       	ldi	r30, 0x64	; 100
    1fd6:	f0 e0       	ldi	r31, 0x00	; 0
    1fd8:	80 81       	ld	r24, Z
    1fda:	87 7f       	andi	r24, 0xF7	; 247
    1fdc:	80 83       	st	Z, r24
  power_timer3_enable();
    1fde:	e5 e6       	ldi	r30, 0x65	; 101
    1fe0:	f0 e0       	ldi	r31, 0x00	; 0
    1fe2:	80 81       	ld	r24, Z
    1fe4:	87 7f       	andi	r24, 0xF7	; 247
    1fe6:	80 83       	st	Z, r24
  audio_enabled = true;
    1fe8:	81 e0       	ldi	r24, 0x01	; 1
    1fea:	80 93 1d 03 	sts	0x031D, r24	; 0x80031d <_ZN12ArduboyAudio13audio_enabledE>
}
    1fee:	08 95       	ret

00001ff0 <_ZN7Arduboy9drawPixelEiih>:
}

void Arduboy::drawPixel(int x, int y, uint8_t color)
{
  #ifdef PIXEL_SAFE_MODE
  if (x < 0 || x > (WIDTH-1) || y < 0 || y > (HEIGHT-1))
    1ff0:	60 38       	cpi	r22, 0x80	; 128
    1ff2:	71 05       	cpc	r23, r1
    1ff4:	e8 f4       	brcc	.+58     	; 0x2030 <_ZN7Arduboy9drawPixelEiih+0x40>
    1ff6:	40 34       	cpi	r20, 0x40	; 64
    1ff8:	51 05       	cpc	r21, r1
    1ffa:	d0 f4       	brcc	.+52     	; 0x2030 <_ZN7Arduboy9drawPixelEiih+0x40>
  {
    return;
  }
  #endif

  uint8_t row = (uint8_t)y / 8;
    1ffc:	34 2f       	mov	r19, r20
    1ffe:	36 95       	lsr	r19
    2000:	36 95       	lsr	r19
    2002:	36 95       	lsr	r19
    2004:	a0 e8       	ldi	r26, 0x80	; 128
    2006:	3a 9f       	mul	r19, r26
    2008:	f0 01       	movw	r30, r0
    200a:	11 24       	eor	r1, r1
    200c:	e6 0f       	add	r30, r22
    200e:	f7 1f       	adc	r31, r23
    2010:	e8 0f       	add	r30, r24
    2012:	f9 1f       	adc	r31, r25
    2014:	34 89       	ldd	r19, Z+20	; 0x14
    2016:	ca 01       	movw	r24, r20
    2018:	87 70       	andi	r24, 0x07	; 7
    201a:	99 27       	eor	r25, r25
    201c:	41 e0       	ldi	r20, 0x01	; 1
    201e:	50 e0       	ldi	r21, 0x00	; 0
    2020:	01 c0       	rjmp	.+2      	; 0x2024 <_ZN7Arduboy9drawPixelEiih+0x34>
    2022:	44 0f       	add	r20, r20
    2024:	8a 95       	dec	r24
    2026:	ea f7       	brpl	.-6      	; 0x2022 <_ZN7Arduboy9drawPixelEiih+0x32>
  if (color)
    2028:	22 23       	and	r18, r18
    202a:	19 f0       	breq	.+6      	; 0x2032 <_ZN7Arduboy9drawPixelEiih+0x42>
  {
    sBuffer[(row*WIDTH) + (uint8_t)x] |=   _BV((uint8_t)y % 8);
    202c:	43 2b       	or	r20, r19
  }
  else
  {
    sBuffer[(row*WIDTH) + (uint8_t)x] &= ~ _BV((uint8_t)y % 8);
    202e:	44 8b       	std	Z+20, r20	; 0x14
  }
}
    2030:	08 95       	ret
  {
    sBuffer[(row*WIDTH) + (uint8_t)x] |=   _BV((uint8_t)y % 8);
  }
  else
  {
    sBuffer[(row*WIDTH) + (uint8_t)x] &= ~ _BV((uint8_t)y % 8);
    2032:	40 95       	com	r20
    2034:	43 23       	and	r20, r19
    2036:	fb cf       	rjmp	.-10     	; 0x202e <_ZN7Arduboy9drawPixelEiih+0x3e>

00002038 <_ZN7Arduboy5writeEh>:
{
  wrap = w;
}

size_t Arduboy::write(uint8_t c)
{
    2038:	2f 92       	push	r2
    203a:	3f 92       	push	r3
    203c:	4f 92       	push	r4
    203e:	5f 92       	push	r5
    2040:	6f 92       	push	r6
    2042:	7f 92       	push	r7
    2044:	8f 92       	push	r8
    2046:	9f 92       	push	r9
    2048:	af 92       	push	r10
    204a:	bf 92       	push	r11
    204c:	cf 92       	push	r12
    204e:	df 92       	push	r13
    2050:	ef 92       	push	r14
    2052:	ff 92       	push	r15
    2054:	0f 93       	push	r16
    2056:	1f 93       	push	r17
    2058:	cf 93       	push	r28
    205a:	df 93       	push	r29
    205c:	cd b7       	in	r28, 0x3d	; 61
    205e:	de b7       	in	r29, 0x3e	; 62
    2060:	2d 97       	sbiw	r28, 0x0d	; 13
    2062:	0f b6       	in	r0, 0x3f	; 63
    2064:	f8 94       	cli
    2066:	de bf       	out	0x3e, r29	; 62
    2068:	0f be       	out	0x3f, r0	; 63
    206a:	cd bf       	out	0x3d, r28	; 61
  if (c == '\n')
    206c:	6a 30       	cpi	r22, 0x0A	; 10
    206e:	69 f5       	brne	.+90     	; 0x20ca <_ZN7Arduboy5writeEh+0x92>
  {
    cursor_y += textsize*8;
    2070:	fc 01       	movw	r30, r24
    2072:	ea 5e       	subi	r30, 0xEA	; 234
    2074:	fb 4f       	sbci	r31, 0xFB	; 251
    2076:	dc 01       	movw	r26, r24
    2078:	a8 5e       	subi	r26, 0xE8	; 232
    207a:	bb 4f       	sbci	r27, 0xFB	; 251
    207c:	2c 91       	ld	r18, X
    207e:	48 e0       	ldi	r20, 0x08	; 8
    2080:	24 9f       	mul	r18, r20
    2082:	90 01       	movw	r18, r0
    2084:	11 24       	eor	r1, r1
    2086:	40 81       	ld	r20, Z
    2088:	51 81       	ldd	r21, Z+1	; 0x01
    208a:	24 0f       	add	r18, r20
    208c:	35 1f       	adc	r19, r21
    208e:	31 83       	std	Z+1, r19	; 0x01
    2090:	20 83       	st	Z, r18
    cursor_x = 0;
    2092:	14 97       	sbiw	r26, 0x04	; 4
    2094:	1d 92       	st	X+, r1
    2096:	1c 92       	st	X, r1
      // calling ourselves recursively for 'newline' is 
      // 12 bytes smaller than doing the same math here
      write('\n');
    }
  }
}
    2098:	2d 96       	adiw	r28, 0x0d	; 13
    209a:	0f b6       	in	r0, 0x3f	; 63
    209c:	f8 94       	cli
    209e:	de bf       	out	0x3e, r29	; 62
    20a0:	0f be       	out	0x3f, r0	; 63
    20a2:	cd bf       	out	0x3d, r28	; 61
    20a4:	df 91       	pop	r29
    20a6:	cf 91       	pop	r28
    20a8:	1f 91       	pop	r17
    20aa:	0f 91       	pop	r16
    20ac:	ff 90       	pop	r15
    20ae:	ef 90       	pop	r14
    20b0:	df 90       	pop	r13
    20b2:	cf 90       	pop	r12
    20b4:	bf 90       	pop	r11
    20b6:	af 90       	pop	r10
    20b8:	9f 90       	pop	r9
    20ba:	8f 90       	pop	r8
    20bc:	7f 90       	pop	r7
    20be:	6f 90       	pop	r6
    20c0:	5f 90       	pop	r5
    20c2:	4f 90       	pop	r4
    20c4:	3f 90       	pop	r3
    20c6:	2f 90       	pop	r2
    20c8:	08 95       	ret
  if (c == '\n')
  {
    cursor_y += textsize*8;
    cursor_x = 0;
  }
  else if (c == '\r')
    20ca:	6d 30       	cpi	r22, 0x0D	; 13
    20cc:	29 f3       	breq	.-54     	; 0x2098 <_ZN7Arduboy5writeEh+0x60>
    20ce:	9d 87       	std	Y+13, r25	; 0x0d
    20d0:	8c 87       	std	Y+12, r24	; 0x0c
  {
    // skip em
  }
  else
  {
    drawChar(cursor_x, cursor_y, c, 1, 0, textsize);
    20d2:	8c 5e       	subi	r24, 0xEC	; 236
    20d4:	9b 4f       	sbci	r25, 0xFB	; 251
    20d6:	9a 83       	std	Y+2, r25	; 0x02
    20d8:	89 83       	std	Y+1, r24	; 0x01
    20da:	fc 01       	movw	r30, r24
    20dc:	80 80       	ld	r8, Z
    20de:	91 80       	ldd	r9, Z+1	; 0x01
    20e0:	2c 85       	ldd	r18, Y+12	; 0x0c
    20e2:	3d 85       	ldd	r19, Y+13	; 0x0d
    20e4:	28 5e       	subi	r18, 0xE8	; 232
    20e6:	3b 4f       	sbci	r19, 0xFB	; 251
    20e8:	3c 83       	std	Y+4, r19	; 0x04
    20ea:	2b 83       	std	Y+3, r18	; 0x03
void Arduboy::drawChar
(int16_t x, int16_t y, unsigned char c, uint8_t color, uint8_t bg, uint8_t size)
{
  boolean draw_background = bg != color;

  if ((x >= WIDTH) ||         // Clip right
    20ec:	30 e8       	ldi	r19, 0x80	; 128
    20ee:	83 16       	cp	r8, r19
    20f0:	91 04       	cpc	r9, r1
    20f2:	0c f0       	brlt	.+2      	; 0x20f6 <_ZN7Arduboy5writeEh+0xbe>
    20f4:	71 c0       	rjmp	.+226    	; 0x21d8 <_ZN7Arduboy5writeEh+0x1a0>
  {
    // skip em
  }
  else
  {
    drawChar(cursor_x, cursor_y, c, 1, 0, textsize);
    20f6:	ec 85       	ldd	r30, Y+12	; 0x0c
    20f8:	fd 85       	ldd	r31, Y+13	; 0x0d
    20fa:	ea 5e       	subi	r30, 0xEA	; 234
    20fc:	fb 4f       	sbci	r31, 0xFB	; 251
    20fe:	60 80       	ld	r6, Z
    2100:	71 80       	ldd	r7, Z+1	; 0x01
void Arduboy::drawChar
(int16_t x, int16_t y, unsigned char c, uint8_t color, uint8_t bg, uint8_t size)
{
  boolean draw_background = bg != color;

  if ((x >= WIDTH) ||         // Clip right
    2102:	40 e4       	ldi	r20, 0x40	; 64
    2104:	64 16       	cp	r6, r20
    2106:	71 04       	cpc	r7, r1
    2108:	0c f0       	brlt	.+2      	; 0x210c <_ZN7Arduboy5writeEh+0xd4>
    210a:	66 c0       	rjmp	.+204    	; 0x21d8 <_ZN7Arduboy5writeEh+0x1a0>
  {
    // skip em
  }
  else
  {
    drawChar(cursor_x, cursor_y, c, 1, 0, textsize);
    210c:	ab 81       	ldd	r26, Y+3	; 0x03
    210e:	bc 81       	ldd	r27, Y+4	; 0x04
    2110:	4c 90       	ld	r4, X
{
  boolean draw_background = bg != color;

  if ((x >= WIDTH) ||         // Clip right
    (y >= HEIGHT) ||        // Clip bottom
    ((x + 5 * size - 1) < 0) ||   // Clip left
    2112:	45 e0       	ldi	r20, 0x05	; 5
    2114:	94 01       	movw	r18, r8
    2116:	44 9e       	mul	r4, r20
    2118:	20 0d       	add	r18, r0
    211a:	31 1d       	adc	r19, r1
    211c:	11 24       	eor	r1, r1
(int16_t x, int16_t y, unsigned char c, uint8_t color, uint8_t bg, uint8_t size)
{
  boolean draw_background = bg != color;

  if ((x >= WIDTH) ||         // Clip right
    (y >= HEIGHT) ||        // Clip bottom
    211e:	12 16       	cp	r1, r18
    2120:	13 06       	cpc	r1, r19
    2122:	0c f0       	brlt	.+2      	; 0x2126 <_ZN7Arduboy5writeEh+0xee>
    2124:	59 c0       	rjmp	.+178    	; 0x21d8 <_ZN7Arduboy5writeEh+0x1a0>
    ((x + 5 * size - 1) < 0) ||   // Clip left
    ((y + 8 * size - 1) < 0)    // Clip top
    2126:	24 2c       	mov	r2, r4
    2128:	31 2c       	mov	r3, r1
    212a:	91 01       	movw	r18, r2
    212c:	53 e0       	ldi	r21, 0x03	; 3
    212e:	22 0f       	add	r18, r18
    2130:	33 1f       	adc	r19, r19
    2132:	5a 95       	dec	r21
    2134:	e1 f7       	brne	.-8      	; 0x212e <_ZN7Arduboy5writeEh+0xf6>
    2136:	26 0d       	add	r18, r6
    2138:	37 1d       	adc	r19, r7
{
  boolean draw_background = bg != color;

  if ((x >= WIDTH) ||         // Clip right
    (y >= HEIGHT) ||        // Clip bottom
    ((x + 5 * size - 1) < 0) ||   // Clip left
    213a:	12 16       	cp	r1, r18
    213c:	13 06       	cpc	r1, r19
    213e:	0c f0       	brlt	.+2      	; 0x2142 <_ZN7Arduboy5writeEh+0x10a>
    2140:	4b c0       	rjmp	.+150    	; 0x21d8 <_ZN7Arduboy5writeEh+0x1a0>
    {
      line = 0x0;
    }
    else
    {
      line = pgm_read_byte(font+(c*5)+i);
    2142:	64 9f       	mul	r22, r20
    2144:	b0 01       	movw	r22, r0
    2146:	11 24       	eor	r1, r1
    2148:	10 e0       	ldi	r17, 0x00	; 0
    214a:	00 e0       	ldi	r16, 0x00	; 0
    214c:	fb 01       	movw	r30, r22
    214e:	e8 58       	subi	r30, 0x88	; 136
    2150:	f6 4f       	sbci	r31, 0xF6	; 246
    2152:	fb 87       	std	Y+11, r31	; 0x0b
    2154:	ea 87       	std	Y+10, r30	; 0x0a
  for (int8_t i=0; i<6; i++ )
  {
    uint8_t line;
    if (i == 5)
    {
      line = 0x0;
    2156:	e0 e0       	ldi	r30, 0x00	; 0
  }

  for (int8_t i=0; i<6; i++ )
  {
    uint8_t line;
    if (i == 5)
    2158:	05 30       	cpi	r16, 0x05	; 5
    215a:	29 f0       	breq	.+10     	; 0x2166 <_ZN7Arduboy5writeEh+0x12e>
    {
      line = 0x0;
    }
    else
    {
      line = pgm_read_byte(font+(c*5)+i);
    215c:	ea 85       	ldd	r30, Y+10	; 0x0a
    215e:	fb 85       	ldd	r31, Y+11	; 0x0b
    2160:	e0 0f       	add	r30, r16
    2162:	f1 1f       	adc	r31, r17
    2164:	e4 91       	lpm	r30, Z
    2166:	53 01       	movw	r10, r6
  for (int8_t i=0; i<6; i++ )
  {
    uint8_t line;
    if (i == 5)
    {
      line = 0x0;
    2168:	98 e0       	ldi	r25, 0x08	; 8
    216a:	59 2e       	mov	r5, r25
      line = pgm_read_byte(font+(c*5)+i);
    }

    for (int8_t j = 0; j<8; j++)
    {
      uint8_t draw_color = (line & 0x1) ? color : bg;
    216c:	2e 2f       	mov	r18, r30
    216e:	30 e0       	ldi	r19, 0x00	; 0
    2170:	3e 83       	std	Y+6, r19	; 0x06
    2172:	2d 83       	std	Y+5, r18	; 0x05
    2174:	e1 70       	andi	r30, 0x01	; 1
    2176:	ef 83       	std	Y+7, r30	; 0x07
    2178:	f1 2c       	mov	r15, r1
    217a:	e1 2c       	mov	r14, r1

      if (draw_color || draw_background) {
        for (uint8_t a = 0; a < size; a++ ) {
    217c:	e4 14       	cp	r14, r4
    217e:	d8 f4       	brcc	.+54     	; 0x21b6 <_ZN7Arduboy5writeEh+0x17e>
    2180:	c4 01       	movw	r24, r8
    2182:	8e 0d       	add	r24, r14
    2184:	9f 1d       	adc	r25, r15
    2186:	99 87       	std	Y+9, r25	; 0x09
    2188:	88 87       	std	Y+8, r24	; 0x08
    218a:	d1 2c       	mov	r13, r1
    218c:	c1 2c       	mov	r12, r1
          for (uint8_t b = 0; b < size; b++ ) {
    218e:	c4 14       	cp	r12, r4
    2190:	70 f4       	brcc	.+28     	; 0x21ae <_ZN7Arduboy5writeEh+0x176>
            drawPixel(x + (i * size) + a, y + (j * size) + b, draw_color);
    2192:	a6 01       	movw	r20, r12
    2194:	4a 0d       	add	r20, r10
    2196:	5b 1d       	adc	r21, r11
    2198:	2f 81       	ldd	r18, Y+7	; 0x07
    219a:	68 85       	ldd	r22, Y+8	; 0x08
    219c:	79 85       	ldd	r23, Y+9	; 0x09
    219e:	8c 85       	ldd	r24, Y+12	; 0x0c
    21a0:	9d 85       	ldd	r25, Y+13	; 0x0d
    21a2:	0e 94 f8 0f 	call	0x1ff0	; 0x1ff0 <_ZN7Arduboy9drawPixelEiih>
    21a6:	9f ef       	ldi	r25, 0xFF	; 255
    21a8:	c9 1a       	sub	r12, r25
    21aa:	d9 0a       	sbc	r13, r25
    21ac:	f0 cf       	rjmp	.-32     	; 0x218e <_ZN7Arduboy5writeEh+0x156>
    21ae:	af ef       	ldi	r26, 0xFF	; 255
    21b0:	ea 1a       	sub	r14, r26
    21b2:	fa 0a       	sbc	r15, r26
    21b4:	e3 cf       	rjmp	.-58     	; 0x217c <_ZN7Arduboy5writeEh+0x144>
          }
        }
      }
      line >>= 1;
    21b6:	ed 81       	ldd	r30, Y+5	; 0x05
    21b8:	fe 81       	ldd	r31, Y+6	; 0x06
    21ba:	f5 95       	asr	r31
    21bc:	e7 95       	ror	r30
    21be:	5a 94       	dec	r5
    21c0:	a2 0c       	add	r10, r2
    21c2:	b3 1c       	adc	r11, r3
    else
    {
      line = pgm_read_byte(font+(c*5)+i);
    }

    for (int8_t j = 0; j<8; j++)
    21c4:	51 10       	cpse	r5, r1
    21c6:	d2 cf       	rjmp	.-92     	; 0x216c <_ZN7Arduboy5writeEh+0x134>
    21c8:	0f 5f       	subi	r16, 0xFF	; 255
    21ca:	1f 4f       	sbci	r17, 0xFF	; 255
    21cc:	82 0c       	add	r8, r2
    21ce:	93 1c       	adc	r9, r3
  )
  {
    return;
  }

  for (int8_t i=0; i<6; i++ )
    21d0:	06 30       	cpi	r16, 0x06	; 6
    21d2:	11 05       	cpc	r17, r1
    21d4:	09 f0       	breq	.+2      	; 0x21d8 <_ZN7Arduboy5writeEh+0x1a0>
    21d6:	bf cf       	rjmp	.-130    	; 0x2156 <_ZN7Arduboy5writeEh+0x11e>
    // skip em
  }
  else
  {
    drawChar(cursor_x, cursor_y, c, 1, 0, textsize);
    cursor_x += textsize*6;
    21d8:	eb 81       	ldd	r30, Y+3	; 0x03
    21da:	fc 81       	ldd	r31, Y+4	; 0x04
    21dc:	20 81       	ld	r18, Z
    21de:	42 2f       	mov	r20, r18
    21e0:	50 e0       	ldi	r21, 0x00	; 0
    21e2:	a9 81       	ldd	r26, Y+1	; 0x01
    21e4:	ba 81       	ldd	r27, Y+2	; 0x02
    21e6:	8d 91       	ld	r24, X+
    21e8:	9c 91       	ld	r25, X
    21ea:	b6 e0       	ldi	r27, 0x06	; 6
    21ec:	2b 9f       	mul	r18, r27
    21ee:	80 0d       	add	r24, r0
    21f0:	91 1d       	adc	r25, r1
    21f2:	11 24       	eor	r1, r1
    21f4:	e9 81       	ldd	r30, Y+1	; 0x01
    21f6:	fa 81       	ldd	r31, Y+2	; 0x02
    21f8:	91 83       	std	Z+1, r25	; 0x01
    21fa:	80 83       	st	Z, r24
    if (wrap && (cursor_x > (WIDTH - textsize*6)))
    21fc:	ec 85       	ldd	r30, Y+12	; 0x0c
    21fe:	fd 85       	ldd	r31, Y+13	; 0x0d
    2200:	e7 5e       	subi	r30, 0xE7	; 231
    2202:	fb 4f       	sbci	r31, 0xFB	; 251
    2204:	20 81       	ld	r18, Z
    2206:	22 23       	and	r18, r18
    2208:	09 f4       	brne	.+2      	; 0x220c <_ZN7Arduboy5writeEh+0x1d4>
    220a:	46 cf       	rjmp	.-372    	; 0x2098 <_ZN7Arduboy5writeEh+0x60>
    220c:	6a ef       	ldi	r22, 0xFA	; 250
    220e:	64 03       	mulsu	r22, r20
    2210:	90 01       	movw	r18, r0
    2212:	65 9f       	mul	r22, r21
    2214:	30 0d       	add	r19, r0
    2216:	11 24       	eor	r1, r1
    2218:	20 58       	subi	r18, 0x80	; 128
    221a:	3f 4f       	sbci	r19, 0xFF	; 255
    221c:	28 17       	cp	r18, r24
    221e:	39 07       	cpc	r19, r25
    2220:	0c f0       	brlt	.+2      	; 0x2224 <_ZN7Arduboy5writeEh+0x1ec>
    2222:	3a cf       	rjmp	.-396    	; 0x2098 <_ZN7Arduboy5writeEh+0x60>
    {
      // calling ourselves recursively for 'newline' is 
      // 12 bytes smaller than doing the same math here
      write('\n');
    2224:	ac 85       	ldd	r26, Y+12	; 0x0c
    2226:	bd 85       	ldd	r27, Y+13	; 0x0d
    2228:	ed 91       	ld	r30, X+
    222a:	fc 91       	ld	r31, X
    222c:	11 97       	sbiw	r26, 0x01	; 1
    222e:	01 90       	ld	r0, Z+
    2230:	f0 81       	ld	r31, Z
    2232:	e0 2d       	mov	r30, r0
    2234:	6a e0       	ldi	r22, 0x0A	; 10
    2236:	cd 01       	movw	r24, r26
    }
  }
}
    2238:	2d 96       	adiw	r28, 0x0d	; 13
    223a:	0f b6       	in	r0, 0x3f	; 63
    223c:	f8 94       	cli
    223e:	de bf       	out	0x3e, r29	; 62
    2240:	0f be       	out	0x3f, r0	; 63
    2242:	cd bf       	out	0x3d, r28	; 61
    2244:	df 91       	pop	r29
    2246:	cf 91       	pop	r28
    2248:	1f 91       	pop	r17
    224a:	0f 91       	pop	r16
    224c:	ff 90       	pop	r15
    224e:	ef 90       	pop	r14
    2250:	df 90       	pop	r13
    2252:	cf 90       	pop	r12
    2254:	bf 90       	pop	r11
    2256:	af 90       	pop	r10
    2258:	9f 90       	pop	r9
    225a:	8f 90       	pop	r8
    225c:	7f 90       	pop	r7
    225e:	6f 90       	pop	r6
    2260:	5f 90       	pop	r5
    2262:	4f 90       	pop	r4
    2264:	3f 90       	pop	r3
    2266:	2f 90       	pop	r2
    cursor_x += textsize*6;
    if (wrap && (cursor_x > (WIDTH - textsize*6)))
    {
      // calling ourselves recursively for 'newline' is 
      // 12 bytes smaller than doing the same math here
      write('\n');
    2268:	09 94       	ijmp

0000226a <_ZL10playSound2v>:
    arduboy.playScore2(sound1, 255);
}

static void playSound2(void)
{
    arduboy.playScore2(sound2, 255);
    226a:	6f ef       	ldi	r22, 0xFF	; 255
    226c:	82 e7       	ldi	r24, 0x72	; 114
    226e:	99 e0       	ldi	r25, 0x09	; 9
    2270:	0c 94 ab 0f 	jmp	0x1f56	; 0x1f56 <_ZN9MyArduboy10playScore2EPKhh.constprop.29>

00002274 <_Z10updateLogov>:

bool updateLogo(void)
{
    2274:	cf 93       	push	r28
    2276:	df 93       	push	r29
    counter--;
    2278:	d0 91 fa 02 	lds	r29, 0x02FA	; 0x8002fa <_ZL7counter.lto_priv.56>
    227c:	d1 50       	subi	r29, 0x01	; 1
    227e:	d0 93 fa 02 	sts	0x02FA, r29	; 0x8002fa <_ZL7counter.lto_priv.56>
    signalOn = (SIGNAL_PTN >> (counter - 15) / 3) & 1;
    2282:	2d 2f       	mov	r18, r29
    2284:	2f 50       	subi	r18, 0x0F	; 15
    2286:	33 0b       	sbc	r19, r19
    2288:	c9 01       	movw	r24, r18
    228a:	63 e0       	ldi	r22, 0x03	; 3
    228c:	70 e0       	ldi	r23, 0x00	; 0
    228e:	0e 94 77 29 	call	0x52ee	; 0x52ee <__divmodhi4>
    2292:	8a e3       	ldi	r24, 0x3A	; 58
    2294:	9a ea       	ldi	r25, 0xAA	; 170
    2296:	a3 ee       	ldi	r26, 0xE3	; 227
    2298:	be ee       	ldi	r27, 0xEE	; 238
    229a:	04 c0       	rjmp	.+8      	; 0x22a4 <_Z10updateLogov+0x30>
    229c:	b6 95       	lsr	r27
    229e:	a7 95       	ror	r26
    22a0:	97 95       	ror	r25
    22a2:	87 95       	ror	r24
    22a4:	6a 95       	dec	r22
    22a6:	d2 f7       	brpl	.-12     	; 0x229c <_Z10updateLogov+0x28>
    22a8:	c8 2f       	mov	r28, r24
    22aa:	c1 70       	andi	r28, 0x01	; 1
    22ac:	c0 93 b4 02 	sts	0x02B4, r28	; 0x8002b4 <_ZL8signalOn>

void ArduboyCore::setRGBled(uint8_t red, uint8_t green, uint8_t blue)
{
#ifdef ARDUBOY_10 // RGB, all the pretty colors
  // inversion is necessary because these are common annode LEDs
  analogWrite(RED_LED, 255 - red);
    22b0:	6f ef       	ldi	r22, 0xFF	; 255
    22b2:	70 e0       	ldi	r23, 0x00	; 0
    22b4:	8a e0       	ldi	r24, 0x0A	; 10
    22b6:	0e 94 d4 0c 	call	0x19a8	; 0x19a8 <analogWrite>
  analogWrite(GREEN_LED, 255 - green);
    22ba:	6f ef       	ldi	r22, 0xFF	; 255
    22bc:	70 e0       	ldi	r23, 0x00	; 0
    22be:	8b e0       	ldi	r24, 0x0B	; 11
    22c0:	0e 94 d4 0c 	call	0x19a8	; 0x19a8 <analogWrite>
    arduboy.setRGBled(0, 0, signalOn * 127);
    22c4:	8f e7       	ldi	r24, 0x7F	; 127
    22c6:	c8 9f       	mul	r28, r24
    22c8:	80 2d       	mov	r24, r0
    22ca:	11 24       	eor	r1, r1
  analogWrite(BLUE_LED, 255 - blue);
    22cc:	6f ef       	ldi	r22, 0xFF	; 255
    22ce:	70 e0       	ldi	r23, 0x00	; 0
    22d0:	68 1b       	sub	r22, r24
    22d2:	71 09       	sbc	r23, r1
    22d4:	89 e0       	ldi	r24, 0x09	; 9
    22d6:	0e 94 d4 0c 	call	0x19a8	; 0x19a8 <analogWrite>
    return (counter <= 0);
    22da:	81 e0       	ldi	r24, 0x01	; 1
    22dc:	d1 11       	cpse	r29, r1
    22de:	80 e0       	ldi	r24, 0x00	; 0
}
    22e0:	df 91       	pop	r29
    22e2:	cf 91       	pop	r28
    22e4:	08 95       	ret

000022e6 <_ZL15drawScoreFigureiii>:
{
    arduboy.drawBitmap(x, y, imgPlayer + (dir * 4 + anim) * 8, 8, 8, WHITE);
}

static void drawScoreFigure(int x, int y, int value)
{
    22e6:	cf 92       	push	r12
    22e8:	df 92       	push	r13
    22ea:	ef 92       	push	r14
    22ec:	0f 93       	push	r16
    22ee:	1f 93       	push	r17
    22f0:	cf 93       	push	r28
    22f2:	df 93       	push	r29
    22f4:	ec 01       	movw	r28, r24
    22f6:	6b 01       	movw	r12, r22
    22f8:	8a 01       	movw	r16, r20
    if (value > 9) {
    22fa:	4a 30       	cpi	r20, 0x0A	; 10
    22fc:	51 05       	cpc	r21, r1
    22fe:	5c f0       	brlt	.+22     	; 0x2316 <_ZL15drawScoreFigureiii+0x30>
        drawScoreFigure(x - 10, y, value / 10);
    2300:	ca 01       	movw	r24, r20
    2302:	6a e0       	ldi	r22, 0x0A	; 10
    2304:	70 e0       	ldi	r23, 0x00	; 0
    2306:	0e 94 77 29 	call	0x52ee	; 0x52ee <__divmodhi4>
    230a:	ab 01       	movw	r20, r22
    230c:	b6 01       	movw	r22, r12
    230e:	ce 01       	movw	r24, r28
    2310:	0a 97       	sbiw	r24, 0x0a	; 10
    2312:	0e 94 73 11 	call	0x22e6	; 0x22e6 <_ZL15drawScoreFigureiii>
    }
    arduboy.drawBitmap(x, y, imgNumber + (value % 10) * 16, 8, 16, WHITE);
    2316:	c8 01       	movw	r24, r16
    2318:	6a e0       	ldi	r22, 0x0A	; 10
    231a:	70 e0       	ldi	r23, 0x00	; 0
    231c:	0e 94 77 29 	call	0x52ee	; 0x52ee <__divmodhi4>
    2320:	ac 01       	movw	r20, r24
    2322:	84 e0       	ldi	r24, 0x04	; 4
    2324:	44 0f       	add	r20, r20
    2326:	55 1f       	adc	r21, r21
    2328:	8a 95       	dec	r24
    232a:	e1 f7       	brne	.-8      	; 0x2324 <_ZL15drawScoreFigureiii+0x3e>
    232c:	4b 5b       	subi	r20, 0xBB	; 187
    232e:	5b 4f       	sbci	r21, 0xFB	; 251
    2330:	ee 24       	eor	r14, r14
    2332:	e3 94       	inc	r14
    2334:	00 e1       	ldi	r16, 0x10	; 16
    2336:	28 e0       	ldi	r18, 0x08	; 8
    2338:	b6 01       	movw	r22, r12
    233a:	ce 01       	movw	r24, r28
    233c:	0e 94 31 09 	call	0x1262	; 0x1262 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28>
}
    2340:	df 91       	pop	r29
    2342:	cf 91       	pop	r28
    2344:	1f 91       	pop	r17
    2346:	0f 91       	pop	r16
    2348:	ef 90       	pop	r14
    234a:	df 90       	pop	r13
    234c:	cf 90       	pop	r12
    234e:	08 95       	ret

00002350 <_ZN9MyArduboy5writeEh>:
    setCursor(x, y);
    return print(p);
}

size_t MyArduboy::write(uint8_t c)
{
    2350:	2f 92       	push	r2
    2352:	3f 92       	push	r3
    2354:	4f 92       	push	r4
    2356:	5f 92       	push	r5
    2358:	6f 92       	push	r6
    235a:	7f 92       	push	r7
    235c:	8f 92       	push	r8
    235e:	9f 92       	push	r9
    2360:	af 92       	push	r10
    2362:	bf 92       	push	r11
    2364:	cf 92       	push	r12
    2366:	df 92       	push	r13
    2368:	ef 92       	push	r14
    236a:	ff 92       	push	r15
    236c:	0f 93       	push	r16
    236e:	1f 93       	push	r17
    2370:	cf 93       	push	r28
    2372:	df 93       	push	r29
    2374:	cd b7       	in	r28, 0x3d	; 61
    2376:	de b7       	in	r29, 0x3e	; 62
    2378:	2f 97       	sbiw	r28, 0x0f	; 15
    237a:	0f b6       	in	r0, 0x3f	; 63
    237c:	f8 94       	cli
    237e:	de bf       	out	0x3e, r29	; 62
    2380:	0f be       	out	0x3f, r0	; 63
    2382:	cd bf       	out	0x3d, r28	; 61
    if (c == '\n') {
    2384:	6a 30       	cpi	r22, 0x0A	; 10
    2386:	71 f5       	brne	.+92     	; 0x23e4 <_ZN9MyArduboy5writeEh+0x94>
        cursor_y += textSize * 6;
    2388:	fc 01       	movw	r30, r24
    238a:	ea 5e       	subi	r30, 0xEA	; 234
    238c:	fb 4f       	sbci	r31, 0xFB	; 251
    238e:	dc 01       	movw	r26, r24
    2390:	a8 5e       	subi	r26, 0xE8	; 232
    2392:	bb 4f       	sbci	r27, 0xFB	; 251
    2394:	4c 91       	ld	r20, X
    2396:	20 81       	ld	r18, Z
    2398:	31 81       	ldd	r19, Z+1	; 0x01
    239a:	56 e0       	ldi	r21, 0x06	; 6
    239c:	45 9f       	mul	r20, r21
    239e:	20 0d       	add	r18, r0
    23a0:	31 1d       	adc	r19, r1
    23a2:	11 24       	eor	r1, r1
    23a4:	31 83       	std	Z+1, r19	; 0x01
    23a6:	20 83       	st	Z, r18
        cursor_x = 0;
    23a8:	14 97       	sbiw	r26, 0x04	; 4
    23aa:	1d 92       	st	X+, r1
    23ac:	1c 92       	st	X, r1
        myDrawChar(cursor_x, cursor_y, c, textcolor, textbg, textSize);
        cursor_x += textSize * 6;
        if (textWrap && (cursor_x > (WIDTH - textSize * 6))) write('\n');
    }
    return 1; // temporary
}
    23ae:	81 e0       	ldi	r24, 0x01	; 1
    23b0:	90 e0       	ldi	r25, 0x00	; 0
    23b2:	2f 96       	adiw	r28, 0x0f	; 15
    23b4:	0f b6       	in	r0, 0x3f	; 63
    23b6:	f8 94       	cli
    23b8:	de bf       	out	0x3e, r29	; 62
    23ba:	0f be       	out	0x3f, r0	; 63
    23bc:	cd bf       	out	0x3d, r28	; 61
    23be:	df 91       	pop	r29
    23c0:	cf 91       	pop	r28
    23c2:	1f 91       	pop	r17
    23c4:	0f 91       	pop	r16
    23c6:	ff 90       	pop	r15
    23c8:	ef 90       	pop	r14
    23ca:	df 90       	pop	r13
    23cc:	cf 90       	pop	r12
    23ce:	bf 90       	pop	r11
    23d0:	af 90       	pop	r10
    23d2:	9f 90       	pop	r9
    23d4:	8f 90       	pop	r8
    23d6:	7f 90       	pop	r7
    23d8:	6f 90       	pop	r6
    23da:	5f 90       	pop	r5
    23dc:	4f 90       	pop	r4
    23de:	3f 90       	pop	r3
    23e0:	2f 90       	pop	r2
    23e2:	08 95       	ret
size_t MyArduboy::write(uint8_t c)
{
    if (c == '\n') {
        cursor_y += textSize * 6;
        cursor_x = 0;
    } else if (c >= ' ' && c <= '_') {
    23e4:	20 ee       	ldi	r18, 0xE0	; 224
    23e6:	26 0f       	add	r18, r22
    23e8:	20 34       	cpi	r18, 0x40	; 64
    23ea:	08 f7       	brcc	.-62     	; 0x23ae <_ZN9MyArduboy5writeEh+0x5e>
    23ec:	9f 87       	std	Y+15, r25	; 0x0f
    23ee:	8e 87       	std	Y+14, r24	; 0x0e
        myDrawChar(cursor_x, cursor_y, c, textcolor, textbg, textSize);
    23f0:	8c 5e       	subi	r24, 0xEC	; 236
    23f2:	9b 4f       	sbci	r25, 0xFB	; 251
    23f4:	9e 83       	std	Y+6, r25	; 0x06
    23f6:	8d 83       	std	Y+5, r24	; 0x05
    23f8:	fc 01       	movw	r30, r24
    23fa:	00 81       	ld	r16, Z
    23fc:	11 81       	ldd	r17, Z+1	; 0x01
    23fe:	2e 85       	ldd	r18, Y+14	; 0x0e
    2400:	3f 85       	ldd	r19, Y+15	; 0x0f
    2402:	28 5e       	subi	r18, 0xE8	; 232
    2404:	3b 4f       	sbci	r19, 0xFB	; 251
    2406:	39 87       	std	Y+9, r19	; 0x09
    2408:	28 87       	std	Y+8, r18	; 0x08

void MyArduboy::myDrawChar(int16_t x, int16_t y, unsigned char c, uint8_t color, uint8_t bg, uint8_t size)
{
    bool draw_bg = bg != color;

    if (x >= WIDTH || y >= HEIGHT || x + 5 * size < 0 || y + 6 * size < 0) return;
    240a:	00 38       	cpi	r16, 0x80	; 128
    240c:	11 05       	cpc	r17, r1
    240e:	0c f0       	brlt	.+2      	; 0x2412 <_ZN9MyArduboy5writeEh+0xc2>
    2410:	65 c0       	rjmp	.+202    	; 0x24dc <_ZN9MyArduboy5writeEh+0x18c>
{
    if (c == '\n') {
        cursor_y += textSize * 6;
        cursor_x = 0;
    } else if (c >= ' ' && c <= '_') {
        myDrawChar(cursor_x, cursor_y, c, textcolor, textbg, textSize);
    2412:	ee 85       	ldd	r30, Y+14	; 0x0e
    2414:	ff 85       	ldd	r31, Y+15	; 0x0f
    2416:	ea 5e       	subi	r30, 0xEA	; 234
    2418:	fb 4f       	sbci	r31, 0xFB	; 251
    241a:	80 81       	ld	r24, Z
    241c:	91 81       	ldd	r25, Z+1	; 0x01
    241e:	9b 83       	std	Y+3, r25	; 0x03
    2420:	8a 83       	std	Y+2, r24	; 0x02

void MyArduboy::myDrawChar(int16_t x, int16_t y, unsigned char c, uint8_t color, uint8_t bg, uint8_t size)
{
    bool draw_bg = bg != color;

    if (x >= WIDTH || y >= HEIGHT || x + 5 * size < 0 || y + 6 * size < 0) return;
    2422:	80 34       	cpi	r24, 0x40	; 64
    2424:	91 05       	cpc	r25, r1
    2426:	0c f0       	brlt	.+2      	; 0x242a <_ZN9MyArduboy5writeEh+0xda>
    2428:	59 c0       	rjmp	.+178    	; 0x24dc <_ZN9MyArduboy5writeEh+0x18c>
{
    if (c == '\n') {
        cursor_y += textSize * 6;
        cursor_x = 0;
    } else if (c >= ' ' && c <= '_') {
        myDrawChar(cursor_x, cursor_y, c, textcolor, textbg, textSize);
    242a:	d9 01       	movw	r26, r18
    242c:	8c 91       	ld	r24, X
    242e:	48 2e       	mov	r4, r24
    2430:	51 2c       	mov	r5, r1

void MyArduboy::myDrawChar(int16_t x, int16_t y, unsigned char c, uint8_t color, uint8_t bg, uint8_t size)
{
    bool draw_bg = bg != color;

    if (x >= WIDTH || y >= HEIGHT || x + 5 * size < 0 || y + 6 * size < 0) return;
    2432:	98 01       	movw	r18, r16
    2434:	b5 e0       	ldi	r27, 0x05	; 5
    2436:	8b 9f       	mul	r24, r27
    2438:	20 0d       	add	r18, r0
    243a:	31 1d       	adc	r19, r1
    243c:	11 24       	eor	r1, r1
    243e:	37 fd       	sbrc	r19, 7
    2440:	4d c0       	rjmp	.+154    	; 0x24dc <_ZN9MyArduboy5writeEh+0x18c>
    2442:	2a 81       	ldd	r18, Y+2	; 0x02
    2444:	3b 81       	ldd	r19, Y+3	; 0x03
    2446:	e6 e0       	ldi	r30, 0x06	; 6
    2448:	8e 9f       	mul	r24, r30
    244a:	20 0d       	add	r18, r0
    244c:	31 1d       	adc	r19, r1
    244e:	11 24       	eor	r1, r1
    2450:	37 fd       	sbrc	r19, 7
    2452:	44 c0       	rjmp	.+136    	; 0x24dc <_ZN9MyArduboy5writeEh+0x18c>
{
    if (c == '\n') {
        cursor_y += textSize * 6;
        cursor_x = 0;
    } else if (c >= ' ' && c <= '_') {
        myDrawChar(cursor_x, cursor_y, c, textcolor, textbg, textSize);
    2454:	ee 85       	ldd	r30, Y+14	; 0x0e
    2456:	ff 85       	ldd	r31, Y+15	; 0x0f
    2458:	e5 5e       	subi	r30, 0xE5	; 229
    245a:	fb 4f       	sbci	r31, 0xFB	; 251
    245c:	70 80       	ld	r7, Z
    245e:	ee 85       	ldd	r30, Y+14	; 0x0e
    2460:	ff 85       	ldd	r31, Y+15	; 0x0f
    2462:	e6 5e       	subi	r30, 0xE6	; 230
    2464:	fb 4f       	sbci	r31, 0xFB	; 251
    2466:	60 80       	ld	r6, Z
void MyArduboy::myDrawChar(int16_t x, int16_t y, unsigned char c, uint8_t color, uint8_t bg, uint8_t size)
{
    bool draw_bg = bg != color;

    if (x >= WIDTH || y >= HEIGHT || x + 5 * size < 0 || y + 6 * size < 0) return;
    uint32_t ptn = pgm_read_dword(imgFont + (c - ' '));
    2468:	24 e0       	ldi	r18, 0x04	; 4
    246a:	62 9f       	mul	r22, r18
    246c:	f0 01       	movw	r30, r0
    246e:	11 24       	eor	r1, r1
    2470:	e9 53       	subi	r30, 0x39	; 57
    2472:	ff 4f       	sbci	r31, 0xFF	; 255
    2474:	85 90       	lpm	r8, Z+
    2476:	95 90       	lpm	r9, Z+
    2478:	a5 90       	lpm	r10, Z+
    247a:	b4 90       	lpm	r11, Z
    if (size == 1) {
    247c:	81 30       	cpi	r24, 0x01	; 1
    247e:	09 f0       	breq	.+2      	; 0x2482 <_ZN9MyArduboy5writeEh+0x132>
    2480:	5f c0       	rjmp	.+190    	; 0x2540 <_ZN9MyArduboy5writeEh+0x1f0>
    2482:	26 e0       	ldi	r18, 0x06	; 6
    2484:	d2 2e       	mov	r13, r18
    2486:	f1 2c       	mov	r15, r1
    2488:	e1 2c       	mov	r14, r1
        for (int8_t i = 0; i < 6; i++) {
            for (int8_t j = 0; j < 6; j++) {
                bool draw_fg = ptn & 0x1;
                if (draw_fg || draw_bg) {
    248a:	d5 01       	movw	r26, r10
    248c:	c4 01       	movw	r24, r8
    248e:	81 70       	andi	r24, 0x01	; 1
    2490:	99 27       	eor	r25, r25
    2492:	aa 27       	eor	r26, r26
    2494:	bb 27       	eor	r27, r27
    2496:	80 fc       	sbrc	r8, 0
    2498:	02 c0       	rjmp	.+4      	; 0x249e <_ZN9MyArduboy5writeEh+0x14e>
    249a:	76 14       	cp	r7, r6
    249c:	79 f0       	breq	.+30     	; 0x24bc <_ZN9MyArduboy5writeEh+0x16c>
{
    if (c == '\n') {
        cursor_y += textSize * 6;
        cursor_x = 0;
    } else if (c >= ' ' && c <= '_') {
        myDrawChar(cursor_x, cursor_y, c, textcolor, textbg, textSize);
    249e:	26 2d       	mov	r18, r6
    if (size == 1) {
        for (int8_t i = 0; i < 6; i++) {
            for (int8_t j = 0; j < 6; j++) {
                bool draw_fg = ptn & 0x1;
                if (draw_fg || draw_bg) {
                    drawPixel(x + i, y + j, (draw_fg) ? color : bg);
    24a0:	89 2b       	or	r24, r25
    24a2:	8a 2b       	or	r24, r26
    24a4:	8b 2b       	or	r24, r27
    24a6:	09 f4       	brne	.+2      	; 0x24aa <_ZN9MyArduboy5writeEh+0x15a>
{
    if (c == '\n') {
        cursor_y += textSize * 6;
        cursor_x = 0;
    } else if (c >= ' ' && c <= '_') {
        myDrawChar(cursor_x, cursor_y, c, textcolor, textbg, textSize);
    24a8:	27 2d       	mov	r18, r7
    if (size == 1) {
        for (int8_t i = 0; i < 6; i++) {
            for (int8_t j = 0; j < 6; j++) {
                bool draw_fg = ptn & 0x1;
                if (draw_fg || draw_bg) {
                    drawPixel(x + i, y + j, (draw_fg) ? color : bg);
    24aa:	4a 81       	ldd	r20, Y+2	; 0x02
    24ac:	5b 81       	ldd	r21, Y+3	; 0x03
    24ae:	4e 0d       	add	r20, r14
    24b0:	5f 1d       	adc	r21, r15
    24b2:	b8 01       	movw	r22, r16
    24b4:	8e 85       	ldd	r24, Y+14	; 0x0e
    24b6:	9f 85       	ldd	r25, Y+15	; 0x0f
    24b8:	0e 94 f8 0f 	call	0x1ff0	; 0x1ff0 <_ZN7Arduboy9drawPixelEiih>
                }
                ptn >>= 1;
    24bc:	b6 94       	lsr	r11
    24be:	a7 94       	ror	r10
    24c0:	97 94       	ror	r9
    24c2:	87 94       	ror	r8
    24c4:	3f ef       	ldi	r19, 0xFF	; 255
    24c6:	e3 1a       	sub	r14, r19
    24c8:	f3 0a       	sbc	r15, r19

    if (x >= WIDTH || y >= HEIGHT || x + 5 * size < 0 || y + 6 * size < 0) return;
    uint32_t ptn = pgm_read_dword(imgFont + (c - ' '));
    if (size == 1) {
        for (int8_t i = 0; i < 6; i++) {
            for (int8_t j = 0; j < 6; j++) {
    24ca:	56 e0       	ldi	r21, 0x06	; 6
    24cc:	e5 16       	cp	r14, r21
    24ce:	f1 04       	cpc	r15, r1
    24d0:	e1 f6       	brne	.-72     	; 0x248a <_ZN9MyArduboy5writeEh+0x13a>
    24d2:	da 94       	dec	r13
    24d4:	0f 5f       	subi	r16, 0xFF	; 255
    24d6:	1f 4f       	sbci	r17, 0xFF	; 255
    bool draw_bg = bg != color;

    if (x >= WIDTH || y >= HEIGHT || x + 5 * size < 0 || y + 6 * size < 0) return;
    uint32_t ptn = pgm_read_dword(imgFont + (c - ' '));
    if (size == 1) {
        for (int8_t i = 0; i < 6; i++) {
    24d8:	d1 10       	cpse	r13, r1
    24da:	d5 cf       	rjmp	.-86     	; 0x2486 <_ZN9MyArduboy5writeEh+0x136>
    if (c == '\n') {
        cursor_y += textSize * 6;
        cursor_x = 0;
    } else if (c >= ' ' && c <= '_') {
        myDrawChar(cursor_x, cursor_y, c, textcolor, textbg, textSize);
        cursor_x += textSize * 6;
    24dc:	a8 85       	ldd	r26, Y+8	; 0x08
    24de:	b9 85       	ldd	r27, Y+9	; 0x09
    24e0:	2c 91       	ld	r18, X
    24e2:	42 2f       	mov	r20, r18
    24e4:	50 e0       	ldi	r21, 0x00	; 0
    24e6:	ed 81       	ldd	r30, Y+5	; 0x05
    24e8:	fe 81       	ldd	r31, Y+6	; 0x06
    24ea:	80 81       	ld	r24, Z
    24ec:	91 81       	ldd	r25, Z+1	; 0x01
    24ee:	f6 e0       	ldi	r31, 0x06	; 6
    24f0:	2f 9f       	mul	r18, r31
    24f2:	80 0d       	add	r24, r0
    24f4:	91 1d       	adc	r25, r1
    24f6:	11 24       	eor	r1, r1
    24f8:	ad 81       	ldd	r26, Y+5	; 0x05
    24fa:	be 81       	ldd	r27, Y+6	; 0x06
    24fc:	8d 93       	st	X+, r24
    24fe:	9c 93       	st	X, r25
        if (textWrap && (cursor_x > (WIDTH - textSize * 6))) write('\n');
    2500:	ee 85       	ldd	r30, Y+14	; 0x0e
    2502:	ff 85       	ldd	r31, Y+15	; 0x0f
    2504:	e7 5e       	subi	r30, 0xE7	; 231
    2506:	fb 4f       	sbci	r31, 0xFB	; 251
    2508:	20 81       	ld	r18, Z
    250a:	22 23       	and	r18, r18
    250c:	09 f4       	brne	.+2      	; 0x2510 <_ZN9MyArduboy5writeEh+0x1c0>
    250e:	4f cf       	rjmp	.-354    	; 0x23ae <_ZN9MyArduboy5writeEh+0x5e>
    2510:	6a ef       	ldi	r22, 0xFA	; 250
    2512:	64 03       	mulsu	r22, r20
    2514:	90 01       	movw	r18, r0
    2516:	65 9f       	mul	r22, r21
    2518:	30 0d       	add	r19, r0
    251a:	11 24       	eor	r1, r1
    251c:	20 58       	subi	r18, 0x80	; 128
    251e:	3f 4f       	sbci	r19, 0xFF	; 255
    2520:	28 17       	cp	r18, r24
    2522:	39 07       	cpc	r19, r25
    2524:	0c f0       	brlt	.+2      	; 0x2528 <_ZN9MyArduboy5writeEh+0x1d8>
    2526:	43 cf       	rjmp	.-378    	; 0x23ae <_ZN9MyArduboy5writeEh+0x5e>
    2528:	ae 85       	ldd	r26, Y+14	; 0x0e
    252a:	bf 85       	ldd	r27, Y+15	; 0x0f
    252c:	ed 91       	ld	r30, X+
    252e:	fc 91       	ld	r31, X
    2530:	11 97       	sbiw	r26, 0x01	; 1
    2532:	01 90       	ld	r0, Z+
    2534:	f0 81       	ld	r31, Z
    2536:	e0 2d       	mov	r30, r0
    2538:	6a e0       	ldi	r22, 0x0A	; 10
    253a:	cd 01       	movw	r24, r26
    253c:	09 95       	icall
    253e:	37 cf       	rjmp	.-402    	; 0x23ae <_ZN9MyArduboy5writeEh+0x5e>
    2540:	18 01       	movw	r2, r16
{
    bool draw_bg = bg != color;

    if (x >= WIDTH || y >= HEIGHT || x + 5 * size < 0 || y + 6 * size < 0) return;
    uint32_t ptn = pgm_read_dword(imgFont + (c - ' '));
    if (size == 1) {
    2542:	86 e0       	ldi	r24, 0x06	; 6
    2544:	89 83       	std	Y+1, r24	; 0x01
    2546:	0a 81       	ldd	r16, Y+2	; 0x02
    2548:	1b 81       	ldd	r17, Y+3	; 0x03
    254a:	96 e0       	ldi	r25, 0x06	; 6
    254c:	9c 83       	std	Y+4, r25	; 0x04

void Arduboy::fillRect
(int16_t x, int16_t y, uint8_t w, uint8_t h, uint8_t color)
{
  // stupidest version - update in subclasses if desired!
  for (int16_t i=x; i<x+w; i++)
    254e:	d1 01       	movw	r26, r2
    2550:	a4 0d       	add	r26, r4
    2552:	b5 1d       	adc	r27, r5
    2554:	bd 87       	std	Y+13, r27	; 0x0d
    2556:	ac 87       	std	Y+12, r26	; 0x0c
        }
    } else {
        for (int8_t i = 0; i < 6; i++) {
            for (int8_t j = 0; j < 6; j++) {
                bool draw_fg = ptn & 0x1;
                if (draw_fg || draw_bg) {
    2558:	d5 01       	movw	r26, r10
    255a:	c4 01       	movw	r24, r8
    255c:	81 70       	andi	r24, 0x01	; 1
    255e:	99 27       	eor	r25, r25
    2560:	aa 27       	eor	r26, r26
    2562:	bb 27       	eor	r27, r27
    2564:	80 fc       	sbrc	r8, 0
    2566:	02 c0       	rjmp	.+4      	; 0x256c <_ZN9MyArduboy5writeEh+0x21c>
    2568:	76 14       	cp	r7, r6
    256a:	81 f1       	breq	.+96     	; 0x25cc <_ZN9MyArduboy5writeEh+0x27c>
                    fillRect(x + i * size, y + j * size, size, size, (draw_fg) ? color : bg);
    256c:	89 2b       	or	r24, r25
    256e:	8a 2b       	or	r24, r26
    2570:	8b 2b       	or	r24, r27
    2572:	31 f1       	breq	.+76     	; 0x25c0 <_ZN9MyArduboy5writeEh+0x270>
{
    if (c == '\n') {
        cursor_y += textSize * 6;
        cursor_x = 0;
    } else if (c >= ' ' && c <= '_') {
        myDrawChar(cursor_x, cursor_y, c, textcolor, textbg, textSize);
    2574:	6f 82       	std	Y+7, r6	; 0x07
    2576:	61 01       	movw	r12, r2
}

void Arduboy::drawFastVLine
(int16_t x, int16_t y, uint8_t h, uint8_t color)
{
  int end = y+h;
    2578:	f8 01       	movw	r30, r16
    257a:	e4 0d       	add	r30, r4
    257c:	f5 1d       	adc	r31, r5
    257e:	fb 87       	std	Y+11, r31	; 0x0b
    2580:	ea 87       	std	Y+10, r30	; 0x0a

void Arduboy::fillRect
(int16_t x, int16_t y, uint8_t w, uint8_t h, uint8_t color)
{
  // stupidest version - update in subclasses if desired!
  for (int16_t i=x; i<x+w; i++)
    2582:	2c 85       	ldd	r18, Y+12	; 0x0c
    2584:	3d 85       	ldd	r19, Y+13	; 0x0d
    2586:	c2 16       	cp	r12, r18
    2588:	d3 06       	cpc	r13, r19
    258a:	04 f5       	brge	.+64     	; 0x25cc <_ZN9MyArduboy5writeEh+0x27c>

void Arduboy::drawFastVLine
(int16_t x, int16_t y, uint8_t h, uint8_t color)
{
  int end = y+h;
  for (int a = max(0,y); a < min(end,HEIGHT); a++)
    258c:	78 01       	movw	r14, r16
    258e:	17 ff       	sbrs	r17, 7
    2590:	02 c0       	rjmp	.+4      	; 0x2596 <_ZN9MyArduboy5writeEh+0x246>
    2592:	f1 2c       	mov	r15, r1
    2594:	e1 2c       	mov	r14, r1
    2596:	8a 85       	ldd	r24, Y+10	; 0x0a
    2598:	9b 85       	ldd	r25, Y+11	; 0x0b
    259a:	81 34       	cpi	r24, 0x41	; 65
    259c:	91 05       	cpc	r25, r1
    259e:	14 f0       	brlt	.+4      	; 0x25a4 <_ZN9MyArduboy5writeEh+0x254>
    25a0:	80 e4       	ldi	r24, 0x40	; 64
    25a2:	90 e0       	ldi	r25, 0x00	; 0
    25a4:	e8 16       	cp	r14, r24
    25a6:	f9 06       	cpc	r15, r25
    25a8:	6c f4       	brge	.+26     	; 0x25c4 <_ZN9MyArduboy5writeEh+0x274>
  {
    drawPixel(x,a,color);
    25aa:	2f 81       	ldd	r18, Y+7	; 0x07
    25ac:	a7 01       	movw	r20, r14
    25ae:	b6 01       	movw	r22, r12
    25b0:	8e 85       	ldd	r24, Y+14	; 0x0e
    25b2:	9f 85       	ldd	r25, Y+15	; 0x0f
    25b4:	0e 94 f8 0f 	call	0x1ff0	; 0x1ff0 <_ZN7Arduboy9drawPixelEiih>

void Arduboy::drawFastVLine
(int16_t x, int16_t y, uint8_t h, uint8_t color)
{
  int end = y+h;
  for (int a = max(0,y); a < min(end,HEIGHT); a++)
    25b8:	3f ef       	ldi	r19, 0xFF	; 255
    25ba:	e3 1a       	sub	r14, r19
    25bc:	f3 0a       	sbc	r15, r19
    25be:	eb cf       	rjmp	.-42     	; 0x2596 <_ZN9MyArduboy5writeEh+0x246>
    25c0:	7f 82       	std	Y+7, r7	; 0x07
    25c2:	d9 cf       	rjmp	.-78     	; 0x2576 <_ZN9MyArduboy5writeEh+0x226>

void Arduboy::fillRect
(int16_t x, int16_t y, uint8_t w, uint8_t h, uint8_t color)
{
  // stupidest version - update in subclasses if desired!
  for (int16_t i=x; i<x+w; i++)
    25c4:	5f ef       	ldi	r21, 0xFF	; 255
    25c6:	c5 1a       	sub	r12, r21
    25c8:	d5 0a       	sbc	r13, r21
    25ca:	db cf       	rjmp	.-74     	; 0x2582 <_ZN9MyArduboy5writeEh+0x232>
            for (int8_t j = 0; j < 6; j++) {
                bool draw_fg = ptn & 0x1;
                if (draw_fg || draw_bg) {
                    fillRect(x + i * size, y + j * size, size, size, (draw_fg) ? color : bg);
                }
                ptn >>= 1;
    25cc:	b6 94       	lsr	r11
    25ce:	a7 94       	ror	r10
    25d0:	97 94       	ror	r9
    25d2:	87 94       	ror	r8
    25d4:	8c 81       	ldd	r24, Y+4	; 0x04
    25d6:	81 50       	subi	r24, 0x01	; 1
    25d8:	8c 83       	std	Y+4, r24	; 0x04
    25da:	04 0d       	add	r16, r4
    25dc:	15 1d       	adc	r17, r5
                ptn >>= 1;
            }
        }
    } else {
        for (int8_t i = 0; i < 6; i++) {
            for (int8_t j = 0; j < 6; j++) {
    25de:	81 11       	cpse	r24, r1
    25e0:	bb cf       	rjmp	.-138    	; 0x2558 <_ZN9MyArduboy5writeEh+0x208>
    25e2:	99 81       	ldd	r25, Y+1	; 0x01
    25e4:	91 50       	subi	r25, 0x01	; 1
    25e6:	99 83       	std	Y+1, r25	; 0x01
    25e8:	24 0c       	add	r2, r4
    25ea:	35 1c       	adc	r3, r5
                }
                ptn >>= 1;
            }
        }
    } else {
        for (int8_t i = 0; i < 6; i++) {
    25ec:	91 11       	cpse	r25, r1
    25ee:	ab cf       	rjmp	.-170    	; 0x2546 <_ZN9MyArduboy5writeEh+0x1f6>
    25f0:	75 cf       	rjmp	.-278    	; 0x24dc <_ZN9MyArduboy5writeEh+0x18c>

000025f2 <_ZN5Print5printEPK19__FlashStringHelper.constprop.36>:

size_t Print::print(const __FlashStringHelper *ifsh)
    25f2:	ef 92       	push	r14
    25f4:	ff 92       	push	r15
    25f6:	0f 93       	push	r16
    25f8:	1f 93       	push	r17
    25fa:	cf 93       	push	r28
    25fc:	df 93       	push	r29
    25fe:	8c 01       	movw	r16, r24
    2600:	7b 01       	movw	r14, r22
{
  PGM_P p = reinterpret_cast<PGM_P>(ifsh);
  size_t n = 0;
    2602:	d0 e0       	ldi	r29, 0x00	; 0
    2604:	c0 e0       	ldi	r28, 0x00	; 0
  while (1) {
    unsigned char c = pgm_read_byte(p++);
    2606:	f7 01       	movw	r30, r14
    2608:	ec 0f       	add	r30, r28
    260a:	fd 1f       	adc	r31, r29
    260c:	64 91       	lpm	r22, Z
    if (c == 0) break;
    260e:	66 23       	and	r22, r22
    2610:	39 f0       	breq	.+14     	; 0x2620 <_ZN5Print5printEPK19__FlashStringHelper.constprop.36+0x2e>
    if (write(c)) n++;
    2612:	c8 01       	movw	r24, r16
    2614:	0e 94 a8 11 	call	0x2350	; 0x2350 <_ZN9MyArduboy5writeEh>
    2618:	89 2b       	or	r24, r25
    261a:	11 f0       	breq	.+4      	; 0x2620 <_ZN5Print5printEPK19__FlashStringHelper.constprop.36+0x2e>
    261c:	21 96       	adiw	r28, 0x01	; 1
    261e:	f3 cf       	rjmp	.-26     	; 0x2606 <_ZN5Print5printEPK19__FlashStringHelper.constprop.36+0x14>
    else break;
  }
  return n;
}
    2620:	ce 01       	movw	r24, r28
    2622:	df 91       	pop	r29
    2624:	cf 91       	pop	r28
    2626:	1f 91       	pop	r17
    2628:	0f 91       	pop	r16
    262a:	ff 90       	pop	r15
    262c:	ef 90       	pop	r14
    262e:	08 95       	ret

00002630 <_Z8drawLogov>:

void drawLogo(void)
{
    2630:	8f 92       	push	r8
    2632:	9f 92       	push	r9
    2634:	af 92       	push	r10
    2636:	bf 92       	push	r11
    2638:	cf 92       	push	r12
    263a:	df 92       	push	r13
    263c:	ef 92       	push	r14
    263e:	0f 93       	push	r16
    2640:	cf 93       	push	r28
    2642:	df 93       	push	r29
  clear();
}

void Arduboy::clear()
{
  fillScreen(BLACK);
    2644:	0e 94 52 0a 	call	0x14a4	; 0x14a4 <_ZN7Arduboy10fillScreenEh.constprop.23>
    arduboy.clear();
    int shake = (120 - counter) / 40;
    2648:	20 91 fa 02 	lds	r18, 0x02FA	; 0x8002fa <_ZL7counter.lto_priv.56>
    264c:	88 e7       	ldi	r24, 0x78	; 120
    264e:	90 e0       	ldi	r25, 0x00	; 0
    2650:	82 1b       	sub	r24, r18
    2652:	91 09       	sbc	r25, r1
    2654:	68 e2       	ldi	r22, 0x28	; 40
    2656:	70 e0       	ldi	r23, 0x00	; 0
    2658:	0e 94 77 29 	call	0x52ee	; 0x52ee <__divmodhi4>
    265c:	4b 01       	movw	r8, r22
    265e:	86 e1       	ldi	r24, 0x16	; 22
    2660:	c8 2e       	mov	r12, r24
    2662:	85 e0       	ldi	r24, 0x05	; 5
    2664:	d8 2e       	mov	r13, r24
    2666:	9c e1       	ldi	r25, 0x1C	; 28
    2668:	a9 2e       	mov	r10, r25
    266a:	b1 2c       	mov	r11, r1
    for (int i = 0; i < 3; i++) {
    266c:	d0 e0       	ldi	r29, 0x00	; 0
    266e:	c0 e0       	ldi	r28, 0x00	; 0
        int y = 12 + (i == shake) * signalOn;
    2670:	81 e0       	ldi	r24, 0x01	; 1
    2672:	90 e0       	ldi	r25, 0x00	; 0
    2674:	8c 16       	cp	r8, r28
    2676:	9d 06       	cpc	r9, r29
    2678:	11 f0       	breq	.+4      	; 0x267e <_Z8drawLogov+0x4e>
    267a:	90 e0       	ldi	r25, 0x00	; 0
    267c:	80 e0       	ldi	r24, 0x00	; 0
    267e:	20 91 b4 02 	lds	r18, 0x02B4	; 0x8002b4 <_ZL8signalOn>
    2682:	28 9f       	mul	r18, r24
    2684:	b0 01       	movw	r22, r0
    2686:	29 9f       	mul	r18, r25
    2688:	70 0d       	add	r23, r0
    268a:	11 24       	eor	r1, r1
    268c:	64 5f       	subi	r22, 0xF4	; 244
    268e:	7f 4f       	sbci	r23, 0xFF	; 255
        arduboy.drawBitmap(28 + i * 24, y, imgOBN + i * 96, 24, 32, WHITE);
    2690:	ee 24       	eor	r14, r14
    2692:	e3 94       	inc	r14
    2694:	00 e2       	ldi	r16, 0x20	; 32
    2696:	28 e1       	ldi	r18, 0x18	; 24
    2698:	a6 01       	movw	r20, r12
    269a:	c5 01       	movw	r24, r10
    269c:	0e 94 31 09 	call	0x1262	; 0x1262 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28>

void drawLogo(void)
{
    arduboy.clear();
    int shake = (120 - counter) / 40;
    for (int i = 0; i < 3; i++) {
    26a0:	21 96       	adiw	r28, 0x01	; 1
    26a2:	88 e1       	ldi	r24, 0x18	; 24
    26a4:	a8 0e       	add	r10, r24
    26a6:	b1 1c       	adc	r11, r1
    26a8:	80 e6       	ldi	r24, 0x60	; 96
    26aa:	c8 0e       	add	r12, r24
    26ac:	d1 1c       	adc	r13, r1
    26ae:	c3 30       	cpi	r28, 0x03	; 3
    26b0:	d1 05       	cpc	r29, r1
    26b2:	f1 f6       	brne	.-68     	; 0x2670 <_Z8drawLogov+0x40>
        int y = 12 + (i == shake) * signalOn;
        arduboy.drawBitmap(28 + i * 24, y, imgOBN + i * 96, 24, 32, WHITE);
    }
    arduboy.drawBitmap(68, 44, imgSoft, 32, 8, WHITE);
    26b4:	08 e0       	ldi	r16, 0x08	; 8
    26b6:	20 e2       	ldi	r18, 0x20	; 32
    26b8:	46 ef       	ldi	r20, 0xF6	; 246
    26ba:	54 e0       	ldi	r21, 0x04	; 4
    26bc:	6c e2       	ldi	r22, 0x2C	; 44
    26be:	70 e0       	ldi	r23, 0x00	; 0
    26c0:	84 e4       	ldi	r24, 0x44	; 68
    26c2:	90 e0       	ldi	r25, 0x00	; 0
    26c4:	0e 94 31 09 	call	0x1262	; 0x1262 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28>
  }
}

void Arduboy::setCursor(int16_t x, int16_t y)
{
  cursor_x = x;
    26c8:	80 e1       	ldi	r24, 0x10	; 16
    26ca:	90 e0       	ldi	r25, 0x00	; 0
    26cc:	90 93 83 07 	sts	0x0783, r25	; 0x800783 <arduboy+0x415>
    26d0:	80 93 82 07 	sts	0x0782, r24	; 0x800782 <arduboy+0x414>
  cursor_y = y;
    26d4:	8a e3       	ldi	r24, 0x3A	; 58
    26d6:	90 e0       	ldi	r25, 0x00	; 0
    26d8:	90 93 85 07 	sts	0x0785, r25	; 0x800785 <arduboy+0x417>
    26dc:	80 93 84 07 	sts	0x0784, r24	; 0x800784 <arduboy+0x416>
}

size_t MyArduboy::printEx(int16_t x, int16_t y, const __FlashStringHelper *p)
{
    setCursor(x, y);
    return print(p);
    26e0:	65 ee       	ldi	r22, 0xE5	; 229
    26e2:	74 e0       	ldi	r23, 0x04	; 4
    26e4:	8e e6       	ldi	r24, 0x6E	; 110
    26e6:	93 e0       	ldi	r25, 0x03	; 3
    arduboy.printEx(16, 58, F(APP_CODE " VER " APP_VERSION));
}
    26e8:	df 91       	pop	r29
    26ea:	cf 91       	pop	r28
    26ec:	0f 91       	pop	r16
    26ee:	ef 90       	pop	r14
    26f0:	df 90       	pop	r13
    26f2:	cf 90       	pop	r12
    26f4:	bf 90       	pop	r11
    26f6:	af 90       	pop	r10
    26f8:	9f 90       	pop	r9
    26fa:	8f 90       	pop	r8
    26fc:	0c 94 f9 12 	jmp	0x25f2	; 0x25f2 <_ZN5Print5printEPK19__FlashStringHelper.constprop.36>

00002700 <_ZN5Print5flushEv>:
    size_t println(unsigned long, int = DEC);
    size_t println(double, int = 2);
    size_t println(const Printable&);
    size_t println(void);

    virtual void flush() { /* Empty implementation for backward compatibility */ }
    2700:	08 95       	ret

00002702 <_ZN5Print17availableForWriteEv>:
      return write((const uint8_t *)buffer, size);
    }

    // default to zero, meaning "a single write may block"
    // should be overriden by subclasses with buffering
    virtual int availableForWrite() { return 0; }
    2702:	90 e0       	ldi	r25, 0x00	; 0
    2704:	80 e0       	ldi	r24, 0x00	; 0
    2706:	08 95       	ret

00002708 <_ZN5Print5writeEPKc.part.2.constprop.38>:
    void clearWriteError() { setWriteError(0); }
  
    virtual size_t write(uint8_t) = 0;
    size_t write(const char *str) {
      if (str == NULL) return 0;
      return write((const uint8_t *)str, strlen(str));
    2708:	fb 01       	movw	r30, r22
    270a:	01 90       	ld	r0, Z+
    270c:	00 20       	and	r0, r0
    270e:	e9 f7       	brne	.-6      	; 0x270a <_ZN5Print5writeEPKc.part.2.constprop.38+0x2>
    2710:	31 97       	sbiw	r30, 0x01	; 1
    2712:	af 01       	movw	r20, r30
    2714:	46 1b       	sub	r20, r22
    2716:	57 0b       	sbc	r21, r23
    2718:	0c 94 fa 0b 	jmp	0x17f4	; 0x17f4 <_ZN5Print5writeEPKhj>

0000271c <_ZN5Print11printNumberEmh.constprop.27>:
  return n;
}

// Private Methods /////////////////////////////////////////////////////////////

size_t Print::printNumber(unsigned long n, uint8_t base)
    271c:	8f 92       	push	r8
    271e:	9f 92       	push	r9
    2720:	af 92       	push	r10
    2722:	bf 92       	push	r11
    2724:	0f 93       	push	r16
    2726:	1f 93       	push	r17
    2728:	cf 93       	push	r28
    272a:	df 93       	push	r29
    272c:	cd b7       	in	r28, 0x3d	; 61
    272e:	de b7       	in	r29, 0x3e	; 62
    2730:	a1 97       	sbiw	r28, 0x21	; 33
    2732:	0f b6       	in	r0, 0x3f	; 63
    2734:	f8 94       	cli
    2736:	de bf       	out	0x3e, r29	; 62
    2738:	0f be       	out	0x3f, r0	; 63
    273a:	cd bf       	out	0x3d, r28	; 61
{
  char buf[8 * sizeof(long) + 1]; // Assumes 8-bit chars plus zero byte.
  char *str = &buf[sizeof(buf) - 1];

  *str = '\0';
    273c:	19 a2       	std	Y+33, r1	; 0x21

  // prevent crash if called with base == 1
  if (base < 2) base = 10;
    273e:	42 30       	cpi	r20, 0x02	; 2
    2740:	08 f4       	brcc	.+2      	; 0x2744 <_ZN5Print11printNumberEmh.constprop.27+0x28>
    2742:	4a e0       	ldi	r20, 0x0A	; 10
    2744:	8e 01       	movw	r16, r28
    2746:	0f 5d       	subi	r16, 0xDF	; 223
    2748:	1f 4f       	sbci	r17, 0xFF	; 255

  do {
    char c = n % base;
    274a:	84 2e       	mov	r8, r20
    274c:	91 2c       	mov	r9, r1
    274e:	b1 2c       	mov	r11, r1
    2750:	a1 2c       	mov	r10, r1
    2752:	a5 01       	movw	r20, r10
    2754:	94 01       	movw	r18, r8
    2756:	0e 94 1b 27 	call	0x4e36	; 0x4e36 <__udivmodsi4>
    275a:	e6 2f       	mov	r30, r22
    n /= base;
    275c:	b9 01       	movw	r22, r18
    275e:	ca 01       	movw	r24, r20

    *--str = c < 10 ? c + '0' : c + 'A' - 10;
    2760:	ea 30       	cpi	r30, 0x0A	; 10
    2762:	04 f5       	brge	.+64     	; 0x27a4 <_ZN5Print11printNumberEmh.constprop.27+0x88>
    2764:	e0 5d       	subi	r30, 0xD0	; 208
    2766:	d8 01       	movw	r26, r16
    2768:	ee 93       	st	-X, r30
    276a:	8d 01       	movw	r16, r26
  } while(n);
    276c:	23 2b       	or	r18, r19
    276e:	24 2b       	or	r18, r20
    2770:	25 2b       	or	r18, r21
    2772:	79 f7       	brne	.-34     	; 0x2752 <_ZN5Print11printNumberEmh.constprop.27+0x36>
    int getWriteError() { return write_error; }
    void clearWriteError() { setWriteError(0); }
  
    virtual size_t write(uint8_t) = 0;
    size_t write(const char *str) {
      if (str == NULL) return 0;
    2774:	90 e0       	ldi	r25, 0x00	; 0
    2776:	80 e0       	ldi	r24, 0x00	; 0
    2778:	10 97       	sbiw	r26, 0x00	; 0
    277a:	29 f0       	breq	.+10     	; 0x2786 <_ZN5Print11printNumberEmh.constprop.27+0x6a>
    277c:	bd 01       	movw	r22, r26
    277e:	8e e6       	ldi	r24, 0x6E	; 110
    2780:	93 e0       	ldi	r25, 0x03	; 3
    2782:	0e 94 84 13 	call	0x2708	; 0x2708 <_ZN5Print5writeEPKc.part.2.constprop.38>

  return write(str);
}
    2786:	a1 96       	adiw	r28, 0x21	; 33
    2788:	0f b6       	in	r0, 0x3f	; 63
    278a:	f8 94       	cli
    278c:	de bf       	out	0x3e, r29	; 62
    278e:	0f be       	out	0x3f, r0	; 63
    2790:	cd bf       	out	0x3d, r28	; 61
    2792:	df 91       	pop	r29
    2794:	cf 91       	pop	r28
    2796:	1f 91       	pop	r17
    2798:	0f 91       	pop	r16
    279a:	bf 90       	pop	r11
    279c:	af 90       	pop	r10
    279e:	9f 90       	pop	r9
    27a0:	8f 90       	pop	r8
    27a2:	08 95       	ret

  do {
    char c = n % base;
    n /= base;

    *--str = c < 10 ? c + '0' : c + 'A' - 10;
    27a4:	e9 5c       	subi	r30, 0xC9	; 201
    27a6:	df cf       	rjmp	.-66     	; 0x2766 <_ZN5Print11printNumberEmh.constprop.27+0x4a>

000027a8 <__cxa_pure_virtual>:
extern "C" void __cxa_deleted_virtual(void) __attribute__ ((__noreturn__));

void __cxa_pure_virtual(void) {
  // We might want to write some diagnostics to uart in this case
  //std::terminate();
  abort();
    27a8:	0e 94 a5 29 	call	0x534a	; 0x534a <abort>

000027ac <_ZL10eepWrite32m>:
    eeprom_write_word((uint16_t *)eepAddr, val);
    eepAddr += 2;
}

void eepWrite32(uint32_t val)
{
    27ac:	ab 01       	movw	r20, r22
    27ae:	bc 01       	movw	r22, r24
    eeprom_busy_wait();
    27b0:	f9 99       	sbic	0x1f, 1	; 31
    27b2:	fe cf       	rjmp	.-4      	; 0x27b0 <_ZL10eepWrite32m+0x4>
    eeprom_write_dword((uint32_t *)eepAddr, val);
    27b4:	80 91 da 02 	lds	r24, 0x02DA	; 0x8002da <_ZL7eepAddr>
    27b8:	90 91 db 02 	lds	r25, 0x02DB	; 0x8002db <_ZL7eepAddr+0x1>
    27bc:	0e 94 cc 26 	call	0x4d98	; 0x4d98 <eeprom_write_dword>
    eepAddr += 4;
    27c0:	80 91 da 02 	lds	r24, 0x02DA	; 0x8002da <_ZL7eepAddr>
    27c4:	90 91 db 02 	lds	r25, 0x02DB	; 0x8002db <_ZL7eepAddr+0x1>
    27c8:	04 96       	adiw	r24, 0x04	; 4
    27ca:	90 93 db 02 	sts	0x02DB, r25	; 0x8002db <_ZL7eepAddr+0x1>
    27ce:	80 93 da 02 	sts	0x02DA, r24	; 0x8002da <_ZL7eepAddr>
}
    27d2:	08 95       	ret

000027d4 <_ZL10eepWrite16j>:
    eepAddr++;
}

void eepWrite16(uint16_t val)
{
    eeprom_busy_wait();
    27d4:	f9 99       	sbic	0x1f, 1	; 31
    27d6:	fe cf       	rjmp	.-4      	; 0x27d4 <_ZL10eepWrite16j>
    eeprom_write_word((uint16_t *)eepAddr, val);
    27d8:	bc 01       	movw	r22, r24
    27da:	80 91 da 02 	lds	r24, 0x02DA	; 0x8002da <_ZL7eepAddr>
    27de:	90 91 db 02 	lds	r25, 0x02DB	; 0x8002db <_ZL7eepAddr+0x1>
    27e2:	0e 94 d4 26 	call	0x4da8	; 0x4da8 <eeprom_write_word>
    eepAddr += 2;
    27e6:	80 91 da 02 	lds	r24, 0x02DA	; 0x8002da <_ZL7eepAddr>
    27ea:	90 91 db 02 	lds	r25, 0x02DB	; 0x8002db <_ZL7eepAddr+0x1>
    27ee:	02 96       	adiw	r24, 0x02	; 2
    27f0:	90 93 db 02 	sts	0x02DB, r25	; 0x8002db <_ZL7eepAddr+0x1>
    27f4:	80 93 da 02 	sts	0x02DA, r24	; 0x8002da <_ZL7eepAddr>
}
    27f8:	08 95       	ret

000027fa <_ZL9eepRead32v>:
    eepAddr += 2;
    return ret;
}

uint32_t eepRead32(void)
{
    27fa:	cf 93       	push	r28
    27fc:	df 93       	push	r29
    eeprom_busy_wait();
    27fe:	f9 99       	sbic	0x1f, 1	; 31
    2800:	fe cf       	rjmp	.-4      	; 0x27fe <_ZL9eepRead32v+0x4>
    uint32_t ret = eeprom_read_dword((const uint32_t *) eepAddr);
    2802:	c0 91 da 02 	lds	r28, 0x02DA	; 0x8002da <_ZL7eepAddr>
    2806:	d0 91 db 02 	lds	r29, 0x02DB	; 0x8002db <_ZL7eepAddr+0x1>
    280a:	ce 01       	movw	r24, r28
    280c:	0e 94 b2 26 	call	0x4d64	; 0x4d64 <eeprom_read_dword>
    eepAddr += 4;
    2810:	24 96       	adiw	r28, 0x04	; 4
    2812:	d0 93 db 02 	sts	0x02DB, r29	; 0x8002db <_ZL7eepAddr+0x1>
    2816:	c0 93 da 02 	sts	0x02DA, r28	; 0x8002da <_ZL7eepAddr>
    return ret;
}
    281a:	df 91       	pop	r29
    281c:	cf 91       	pop	r28
    281e:	08 95       	ret

00002820 <_ZL9eepRead16v>:
    eeprom_busy_wait();
    return eeprom_read_byte((const uint8_t *) eepAddr++);
}

uint16_t eepRead16(void)
{
    2820:	cf 93       	push	r28
    2822:	df 93       	push	r29
    eeprom_busy_wait();
    2824:	f9 99       	sbic	0x1f, 1	; 31
    2826:	fe cf       	rjmp	.-4      	; 0x2824 <_ZL9eepRead16v+0x4>
    uint16_t ret = eeprom_read_word((const uint16_t *)eepAddr);
    2828:	c0 91 da 02 	lds	r28, 0x02DA	; 0x8002da <_ZL7eepAddr>
    282c:	d0 91 db 02 	lds	r29, 0x02DB	; 0x8002db <_ZL7eepAddr+0x1>
    2830:	ce 01       	movw	r24, r28
    2832:	0e 94 b8 26 	call	0x4d70	; 0x4d70 <eeprom_read_word>
    eepAddr += 2;
    2836:	22 96       	adiw	r28, 0x02	; 2
    2838:	d0 93 db 02 	sts	0x02DB, r29	; 0x8002db <_ZL7eepAddr+0x1>
    283c:	c0 93 da 02 	sts	0x02DA, r28	; 0x8002da <_ZL7eepAddr>
    return ret;
}
    2840:	df 91       	pop	r29
    2842:	cf 91       	pop	r28
    2844:	08 95       	ret

00002846 <_Z9drawTitlev>:
    randomSeed(rand() ^ micros()); // Shuffle random
    return ret;
}

void drawTitle(void)
{
    2846:	2f 92       	push	r2
    2848:	3f 92       	push	r3
    284a:	4f 92       	push	r4
    284c:	5f 92       	push	r5
    284e:	6f 92       	push	r6
    2850:	7f 92       	push	r7
    2852:	8f 92       	push	r8
    2854:	9f 92       	push	r9
    2856:	af 92       	push	r10
    2858:	bf 92       	push	r11
    285a:	cf 92       	push	r12
    285c:	df 92       	push	r13
    285e:	ef 92       	push	r14
    2860:	ff 92       	push	r15
    2862:	0f 93       	push	r16
    2864:	1f 93       	push	r17
    2866:	cf 93       	push	r28
    2868:	df 93       	push	r29
    286a:	cd b7       	in	r28, 0x3d	; 61
    286c:	de b7       	in	r29, 0x3e	; 62
    286e:	68 97       	sbiw	r28, 0x18	; 24
    2870:	0f b6       	in	r0, 0x3f	; 63
    2872:	f8 94       	cli
    2874:	de bf       	out	0x3e, r29	; 62
    2876:	0f be       	out	0x3f, r0	; 63
    2878:	cd bf       	out	0x3d, r28	; 61
    if (toDraw) {
    287a:	80 91 d9 02 	lds	r24, 0x02D9	; 0x8002d9 <_ZL6toDraw>
    287e:	88 23       	and	r24, r24
    2880:	71 f0       	breq	.+28     	; 0x289e <_Z9drawTitlev+0x58>
    2882:	10 91 d8 02 	lds	r17, 0x02D8	; 0x8002d8 <_ZL5state>
  clear();
}

void Arduboy::clear()
{
  fillScreen(BLACK);
    2886:	0e 94 52 0a 	call	0x14a4	; 0x14a4 <_ZN7Arduboy10fillScreenEh.constprop.23>
        char buf[22];
        const char *p;
        arduboy.clear();
        switch (state) {
    288a:	11 30       	cpi	r17, 0x01	; 1
    288c:	09 f4       	brne	.+2      	; 0x2890 <_Z9drawTitlev+0x4a>
    288e:	0c c1       	rjmp	.+536    	; 0x2aa8 <_Z9drawTitlev+0x262>
    2890:	08 f4       	brcc	.+2      	; 0x2894 <_Z9drawTitlev+0x4e>
    2892:	47 c0       	rjmp	.+142    	; 0x2922 <_Z9drawTitlev+0xdc>
    2894:	12 30       	cpi	r17, 0x02	; 2
    2896:	09 f4       	brne	.+2      	; 0x289a <_Z9drawTitlev+0x54>
    2898:	fd c1       	rjmp	.+1018   	; 0x2c94 <_Z9drawTitlev+0x44e>
                    arduboy.printEx(64 - len * 3, i * 6 + 8, buf);
                }
            }
            break;
        }
        toDraw = false;
    289a:	10 92 d9 02 	sts	0x02D9, r1	; 0x8002d9 <_ZL6toDraw>
    }

    /*  Animation  */
    if (state == STATE_MENU) {
    289e:	80 91 d8 02 	lds	r24, 0x02D8	; 0x8002d8 <_ZL5state>
    28a2:	81 11       	cpse	r24, r1
    28a4:	25 c0       	rjmp	.+74     	; 0x28f0 <_Z9drawTitlev+0xaa>
        uint8_t ani = max(3 - eyesWait / 4, 0);
    28a6:	80 91 b9 02 	lds	r24, 0x02B9	; 0x8002b9 <_ZL8eyesWait>
    28aa:	86 95       	lsr	r24
    28ac:	86 95       	lsr	r24
    28ae:	63 e0       	ldi	r22, 0x03	; 3
    28b0:	70 e0       	ldi	r23, 0x00	; 0
    28b2:	68 1b       	sub	r22, r24
    28b4:	71 09       	sbc	r23, r1
    28b6:	77 fd       	sbrc	r23, 7
    28b8:	60 e0       	ldi	r22, 0x00	; 0
        if (ani == 3) ani = 1;
    28ba:	63 30       	cpi	r22, 0x03	; 3
    28bc:	09 f4       	brne	.+2      	; 0x28c0 <_Z9drawTitlev+0x7a>
    28be:	61 e0       	ldi	r22, 0x01	; 1
        memcpy_P(arduboy.getBuffer() + 660, imgEyes + ani * 10, 10);
    28c0:	8a e0       	ldi	r24, 0x0A	; 10
    28c2:	68 9f       	mul	r22, r24
    28c4:	b0 01       	movw	r22, r0
    28c6:	11 24       	eor	r1, r1
    28c8:	6d 5b       	subi	r22, 0xBD	; 189
    28ca:	79 4f       	sbci	r23, 0xF9	; 249
    28cc:	4a e0       	ldi	r20, 0x0A	; 10
    28ce:	50 e0       	ldi	r21, 0x00	; 0
    28d0:	86 e1       	ldi	r24, 0x16	; 22
    28d2:	96 e0       	ldi	r25, 0x06	; 6
    28d4:	0e 94 8f 26 	call	0x4d1e	; 0x4d1e <memcpy_P>
        //arduboy.fillRect2(20, 40, 10, 8, BLACK);
        //arduboy.drawBitmap(20, 40, imgEyes + ani * 10, 10, 8, WHITE);
        arduboy.drawBitmap(22, 26, imgHeadLight, 7, 8, lightColor);
    28d8:	e0 90 b8 02 	lds	r14, 0x02B8	; 0x8002b8 <_ZL10lightColor>
    28dc:	08 e0       	ldi	r16, 0x08	; 8
    28de:	27 e0       	ldi	r18, 0x07	; 7
    28e0:	4c e3       	ldi	r20, 0x3C	; 60
    28e2:	56 e0       	ldi	r21, 0x06	; 6
    28e4:	6a e1       	ldi	r22, 0x1A	; 26
    28e6:	70 e0       	ldi	r23, 0x00	; 0
    28e8:	86 e1       	ldi	r24, 0x16	; 22
    28ea:	90 e0       	ldi	r25, 0x00	; 0
    28ec:	0e 94 31 09 	call	0x1262	; 0x1262 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28>
    }
}
    28f0:	68 96       	adiw	r28, 0x18	; 24
    28f2:	0f b6       	in	r0, 0x3f	; 63
    28f4:	f8 94       	cli
    28f6:	de bf       	out	0x3e, r29	; 62
    28f8:	0f be       	out	0x3f, r0	; 63
    28fa:	cd bf       	out	0x3d, r28	; 61
    28fc:	df 91       	pop	r29
    28fe:	cf 91       	pop	r28
    2900:	1f 91       	pop	r17
    2902:	0f 91       	pop	r16
    2904:	ff 90       	pop	r15
    2906:	ef 90       	pop	r14
    2908:	df 90       	pop	r13
    290a:	cf 90       	pop	r12
    290c:	bf 90       	pop	r11
    290e:	af 90       	pop	r10
    2910:	9f 90       	pop	r9
    2912:	8f 90       	pop	r8
    2914:	7f 90       	pop	r7
    2916:	6f 90       	pop	r6
    2918:	5f 90       	pop	r5
    291a:	4f 90       	pop	r4
    291c:	3f 90       	pop	r3
    291e:	2f 90       	pop	r2
    2920:	08 95       	ret
        char buf[22];
        const char *p;
        arduboy.clear();
        switch (state) {
        case STATE_MENU:
            arduboy.drawBitmap(3, 0, imgTitle1, 84, 20, WHITE);
    2922:	ee 24       	eor	r14, r14
    2924:	e3 94       	inc	r14
    2926:	04 e1       	ldi	r16, 0x14	; 20
    2928:	24 e5       	ldi	r18, 0x54	; 84
    292a:	46 e7       	ldi	r20, 0x76	; 118
    292c:	58 e0       	ldi	r21, 0x08	; 8
    292e:	70 e0       	ldi	r23, 0x00	; 0
    2930:	60 e0       	ldi	r22, 0x00	; 0
    2932:	83 e0       	ldi	r24, 0x03	; 3
    2934:	90 e0       	ldi	r25, 0x00	; 0
    2936:	0e 94 31 09 	call	0x1262	; 0x1262 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28>
            arduboy.drawBitmap(45, 19, imgTitle2, 80, 20, WHITE);
    293a:	20 e5       	ldi	r18, 0x50	; 80
    293c:	46 e8       	ldi	r20, 0x86	; 134
    293e:	57 e0       	ldi	r21, 0x07	; 7
    2940:	63 e1       	ldi	r22, 0x13	; 19
    2942:	70 e0       	ldi	r23, 0x00	; 0
    2944:	8d e2       	ldi	r24, 0x2D	; 45
    2946:	90 e0       	ldi	r25, 0x00	; 0
    2948:	0e 94 31 09 	call	0x1262	; 0x1262 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28>
            arduboy.drawBitmap(4, 24, imgMan, 40, 40, WHITE);
    294c:	08 e2       	ldi	r16, 0x28	; 40
    294e:	28 e2       	ldi	r18, 0x28	; 40
    2950:	4e eb       	ldi	r20, 0xBE	; 190
    2952:	56 e0       	ldi	r21, 0x06	; 6
    2954:	68 e1       	ldi	r22, 0x18	; 24
    2956:	70 e0       	ldi	r23, 0x00	; 0
    2958:	84 e0       	ldi	r24, 0x04	; 4
    295a:	90 e0       	ldi	r25, 0x00	; 0
    295c:	0e 94 31 09 	call	0x1262	; 0x1262 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28>
            if (lastScore > 0) {
    2960:	80 91 d6 02 	lds	r24, 0x02D6	; 0x8002d6 <_ZL9lastScore>
    2964:	90 91 d7 02 	lds	r25, 0x02D7	; 0x8002d7 <_ZL9lastScore+0x1>
    2968:	9e 01       	movw	r18, r28
    296a:	2f 5f       	subi	r18, 0xFF	; 255
    296c:	3f 4f       	sbci	r19, 0xFF	; 255
    296e:	79 01       	movw	r14, r18
    2970:	89 2b       	or	r24, r25
    2972:	09 f4       	brne	.+2      	; 0x2976 <_Z9drawTitlev+0x130>
    2974:	43 c0       	rjmp	.+134    	; 0x29fc <_Z9drawTitlev+0x1b6>
  }
}

void Arduboy::setCursor(int16_t x, int16_t y)
{
  cursor_x = x;
    2976:	02 e6       	ldi	r16, 0x62	; 98
    2978:	10 e0       	ldi	r17, 0x00	; 0
    297a:	10 93 83 07 	sts	0x0783, r17	; 0x800783 <arduboy+0x415>
    297e:	00 93 82 07 	sts	0x0782, r16	; 0x800782 <arduboy+0x414>
  cursor_y = y;
    2982:	10 92 85 07 	sts	0x0785, r1	; 0x800785 <arduboy+0x417>
    2986:	10 92 84 07 	sts	0x0784, r1	; 0x800784 <arduboy+0x416>
    298a:	69 eb       	ldi	r22, 0xB9	; 185
    298c:	76 e0       	ldi	r23, 0x06	; 6
    298e:	8e e6       	ldi	r24, 0x6E	; 110
    2990:	93 e0       	ldi	r25, 0x03	; 3
    2992:	0e 94 f9 12 	call	0x25f2	; 0x25f2 <_ZN5Print5printEPK19__FlashStringHelper.constprop.36>
  }
}

void Arduboy::setCursor(int16_t x, int16_t y)
{
  cursor_x = x;
    2996:	10 93 83 07 	sts	0x0783, r17	; 0x800783 <arduboy+0x415>
    299a:	00 93 82 07 	sts	0x0782, r16	; 0x800782 <arduboy+0x414>
  cursor_y = y;
    299e:	86 e0       	ldi	r24, 0x06	; 6
    29a0:	90 e0       	ldi	r25, 0x00	; 0
    29a2:	90 93 85 07 	sts	0x0785, r25	; 0x800785 <arduboy+0x417>
    29a6:	80 93 84 07 	sts	0x0784, r24	; 0x800784 <arduboy+0x416>
    29aa:	63 eb       	ldi	r22, 0xB3	; 179
    29ac:	76 e0       	ldi	r23, 0x06	; 6
    29ae:	8e e6       	ldi	r24, 0x6E	; 110
    29b0:	93 e0       	ldi	r25, 0x03	; 3
    29b2:	0e 94 f9 12 	call	0x25f2	; 0x25f2 <_ZN5Print5printEPK19__FlashStringHelper.constprop.36>
                arduboy.printEx(98, 0, F("LAST"));
                arduboy.printEx(98, 6, F("SCORE"));
                sprintf(buf, "%5d", lastScore);
    29b6:	80 91 d7 02 	lds	r24, 0x02D7	; 0x8002d7 <_ZL9lastScore+0x1>
    29ba:	8f 93       	push	r24
    29bc:	80 91 d6 02 	lds	r24, 0x02D6	; 0x8002d6 <_ZL9lastScore>
    29c0:	8f 93       	push	r24
    29c2:	8b e4       	ldi	r24, 0x4B	; 75
    29c4:	91 e0       	ldi	r25, 0x01	; 1
    29c6:	9f 93       	push	r25
    29c8:	8f 93       	push	r24
    29ca:	ff 92       	push	r15
    29cc:	ef 92       	push	r14
    29ce:	0e 94 aa 29 	call	0x5354	; 0x5354 <sprintf>
  }
}

void Arduboy::setCursor(int16_t x, int16_t y)
{
  cursor_x = x;
    29d2:	10 93 83 07 	sts	0x0783, r17	; 0x800783 <arduboy+0x415>
    29d6:	00 93 82 07 	sts	0x0782, r16	; 0x800782 <arduboy+0x414>
  cursor_y = y;
    29da:	8e e0       	ldi	r24, 0x0E	; 14
    29dc:	90 e0       	ldi	r25, 0x00	; 0
    29de:	90 93 85 07 	sts	0x0785, r25	; 0x800785 <arduboy+0x417>
    29e2:	80 93 84 07 	sts	0x0784, r24	; 0x800784 <arduboy+0x416>
    29e6:	b7 01       	movw	r22, r14
    29e8:	8e e6       	ldi	r24, 0x6E	; 110
    29ea:	93 e0       	ldi	r25, 0x03	; 3
    29ec:	0e 94 84 13 	call	0x2708	; 0x2708 <_ZN5Print5writeEPKc.part.2.constprop.38>
    29f0:	0f 90       	pop	r0
    29f2:	0f 90       	pop	r0
    29f4:	0f 90       	pop	r0
    29f6:	0f 90       	pop	r0
    29f8:	0f 90       	pop	r0
    29fa:	0f 90       	pop	r0
    29fc:	6b ea       	ldi	r22, 0xAB	; 171
    29fe:	a6 2e       	mov	r10, r22
    2a00:	66 e0       	ldi	r22, 0x06	; 6
    2a02:	b6 2e       	mov	r11, r22
    randomSeed(rand() ^ micros()); // Shuffle random
    return ret;
}

void drawTitle(void)
{
    2a04:	78 e2       	ldi	r23, 0x28	; 40
    2a06:	c7 2e       	mov	r12, r23
    2a08:	d1 2c       	mov	r13, r1
    2a0a:	10 e0       	ldi	r17, 0x00	; 0
    2a0c:	00 e0       	ldi	r16, 0x00	; 0
                arduboy.printEx(98, 6, F("SCORE"));
                sprintf(buf, "%5d", lastScore);
                arduboy.printEx(98, 14, buf);
            }
            for (int i = 0; i < 4; i++) {
                p = pgm_read_word(menusTable + i);
    2a0e:	f5 01       	movw	r30, r10
    2a10:	85 90       	lpm	r8, Z+
    2a12:	94 90       	lpm	r9, Z
                strcpy_P(buf, p);
    2a14:	b4 01       	movw	r22, r8
    2a16:	c7 01       	movw	r24, r14
    2a18:	0e 94 98 26 	call	0x4d30	; 0x4d30 <strcpy_P>
                arduboy.printEx(64 - (i == menuPos) * 4, i * 6 + 40, buf);
    2a1c:	80 91 d5 02 	lds	r24, 0x02D5	; 0x8002d5 <_ZL7menuPos>
    2a20:	08 2e       	mov	r0, r24
    2a22:	00 0c       	add	r0, r0
    2a24:	99 0b       	sbc	r25, r25
    2a26:	80 17       	cp	r24, r16
    2a28:	91 07       	cpc	r25, r17
    2a2a:	d9 f5       	brne	.+118    	; 0x2aa2 <_Z9drawTitlev+0x25c>
    2a2c:	8c e3       	ldi	r24, 0x3C	; 60
    2a2e:	90 e0       	ldi	r25, 0x00	; 0
  }
}

void Arduboy::setCursor(int16_t x, int16_t y)
{
  cursor_x = x;
    2a30:	90 93 83 07 	sts	0x0783, r25	; 0x800783 <arduboy+0x415>
    2a34:	80 93 82 07 	sts	0x0782, r24	; 0x800782 <arduboy+0x414>
  cursor_y = y;
    2a38:	d0 92 85 07 	sts	0x0785, r13	; 0x800785 <arduboy+0x417>
    2a3c:	c0 92 84 07 	sts	0x0784, r12	; 0x800784 <arduboy+0x416>
    2a40:	b7 01       	movw	r22, r14
    2a42:	8e e6       	ldi	r24, 0x6E	; 110
    2a44:	93 e0       	ldi	r25, 0x03	; 3
    2a46:	0e 94 84 13 	call	0x2708	; 0x2708 <_ZN5Print5writeEPKc.part.2.constprop.38>
                if (p == menuSound) {
    2a4a:	34 ea       	ldi	r19, 0xA4	; 164
    2a4c:	83 16       	cp	r8, r19
    2a4e:	36 e0       	ldi	r19, 0x06	; 6
    2a50:	93 06       	cpc	r9, r19
    2a52:	61 f4       	brne	.+24     	; 0x2a6c <_Z9drawTitlev+0x226>
                    arduboy.print((sound) ? F("ON") : F("OFF"));
    2a54:	80 91 d4 02 	lds	r24, 0x02D4	; 0x8002d4 <_ZL5sound>
    2a58:	61 ea       	ldi	r22, 0xA1	; 161
    2a5a:	76 e0       	ldi	r23, 0x06	; 6
    2a5c:	81 11       	cpse	r24, r1
    2a5e:	02 c0       	rjmp	.+4      	; 0x2a64 <_Z9drawTitlev+0x21e>
    2a60:	6d e9       	ldi	r22, 0x9D	; 157
    2a62:	76 e0       	ldi	r23, 0x06	; 6
    2a64:	8e e6       	ldi	r24, 0x6E	; 110
    2a66:	93 e0       	ldi	r25, 0x03	; 3
    2a68:	0e 94 f9 12 	call	0x25f2	; 0x25f2 <_ZN5Print5printEPK19__FlashStringHelper.constprop.36>
                arduboy.printEx(98, 0, F("LAST"));
                arduboy.printEx(98, 6, F("SCORE"));
                sprintf(buf, "%5d", lastScore);
                arduboy.printEx(98, 14, buf);
            }
            for (int i = 0; i < 4; i++) {
    2a6c:	0f 5f       	subi	r16, 0xFF	; 255
    2a6e:	1f 4f       	sbci	r17, 0xFF	; 255
    2a70:	82 e0       	ldi	r24, 0x02	; 2
    2a72:	a8 0e       	add	r10, r24
    2a74:	b1 1c       	adc	r11, r1
    2a76:	96 e0       	ldi	r25, 0x06	; 6
    2a78:	c9 0e       	add	r12, r25
    2a7a:	d1 1c       	adc	r13, r1
    2a7c:	04 30       	cpi	r16, 0x04	; 4
    2a7e:	11 05       	cpc	r17, r1
    2a80:	31 f6       	brne	.-116    	; 0x2a0e <_Z9drawTitlev+0x1c8>
                arduboy.printEx(64 - (i == menuPos) * 4, i * 6 + 40, buf);
                if (p == menuSound) {
                    arduboy.print((sound) ? F("ON") : F("OFF"));
                }
            }
            arduboy.fillRect2(52, menuPos * 6 + 40, 5, 5, WHITE);
    2a82:	60 91 d5 02 	lds	r22, 0x02D5	; 0x8002d5 <_ZL7menuPos>
    2a86:	e6 e0       	ldi	r30, 0x06	; 6
    2a88:	6e 02       	muls	r22, r30
    2a8a:	b0 01       	movw	r22, r0
    2a8c:	11 24       	eor	r1, r1
    2a8e:	68 5d       	subi	r22, 0xD8	; 216
    2a90:	7f 4f       	sbci	r23, 0xFF	; 255
    2a92:	01 e0       	ldi	r16, 0x01	; 1
    2a94:	25 e0       	ldi	r18, 0x05	; 5
    2a96:	45 e0       	ldi	r20, 0x05	; 5
    2a98:	84 e3       	ldi	r24, 0x34	; 52
    2a9a:	90 e0       	ldi	r25, 0x00	; 0
    2a9c:	0e 94 bb 08 	call	0x1176	; 0x1176 <_ZN9MyArduboy9fillRect2Eiihah.constprop.30>
    2aa0:	fc ce       	rjmp	.-520    	; 0x289a <_Z9drawTitlev+0x54>
                arduboy.printEx(98, 14, buf);
            }
            for (int i = 0; i < 4; i++) {
                p = pgm_read_word(menusTable + i);
                strcpy_P(buf, p);
                arduboy.printEx(64 - (i == menuPos) * 4, i * 6 + 40, buf);
    2aa2:	80 e4       	ldi	r24, 0x40	; 64
    2aa4:	90 e0       	ldi	r25, 0x00	; 0
    2aa6:	c4 cf       	rjmp	.-120    	; 0x2a30 <_Z9drawTitlev+0x1ea>
  }
}

void Arduboy::setCursor(int16_t x, int16_t y)
{
  cursor_x = x;
    2aa8:	86 e1       	ldi	r24, 0x16	; 22
    2aaa:	90 e0       	ldi	r25, 0x00	; 0
    2aac:	90 93 83 07 	sts	0x0783, r25	; 0x800783 <arduboy+0x415>
    2ab0:	80 93 82 07 	sts	0x0782, r24	; 0x800782 <arduboy+0x414>
  cursor_y = y;
    2ab4:	84 e0       	ldi	r24, 0x04	; 4
    2ab6:	90 e0       	ldi	r25, 0x00	; 0
    2ab8:	90 93 85 07 	sts	0x0785, r25	; 0x800785 <arduboy+0x417>
    2abc:	80 93 84 07 	sts	0x0784, r24	; 0x800784 <arduboy+0x416>
    2ac0:	6e e8       	ldi	r22, 0x8E	; 142
    2ac2:	76 e0       	ldi	r23, 0x06	; 6
    2ac4:	8e e6       	ldi	r24, 0x6E	; 110
    2ac6:	93 e0       	ldi	r25, 0x03	; 3
    2ac8:	0e 94 f9 12 	call	0x25f2	; 0x25f2 <_ZN5Print5printEPK19__FlashStringHelper.constprop.36>
    2acc:	e2 e0       	ldi	r30, 0x02	; 2
    2ace:	f4 e0       	ldi	r31, 0x04	; 4
    2ad0:	21 e8       	ldi	r18, 0x81	; 129
    2ad2:	34 e0       	ldi	r19, 0x04	; 4
}

void MyArduboy::fillBeltWhite(buffer_t *p, uint8_t d, uint8_t w)
{
    for (; w > 0; w--) {
        *p++ |= d;
    2ad4:	80 81       	ld	r24, Z
    2ad6:	80 61       	ori	r24, 0x10	; 16
    2ad8:	81 93       	st	Z+, r24
    }
}

void MyArduboy::fillBeltWhite(buffer_t *p, uint8_t d, uint8_t w)
{
    for (; w > 0; w--) {
    2ada:	2e 17       	cp	r18, r30
    2adc:	3f 07       	cpc	r19, r31
    2ade:	d1 f7       	brne	.-12     	; 0x2ad4 <_Z9drawTitlev+0x28e>
    2ae0:	40 ec       	ldi	r20, 0xC0	; 192
    2ae2:	24 2e       	mov	r2, r20
    2ae4:	42 e0       	ldi	r20, 0x02	; 2
    2ae6:	34 2e       	mov	r3, r20
    2ae8:	c1 2c       	mov	r12, r1
    2aea:	d1 2c       	mov	r13, r1
    2aec:	76 01       	movw	r14, r12
    2aee:	c3 94       	inc	r12
    2af0:	04 e0       	ldi	r16, 0x04	; 4
    2af2:	10 e0       	ldi	r17, 0x00	; 0
    2af4:	46 01       	movw	r8, r12
    2af6:	f1 e0       	ldi	r31, 0x01	; 1
    2af8:	8f 1a       	sub	r8, r31
    2afa:	91 08       	sbc	r9, r1
            arduboy.printEx(22, 4, F("BEST 10 SCORES"));
            arduboy.drawFastHLine2(0, 12, 127, 12);
            for (int i = 0; i < 2; i++) {
                for (int j = 0; j < 5; j++) {
                    int r = i * 5 + j;
                    arduboy.printEx(i * 60 + 4 - (r == 9) * 6, j * 6 + 14, F("["));
    2afc:	38 8e       	std	Y+24, r3	; 0x18
    2afe:	2f 8a       	std	Y+23, r2	; 0x17
    2b00:	26 01       	movw	r4, r12
    2b02:	37 01       	movw	r6, r14
    2b04:	3e e0       	ldi	r19, 0x0E	; 14
    2b06:	a3 2e       	mov	r10, r19
    2b08:	b1 2c       	mov	r11, r1
    2b0a:	90 e0       	ldi	r25, 0x00	; 0
    2b0c:	80 e0       	ldi	r24, 0x00	; 0
    2b0e:	29 e0       	ldi	r18, 0x09	; 9
    2b10:	82 16       	cp	r8, r18
    2b12:	91 04       	cpc	r9, r1
    2b14:	11 f4       	brne	.+4      	; 0x2b1a <_Z9drawTitlev+0x2d4>
    2b16:	86 e0       	ldi	r24, 0x06	; 6
    2b18:	90 e0       	ldi	r25, 0x00	; 0
    2b1a:	f8 01       	movw	r30, r16
    2b1c:	e8 1b       	sub	r30, r24
    2b1e:	f9 0b       	sbc	r31, r25
  }
}

void Arduboy::setCursor(int16_t x, int16_t y)
{
  cursor_x = x;
    2b20:	f0 93 83 07 	sts	0x0783, r31	; 0x800783 <arduboy+0x415>
    2b24:	e0 93 82 07 	sts	0x0782, r30	; 0x800782 <arduboy+0x414>
  cursor_y = y;
    2b28:	b0 92 85 07 	sts	0x0785, r11	; 0x800785 <arduboy+0x417>
    2b2c:	a0 92 84 07 	sts	0x0784, r10	; 0x800784 <arduboy+0x416>
}

size_t MyArduboy::printEx(int16_t x, int16_t y, const __FlashStringHelper *p)
{
    setCursor(x, y);
    return print(p);
    2b30:	6c e8       	ldi	r22, 0x8C	; 140
    2b32:	76 e0       	ldi	r23, 0x06	; 6
    2b34:	8e e6       	ldi	r24, 0x6E	; 110
    2b36:	93 e0       	ldi	r25, 0x03	; 3
    2b38:	0e 94 f9 12 	call	0x25f2	; 0x25f2 <_ZN5Print5printEPK19__FlashStringHelper.constprop.36>
    if (n < 0) {
      int t = print('-');
      n = -n;
      return printNumber(n, 10) + t;
    }
    return printNumber(n, 10);
    2b3c:	4a e0       	ldi	r20, 0x0A	; 10
    2b3e:	c3 01       	movw	r24, r6
    2b40:	b2 01       	movw	r22, r4
    2b42:	0e 94 8e 13 	call	0x271c	; 0x271c <_ZN5Print11printNumberEmh.constprop.27>
                    arduboy.print(r + 1);
                    arduboy.print(F("] "));
    2b46:	69 e8       	ldi	r22, 0x89	; 137
    2b48:	76 e0       	ldi	r23, 0x06	; 6
    2b4a:	8e e6       	ldi	r24, 0x6E	; 110
    2b4c:	93 e0       	ldi	r25, 0x03	; 3
    2b4e:	0e 94 f9 12 	call	0x25f2	; 0x25f2 <_ZN5Print5printEPK19__FlashStringHelper.constprop.36>
                    arduboy.print(hiScore[r]);
    2b52:	ef 89       	ldd	r30, Y+23	; 0x17
    2b54:	f8 8d       	ldd	r31, Y+24	; 0x18
    2b56:	61 91       	ld	r22, Z+
    2b58:	71 91       	ld	r23, Z+
    2b5a:	f8 8f       	std	Y+24, r31	; 0x18
    2b5c:	ef 8b       	std	Y+23, r30	; 0x17
  return print((long) n, base);
}

size_t Print::print(unsigned int n, int base)
{
  return print((unsigned long) n, base);
    2b5e:	90 e0       	ldi	r25, 0x00	; 0
    2b60:	80 e0       	ldi	r24, 0x00	; 0
}

size_t Print::print(unsigned long n, int base)
{
  if (base == 0) return write(n);
  else return printNumber(n, base);
    2b62:	4a e0       	ldi	r20, 0x0A	; 10
    2b64:	0e 94 8e 13 	call	0x271c	; 0x271c <_ZN5Print11printNumberEmh.constprop.27>
    2b68:	ff ef       	ldi	r31, 0xFF	; 255
    2b6a:	8f 1a       	sub	r8, r31
    2b6c:	9f 0a       	sbc	r9, r31
    2b6e:	26 e0       	ldi	r18, 0x06	; 6
    2b70:	a2 0e       	add	r10, r18
    2b72:	b1 1c       	adc	r11, r1
    2b74:	3f ef       	ldi	r19, 0xFF	; 255
    2b76:	43 1a       	sub	r4, r19
    2b78:	53 0a       	sbc	r5, r19
    2b7a:	63 0a       	sbc	r6, r19
    2b7c:	73 0a       	sbc	r7, r19
            break;
        case STATE_RECORD:
            arduboy.printEx(22, 4, F("BEST 10 SCORES"));
            arduboy.drawFastHLine2(0, 12, 127, 12);
            for (int i = 0; i < 2; i++) {
                for (int j = 0; j < 5; j++) {
    2b7e:	8c e2       	ldi	r24, 0x2C	; 44
    2b80:	a8 16       	cp	r10, r24
    2b82:	b1 04       	cpc	r11, r1
    2b84:	11 f6       	brne	.-124    	; 0x2b0a <_Z9drawTitlev+0x2c4>
    2b86:	04 5c       	subi	r16, 0xC4	; 196
    2b88:	1f 4f       	sbci	r17, 0xFF	; 255
    2b8a:	95 e0       	ldi	r25, 0x05	; 5
    2b8c:	c9 0e       	add	r12, r25
    2b8e:	d1 1c       	adc	r13, r1
    2b90:	e1 1c       	adc	r14, r1
    2b92:	f1 1c       	adc	r15, r1
    2b94:	ea e0       	ldi	r30, 0x0A	; 10
    2b96:	2e 0e       	add	r2, r30
    2b98:	31 1c       	adc	r3, r1
            arduboy.fillRect2(52, menuPos * 6 + 40, 5, 5, WHITE);
            break;
        case STATE_RECORD:
            arduboy.printEx(22, 4, F("BEST 10 SCORES"));
            arduboy.drawFastHLine2(0, 12, 127, 12);
            for (int i = 0; i < 2; i++) {
    2b9a:	0c 37       	cpi	r16, 0x7C	; 124
    2b9c:	11 05       	cpc	r17, r1
    2b9e:	09 f0       	breq	.+2      	; 0x2ba2 <_Z9drawTitlev+0x35c>
    2ba0:	a9 cf       	rjmp	.-174    	; 0x2af4 <_Z9drawTitlev+0x2ae>
    2ba2:	e2 e0       	ldi	r30, 0x02	; 2
    2ba4:	f6 e0       	ldi	r31, 0x06	; 6
    2ba6:	21 e8       	ldi	r18, 0x81	; 129
    2ba8:	36 e0       	ldi	r19, 0x06	; 6
}

void MyArduboy::fillBeltWhite(buffer_t *p, uint8_t d, uint8_t w)
{
    for (; w > 0; w--) {
        *p++ |= d;
    2baa:	80 81       	ld	r24, Z
    2bac:	80 61       	ori	r24, 0x10	; 16
    2bae:	81 93       	st	Z+, r24
    }
}

void MyArduboy::fillBeltWhite(buffer_t *p, uint8_t d, uint8_t w)
{
    for (; w > 0; w--) {
    2bb0:	2e 17       	cp	r18, r30
    2bb2:	3f 07       	cpc	r19, r31
    2bb4:	d1 f7       	brne	.-12     	; 0x2baa <_Z9drawTitlev+0x364>
  }
}

void Arduboy::setCursor(int16_t x, int16_t y)
{
  cursor_x = x;
    2bb6:	00 e1       	ldi	r16, 0x10	; 16
    2bb8:	10 e0       	ldi	r17, 0x00	; 0
    2bba:	10 93 83 07 	sts	0x0783, r17	; 0x800783 <arduboy+0x415>
    2bbe:	00 93 82 07 	sts	0x0782, r16	; 0x800782 <arduboy+0x414>
  cursor_y = y;
    2bc2:	80 e3       	ldi	r24, 0x30	; 48
    2bc4:	90 e0       	ldi	r25, 0x00	; 0
    2bc6:	90 93 85 07 	sts	0x0785, r25	; 0x800785 <arduboy+0x417>
    2bca:	80 93 84 07 	sts	0x0784, r24	; 0x800784 <arduboy+0x416>
}

size_t MyArduboy::printEx(int16_t x, int16_t y, const __FlashStringHelper *p)
{
    setCursor(x, y);
    return print(p);
    2bce:	6d e7       	ldi	r22, 0x7D	; 125
    2bd0:	76 e0       	ldi	r23, 0x06	; 6
    2bd2:	8e e6       	ldi	r24, 0x6E	; 110
    2bd4:	93 e0       	ldi	r25, 0x03	; 3
    2bd6:	0e 94 f9 12 	call	0x25f2	; 0x25f2 <_ZN5Print5printEPK19__FlashStringHelper.constprop.36>
  return print((long) n, base);
}

size_t Print::print(unsigned int n, int base)
{
  return print((unsigned long) n, base);
    2bda:	60 91 be 02 	lds	r22, 0x02BE	; 0x8002be <_ZL9playCount>
    2bde:	70 91 bf 02 	lds	r23, 0x02BF	; 0x8002bf <_ZL9playCount+0x1>
    2be2:	90 e0       	ldi	r25, 0x00	; 0
    2be4:	80 e0       	ldi	r24, 0x00	; 0
}

size_t Print::print(unsigned long n, int base)
{
  if (base == 0) return write(n);
  else return printNumber(n, base);
    2be6:	4a e0       	ldi	r20, 0x0A	; 10
    2be8:	0e 94 8e 13 	call	0x271c	; 0x271c <_ZN5Print11printNumberEmh.constprop.27>
  }
}

void Arduboy::setCursor(int16_t x, int16_t y)
{
  cursor_x = x;
    2bec:	10 93 83 07 	sts	0x0783, r17	; 0x800783 <arduboy+0x415>
    2bf0:	00 93 82 07 	sts	0x0782, r16	; 0x800782 <arduboy+0x414>
  cursor_y = y;
    2bf4:	86 e3       	ldi	r24, 0x36	; 54
    2bf6:	90 e0       	ldi	r25, 0x00	; 0
    2bf8:	90 93 85 07 	sts	0x0785, r25	; 0x800785 <arduboy+0x417>
    2bfc:	80 93 84 07 	sts	0x0784, r24	; 0x800784 <arduboy+0x416>
    2c00:	61 e7       	ldi	r22, 0x71	; 113
    2c02:	76 e0       	ldi	r23, 0x06	; 6
    2c04:	8e e6       	ldi	r24, 0x6E	; 110
    2c06:	93 e0       	ldi	r25, 0x03	; 3
    2c08:	0e 94 f9 12 	call	0x25f2	; 0x25f2 <_ZN5Print5printEPK19__FlashStringHelper.constprop.36>
            }
            arduboy.drawFastHLine2(0, 44, 127, 44);
            arduboy.printEx(16, 48, F("PLAY COUNT "));
            arduboy.print(playCount);
            arduboy.printEx(16, 54, F("PLAY TIME  "));
            arduboy.print(playFrames / 3600); // minutes
    2c0c:	60 91 ba 02 	lds	r22, 0x02BA	; 0x8002ba <_ZL10playFrames>
    2c10:	70 91 bb 02 	lds	r23, 0x02BB	; 0x8002bb <_ZL10playFrames+0x1>
    2c14:	80 91 bc 02 	lds	r24, 0x02BC	; 0x8002bc <_ZL10playFrames+0x2>
    2c18:	90 91 bd 02 	lds	r25, 0x02BD	; 0x8002bd <_ZL10playFrames+0x3>
    2c1c:	20 e1       	ldi	r18, 0x10	; 16
    2c1e:	3e e0       	ldi	r19, 0x0E	; 14
    2c20:	40 e0       	ldi	r20, 0x00	; 0
    2c22:	50 e0       	ldi	r21, 0x00	; 0
    2c24:	0e 94 1b 27 	call	0x4e36	; 0x4e36 <__udivmodsi4>
    2c28:	ca 01       	movw	r24, r20
    2c2a:	b9 01       	movw	r22, r18
    2c2c:	4a e0       	ldi	r20, 0x0A	; 10
    2c2e:	0e 94 8e 13 	call	0x271c	; 0x271c <_ZN5Print11printNumberEmh.constprop.27>
            sprintf(buf, "'%02d\"", playFrames / 60 % 60); // seconds
    2c32:	60 91 ba 02 	lds	r22, 0x02BA	; 0x8002ba <_ZL10playFrames>
    2c36:	70 91 bb 02 	lds	r23, 0x02BB	; 0x8002bb <_ZL10playFrames+0x1>
    2c3a:	80 91 bc 02 	lds	r24, 0x02BC	; 0x8002bc <_ZL10playFrames+0x2>
    2c3e:	90 91 bd 02 	lds	r25, 0x02BD	; 0x8002bd <_ZL10playFrames+0x3>
    2c42:	2c e3       	ldi	r18, 0x3C	; 60
    2c44:	c2 2e       	mov	r12, r18
    2c46:	d1 2c       	mov	r13, r1
    2c48:	e1 2c       	mov	r14, r1
    2c4a:	f1 2c       	mov	r15, r1
    2c4c:	a7 01       	movw	r20, r14
    2c4e:	96 01       	movw	r18, r12
    2c50:	0e 94 1b 27 	call	0x4e36	; 0x4e36 <__udivmodsi4>
    2c54:	ca 01       	movw	r24, r20
    2c56:	b9 01       	movw	r22, r18
    2c58:	a7 01       	movw	r20, r14
    2c5a:	96 01       	movw	r18, r12
    2c5c:	0e 94 1b 27 	call	0x4e36	; 0x4e36 <__udivmodsi4>
    2c60:	9f 93       	push	r25
    2c62:	8f 93       	push	r24
    2c64:	7f 93       	push	r23
    2c66:	6f 93       	push	r22
    2c68:	8f e4       	ldi	r24, 0x4F	; 79
    2c6a:	91 e0       	ldi	r25, 0x01	; 1
    2c6c:	9f 93       	push	r25
    2c6e:	8f 93       	push	r24
    2c70:	8e 01       	movw	r16, r28
    2c72:	0f 5f       	subi	r16, 0xFF	; 255
    2c74:	1f 4f       	sbci	r17, 0xFF	; 255
    2c76:	1f 93       	push	r17
    2c78:	0f 93       	push	r16
    2c7a:	0e 94 aa 29 	call	0x5354	; 0x5354 <sprintf>
    2c7e:	b8 01       	movw	r22, r16
    2c80:	8e e6       	ldi	r24, 0x6E	; 110
    2c82:	93 e0       	ldi	r25, 0x03	; 3
    2c84:	0e 94 84 13 	call	0x2708	; 0x2708 <_ZN5Print5writeEPKc.part.2.constprop.38>
    2c88:	0f b6       	in	r0, 0x3f	; 63
    2c8a:	f8 94       	cli
    2c8c:	de bf       	out	0x3e, r29	; 62
    2c8e:	0f be       	out	0x3f, r0	; 63
    2c90:	cd bf       	out	0x3d, r28	; 61
    2c92:	03 ce       	rjmp	.-1018   	; 0x289a <_Z9drawTitlev+0x54>
    2c94:	81 e6       	ldi	r24, 0x61	; 97
    2c96:	e8 2e       	mov	r14, r24
    2c98:	86 e0       	ldi	r24, 0x06	; 6
    2c9a:	f8 2e       	mov	r15, r24
{
    if (toDraw) {
        char buf[22];
        const char *p;
        arduboy.clear();
        switch (state) {
    2c9c:	08 e0       	ldi	r16, 0x08	; 8
    2c9e:	10 e0       	ldi	r17, 0x00	; 0
            sprintf(buf, "'%02d\"", playFrames / 60 % 60); // seconds
            arduboy.print(buf);
            break;
        case STATE_CREDIT:
            for (int i = 0; i < 8; i++) {
                p = pgm_read_word(creditsTable + i);
    2ca0:	f7 01       	movw	r30, r14
    2ca2:	65 91       	lpm	r22, Z+
    2ca4:	74 91       	lpm	r23, Z
                if (p != NULL) {
    2ca6:	61 15       	cp	r22, r1
    2ca8:	71 05       	cpc	r23, r1
    2caa:	01 f1       	breq	.+64     	; 0x2cec <_Z9drawTitlev+0x4a6>
                    strcpy_P(buf, p);
    2cac:	ce 01       	movw	r24, r28
    2cae:	01 96       	adiw	r24, 0x01	; 1
    2cb0:	0e 94 98 26 	call	0x4d30	; 0x4d30 <strcpy_P>
                    uint8_t len = strnlen(buf, sizeof(buf));
    2cb4:	66 e1       	ldi	r22, 0x16	; 22
    2cb6:	70 e0       	ldi	r23, 0x00	; 0
    2cb8:	ce 01       	movw	r24, r28
    2cba:	01 96       	adiw	r24, 0x01	; 1
    2cbc:	0e 94 9f 26 	call	0x4d3e	; 0x4d3e <strnlen>
                    arduboy.printEx(64 - len * 3, i * 6 + 8, buf);
    2cc0:	38 2f       	mov	r19, r24
    2cc2:	2d ef       	ldi	r18, 0xFD	; 253
    2cc4:	23 03       	mulsu	r18, r19
    2cc6:	c0 01       	movw	r24, r0
    2cc8:	11 24       	eor	r1, r1
    2cca:	80 5c       	subi	r24, 0xC0	; 192
    2ccc:	9f 4f       	sbci	r25, 0xFF	; 255
  }
}

void Arduboy::setCursor(int16_t x, int16_t y)
{
  cursor_x = x;
    2cce:	90 93 83 07 	sts	0x0783, r25	; 0x800783 <arduboy+0x415>
    2cd2:	80 93 82 07 	sts	0x0782, r24	; 0x800782 <arduboy+0x414>
  cursor_y = y;
    2cd6:	10 93 85 07 	sts	0x0785, r17	; 0x800785 <arduboy+0x417>
    2cda:	00 93 84 07 	sts	0x0784, r16	; 0x800784 <arduboy+0x416>
    2cde:	be 01       	movw	r22, r28
    2ce0:	6f 5f       	subi	r22, 0xFF	; 255
    2ce2:	7f 4f       	sbci	r23, 0xFF	; 255
    2ce4:	8e e6       	ldi	r24, 0x6E	; 110
    2ce6:	93 e0       	ldi	r25, 0x03	; 3
    2ce8:	0e 94 84 13 	call	0x2708	; 0x2708 <_ZN5Print5writeEPKc.part.2.constprop.38>
    2cec:	32 e0       	ldi	r19, 0x02	; 2
    2cee:	e3 0e       	add	r14, r19
    2cf0:	f1 1c       	adc	r15, r1
    2cf2:	0a 5f       	subi	r16, 0xFA	; 250
    2cf4:	1f 4f       	sbci	r17, 0xFF	; 255
            arduboy.print(playFrames / 3600); // minutes
            sprintf(buf, "'%02d\"", playFrames / 60 % 60); // seconds
            arduboy.print(buf);
            break;
        case STATE_CREDIT:
            for (int i = 0; i < 8; i++) {
    2cf6:	08 33       	cpi	r16, 0x38	; 56
    2cf8:	11 05       	cpc	r17, r1
    2cfa:	91 f6       	brne	.-92     	; 0x2ca0 <_Z9drawTitlev+0x45a>
    2cfc:	ce cd       	rjmp	.-1124   	; 0x289a <_Z9drawTitlev+0x54>

00002cfe <_Z8drawGamev>:

    return (isOver && counter == 0);
}

void drawGame(void)
{
    2cfe:	2f 92       	push	r2
    2d00:	3f 92       	push	r3
    2d02:	5f 92       	push	r5
    2d04:	6f 92       	push	r6
    2d06:	7f 92       	push	r7
    2d08:	8f 92       	push	r8
    2d0a:	9f 92       	push	r9
    2d0c:	af 92       	push	r10
    2d0e:	bf 92       	push	r11
    2d10:	cf 92       	push	r12
    2d12:	df 92       	push	r13
    2d14:	ef 92       	push	r14
    2d16:	ff 92       	push	r15
    2d18:	0f 93       	push	r16
    2d1a:	1f 93       	push	r17
    2d1c:	cf 93       	push	r28
    2d1e:	df 93       	push	r29
    2d20:	cd b7       	in	r28, 0x3d	; 61
    2d22:	de b7       	in	r29, 0x3e	; 62
    2d24:	2e 97       	sbiw	r28, 0x0e	; 14
    2d26:	0f b6       	in	r0, 0x3f	; 63
    2d28:	f8 94       	cli
    2d2a:	de bf       	out	0x3e, r29	; 62
    2d2c:	0f be       	out	0x3f, r0	; 63
    2d2e:	cd bf       	out	0x3d, r28	; 61
  clear();
}

void Arduboy::clear()
{
  fillScreen(BLACK);
    2d30:	0e 94 52 0a 	call	0x14a4	; 0x14a4 <_ZN7Arduboy10fillScreenEh.constprop.23>
    arduboy.clear();

    int shake = (cavePhase > 976) ? cavePhase % 4 / 2 : 0;
    2d34:	80 91 b2 02 	lds	r24, 0x02B2	; 0x8002b2 <_ZL9cavePhase>
    2d38:	90 91 b3 02 	lds	r25, 0x02B3	; 0x8002b3 <_ZL9cavePhase+0x1>
    2d3c:	81 fb       	bst	r24, 1
    2d3e:	22 24       	eor	r2, r2
    2d40:	20 f8       	bld	r2, 0
    2d42:	31 2c       	mov	r3, r1
    2d44:	81 3d       	cpi	r24, 0xD1	; 209
    2d46:	93 40       	sbci	r25, 0x03	; 3
    2d48:	14 f4       	brge	.+4      	; 0x2d4e <_Z8drawGamev+0x50>
    2d4a:	31 2c       	mov	r3, r1
    2d4c:	21 2c       	mov	r2, r1
    int offsetTop = caveBaseTop + shake;
    2d4e:	60 91 b0 02 	lds	r22, 0x02B0	; 0x8002b0 <_ZL11caveBaseTop>
    2d52:	70 91 b1 02 	lds	r23, 0x02B1	; 0x8002b1 <_ZL11caveBaseTop+0x1>
    2d56:	c1 01       	movw	r24, r2
    2d58:	86 0f       	add	r24, r22
    2d5a:	97 1f       	adc	r25, r23
    2d5c:	9a 83       	std	Y+2, r25	; 0x02
    2d5e:	89 83       	std	Y+1, r24	; 0x01
    int offsetBottom = caveBaseBottom + shake;
    2d60:	80 90 ae 02 	lds	r8, 0x02AE	; 0x8002ae <_ZL14caveBaseBottom>
    2d64:	90 90 af 02 	lds	r9, 0x02AF	; 0x8002af <_ZL14caveBaseBottom+0x1>
    2d68:	82 0c       	add	r8, r2
    2d6a:	93 1c       	adc	r9, r3

    /*  Cave & Debris  */
    for (int i = 0; i < 128; i++) {
    2d6c:	10 e0       	ldi	r17, 0x00	; 0
    2d6e:	00 e0       	ldi	r16, 0x00	; 0

        height = caveColumn[col].top;
        if (odd == 0) {
            edge = height - caveColumn[mod(col - 1, 18)].top + 1;
        } else if (odd == 7) {
            edge = height - caveColumn[mod(col + 1, 18)].top + 1;
    2d70:	f2 e1       	ldi	r31, 0x12	; 18
    2d72:	6f 2e       	mov	r6, r31
    2d74:	71 2c       	mov	r7, r1
    if (height < 0) return;
    edge = min(max(edge, 1), height);
    arduboy.drawFastVLine2(x, height - edge, edge, WHITE);
    height -= edge;

    int shift = -offset & 7;
    2d76:	87 70       	andi	r24, 0x07	; 7
    2d78:	99 27       	eor	r25, r25
    2d7a:	9e 83       	std	Y+6, r25	; 0x06
    2d7c:	8d 83       	std	Y+5, r24	; 0x05
    2d7e:	91 95       	neg	r25
    2d80:	81 95       	neg	r24
    2d82:	91 09       	sbc	r25, r1
    2d84:	9c 01       	movw	r18, r24
    2d86:	27 70       	andi	r18, 0x07	; 7
    2d88:	33 27       	eor	r19, r19
    2d8a:	3a 87       	std	Y+10, r19	; 0x0a
    2d8c:	29 87       	std	Y+9, r18	; 0x09
    if (height < 0) return;
    edge = min(max(edge, 1), height);
    arduboy.drawFastVLine2(x, 64 - height, edge, WHITE);
    height -= edge;

    int shift = -offset & 7;
    2d8e:	88 27       	eor	r24, r24
    2d90:	99 27       	eor	r25, r25
    2d92:	88 19       	sub	r24, r8
    2d94:	99 09       	sbc	r25, r9
    2d96:	9c 01       	movw	r18, r24
    2d98:	27 70       	andi	r18, 0x07	; 7
    2d9a:	33 27       	eor	r19, r19
    2d9c:	38 87       	std	Y+8, r19	; 0x08
    2d9e:	2f 83       	std	Y+7, r18	; 0x07
    2da0:	c9 01       	movw	r24, r18
    2da2:	91 95       	neg	r25
    2da4:	81 95       	neg	r24
    2da6:	91 09       	sbc	r25, r1
    2da8:	9c 01       	movw	r18, r24
    2daa:	27 70       	andi	r18, 0x07	; 7
    2dac:	33 27       	eor	r19, r19
    2dae:	3c 87       	std	Y+12, r19	; 0x0c
    2db0:	2b 87       	std	Y+11, r18	; 0x0b
    int offsetTop = caveBaseTop + shake;
    int offsetBottom = caveBaseBottom + shake;

    /*  Cave & Debris  */
    for (int i = 0; i < 128; i++) {
        int pos = (i + caveOffset + 8) % 144;
    2db2:	e0 91 ad 02 	lds	r30, 0x02AD	; 0x8002ad <_ZL10caveOffset>
    2db6:	e0 0f       	add	r30, r16
    2db8:	f1 2f       	mov	r31, r17
    2dba:	f1 1d       	adc	r31, r1
    2dbc:	cf 01       	movw	r24, r30
    2dbe:	08 96       	adiw	r24, 0x08	; 8
    2dc0:	60 e9       	ldi	r22, 0x90	; 144
    2dc2:	70 e0       	ldi	r23, 0x00	; 0
    2dc4:	0e 94 77 29 	call	0x52ee	; 0x52ee <__divmodhi4>
    2dc8:	6c 01       	movw	r12, r24
        int col = pos / 8;
    2dca:	7c 01       	movw	r14, r24
    2dcc:	73 e0       	ldi	r23, 0x03	; 3
    2dce:	f5 94       	asr	r15
    2dd0:	e7 94       	ror	r14
    2dd2:	7a 95       	dec	r23
    2dd4:	e1 f7       	brne	.-8      	; 0x2dce <_Z8drawGamev+0xd0>
        int odd = pos & 7;
    2dd6:	5c 01       	movw	r10, r24
    2dd8:	37 e0       	ldi	r19, 0x07	; 7
    2dda:	a3 22       	and	r10, r19
    2ddc:	bb 24       	eor	r11, r11
        int height, edge; 
        uchar ptn = pgm_read_byte(imgCave + ((i + caveOffset) & 7));
    2dde:	e7 70       	andi	r30, 0x07	; 7
    2de0:	ff 27       	eor	r31, r31
    2de2:	e3 5c       	subi	r30, 0xC3	; 195
    2de4:	fb 4f       	sbci	r31, 0xFB	; 251
    2de6:	54 90       	lpm	r5, Z

        height = caveColumn[col].top;
    2de8:	c7 01       	movw	r24, r14
    2dea:	88 0f       	add	r24, r24
    2dec:	99 1f       	adc	r25, r25
    2dee:	9c 83       	std	Y+4, r25	; 0x04
    2df0:	8b 83       	std	Y+3, r24	; 0x03
    2df2:	fc 01       	movw	r30, r24
    2df4:	e7 57       	subi	r30, 0x77	; 119
    2df6:	fd 4f       	sbci	r31, 0xFD	; 253
    2df8:	90 81       	ld	r25, Z
    2dfa:	29 2f       	mov	r18, r25
    2dfc:	30 e0       	ldi	r19, 0x00	; 0
    2dfe:	3e 87       	std	Y+14, r19	; 0x0e
    2e00:	2d 87       	std	Y+13, r18	; 0x0d
        if (odd == 0) {
    2e02:	a1 14       	cp	r10, r1
    2e04:	b1 04       	cpc	r11, r1
    2e06:	09 f0       	breq	.+2      	; 0x2e0a <_Z8drawGamev+0x10c>
    2e08:	62 c0       	rjmp	.+196    	; 0x2ece <_Z8drawGamev+0x1d0>
            edge = height - caveColumn[mod(col - 1, 18)].top + 1;
    2e0a:	c7 01       	movw	r24, r14
    2e0c:	41 96       	adiw	r24, 0x11	; 17
    2e0e:	b3 01       	movw	r22, r6
    2e10:	0e 94 77 29 	call	0x52ee	; 0x52ee <__divmodhi4>
    2e14:	fc 01       	movw	r30, r24
    2e16:	ee 0f       	add	r30, r30
    2e18:	ff 1f       	adc	r31, r31
    2e1a:	e7 57       	subi	r30, 0x77	; 119
    2e1c:	fd 4f       	sbci	r31, 0xFD	; 253
    2e1e:	80 81       	ld	r24, Z
    2e20:	a9 01       	movw	r20, r18
        } else if (odd == 7) {
            edge = height - caveColumn[mod(col + 1, 18)].top + 1;
    2e22:	48 1b       	sub	r20, r24
    2e24:	51 09       	sbc	r21, r1
    2e26:	4f 5f       	subi	r20, 0xFF	; 255
    2e28:	5f 4f       	sbci	r21, 0xFF	; 255
    return debris[i].base + (debris[i].t * debris[i].t >> 6);
}

static void drawCaveTop(uchar ptn, int x, int height, int edge, int offset)
{
    height -= offset;
    2e2a:	2d 85       	ldd	r18, Y+13	; 0x0d
    2e2c:	3e 85       	ldd	r19, Y+14	; 0x0e
    2e2e:	89 81       	ldd	r24, Y+1	; 0x01
    2e30:	9a 81       	ldd	r25, Y+2	; 0x02
    2e32:	28 0f       	add	r18, r24
    2e34:	39 1f       	adc	r19, r25
    2e36:	3e 87       	std	Y+14, r19	; 0x0e
    2e38:	2d 87       	std	Y+13, r18	; 0x0d
    if (height < 0) return;
    2e3a:	37 fd       	sbrc	r19, 7
    2e3c:	5f c0       	rjmp	.+190    	; 0x2efc <_Z8drawGamev+0x1fe>
    edge = min(max(edge, 1), height);
    2e3e:	14 16       	cp	r1, r20
    2e40:	15 06       	cpc	r1, r21
    2e42:	14 f0       	brlt	.+4      	; 0x2e48 <_Z8drawGamev+0x14a>
    2e44:	41 e0       	ldi	r20, 0x01	; 1
    2e46:	50 e0       	ldi	r21, 0x00	; 0
    2e48:	2d 85       	ldd	r18, Y+13	; 0x0d
    2e4a:	3e 85       	ldd	r19, Y+14	; 0x0e
    2e4c:	24 17       	cp	r18, r20
    2e4e:	35 07       	cpc	r19, r21
    2e50:	0c f4       	brge	.+2      	; 0x2e54 <_Z8drawGamev+0x156>
    2e52:	a9 01       	movw	r20, r18
    arduboy.drawFastVLine2(x, height - edge, edge, WHITE);
    2e54:	8d 85       	ldd	r24, Y+13	; 0x0d
    2e56:	9e 85       	ldd	r25, Y+14	; 0x0e
    2e58:	84 1b       	sub	r24, r20
    2e5a:	95 0b       	sbc	r25, r21
    2e5c:	9e 87       	std	Y+14, r25	; 0x0e
    2e5e:	8d 87       	std	Y+13, r24	; 0x0d
    2e60:	bc 01       	movw	r22, r24
    2e62:	c8 01       	movw	r24, r16
    2e64:	0e 94 57 08 	call	0x10ae	; 0x10ae <_ZN9MyArduboy14drawFastVLine2Eiiah.constprop.34>
    2e68:	45 2d       	mov	r20, r5
    2e6a:	09 84       	ldd	r0, Y+9	; 0x09
    2e6c:	01 c0       	rjmp	.+2      	; 0x2e70 <_Z8drawGamev+0x172>
    2e6e:	46 95       	lsr	r20
    2e70:	0a 94       	dec	r0
    2e72:	ea f7       	brpl	.-6      	; 0x2e6e <_Z8drawGamev+0x170>
    2e74:	85 2d       	mov	r24, r5
    2e76:	0d 80       	ldd	r0, Y+5	; 0x05
    2e78:	01 c0       	rjmp	.+2      	; 0x2e7c <_Z8drawGamev+0x17e>
    2e7a:	88 0f       	add	r24, r24
    2e7c:	0a 94       	dec	r0
    2e7e:	ea f7       	brpl	.-6      	; 0x2e7a <_Z8drawGamev+0x17c>
    2e80:	48 2b       	or	r20, r24
    2e82:	f8 01       	movw	r30, r16
    2e84:	ee 57       	subi	r30, 0x7E	; 126
    2e86:	fc 4f       	sbci	r31, 0xFC	; 252
    2e88:	28 e0       	ldi	r18, 0x08	; 8
    2e8a:	30 e0       	ldi	r19, 0x00	; 0
    2e8c:	8d 85       	ldd	r24, Y+13	; 0x0d
    2e8e:	9e 85       	ldd	r25, Y+14	; 0x0e
    2e90:	28 1b       	sub	r18, r24
    2e92:	39 0b       	sbc	r19, r25
    height -= edge;

    int shift = -offset & 7;
    ptn = (ptn << shift) | (ptn >> (8 - shift));
    uchar *pBuf = arduboy.getBuffer() + x;
    for (; height > 0; pBuf += WIDTH, height -= 8) {
    2e94:	8d 85       	ldd	r24, Y+13	; 0x0d
    2e96:	9e 85       	ldd	r25, Y+14	; 0x0e
    2e98:	18 16       	cp	r1, r24
    2e9a:	19 06       	cpc	r1, r25
    2e9c:	7c f5       	brge	.+94     	; 0x2efc <_Z8drawGamev+0x1fe>
        uchar mask = (height < 8) ? 0xFF >> (8 - height) : 0xFF;
    2e9e:	08 97       	sbiw	r24, 0x08	; 8
    2ea0:	5c f5       	brge	.+86     	; 0x2ef8 <_Z8drawGamev+0x1fa>
    2ea2:	8f ef       	ldi	r24, 0xFF	; 255
    2ea4:	90 e0       	ldi	r25, 0x00	; 0
    2ea6:	02 2e       	mov	r0, r18
    2ea8:	02 c0       	rjmp	.+4      	; 0x2eae <_Z8drawGamev+0x1b0>
    2eaa:	95 95       	asr	r25
    2eac:	87 95       	ror	r24
    2eae:	0a 94       	dec	r0
    2eb0:	e2 f7       	brpl	.-8      	; 0x2eaa <_Z8drawGamev+0x1ac>
        *pBuf |= ptn & mask;
    2eb2:	84 23       	and	r24, r20
    2eb4:	90 81       	ld	r25, Z
    2eb6:	89 2b       	or	r24, r25
    2eb8:	80 83       	st	Z, r24
    height -= edge;

    int shift = -offset & 7;
    ptn = (ptn << shift) | (ptn >> (8 - shift));
    uchar *pBuf = arduboy.getBuffer() + x;
    for (; height > 0; pBuf += WIDTH, height -= 8) {
    2eba:	e0 58       	subi	r30, 0x80	; 128
    2ebc:	ff 4f       	sbci	r31, 0xFF	; 255
    2ebe:	8d 85       	ldd	r24, Y+13	; 0x0d
    2ec0:	9e 85       	ldd	r25, Y+14	; 0x0e
    2ec2:	08 97       	sbiw	r24, 0x08	; 8
    2ec4:	9e 87       	std	Y+14, r25	; 0x0e
    2ec6:	8d 87       	std	Y+13, r24	; 0x0d
    2ec8:	28 5f       	subi	r18, 0xF8	; 248
    2eca:	3f 4f       	sbci	r19, 0xFF	; 255
    2ecc:	e3 cf       	rjmp	.-58     	; 0x2e94 <_Z8drawGamev+0x196>
        if (odd == 0) {
            edge = height - caveColumn[mod(col - 1, 18)].top + 1;
        } else if (odd == 7) {
            edge = height - caveColumn[mod(col + 1, 18)].top + 1;
        } else {
            edge = 1;
    2ece:	41 e0       	ldi	r20, 0x01	; 1
    2ed0:	50 e0       	ldi	r21, 0x00	; 0
        uchar ptn = pgm_read_byte(imgCave + ((i + caveOffset) & 7));

        height = caveColumn[col].top;
        if (odd == 0) {
            edge = height - caveColumn[mod(col - 1, 18)].top + 1;
        } else if (odd == 7) {
    2ed2:	87 e0       	ldi	r24, 0x07	; 7
    2ed4:	a8 16       	cp	r10, r24
    2ed6:	b1 04       	cpc	r11, r1
    2ed8:	09 f0       	breq	.+2      	; 0x2edc <_Z8drawGamev+0x1de>
    2eda:	a7 cf       	rjmp	.-178    	; 0x2e2a <_Z8drawGamev+0x12c>
            edge = height - caveColumn[mod(col + 1, 18)].top + 1;
    2edc:	c7 01       	movw	r24, r14
    2ede:	43 96       	adiw	r24, 0x13	; 19
    2ee0:	b3 01       	movw	r22, r6
    2ee2:	0e 94 77 29 	call	0x52ee	; 0x52ee <__divmodhi4>
    2ee6:	fc 01       	movw	r30, r24
    2ee8:	ee 0f       	add	r30, r30
    2eea:	ff 1f       	adc	r31, r31
    2eec:	e7 57       	subi	r30, 0x77	; 119
    2eee:	fd 4f       	sbci	r31, 0xFD	; 253
    2ef0:	80 81       	ld	r24, Z
    2ef2:	4d 85       	ldd	r20, Y+13	; 0x0d
    2ef4:	5e 85       	ldd	r21, Y+14	; 0x0e
    2ef6:	95 cf       	rjmp	.-214    	; 0x2e22 <_Z8drawGamev+0x124>

    int shift = -offset & 7;
    ptn = (ptn << shift) | (ptn >> (8 - shift));
    uchar *pBuf = arduboy.getBuffer() + x;
    for (; height > 0; pBuf += WIDTH, height -= 8) {
        uchar mask = (height < 8) ? 0xFF >> (8 - height) : 0xFF;
    2ef8:	8f ef       	ldi	r24, 0xFF	; 255
    2efa:	db cf       	rjmp	.-74     	; 0x2eb2 <_Z8drawGamev+0x1b4>
        } else {
            edge = 1;
        }
        drawCaveTop(ptn, i, height, edge, -offsetTop);

        height = caveColumn[col].bottom;
    2efc:	eb 81       	ldd	r30, Y+3	; 0x03
    2efe:	fc 81       	ldd	r31, Y+4	; 0x04
    2f00:	e7 57       	subi	r30, 0x77	; 119
    2f02:	fd 4f       	sbci	r31, 0xFD	; 253
    2f04:	21 81       	ldd	r18, Z+1	; 0x01
    2f06:	30 e0       	ldi	r19, 0x00	; 0
        if (odd == 0) {
            edge = caveColumn[mod(col - 1, 18)].bottom - height + 1;
    2f08:	c7 01       	movw	r24, r14
    2f0a:	41 96       	adiw	r24, 0x11	; 17
            edge = 1;
        }
        drawCaveTop(ptn, i, height, edge, -offsetTop);

        height = caveColumn[col].bottom;
        if (odd == 0) {
    2f0c:	a1 14       	cp	r10, r1
    2f0e:	b1 04       	cpc	r11, r1
    2f10:	39 f0       	breq	.+14     	; 0x2f20 <_Z8drawGamev+0x222>
            edge = caveColumn[mod(col - 1, 18)].bottom - height + 1;
        } else if (odd == 7) {
    2f12:	87 e0       	ldi	r24, 0x07	; 7
    2f14:	a8 16       	cp	r10, r24
    2f16:	b1 04       	cpc	r11, r1
    2f18:	09 f0       	breq	.+2      	; 0x2f1c <_Z8drawGamev+0x21e>
    2f1a:	63 c0       	rjmp	.+198    	; 0x2fe2 <_Z8drawGamev+0x2e4>
            edge = caveColumn[mod(col + 1, 18)].bottom - height + 1;
    2f1c:	c7 01       	movw	r24, r14
    2f1e:	43 96       	adiw	r24, 0x13	; 19
    2f20:	b3 01       	movw	r22, r6
    2f22:	0e 94 77 29 	call	0x52ee	; 0x52ee <__divmodhi4>
    2f26:	fc 01       	movw	r30, r24
    2f28:	ee 0f       	add	r30, r30
    2f2a:	ff 1f       	adc	r31, r31
    2f2c:	e7 57       	subi	r30, 0x77	; 119
    2f2e:	fd 4f       	sbci	r31, 0xFD	; 253
    2f30:	91 81       	ldd	r25, Z+1	; 0x01
    2f32:	89 2f       	mov	r24, r25
    2f34:	90 e0       	ldi	r25, 0x00	; 0
    2f36:	82 1b       	sub	r24, r18
    2f38:	93 0b       	sbc	r25, r19
    2f3a:	01 96       	adiw	r24, 0x01	; 1
        } else {
            edge = 1;
    2f3c:	9c 83       	std	Y+4, r25	; 0x04
    2f3e:	8b 83       	std	Y+3, r24	; 0x03
        }
        drawCaveBottom(ptn, i, 64 - height, edge, offsetBottom);
    2f40:	90 e4       	ldi	r25, 0x40	; 64
    2f42:	e9 2e       	mov	r14, r25
    2f44:	f1 2c       	mov	r15, r1
    2f46:	e2 1a       	sub	r14, r18
    2f48:	f3 0a       	sbc	r15, r19
    }
}

static void drawCaveBottom(uchar ptn, int x, int height, int edge, int offset)
{
    height -= offset;
    2f4a:	e8 18       	sub	r14, r8
    2f4c:	f9 08       	sbc	r15, r9
    if (height < 0) return;
    2f4e:	f7 fc       	sbrc	r15, 7
    2f50:	4b c0       	rjmp	.+150    	; 0x2fe8 <_Z8drawGamev+0x2ea>
    edge = min(max(edge, 1), height);
    2f52:	2b 81       	ldd	r18, Y+3	; 0x03
    2f54:	3c 81       	ldd	r19, Y+4	; 0x04
    2f56:	12 16       	cp	r1, r18
    2f58:	13 06       	cpc	r1, r19
    2f5a:	24 f0       	brlt	.+8      	; 0x2f64 <_Z8drawGamev+0x266>
    2f5c:	81 e0       	ldi	r24, 0x01	; 1
    2f5e:	90 e0       	ldi	r25, 0x00	; 0
    2f60:	9c 83       	std	Y+4, r25	; 0x04
    2f62:	8b 83       	std	Y+3, r24	; 0x03
    2f64:	2b 81       	ldd	r18, Y+3	; 0x03
    2f66:	3c 81       	ldd	r19, Y+4	; 0x04
    2f68:	e2 16       	cp	r14, r18
    2f6a:	f3 06       	cpc	r15, r19
    2f6c:	14 f4       	brge	.+4      	; 0x2f72 <_Z8drawGamev+0x274>
    2f6e:	fc 82       	std	Y+4, r15	; 0x04
    2f70:	eb 82       	std	Y+3, r14	; 0x03
    arduboy.drawFastVLine2(x, 64 - height, edge, WHITE);
    2f72:	60 e4       	ldi	r22, 0x40	; 64
    2f74:	70 e0       	ldi	r23, 0x00	; 0
    2f76:	6e 19       	sub	r22, r14
    2f78:	7f 09       	sbc	r23, r15
    2f7a:	4b 81       	ldd	r20, Y+3	; 0x03
    2f7c:	c8 01       	movw	r24, r16
    2f7e:	0e 94 57 08 	call	0x10ae	; 0x10ae <_ZN9MyArduboy14drawFastVLine2Eiiah.constprop.34>
    height -= edge;
    2f82:	8b 81       	ldd	r24, Y+3	; 0x03
    2f84:	9c 81       	ldd	r25, Y+4	; 0x04
    2f86:	e8 1a       	sub	r14, r24
    2f88:	f9 0a       	sbc	r15, r25
    2f8a:	85 2d       	mov	r24, r5
    2f8c:	0f 80       	ldd	r0, Y+7	; 0x07
    2f8e:	01 c0       	rjmp	.+2      	; 0x2f92 <_Z8drawGamev+0x294>
    2f90:	86 95       	lsr	r24
    2f92:	0a 94       	dec	r0
    2f94:	ea f7       	brpl	.-6      	; 0x2f90 <_Z8drawGamev+0x292>
    2f96:	0b 84       	ldd	r0, Y+11	; 0x0b
    2f98:	01 c0       	rjmp	.+2      	; 0x2f9c <_Z8drawGamev+0x29e>
    2f9a:	55 0c       	add	r5, r5
    2f9c:	0a 94       	dec	r0
    2f9e:	ea f7       	brpl	.-6      	; 0x2f9a <_Z8drawGamev+0x29c>
    2fa0:	58 2a       	or	r5, r24
    2fa2:	d8 01       	movw	r26, r16
    2fa4:	ae 5f       	subi	r26, 0xFE	; 254
    2fa6:	b8 4f       	sbci	r27, 0xF8	; 248
    2fa8:	28 e0       	ldi	r18, 0x08	; 8
    2faa:	30 e0       	ldi	r19, 0x00	; 0
    2fac:	2e 19       	sub	r18, r14
    2fae:	3f 09       	sbc	r19, r15

    int shift = -offset & 7;
    ptn = (ptn >> shift) | (ptn << (8 - shift));
    uchar *pBuf = arduboy.getBuffer() + WIDTH * 7 + x;
    for (; height > 0; pBuf -= WIDTH, height -= 8) {
    2fb0:	1e 14       	cp	r1, r14
    2fb2:	1f 04       	cpc	r1, r15
    2fb4:	cc f4       	brge	.+50     	; 0x2fe8 <_Z8drawGamev+0x2ea>
        uchar mask = (height < 8) ? 0xFF << (8 - height) : 0xFF;
    2fb6:	8f ef       	ldi	r24, 0xFF	; 255
    2fb8:	98 e0       	ldi	r25, 0x08	; 8
    2fba:	e9 16       	cp	r14, r25
    2fbc:	f1 04       	cpc	r15, r1
    2fbe:	2c f4       	brge	.+10     	; 0x2fca <_Z8drawGamev+0x2cc>
    2fc0:	02 2e       	mov	r0, r18
    2fc2:	01 c0       	rjmp	.+2      	; 0x2fc6 <_Z8drawGamev+0x2c8>
    2fc4:	88 0f       	add	r24, r24
    2fc6:	0a 94       	dec	r0
    2fc8:	ea f7       	brpl	.-6      	; 0x2fc4 <_Z8drawGamev+0x2c6>
        *pBuf |= ptn & mask;
    2fca:	85 21       	and	r24, r5
    2fcc:	9c 91       	ld	r25, X
    2fce:	89 2b       	or	r24, r25
    2fd0:	8c 93       	st	X, r24
    height -= edge;

    int shift = -offset & 7;
    ptn = (ptn >> shift) | (ptn << (8 - shift));
    uchar *pBuf = arduboy.getBuffer() + WIDTH * 7 + x;
    for (; height > 0; pBuf -= WIDTH, height -= 8) {
    2fd2:	a0 58       	subi	r26, 0x80	; 128
    2fd4:	b1 09       	sbc	r27, r1
    2fd6:	88 e0       	ldi	r24, 0x08	; 8
    2fd8:	e8 1a       	sub	r14, r24
    2fda:	f1 08       	sbc	r15, r1
    2fdc:	28 5f       	subi	r18, 0xF8	; 248
    2fde:	3f 4f       	sbci	r19, 0xFF	; 255
    2fe0:	e7 cf       	rjmp	.-50     	; 0x2fb0 <_Z8drawGamev+0x2b2>
        if (odd == 0) {
            edge = caveColumn[mod(col - 1, 18)].bottom - height + 1;
        } else if (odd == 7) {
            edge = caveColumn[mod(col + 1, 18)].bottom - height + 1;
        } else {
            edge = 1;
    2fe2:	81 e0       	ldi	r24, 0x01	; 1
    2fe4:	90 e0       	ldi	r25, 0x00	; 0
    2fe6:	aa cf       	rjmp	.-172    	; 0x2f3c <_Z8drawGamev+0x23e>
        }
        drawCaveBottom(ptn, i, 64 - height, edge, offsetBottom);

        if (debris[pos].t > 0) {
    2fe8:	f6 01       	movw	r30, r12
    2fea:	ee 0f       	add	r30, r30
    2fec:	ff 1f       	adc	r31, r31
    2fee:	e7 59       	subi	r30, 0x97	; 151
    2ff0:	fe 4f       	sbci	r31, 0xFE	; 254
    2ff2:	40 81       	ld	r20, Z
    2ff4:	44 23       	and	r20, r20
    2ff6:	a9 f0       	breq	.+42     	; 0x3022 <_Z8drawGamev+0x324>
    newColumn.bottom = bottom; 
}

static int calcDotY(int i)
{
    return debris[i].base + (debris[i].t * debris[i].t >> 6);
    2ff8:	44 9f       	mul	r20, r20
    2ffa:	a0 01       	movw	r20, r0
    2ffc:	11 24       	eor	r1, r1
    2ffe:	b6 e0       	ldi	r27, 0x06	; 6
    3000:	55 95       	asr	r21
    3002:	47 95       	ror	r20
    3004:	ba 95       	dec	r27
    3006:	e1 f7       	brne	.-8      	; 0x3000 <_Z8drawGamev+0x302>
    3008:	81 81       	ldd	r24, Z+1	; 0x01
    300a:	48 0f       	add	r20, r24
    300c:	51 1d       	adc	r21, r1
    300e:	87 fd       	sbrc	r24, 7
    3010:	5a 95       	dec	r21
            edge = 1;
        }
        drawCaveBottom(ptn, i, 64 - height, edge, offsetBottom);

        if (debris[pos].t > 0) {
            arduboy.drawPixel(i, calcDotY(pos) + shake, WHITE);
    3012:	42 0d       	add	r20, r2
    3014:	53 1d       	adc	r21, r3
    3016:	21 e0       	ldi	r18, 0x01	; 1
    3018:	b8 01       	movw	r22, r16
    301a:	8e e6       	ldi	r24, 0x6E	; 110
    301c:	93 e0       	ldi	r25, 0x03	; 3
    301e:	0e 94 f8 0f 	call	0x1ff0	; 0x1ff0 <_ZN7Arduboy9drawPixelEiih>
    int shake = (cavePhase > 976) ? cavePhase % 4 / 2 : 0;
    int offsetTop = caveBaseTop + shake;
    int offsetBottom = caveBaseBottom + shake;

    /*  Cave & Debris  */
    for (int i = 0; i < 128; i++) {
    3022:	0f 5f       	subi	r16, 0xFF	; 255
    3024:	1f 4f       	sbci	r17, 0xFF	; 255
    3026:	00 38       	cpi	r16, 0x80	; 128
    3028:	11 05       	cpc	r17, r1
    302a:	09 f0       	breq	.+2      	; 0x302e <_Z8drawGamev+0x330>
    302c:	c2 ce       	rjmp	.-636    	; 0x2db2 <_Z8drawGamev+0xb4>
            arduboy.drawPixel(i, calcDotY(pos) + shake, WHITE);
        }
    }

    /*  Player  */
    int playerY = caveColumn[playerColumn].bottom + playerJump * playerMove / 8 - 8;
    302e:	e0 91 68 01 	lds	r30, 0x0168	; 0x800168 <_ZL12playerColumn>
    3032:	f0 e0       	ldi	r31, 0x00	; 0
    3034:	ee 0f       	add	r30, r30
    3036:	ff 1f       	adc	r31, r31
    3038:	e7 57       	subi	r30, 0x77	; 119
    303a:	fd 4f       	sbci	r31, 0xFD	; 253
    303c:	81 81       	ldd	r24, Z+1	; 0x01
    303e:	20 91 67 01 	lds	r18, 0x0167	; 0x800167 <_ZL10playerJump>
    3042:	40 91 66 01 	lds	r20, 0x0166	; 0x800166 <_ZL10playerMove>
    playerY = max(playerY + offsetBottom, caveColumn[playerColumn].top + offsetTop);
    3046:	60 81       	ld	r22, Z
    3048:	70 e0       	ldi	r23, 0x00	; 0
    if (playerY > 56) playerY = 56;
    if (isOver) playerY = caveColumn[playerColumn].top + offsetBottom;
    304a:	90 91 65 01 	lds	r25, 0x0165	; 0x800165 <_ZL6isOver>
    304e:	91 11       	cpse	r25, r1
    3050:	96 c0       	rjmp	.+300    	; 0x317e <_Z8drawGamev+0x480>
            arduboy.drawPixel(i, calcDotY(pos) + shake, WHITE);
        }
    }

    /*  Player  */
    int playerY = caveColumn[playerColumn].bottom + playerJump * playerMove / 8 - 8;
    3052:	24 03       	mulsu	r18, r20
    3054:	90 01       	movw	r18, r0
    3056:	11 24       	eor	r1, r1
    3058:	37 ff       	sbrs	r19, 7
    305a:	02 c0       	rjmp	.+4      	; 0x3060 <_Z8drawGamev+0x362>
    305c:	29 5f       	subi	r18, 0xF9	; 249
    305e:	3f 4f       	sbci	r19, 0xFF	; 255
    3060:	f3 e0       	ldi	r31, 0x03	; 3
    3062:	35 95       	asr	r19
    3064:	27 95       	ror	r18
    3066:	fa 95       	dec	r31
    3068:	e1 f7       	brne	.-8      	; 0x3062 <_Z8drawGamev+0x364>
    306a:	82 0f       	add	r24, r18
    306c:	93 2f       	mov	r25, r19
    306e:	91 1d       	adc	r25, r1
    3070:	08 97       	sbiw	r24, 0x08	; 8
    playerY = max(playerY + offsetBottom, caveColumn[playerColumn].top + offsetTop);
    3072:	88 0d       	add	r24, r8
    3074:	99 1d       	adc	r25, r9
    3076:	29 81       	ldd	r18, Y+1	; 0x01
    3078:	3a 81       	ldd	r19, Y+2	; 0x02
    307a:	62 0f       	add	r22, r18
    307c:	73 1f       	adc	r23, r19
    307e:	68 17       	cp	r22, r24
    3080:	79 07       	cpc	r23, r25
    3082:	0c f4       	brge	.+2      	; 0x3086 <_Z8drawGamev+0x388>
    3084:	bc 01       	movw	r22, r24
    3086:	69 33       	cpi	r22, 0x39	; 57
    3088:	71 05       	cpc	r23, r1
    308a:	14 f0       	brlt	.+4      	; 0x3090 <_Z8drawGamev+0x392>
    308c:	68 e3       	ldi	r22, 0x38	; 56
    308e:	70 e0       	ldi	r23, 0x00	; 0
    }
}

static void drawPlayer(int x, int y, bool dir, int anim)
{
    arduboy.drawBitmap(x, y, imgPlayer + (dir * 4 + anim) * 8, 8, 8, WHITE);
    3090:	80 91 64 01 	lds	r24, 0x0164	; 0x800164 <_ZL9playerDir>
    3094:	34 e0       	ldi	r19, 0x04	; 4
    3096:	83 9f       	mul	r24, r19
    3098:	c0 01       	movw	r24, r0
    309a:	11 24       	eor	r1, r1
    /*  Player  */
    int playerY = caveColumn[playerColumn].bottom + playerJump * playerMove / 8 - 8;
    playerY = max(playerY + offsetBottom, caveColumn[playerColumn].top + offsetTop);
    if (playerY > 56) playerY = 56;
    if (isOver) playerY = caveColumn[playerColumn].top + offsetBottom;
    drawPlayer(playerX, playerY, playerDir, playerMove / 2);
    309c:	46 95       	lsr	r20
    }
}

static void drawPlayer(int x, int y, bool dir, int anim)
{
    arduboy.drawBitmap(x, y, imgPlayer + (dir * 4 + anim) * 8, 8, 8, WHITE);
    309e:	48 0f       	add	r20, r24
    30a0:	59 2f       	mov	r21, r25
    30a2:	51 1d       	adc	r21, r1
    30a4:	e3 e0       	ldi	r30, 0x03	; 3
    30a6:	44 0f       	add	r20, r20
    30a8:	55 1f       	adc	r21, r21
    30aa:	ea 95       	dec	r30
    30ac:	e1 f7       	brne	.-8      	; 0x30a6 <_Z8drawGamev+0x3a8>
    30ae:	49 54       	subi	r20, 0x49	; 73
    30b0:	5d 4f       	sbci	r21, 0xFD	; 253
    /*  Player  */
    int playerY = caveColumn[playerColumn].bottom + playerJump * playerMove / 8 - 8;
    playerY = max(playerY + offsetBottom, caveColumn[playerColumn].top + offsetTop);
    if (playerY > 56) playerY = 56;
    if (isOver) playerY = caveColumn[playerColumn].top + offsetBottom;
    drawPlayer(playerX, playerY, playerDir, playerMove / 2);
    30b2:	80 91 63 01 	lds	r24, 0x0163	; 0x800163 <_ZL7playerX>
    }
}

static void drawPlayer(int x, int y, bool dir, int anim)
{
    arduboy.drawBitmap(x, y, imgPlayer + (dir * 4 + anim) * 8, 8, 8, WHITE);
    30b6:	ee 24       	eor	r14, r14
    30b8:	e3 94       	inc	r14
    30ba:	08 e0       	ldi	r16, 0x08	; 8
    30bc:	28 e0       	ldi	r18, 0x08	; 8
    30be:	90 e0       	ldi	r25, 0x00	; 0
    30c0:	0e 94 31 09 	call	0x1262	; 0x1262 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28>
    if (playerY > 56) playerY = 56;
    if (isOver) playerY = caveColumn[playerColumn].top + offsetBottom;
    drawPlayer(playerX, playerY, playerDir, playerMove / 2);

    /*  Score  */
    if (scoreTop > 0) {
    30c4:	80 91 62 01 	lds	r24, 0x0162	; 0x800162 <_ZL8scoreTop>
    30c8:	88 23       	and	r24, r24
    30ca:	b9 f0       	breq	.+46     	; 0x30fa <_Z8drawGamev+0x3fc>
        arduboy.setCursor(0, min(scoreTop / 2 - 6, 0));
    30cc:	8c 30       	cpi	r24, 0x0C	; 12
    30ce:	08 f0       	brcs	.+2      	; 0x30d2 <_Z8drawGamev+0x3d4>
    30d0:	59 c0       	rjmp	.+178    	; 0x3184 <_Z8drawGamev+0x486>
    30d2:	86 95       	lsr	r24
    30d4:	86 50       	subi	r24, 0x06	; 6
    30d6:	99 0b       	sbc	r25, r25
  }
}

void Arduboy::setCursor(int16_t x, int16_t y)
{
  cursor_x = x;
    30d8:	10 92 83 07 	sts	0x0783, r1	; 0x800783 <arduboy+0x415>
    30dc:	10 92 82 07 	sts	0x0782, r1	; 0x800782 <arduboy+0x414>
  cursor_y = y;
    30e0:	90 93 85 07 	sts	0x0785, r25	; 0x800785 <arduboy+0x417>
    30e4:	80 93 84 07 	sts	0x0784, r24	; 0x800784 <arduboy+0x416>
  return print((long) n, base);
}

size_t Print::print(unsigned int n, int base)
{
  return print((unsigned long) n, base);
    30e8:	60 91 60 01 	lds	r22, 0x0160	; 0x800160 <_ZL5score>
    30ec:	70 91 61 01 	lds	r23, 0x0161	; 0x800161 <_ZL5score+0x1>
    30f0:	90 e0       	ldi	r25, 0x00	; 0
    30f2:	80 e0       	ldi	r24, 0x00	; 0
}

size_t Print::print(unsigned long n, int base)
{
  if (base == 0) return write(n);
  else return printNumber(n, base);
    30f4:	4a e0       	ldi	r20, 0x0A	; 10
    30f6:	0e 94 8e 13 	call	0x271c	; 0x271c <_ZN5Print11printNumberEmh.constprop.27>
        arduboy.print(score);
    }

    /*  Message  */
    if (isStart) {
    30fa:	80 91 5f 01 	lds	r24, 0x015F	; 0x80015f <_ZL7isStart>
    30fe:	88 23       	and	r24, r24
    3100:	09 f4       	brne	.+2      	; 0x3104 <_Z8drawGamev+0x406>
    3102:	43 c0       	rjmp	.+134    	; 0x318a <_Z8drawGamev+0x48c>
        int y = min(counter - 16, 8);
    3104:	80 91 5d 01 	lds	r24, 0x015D	; 0x80015d <_ZL7counter.lto_priv.55>
    3108:	90 91 5e 01 	lds	r25, 0x015E	; 0x80015e <_ZL7counter.lto_priv.55+0x1>
    310c:	9a 83       	std	Y+2, r25	; 0x02
    310e:	89 83       	std	Y+1, r24	; 0x01
    3110:	49 97       	sbiw	r24, 0x19	; 25
    3112:	24 f0       	brlt	.+8      	; 0x311c <_Z8drawGamev+0x41e>
    3114:	28 e1       	ldi	r18, 0x18	; 24
    3116:	30 e0       	ldi	r19, 0x00	; 0
    3118:	3a 83       	std	Y+2, r19	; 0x02
    311a:	29 83       	std	Y+1, r18	; 0x01
    311c:	89 81       	ldd	r24, Y+1	; 0x01
    311e:	9a 81       	ldd	r25, Y+2	; 0x02
    3120:	40 97       	sbiw	r24, 0x10	; 16
    3122:	9a 83       	std	Y+2, r25	; 0x02
    3124:	89 83       	std	Y+1, r24	; 0x01
        arduboy.fillRect2(32, y, 64, 16, BLACK);
    3126:	00 e0       	ldi	r16, 0x00	; 0
    3128:	20 e1       	ldi	r18, 0x10	; 16
    312a:	40 e4       	ldi	r20, 0x40	; 64
    312c:	bc 01       	movw	r22, r24
    312e:	80 e2       	ldi	r24, 0x20	; 32
    3130:	90 e0       	ldi	r25, 0x00	; 0
    3132:	0e 94 bb 08 	call	0x1176	; 0x1176 <_ZN9MyArduboy9fillRect2Eiihah.constprop.30>
        arduboy.drawBitmap(32, y, imgReady, 64, 16, WHITE);
    3136:	ee 24       	eor	r14, r14
    3138:	e3 94       	inc	r14
    313a:	00 e1       	ldi	r16, 0x10	; 16
    313c:	20 e4       	ldi	r18, 0x40	; 64
    313e:	4d eb       	ldi	r20, 0xBD	; 189
    3140:	53 e0       	ldi	r21, 0x03	; 3
    3142:	69 81       	ldd	r22, Y+1	; 0x01
    3144:	7a 81       	ldd	r23, Y+2	; 0x02
    3146:	80 e2       	ldi	r24, 0x20	; 32
    3148:	90 e0       	ldi	r25, 0x00	; 0
    314a:	0e 94 31 09 	call	0x1262	; 0x1262 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28>
        arduboy.printEx(30, y + 9, F("SCORE"));
        if (isHiscore && cavePhase % 8 < 4) {
            arduboy.printEx(34, y - 6, F("NEW RECORD"));
        }
    }
}
    314e:	2e 96       	adiw	r28, 0x0e	; 14
    3150:	0f b6       	in	r0, 0x3f	; 63
    3152:	f8 94       	cli
    3154:	de bf       	out	0x3e, r29	; 62
    3156:	0f be       	out	0x3f, r0	; 63
    3158:	cd bf       	out	0x3d, r28	; 61
    315a:	df 91       	pop	r29
    315c:	cf 91       	pop	r28
    315e:	1f 91       	pop	r17
    3160:	0f 91       	pop	r16
    3162:	ff 90       	pop	r15
    3164:	ef 90       	pop	r14
    3166:	df 90       	pop	r13
    3168:	cf 90       	pop	r12
    316a:	bf 90       	pop	r11
    316c:	af 90       	pop	r10
    316e:	9f 90       	pop	r9
    3170:	8f 90       	pop	r8
    3172:	7f 90       	pop	r7
    3174:	6f 90       	pop	r6
    3176:	5f 90       	pop	r5
    3178:	3f 90       	pop	r3
    317a:	2f 90       	pop	r2
    317c:	08 95       	ret

    /*  Player  */
    int playerY = caveColumn[playerColumn].bottom + playerJump * playerMove / 8 - 8;
    playerY = max(playerY + offsetBottom, caveColumn[playerColumn].top + offsetTop);
    if (playerY > 56) playerY = 56;
    if (isOver) playerY = caveColumn[playerColumn].top + offsetBottom;
    317e:	68 0d       	add	r22, r8
    3180:	79 1d       	adc	r23, r9
    3182:	86 cf       	rjmp	.-244    	; 0x3090 <_Z8drawGamev+0x392>
    drawPlayer(playerX, playerY, playerDir, playerMove / 2);

    /*  Score  */
    if (scoreTop > 0) {
        arduboy.setCursor(0, min(scoreTop / 2 - 6, 0));
    3184:	90 e0       	ldi	r25, 0x00	; 0
    3186:	80 e0       	ldi	r24, 0x00	; 0
    3188:	a7 cf       	rjmp	.-178    	; 0x30d8 <_Z8drawGamev+0x3da>
    /*  Message  */
    if (isStart) {
        int y = min(counter - 16, 8);
        arduboy.fillRect2(32, y, 64, 16, BLACK);
        arduboy.drawBitmap(32, y, imgReady, 64, 16, WHITE);
    } else if (isOver) {
    318a:	80 91 65 01 	lds	r24, 0x0165	; 0x800165 <_ZL6isOver>
    318e:	88 23       	and	r24, r24
    3190:	f1 f2       	breq	.-68     	; 0x314e <_Z8drawGamev+0x450>
        int y = min(464 - counter, 0);
    3192:	20 91 5d 01 	lds	r18, 0x015D	; 0x80015d <_ZL7counter.lto_priv.55>
    3196:	30 91 5e 01 	lds	r19, 0x015E	; 0x80015e <_ZL7counter.lto_priv.55+0x1>
    319a:	3a 83       	std	Y+2, r19	; 0x02
    319c:	29 83       	std	Y+1, r18	; 0x01
    319e:	80 ed       	ldi	r24, 0xD0	; 208
    31a0:	91 e0       	ldi	r25, 0x01	; 1
    31a2:	6c 01       	movw	r12, r24
    31a4:	c2 1a       	sub	r12, r18
    31a6:	d3 0a       	sbc	r13, r19
    31a8:	1c 14       	cp	r1, r12
    31aa:	1d 04       	cpc	r1, r13
    31ac:	14 f4       	brge	.+4      	; 0x31b2 <_Z8drawGamev+0x4b4>
    31ae:	d1 2c       	mov	r13, r1
    31b0:	c1 2c       	mov	r12, r1
        arduboy.fillRect2(20, y, 88, 16, BLACK);
    31b2:	00 e0       	ldi	r16, 0x00	; 0
    31b4:	20 e1       	ldi	r18, 0x10	; 16
    31b6:	48 e5       	ldi	r20, 0x58	; 88
    31b8:	b6 01       	movw	r22, r12
    31ba:	84 e1       	ldi	r24, 0x14	; 20
    31bc:	90 e0       	ldi	r25, 0x00	; 0
    31be:	0e 94 bb 08 	call	0x1176	; 0x1176 <_ZN9MyArduboy9fillRect2Eiihah.constprop.30>
        arduboy.drawBitmap(20, y, imgGameOver, 88, 16, WHITE);
    31c2:	ee 24       	eor	r14, r14
    31c4:	e3 94       	inc	r14
    31c6:	00 e1       	ldi	r16, 0x10	; 16
    31c8:	28 e5       	ldi	r18, 0x58	; 88
    31ca:	4d e0       	ldi	r20, 0x0D	; 13
    31cc:	53 e0       	ldi	r21, 0x03	; 3
    31ce:	b6 01       	movw	r22, r12
    31d0:	84 e1       	ldi	r24, 0x14	; 20
    31d2:	90 e0       	ldi	r25, 0x00	; 0
    31d4:	0e 94 31 09 	call	0x1262	; 0x1262 <_ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28>
        y = max(counter - 400, 48);
    31d8:	89 81       	ldd	r24, Y+1	; 0x01
    31da:	9a 81       	ldd	r25, Y+2	; 0x02
    31dc:	80 3c       	cpi	r24, 0xC0	; 192
    31de:	91 40       	sbci	r25, 0x01	; 1
    31e0:	24 f4       	brge	.+8      	; 0x31ea <_Z8drawGamev+0x4ec>
    31e2:	80 ec       	ldi	r24, 0xC0	; 192
    31e4:	91 e0       	ldi	r25, 0x01	; 1
    31e6:	9a 83       	std	Y+2, r25	; 0x02
    31e8:	89 83       	std	Y+1, r24	; 0x01
        arduboy.fillRect2(28, y - isHiscore * 8, 72, 16 + isHiscore * 8, BLACK);
    31ea:	80 91 5c 01 	lds	r24, 0x015C	; 0x80015c <_ZL9isHiscore>
    31ee:	90 e0       	ldi	r25, 0x00	; 0
    31f0:	9c 01       	movw	r18, r24
    31f2:	2e 5f       	subi	r18, 0xFE	; 254
    31f4:	3f 4f       	sbci	r19, 0xFF	; 255
    31f6:	22 0f       	add	r18, r18
    31f8:	22 0f       	add	r18, r18
    31fa:	22 0f       	add	r18, r18
    31fc:	33 e0       	ldi	r19, 0x03	; 3
    31fe:	88 0f       	add	r24, r24
    3200:	99 1f       	adc	r25, r25
    3202:	3a 95       	dec	r19
    3204:	e1 f7       	brne	.-8      	; 0x31fe <_Z8drawGamev+0x500>
    3206:	e9 80       	ldd	r14, Y+1	; 0x01
    3208:	fa 80       	ldd	r15, Y+2	; 0x02
    320a:	30 e9       	ldi	r19, 0x90	; 144
    320c:	e3 1a       	sub	r14, r19
    320e:	31 e0       	ldi	r19, 0x01	; 1
    3210:	f3 0a       	sbc	r15, r19
    3212:	b7 01       	movw	r22, r14
    3214:	68 1b       	sub	r22, r24
    3216:	79 0b       	sbc	r23, r25
    3218:	00 e0       	ldi	r16, 0x00	; 0
    321a:	48 e4       	ldi	r20, 0x48	; 72
    321c:	8c e1       	ldi	r24, 0x1C	; 28
    321e:	90 e0       	ldi	r25, 0x00	; 0
    3220:	0e 94 bb 08 	call	0x1176	; 0x1176 <_ZN9MyArduboy9fillRect2Eiihah.constprop.30>
        drawScoreFigure(90, y, score);
    3224:	40 91 60 01 	lds	r20, 0x0160	; 0x800160 <_ZL5score>
    3228:	50 91 61 01 	lds	r21, 0x0161	; 0x800161 <_ZL5score+0x1>
    322c:	b7 01       	movw	r22, r14
    322e:	8a e5       	ldi	r24, 0x5A	; 90
    3230:	90 e0       	ldi	r25, 0x00	; 0
    3232:	0e 94 73 11 	call	0x22e6	; 0x22e6 <_ZL15drawScoreFigureiii>
  }
}

void Arduboy::setCursor(int16_t x, int16_t y)
{
  cursor_x = x;
    3236:	0e e1       	ldi	r16, 0x1E	; 30
    3238:	10 e0       	ldi	r17, 0x00	; 0
    323a:	10 93 83 07 	sts	0x0783, r17	; 0x800783 <arduboy+0x415>
    323e:	00 93 82 07 	sts	0x0782, r16	; 0x800782 <arduboy+0x414>
        arduboy.printEx(30, y + 3, F("YOUR"));
    3242:	89 81       	ldd	r24, Y+1	; 0x01
    3244:	9a 81       	ldd	r25, Y+2	; 0x02
    3246:	8d 58       	subi	r24, 0x8D	; 141
    3248:	91 40       	sbci	r25, 0x01	; 1
  cursor_y = y;
    324a:	90 93 85 07 	sts	0x0785, r25	; 0x800785 <arduboy+0x417>
    324e:	80 93 84 07 	sts	0x0784, r24	; 0x800784 <arduboy+0x416>
    3252:	68 e0       	ldi	r22, 0x08	; 8
    3254:	73 e0       	ldi	r23, 0x03	; 3
    3256:	8e e6       	ldi	r24, 0x6E	; 110
    3258:	93 e0       	ldi	r25, 0x03	; 3
    325a:	0e 94 f9 12 	call	0x25f2	; 0x25f2 <_ZN5Print5printEPK19__FlashStringHelper.constprop.36>
  }
}

void Arduboy::setCursor(int16_t x, int16_t y)
{
  cursor_x = x;
    325e:	10 93 83 07 	sts	0x0783, r17	; 0x800783 <arduboy+0x415>
    3262:	00 93 82 07 	sts	0x0782, r16	; 0x800782 <arduboy+0x414>
        arduboy.printEx(30, y + 9, F("SCORE"));
    3266:	89 81       	ldd	r24, Y+1	; 0x01
    3268:	9a 81       	ldd	r25, Y+2	; 0x02
    326a:	87 58       	subi	r24, 0x87	; 135
    326c:	91 40       	sbci	r25, 0x01	; 1
  cursor_y = y;
    326e:	90 93 85 07 	sts	0x0785, r25	; 0x800785 <arduboy+0x417>
    3272:	80 93 84 07 	sts	0x0784, r24	; 0x800784 <arduboy+0x416>
    3276:	62 e0       	ldi	r22, 0x02	; 2
    3278:	73 e0       	ldi	r23, 0x03	; 3
    327a:	8e e6       	ldi	r24, 0x6E	; 110
    327c:	93 e0       	ldi	r25, 0x03	; 3
    327e:	0e 94 f9 12 	call	0x25f2	; 0x25f2 <_ZN5Print5printEPK19__FlashStringHelper.constprop.36>
        if (isHiscore && cavePhase % 8 < 4) {
    3282:	80 91 5c 01 	lds	r24, 0x015C	; 0x80015c <_ZL9isHiscore>
    3286:	88 23       	and	r24, r24
    3288:	09 f4       	brne	.+2      	; 0x328c <_Z8drawGamev+0x58e>
    328a:	61 cf       	rjmp	.-318    	; 0x314e <_Z8drawGamev+0x450>
    328c:	80 91 b2 02 	lds	r24, 0x02B2	; 0x8002b2 <_ZL9cavePhase>
    3290:	90 91 b3 02 	lds	r25, 0x02B3	; 0x8002b3 <_ZL9cavePhase+0x1>
    3294:	68 e0       	ldi	r22, 0x08	; 8
    3296:	70 e0       	ldi	r23, 0x00	; 0
    3298:	0e 94 77 29 	call	0x52ee	; 0x52ee <__divmodhi4>
    329c:	04 97       	sbiw	r24, 0x04	; 4
    329e:	0c f0       	brlt	.+2      	; 0x32a2 <_Z8drawGamev+0x5a4>
    32a0:	56 cf       	rjmp	.-340    	; 0x314e <_Z8drawGamev+0x450>
  }
}

void Arduboy::setCursor(int16_t x, int16_t y)
{
  cursor_x = x;
    32a2:	82 e2       	ldi	r24, 0x22	; 34
    32a4:	90 e0       	ldi	r25, 0x00	; 0
    32a6:	90 93 83 07 	sts	0x0783, r25	; 0x800783 <arduboy+0x415>
    32aa:	80 93 82 07 	sts	0x0782, r24	; 0x800782 <arduboy+0x414>
            arduboy.printEx(34, y - 6, F("NEW RECORD"));
    32ae:	89 81       	ldd	r24, Y+1	; 0x01
    32b0:	9a 81       	ldd	r25, Y+2	; 0x02
    32b2:	86 59       	subi	r24, 0x96	; 150
    32b4:	91 40       	sbci	r25, 0x01	; 1
    32b6:	90 93 85 07 	sts	0x0785, r25	; 0x800785 <arduboy+0x417>
    32ba:	80 93 84 07 	sts	0x0784, r24	; 0x800784 <arduboy+0x416>
    32be:	67 ef       	ldi	r22, 0xF7	; 247
    32c0:	72 e0       	ldi	r23, 0x02	; 2
    32c2:	8e e6       	ldi	r24, 0x6E	; 110
    32c4:	93 e0       	ldi	r25, 0x03	; 3
        }
    }
}
    32c6:	2e 96       	adiw	r28, 0x0e	; 14
    32c8:	0f b6       	in	r0, 0x3f	; 63
    32ca:	f8 94       	cli
    32cc:	de bf       	out	0x3e, r29	; 62
    32ce:	0f be       	out	0x3f, r0	; 63
    32d0:	cd bf       	out	0x3d, r28	; 61
    32d2:	df 91       	pop	r29
    32d4:	cf 91       	pop	r28
    32d6:	1f 91       	pop	r17
    32d8:	0f 91       	pop	r16
    32da:	ff 90       	pop	r15
    32dc:	ef 90       	pop	r14
    32de:	df 90       	pop	r13
    32e0:	cf 90       	pop	r12
    32e2:	bf 90       	pop	r11
    32e4:	af 90       	pop	r10
    32e6:	9f 90       	pop	r9
    32e8:	8f 90       	pop	r8
    32ea:	7f 90       	pop	r7
    32ec:	6f 90       	pop	r6
    32ee:	5f 90       	pop	r5
    32f0:	3f 90       	pop	r3
    32f2:	2f 90       	pop	r2
    32f4:	0c 94 f9 12 	jmp	0x25f2	; 0x25f2 <_ZN5Print5printEPK19__FlashStringHelper.constprop.36>

000032f8 <_Z9initTitlev>:
static int8_t   lightColor;
static bool     lightBlink;
static uint8_t  lightWait;

void initTitle(void)
{
    32f8:	0f 93       	push	r16
    32fa:	1f 93       	push	r17
    32fc:	cf 93       	push	r28
    32fe:	df 93       	push	r29
    state = STATE_MENU;
    3300:	10 92 d8 02 	sts	0x02D8, r1	; 0x8002d8 <_ZL5state>
    toDraw = true;
    3304:	81 e0       	ldi	r24, 0x01	; 1
    3306:	80 93 d9 02 	sts	0x02D9, r24	; 0x8002d9 <_ZL6toDraw>

bool ArduboyAudio::enabled()
{
  return audio_enabled;
    330a:	c0 91 1d 03 	lds	r28, 0x031D	; 0x80031d <_ZN12ArduboyAudio13audio_enabledE>
    }
}

static void setSound(bool enabled)
{
    if (enabled) {
    330e:	cc 23       	and	r28, r28
    3310:	09 f4       	brne	.+2      	; 0x3314 <_Z9initTitlev+0x1c>
    3312:	71 c0       	rjmp	.+226    	; 0x33f6 <_Z9initTitlev+0xfe>
        arduboy.audio.on();
    3314:	0e 94 ea 0f 	call	0x1fd4	; 0x1fd4 <_ZN12ArduboyAudio2onEv>
    } else {
        arduboy.audio.off();
    }
    sound = enabled;
    3318:	c0 93 d4 02 	sts	0x02D4, r28	; 0x8002d4 <_ZL5sound>
void initTitle(void)
{
    state = STATE_MENU;
    toDraw = true;
    setSound(arduboy.audio.enabled());
    menuPos = 0;
    331c:	10 92 d5 02 	sts	0x02D5, r1	; 0x8002d5 <_ZL7menuPos>

    if (recordState == RECORD_NOT_READ) {
    3320:	80 91 b5 02 	lds	r24, 0x02B5	; 0x8002b5 <_ZL11recordState>
    3324:	81 11       	cpse	r24, r1
    3326:	4b c0       	rjmp	.+150    	; 0x33be <_Z9initTitlev+0xc6>
/*                             EEPROM Functions                              */
/*---------------------------------------------------------------------------*/

void eepSeek(int addr)
{
    eepAddr = max(addr, EEPROM_STORAGE_SPACE_START);
    3328:	80 e0       	ldi	r24, 0x00	; 0
    332a:	93 e0       	ldi	r25, 0x03	; 3
    332c:	90 93 db 02 	sts	0x02DB, r25	; 0x8002db <_ZL7eepAddr+0x1>
    3330:	80 93 da 02 	sts	0x02DA, r24	; 0x8002da <_ZL7eepAddr>

static void readRecord(void)
{
    bool isRegular = false;
    eepSeek(EEPROM_ADDR_BASE);
    if (eepRead32() == EEPROM_SIGNATURE) {
    3334:	0e 94 fd 13 	call	0x27fa	; 0x27fa <_ZL9eepRead32v>
    3338:	6f 34       	cpi	r22, 0x4F	; 79
    333a:	72 44       	sbci	r23, 0x42	; 66
    333c:	8e 44       	sbci	r24, 0x4E	; 78
    333e:	91 40       	sbci	r25, 0x01	; 1
    3340:	09 f0       	breq	.+2      	; 0x3344 <_Z9initTitlev+0x4c>
    3342:	5c c0       	rjmp	.+184    	; 0x33fc <_Z9initTitlev+0x104>
    3344:	c3 e0       	ldi	r28, 0x03	; 3
    3346:	d0 e0       	ldi	r29, 0x00	; 0
        uint16_t checkSum = (EEPROM_SIGNATURE & 0xFFFF) + (EEPROM_SIGNATURE >> 16) * 2;
    3348:	0b ee       	ldi	r16, 0xEB	; 235
    334a:	14 e4       	ldi	r17, 0x44	; 68
        for (int i = 0; i < 13; i++) {
            checkSum += eepRead16() * (i + 3);
    334c:	0e 94 10 14 	call	0x2820	; 0x2820 <_ZL9eepRead16v>
    3350:	9c 01       	movw	r18, r24
    3352:	c2 9f       	mul	r28, r18
    3354:	c0 01       	movw	r24, r0
    3356:	c3 9f       	mul	r28, r19
    3358:	90 0d       	add	r25, r0
    335a:	d2 9f       	mul	r29, r18
    335c:	90 0d       	add	r25, r0
    335e:	11 24       	eor	r1, r1
    3360:	08 0f       	add	r16, r24
    3362:	19 1f       	adc	r17, r25
    3364:	21 96       	adiw	r28, 0x01	; 1
{
    bool isRegular = false;
    eepSeek(EEPROM_ADDR_BASE);
    if (eepRead32() == EEPROM_SIGNATURE) {
        uint16_t checkSum = (EEPROM_SIGNATURE & 0xFFFF) + (EEPROM_SIGNATURE >> 16) * 2;
        for (int i = 0; i < 13; i++) {
    3366:	c0 31       	cpi	r28, 0x10	; 16
    3368:	d1 05       	cpc	r29, r1
    336a:	81 f7       	brne	.-32     	; 0x334c <_Z9initTitlev+0x54>
            checkSum += eepRead16() * (i + 3);
        }
        isRegular = (eepRead16() == checkSum);
    336c:	0e 94 10 14 	call	0x2820	; 0x2820 <_ZL9eepRead16v>
    }

    if (isRegular) {
    3370:	08 17       	cp	r16, r24
    3372:	19 07       	cpc	r17, r25
    3374:	09 f0       	breq	.+2      	; 0x3378 <_Z9initTitlev+0x80>
    3376:	42 c0       	rjmp	.+132    	; 0x33fc <_Z9initTitlev+0x104>
/*                             EEPROM Functions                              */
/*---------------------------------------------------------------------------*/

void eepSeek(int addr)
{
    eepAddr = max(addr, EEPROM_STORAGE_SPACE_START);
    3378:	84 e0       	ldi	r24, 0x04	; 4
    337a:	93 e0       	ldi	r25, 0x03	; 3
    337c:	90 93 db 02 	sts	0x02DB, r25	; 0x8002db <_ZL7eepAddr+0x1>
    3380:	80 93 da 02 	sts	0x02DA, r24	; 0x8002da <_ZL7eepAddr>
    3384:	c0 ec       	ldi	r28, 0xC0	; 192
    3386:	d2 e0       	ldi	r29, 0x02	; 2

    if (isRegular) {
        /*  Read record from EEPROM  */
        eepSeek(EEPROM_ADDR_BASE + 4);
        for (int i = 0; i < 10; i++) {
            hiScore[i] = eepRead16();
    3388:	0e 94 10 14 	call	0x2820	; 0x2820 <_ZL9eepRead16v>
    338c:	89 93       	st	Y+, r24
    338e:	99 93       	st	Y+, r25
    }

    if (isRegular) {
        /*  Read record from EEPROM  */
        eepSeek(EEPROM_ADDR_BASE + 4);
        for (int i = 0; i < 10; i++) {
    3390:	32 e0       	ldi	r19, 0x02	; 2
    3392:	c4 3d       	cpi	r28, 0xD4	; 212
    3394:	d3 07       	cpc	r29, r19
    3396:	c1 f7       	brne	.-16     	; 0x3388 <_Z9initTitlev+0x90>
            hiScore[i] = eepRead16();
        }
        playCount = eepRead16();
    3398:	0e 94 10 14 	call	0x2820	; 0x2820 <_ZL9eepRead16v>
    339c:	90 93 bf 02 	sts	0x02BF, r25	; 0x8002bf <_ZL9playCount+0x1>
    33a0:	80 93 be 02 	sts	0x02BE, r24	; 0x8002be <_ZL9playCount>
        playFrames = eepRead32();
    33a4:	0e 94 fd 13 	call	0x27fa	; 0x27fa <_ZL9eepRead32v>
    33a8:	60 93 ba 02 	sts	0x02BA, r22	; 0x8002ba <_ZL10playFrames>
    33ac:	70 93 bb 02 	sts	0x02BB, r23	; 0x8002bb <_ZL10playFrames+0x1>
    33b0:	80 93 bc 02 	sts	0x02BC, r24	; 0x8002bc <_ZL10playFrames+0x2>
    33b4:	90 93 bd 02 	sts	0x02BD, r25	; 0x8002bd <_ZL10playFrames+0x3>
        recordState = RECORD_STORED;
    33b8:	82 e0       	ldi	r24, 0x02	; 2
        for (int i = 0; i < 10; i++) {
            hiScore[i] = 0;
        }
        playCount = 0;
        playFrames = 0;
        recordState = RECORD_INITIAL;
    33ba:	80 93 b5 02 	sts	0x02B5, r24	; 0x8002b5 <_ZL11recordState>

    if (recordState == RECORD_NOT_READ) {
        readRecord();
    }

    eyesWait = rnd(100) + 150;
    33be:	0e 94 db 25 	call	0x4bb6	; 0x4bb6 <rand>
    33c2:	64 e6       	ldi	r22, 0x64	; 100
    33c4:	70 e0       	ldi	r23, 0x00	; 0
    33c6:	0e 94 77 29 	call	0x52ee	; 0x52ee <__divmodhi4>
    33ca:	8a 56       	subi	r24, 0x6A	; 106
    33cc:	80 93 b9 02 	sts	0x02B9, r24	; 0x8002b9 <_ZL8eyesWait>
    lightColor = WHITE;
    33d0:	81 e0       	ldi	r24, 0x01	; 1
    33d2:	80 93 b8 02 	sts	0x02B8, r24	; 0x8002b8 <_ZL10lightColor>
    lightBlink = false;
    33d6:	10 92 b7 02 	sts	0x02B7, r1	; 0x8002b7 <_ZL10lightBlink>
    lightWait = rnd(180) + 60;
    33da:	0e 94 db 25 	call	0x4bb6	; 0x4bb6 <rand>
    33de:	64 eb       	ldi	r22, 0xB4	; 180
    33e0:	70 e0       	ldi	r23, 0x00	; 0
    33e2:	0e 94 77 29 	call	0x52ee	; 0x52ee <__divmodhi4>
    33e6:	84 5c       	subi	r24, 0xC4	; 196
    33e8:	80 93 b6 02 	sts	0x02B6, r24	; 0x8002b6 <_ZL9lightWait>
}
    33ec:	df 91       	pop	r29
    33ee:	cf 91       	pop	r28
    33f0:	1f 91       	pop	r17
    33f2:	0f 91       	pop	r16
    33f4:	08 95       	ret
static void setSound(bool enabled)
{
    if (enabled) {
        arduboy.audio.on();
    } else {
        arduboy.audio.off();
    33f6:	0e 94 dd 0f 	call	0x1fba	; 0x1fba <_ZN12ArduboyAudio3offEv>
    33fa:	8e cf       	rjmp	.-228    	; 0x3318 <_Z9initTitlev+0x20>
    33fc:	e0 ec       	ldi	r30, 0xC0	; 192
    33fe:	f2 e0       	ldi	r31, 0x02	; 2
    3400:	84 ed       	ldi	r24, 0xD4	; 212
    3402:	92 e0       	ldi	r25, 0x02	; 2
        playFrames = eepRead32();
        recordState = RECORD_STORED;
    } else {
        /*  Initialize record  */
        for (int i = 0; i < 10; i++) {
            hiScore[i] = 0;
    3404:	11 92       	st	Z+, r1
    3406:	11 92       	st	Z+, r1
        playCount = eepRead16();
        playFrames = eepRead32();
        recordState = RECORD_STORED;
    } else {
        /*  Initialize record  */
        for (int i = 0; i < 10; i++) {
    3408:	8e 17       	cp	r24, r30
    340a:	9f 07       	cpc	r25, r31
    340c:	d9 f7       	brne	.-10     	; 0x3404 <_Z9initTitlev+0x10c>
            hiScore[i] = 0;
        }
        playCount = 0;
    340e:	10 92 bf 02 	sts	0x02BF, r1	; 0x8002bf <_ZL9playCount+0x1>
    3412:	10 92 be 02 	sts	0x02BE, r1	; 0x8002be <_ZL9playCount>
        playFrames = 0;
    3416:	10 92 ba 02 	sts	0x02BA, r1	; 0x8002ba <_ZL10playFrames>
    341a:	10 92 bb 02 	sts	0x02BB, r1	; 0x8002bb <_ZL10playFrames+0x1>
    341e:	10 92 bc 02 	sts	0x02BC, r1	; 0x8002bc <_ZL10playFrames+0x2>
    3422:	10 92 bd 02 	sts	0x02BD, r1	; 0x8002bd <_ZL10playFrames+0x3>
        recordState = RECORD_INITIAL;
    3426:	81 e0       	ldi	r24, 0x01	; 1
    3428:	c8 cf       	rjmp	.-112    	; 0x33ba <_Z9initTitlev+0xc2>

0000342a <_ZL10growColumnR6COLUMNbS0_>:
    newColumn.top = top;
    newColumn.bottom = bottom;
}

static void growColumn(COLUMN &newColumn, bool isSpace, COLUMN &lastColumn)
{
    342a:	af 92       	push	r10
    342c:	bf 92       	push	r11
    342e:	cf 92       	push	r12
    3430:	df 92       	push	r13
    3432:	ef 92       	push	r14
    3434:	ff 92       	push	r15
    3436:	0f 93       	push	r16
    3438:	1f 93       	push	r17
    343a:	cf 93       	push	r28
    343c:	df 93       	push	r29
    343e:	7c 01       	movw	r14, r24
    3440:	b6 2e       	mov	r11, r22
    3442:	8a 01       	movw	r16, r20
    int lastDiff = lastColumn.bottom - lastColumn.top;
    3444:	fa 01       	movw	r30, r20
    3446:	c1 80       	ldd	r12, Z+1	; 0x01
    3448:	80 81       	ld	r24, Z
    344a:	c8 1a       	sub	r12, r24
    344c:	dd 08       	sbc	r13, r13
    int curDiff = rnd(3);
    344e:	0e 94 db 25 	call	0x4bb6	; 0x4bb6 <rand>
    3452:	63 e0       	ldi	r22, 0x03	; 3
    3454:	70 e0       	ldi	r23, 0x00	; 0
    3456:	0e 94 77 29 	call	0x52ee	; 0x52ee <__divmodhi4>
    345a:	ec 01       	movw	r28, r24

    if (isSpace) curDiff = 8 - curDiff;
    345c:	bb 20       	and	r11, r11
    345e:	31 f0       	breq	.+12     	; 0x346c <_ZL10growColumnR6COLUMNbS0_+0x42>
    3460:	88 e0       	ldi	r24, 0x08	; 8
    3462:	90 e0       	ldi	r25, 0x00	; 0
    3464:	9c 01       	movw	r18, r24
    3466:	2c 1b       	sub	r18, r28
    3468:	3d 0b       	sbc	r19, r29
    346a:	e9 01       	movw	r28, r18
    int adjust = (lastColumn.bottom - 34) / 5;
    346c:	f8 01       	movw	r30, r16
    346e:	81 81       	ldd	r24, Z+1	; 0x01
    3470:	82 52       	subi	r24, 0x22	; 34
    3472:	99 0b       	sbc	r25, r25
    3474:	65 e0       	ldi	r22, 0x05	; 5
    3476:	70 e0       	ldi	r23, 0x00	; 0
    3478:	0e 94 77 29 	call	0x52ee	; 0x52ee <__divmodhi4>
    347c:	5b 01       	movw	r10, r22
    int change = rnd(17 - abs(curDiff - lastDiff) - abs(adjust)) - 8;
    347e:	0e 94 db 25 	call	0x4bb6	; 0x4bb6 <rand>
    3482:	fe 01       	movw	r30, r28
    3484:	ec 19       	sub	r30, r12
    3486:	fd 09       	sbc	r31, r13
    3488:	9f 01       	movw	r18, r30
    348a:	f7 ff       	sbrs	r31, 7
    348c:	04 c0       	rjmp	.+8      	; 0x3496 <_ZL10growColumnR6COLUMNbS0_+0x6c>
    348e:	22 27       	eor	r18, r18
    3490:	33 27       	eor	r19, r19
    3492:	2e 1b       	sub	r18, r30
    3494:	3f 0b       	sbc	r19, r31
    3496:	61 e1       	ldi	r22, 0x11	; 17
    3498:	70 e0       	ldi	r23, 0x00	; 0
    349a:	62 1b       	sub	r22, r18
    349c:	73 0b       	sbc	r23, r19
    349e:	95 01       	movw	r18, r10
    34a0:	b7 fe       	sbrs	r11, 7
    34a2:	04 c0       	rjmp	.+8      	; 0x34ac <_ZL10growColumnR6COLUMNbS0_+0x82>
    34a4:	22 27       	eor	r18, r18
    34a6:	33 27       	eor	r19, r19
    34a8:	2a 19       	sub	r18, r10
    34aa:	3b 09       	sbc	r19, r11
    34ac:	62 1b       	sub	r22, r18
    34ae:	73 0b       	sbc	r23, r19
    34b0:	0e 94 77 29 	call	0x52ee	; 0x52ee <__divmodhi4>
    34b4:	9c 01       	movw	r18, r24
    34b6:	28 50       	subi	r18, 0x08	; 8
    34b8:	31 09       	sbc	r19, r1
    if (curDiff > lastDiff) change += curDiff - lastDiff;
    34ba:	cc 16       	cp	r12, r28
    34bc:	dd 06       	cpc	r13, r29
    34be:	14 f4       	brge	.+4      	; 0x34c4 <_ZL10growColumnR6COLUMNbS0_+0x9a>
    34c0:	2e 0f       	add	r18, r30
    34c2:	3f 1f       	adc	r19, r31
    if (adjust < 0) change -= adjust;
    34c4:	b7 fe       	sbrs	r11, 7
    34c6:	02 c0       	rjmp	.+4      	; 0x34cc <_ZL10growColumnR6COLUMNbS0_+0xa2>
    34c8:	2a 19       	sub	r18, r10
    34ca:	3b 09       	sbc	r19, r11
    int bottom = lastColumn.bottom + change;
    34cc:	f8 01       	movw	r30, r16
    34ce:	81 81       	ldd	r24, Z+1	; 0x01
    34d0:	82 0f       	add	r24, r18
    34d2:	93 2f       	mov	r25, r19
    34d4:	91 1d       	adc	r25, r1
    bottom = min(max(bottom, 16), 56);
    34d6:	80 31       	cpi	r24, 0x10	; 16
    34d8:	91 05       	cpc	r25, r1
    34da:	14 f4       	brge	.+4      	; 0x34e0 <_ZL10growColumnR6COLUMNbS0_+0xb6>
    34dc:	80 e1       	ldi	r24, 0x10	; 16
    34de:	90 e0       	ldi	r25, 0x00	; 0
    newColumn.top = bottom - curDiff;
    34e0:	89 33       	cpi	r24, 0x39	; 57
    34e2:	91 05       	cpc	r25, r1
    34e4:	14 f0       	brlt	.+4      	; 0x34ea <_ZL10growColumnR6COLUMNbS0_+0xc0>
    34e6:	88 e3       	ldi	r24, 0x38	; 56
    34e8:	90 e0       	ldi	r25, 0x00	; 0
    34ea:	98 2f       	mov	r25, r24
    34ec:	9c 1b       	sub	r25, r28
    34ee:	f7 01       	movw	r30, r14
    34f0:	90 83       	st	Z, r25
    newColumn.bottom = bottom; 
    34f2:	81 83       	std	Z+1, r24	; 0x01
}
    34f4:	df 91       	pop	r29
    34f6:	cf 91       	pop	r28
    34f8:	1f 91       	pop	r17
    34fa:	0f 91       	pop	r16
    34fc:	ff 90       	pop	r15
    34fe:	ef 90       	pop	r14
    3500:	df 90       	pop	r13
    3502:	cf 90       	pop	r12
    3504:	bf 90       	pop	r11
    3506:	af 90       	pop	r10
    3508:	08 95       	ret

0000350a <_Z8initGamev>:
static DEBRIS   debris[144];

/*---------------------------------------------------------------------------*/

void initGame(void)
{
    350a:	0f 93       	push	r16
    350c:	1f 93       	push	r17
    350e:	cf 93       	push	r28
    3510:	df 93       	push	r29
    isStart = true;
    3512:	81 e0       	ldi	r24, 0x01	; 1
    3514:	80 93 5f 01 	sts	0x015F, r24	; 0x80015f <_ZL7isStart>
    isOver = false;
    3518:	10 92 65 01 	sts	0x0165, r1	; 0x800165 <_ZL6isOver>
    counter = 120; // 2 secs
    351c:	88 e7       	ldi	r24, 0x78	; 120
    351e:	90 e0       	ldi	r25, 0x00	; 0
    3520:	90 93 5e 01 	sts	0x015E, r25	; 0x80015e <_ZL7counter.lto_priv.55+0x1>
    3524:	80 93 5d 01 	sts	0x015D, r24	; 0x80015d <_ZL7counter.lto_priv.55>
    score = 0;
    3528:	10 92 61 01 	sts	0x0161, r1	; 0x800161 <_ZL5score+0x1>
    352c:	10 92 60 01 	sts	0x0160, r1	; 0x800160 <_ZL5score>
    scoreTop = 0;
    3530:	10 92 62 01 	sts	0x0162, r1	; 0x800162 <_ZL8scoreTop>

    caveOffset = 0;
    3534:	10 92 ad 02 	sts	0x02AD, r1	; 0x8002ad <_ZL10caveOffset>
    cavePhase = 0;
    3538:	10 92 b3 02 	sts	0x02B3, r1	; 0x8002b3 <_ZL9cavePhase+0x1>
    353c:	10 92 b2 02 	sts	0x02B2, r1	; 0x8002b2 <_ZL9cavePhase>
    caveHollowCnt = 0;
    3540:	10 92 56 01 	sts	0x0156, r1	; 0x800156 <__data_end>
    caveLoopCnt = 0;
    3544:	10 92 58 01 	sts	0x0158, r1	; 0x800158 <_ZL11caveLoopCnt+0x1>
    3548:	10 92 57 01 	sts	0x0157, r1	; 0x800157 <_ZL11caveLoopCnt>
    caveMaxGap = 32;
    354c:	80 e2       	ldi	r24, 0x20	; 32
    354e:	80 93 5b 01 	sts	0x015B, r24	; 0x80015b <_ZL10caveMaxGap>
    3552:	e9 e8       	ldi	r30, 0x89	; 137
    3554:	f2 e0       	ldi	r31, 0x02	; 2
    return false;
}

static void setColumn(COLUMN &newColumn, uchar top, uchar bottom)
{
    newColumn.top = top;
    3556:	90 e2       	ldi	r25, 0x20	; 32
    newColumn.bottom = bottom;
    3558:	88 e2       	ldi	r24, 0x28	; 40
    return false;
}

static void setColumn(COLUMN &newColumn, uchar top, uchar bottom)
{
    newColumn.top = top;
    355a:	90 83       	st	Z, r25
    newColumn.bottom = bottom;
    355c:	81 83       	std	Z+1, r24	; 0x01
    355e:	32 96       	adiw	r30, 0x02	; 2
    caveOffset = 0;
    cavePhase = 0;
    caveHollowCnt = 0;
    caveLoopCnt = 0;
    caveMaxGap = 32;
    for (int i = 0; i < 9; i++) {
    3560:	22 e0       	ldi	r18, 0x02	; 2
    3562:	eb 39       	cpi	r30, 0x9B	; 155
    3564:	f2 07       	cpc	r31, r18
    3566:	c9 f7       	brne	.-14     	; 0x355a <_Z8initGamev+0x50>
    3568:	d0 e0       	ldi	r29, 0x00	; 0
    356a:	c0 e0       	ldi	r28, 0x00	; 0
    356c:	8e 01       	movw	r16, r28
    356e:	07 56       	subi	r16, 0x67	; 103
    3570:	1d 4f       	sbci	r17, 0xFD	; 253

/*---------------------------------------------------------------------------*/

static bool isHollow(void)
{
    if (caveHollowCnt-- < 0) {
    3572:	80 91 56 01 	lds	r24, 0x0156	; 0x800156 <__data_end>
    3576:	9f ef       	ldi	r25, 0xFF	; 255
    3578:	98 0f       	add	r25, r24
    357a:	90 93 56 01 	sts	0x0156, r25	; 0x800156 <__data_end>
        caveHollowCnt = (rand() + 32768) * score >> 22;
        return true;
    }
    return false;
    357e:	60 e0       	ldi	r22, 0x00	; 0

/*---------------------------------------------------------------------------*/

static bool isHollow(void)
{
    if (caveHollowCnt-- < 0) {
    3580:	87 ff       	sbrs	r24, 7
    3582:	19 c0       	rjmp	.+50     	; 0x35b6 <_Z8initGamev+0xac>
        caveHollowCnt = (rand() + 32768) * score >> 22;
    3584:	0e 94 db 25 	call	0x4bb6	; 0x4bb6 <rand>
    3588:	9c 01       	movw	r18, r24
    358a:	99 0f       	add	r25, r25
    358c:	44 0b       	sbc	r20, r20
    358e:	55 0b       	sbc	r21, r21
    3590:	30 58       	subi	r19, 0x80	; 128
    3592:	4f 4f       	sbci	r20, 0xFF	; 255
    3594:	5f 4f       	sbci	r21, 0xFF	; 255
    3596:	a0 91 60 01 	lds	r26, 0x0160	; 0x800160 <_ZL5score>
    359a:	b0 91 61 01 	lds	r27, 0x0161	; 0x800161 <_ZL5score+0x1>
    359e:	0e 94 08 27 	call	0x4e10	; 0x4e10 <__muluhisi3>
    35a2:	26 e1       	ldi	r18, 0x16	; 22
    35a4:	95 95       	asr	r25
    35a6:	87 95       	ror	r24
    35a8:	77 95       	ror	r23
    35aa:	67 95       	ror	r22
    35ac:	2a 95       	dec	r18
    35ae:	d1 f7       	brne	.-12     	; 0x35a4 <_Z8initGamev+0x9a>
    35b0:	60 93 56 01 	sts	0x0156, r22	; 0x800156 <__data_end>
    35b4:	61 e0       	ldi	r22, 0x01	; 1
    caveMaxGap = 32;
    for (int i = 0; i < 9; i++) {
        setColumn(caveColumn[i], 32, 40);
    }
    for (int i = 9; i < 18; i++) {
        growColumn(caveColumn[i], isHollow(), caveColumn[i - 1]);
    35b6:	a8 01       	movw	r20, r16
    35b8:	ce 01       	movw	r24, r28
    35ba:	85 56       	subi	r24, 0x65	; 101
    35bc:	9d 4f       	sbci	r25, 0xFD	; 253
    35be:	0e 94 15 1a 	call	0x342a	; 0x342a <_ZL10growColumnR6COLUMNbS0_>
    35c2:	22 96       	adiw	r28, 0x02	; 2
    caveLoopCnt = 0;
    caveMaxGap = 32;
    for (int i = 0; i < 9; i++) {
        setColumn(caveColumn[i], 32, 40);
    }
    for (int i = 9; i < 18; i++) {
    35c4:	c2 31       	cpi	r28, 0x12	; 18
    35c6:	d1 05       	cpc	r29, r1
    35c8:	89 f6       	brne	.-94     	; 0x356c <_Z8initGamev+0x62>
    35ca:	e9 e6       	ldi	r30, 0x69	; 105
    35cc:	f1 e0       	ldi	r31, 0x01	; 1
        growColumn(caveColumn[i], isHollow(), caveColumn[i - 1]);
    }
    for (int i = 0; i < 144; i++) {
        debris[i].t = 0;
    35ce:	10 82       	st	Z, r1
    35d0:	32 96       	adiw	r30, 0x02	; 2
        setColumn(caveColumn[i], 32, 40);
    }
    for (int i = 9; i < 18; i++) {
        growColumn(caveColumn[i], isHollow(), caveColumn[i - 1]);
    }
    for (int i = 0; i < 144; i++) {
    35d2:	82 e0       	ldi	r24, 0x02	; 2
    35d4:	e9 38       	cpi	r30, 0x89	; 137
    35d6:	f8 07       	cpc	r31, r24
    35d8:	d1 f7       	brne	.-12     	; 0x35ce <_Z8initGamev+0xc4>
        debris[i].t = 0;
    }

    playerX = 0;
    35da:	10 92 63 01 	sts	0x0163, r1	; 0x800163 <_ZL7playerX>
    playerColumn = 1;
    35de:	81 e0       	ldi	r24, 0x01	; 1
    35e0:	80 93 68 01 	sts	0x0168, r24	; 0x800168 <_ZL12playerColumn>
    playerDir = true;
    35e4:	80 93 64 01 	sts	0x0164, r24	; 0x800164 <_ZL9playerDir>
    playerMove = 0;
    35e8:	10 92 66 01 	sts	0x0166, r1	; 0x800166 <_ZL10playerMove>
    playerJump = 0;
    35ec:	10 92 67 01 	sts	0x0167, r1	; 0x800167 <_ZL10playerJump>
    arduboy.playScore2(soundStart, 0);
    35f0:	60 e0       	ldi	r22, 0x00	; 0
    35f2:	87 e4       	ldi	r24, 0x47	; 71
    35f4:	92 e0       	ldi	r25, 0x02	; 2
}
    35f6:	df 91       	pop	r29
    35f8:	cf 91       	pop	r28
    35fa:	1f 91       	pop	r17
    35fc:	0f 91       	pop	r16
    playerX = 0;
    playerColumn = 1;
    playerDir = true;
    playerMove = 0;
    playerJump = 0;
    arduboy.playScore2(soundStart, 0);
    35fe:	0c 94 ab 0f 	jmp	0x1f56	; 0x1f56 <_ZN9MyArduboy10playScore2EPKhh.constprop.29>

00003602 <_Z11updateTitlev>:
    lightBlink = false;
    lightWait = rnd(180) + 60;
}

bool updateTitle(void)
{
    3602:	cf 92       	push	r12
    3604:	df 92       	push	r13
    3606:	ef 92       	push	r14
    3608:	ff 92       	push	r15
    360a:	cf 93       	push	r28
    bool ret = false;
    if (state == STATE_MENU) {
    360c:	80 91 d8 02 	lds	r24, 0x02D8	; 0x8002d8 <_ZL5state>
    3610:	81 11       	cpse	r24, r1
    3612:	c3 c0       	rjmp	.+390    	; 0x379a <_Z11updateTitlev+0x198>
        /*  Animation  */
        if (eyesWait-- == 0) eyesWait = rnd(100) + 150;
    3614:	80 91 b9 02 	lds	r24, 0x02B9	; 0x8002b9 <_ZL8eyesWait>
    3618:	9f ef       	ldi	r25, 0xFF	; 255
    361a:	98 0f       	add	r25, r24
    361c:	90 93 b9 02 	sts	0x02B9, r25	; 0x8002b9 <_ZL8eyesWait>
    3620:	81 11       	cpse	r24, r1
    3622:	09 c0       	rjmp	.+18     	; 0x3636 <_Z11updateTitlev+0x34>
    3624:	0e 94 db 25 	call	0x4bb6	; 0x4bb6 <rand>
    3628:	64 e6       	ldi	r22, 0x64	; 100
    362a:	70 e0       	ldi	r23, 0x00	; 0
    362c:	0e 94 77 29 	call	0x52ee	; 0x52ee <__divmodhi4>
    3630:	8a 56       	subi	r24, 0x6A	; 106
    3632:	80 93 b9 02 	sts	0x02B9, r24	; 0x8002b9 <_ZL8eyesWait>
        if (lightBlink && (lightWait & 1)) lightColor = WHITE - lightColor;
    3636:	80 91 b7 02 	lds	r24, 0x02B7	; 0x8002b7 <_ZL10lightBlink>
    363a:	90 91 b6 02 	lds	r25, 0x02B6	; 0x8002b6 <_ZL9lightWait>
    363e:	88 23       	and	r24, r24
    3640:	41 f0       	breq	.+16     	; 0x3652 <_Z11updateTitlev+0x50>
    3642:	90 ff       	sbrs	r25, 0
    3644:	06 c0       	rjmp	.+12     	; 0x3652 <_Z11updateTitlev+0x50>
    3646:	30 91 b8 02 	lds	r19, 0x02B8	; 0x8002b8 <_ZL10lightColor>
    364a:	21 e0       	ldi	r18, 0x01	; 1
    364c:	23 1b       	sub	r18, r19
    364e:	20 93 b8 02 	sts	0x02B8, r18	; 0x8002b8 <_ZL10lightColor>
        if (lightWait-- == 0) {
    3652:	2f ef       	ldi	r18, 0xFF	; 255
    3654:	29 0f       	add	r18, r25
    3656:	20 93 b6 02 	sts	0x02B6, r18	; 0x8002b6 <_ZL9lightWait>
    365a:	91 11       	cpse	r25, r1
    365c:	0d c0       	rjmp	.+26     	; 0x3678 <_Z11updateTitlev+0x76>
            lightBlink = !lightBlink;
    365e:	91 e0       	ldi	r25, 0x01	; 1
    3660:	89 27       	eor	r24, r25
    3662:	80 93 b7 02 	sts	0x02B7, r24	; 0x8002b7 <_ZL10lightBlink>
            lightWait = rnd(180) + 60;
    3666:	0e 94 db 25 	call	0x4bb6	; 0x4bb6 <rand>
    366a:	64 eb       	ldi	r22, 0xB4	; 180
    366c:	70 e0       	ldi	r23, 0x00	; 0
    366e:	0e 94 77 29 	call	0x52ee	; 0x52ee <__divmodhi4>
    3672:	84 5c       	subi	r24, 0xC4	; 196
    3674:	80 93 b6 02 	sts	0x02B6, r24	; 0x8002b6 <_ZL9lightWait>
    return ret;
}

bool MyArduboy::buttonDown(uint8_t buttons)
{
    return currentButtonState & ~lastButtonState & buttons;
    3678:	80 91 8a 07 	lds	r24, 0x078A	; 0x80078a <arduboy+0x41c>
    367c:	90 e0       	ldi	r25, 0x00	; 0
    367e:	80 95       	com	r24
    3680:	90 95       	com	r25
    3682:	20 91 8b 07 	lds	r18, 0x078B	; 0x80078b <arduboy+0x41d>
    3686:	20 78       	andi	r18, 0x80	; 128
    3688:	30 e0       	ldi	r19, 0x00	; 0
    368a:	82 23       	and	r24, r18
    368c:	93 23       	and	r25, r19
        }
        /*  Button handling  */
        if (arduboy.buttonDown(UP_BUTTON)) {
    368e:	89 2b       	or	r24, r25
    3690:	79 f0       	breq	.+30     	; 0x36b0 <_Z11updateTitlev+0xae>
            if (menuPos-- == 0) menuPos = 3;
    3692:	80 91 d5 02 	lds	r24, 0x02D5	; 0x8002d5 <_ZL7menuPos>
    3696:	88 23       	and	r24, r24
    3698:	b1 f1       	breq	.+108    	; 0x3706 <_Z11updateTitlev+0x104>
    369a:	81 50       	subi	r24, 0x01	; 1
    369c:	80 93 d5 02 	sts	0x02D5, r24	; 0x8002d5 <_ZL7menuPos>
    sound = enabled;
}

static void playSound1(void)
{
    arduboy.playScore2(sound1, 255);
    36a0:	6f ef       	ldi	r22, 0xFF	; 255
    36a2:	86 e3       	ldi	r24, 0x36	; 54
    36a4:	96 e0       	ldi	r25, 0x06	; 6
    36a6:	0e 94 ab 0f 	call	0x1f56	; 0x1f56 <_ZN9MyArduboy10playScore2EPKhh.constprop.29>
        }
        /*  Button handling  */
        if (arduboy.buttonDown(UP_BUTTON)) {
            if (menuPos-- == 0) menuPos = 3;
            playSound1();
            toDraw = true;
    36aa:	81 e0       	ldi	r24, 0x01	; 1
    36ac:	80 93 d9 02 	sts	0x02D9, r24	; 0x8002d9 <_ZL6toDraw>
    36b0:	80 91 8a 07 	lds	r24, 0x078A	; 0x80078a <arduboy+0x41c>
    36b4:	90 e0       	ldi	r25, 0x00	; 0
    36b6:	80 95       	com	r24
    36b8:	90 95       	com	r25
    36ba:	20 91 8b 07 	lds	r18, 0x078B	; 0x80078b <arduboy+0x41d>
    36be:	20 71       	andi	r18, 0x10	; 16
    36c0:	30 e0       	ldi	r19, 0x00	; 0
    36c2:	82 23       	and	r24, r18
    36c4:	93 23       	and	r25, r19
        }
        if (arduboy.buttonDown(DOWN_BUTTON)) {
    36c6:	89 2b       	or	r24, r25
    36c8:	79 f0       	breq	.+30     	; 0x36e8 <_Z11updateTitlev+0xe6>
            if (menuPos++ == 3) menuPos = 0;
    36ca:	80 91 d5 02 	lds	r24, 0x02D5	; 0x8002d5 <_ZL7menuPos>
    36ce:	83 30       	cpi	r24, 0x03	; 3
    36d0:	e1 f0       	breq	.+56     	; 0x370a <_Z11updateTitlev+0x108>
    36d2:	8f 5f       	subi	r24, 0xFF	; 255
    36d4:	80 93 d5 02 	sts	0x02D5, r24	; 0x8002d5 <_ZL7menuPos>
    sound = enabled;
}

static void playSound1(void)
{
    arduboy.playScore2(sound1, 255);
    36d8:	6f ef       	ldi	r22, 0xFF	; 255
    36da:	86 e3       	ldi	r24, 0x36	; 54
    36dc:	96 e0       	ldi	r25, 0x06	; 6
    36de:	0e 94 ab 0f 	call	0x1f56	; 0x1f56 <_ZN9MyArduboy10playScore2EPKhh.constprop.29>
            toDraw = true;
        }
        if (arduboy.buttonDown(DOWN_BUTTON)) {
            if (menuPos++ == 3) menuPos = 0;
            playSound1();
            toDraw = true;
    36e2:	81 e0       	ldi	r24, 0x01	; 1
    36e4:	80 93 d9 02 	sts	0x02D9, r24	; 0x8002d9 <_ZL6toDraw>
    36e8:	80 91 8a 07 	lds	r24, 0x078A	; 0x80078a <arduboy+0x41c>
    36ec:	90 e0       	ldi	r25, 0x00	; 0
    36ee:	80 95       	com	r24
    36f0:	90 95       	com	r25
    36f2:	20 91 8b 07 	lds	r18, 0x078B	; 0x80078b <arduboy+0x41d>
    36f6:	2c 70       	andi	r18, 0x0C	; 12
    36f8:	30 e0       	ldi	r19, 0x00	; 0
    36fa:	82 23       	and	r24, r18
    36fc:	93 23       	and	r25, r19
        }
        if (arduboy.buttonDown(A_BUTTON | B_BUTTON)) {
    36fe:	89 2b       	or	r24, r25
    3700:	39 f4       	brne	.+14     	; 0x3710 <_Z11updateTitlev+0x10e>
    lightWait = rnd(180) + 60;
}

bool updateTitle(void)
{
    bool ret = false;
    3702:	c0 e0       	ldi	r28, 0x00	; 0
    3704:	1e c0       	rjmp	.+60     	; 0x3742 <_Z11updateTitlev+0x140>
            lightBlink = !lightBlink;
            lightWait = rnd(180) + 60;
        }
        /*  Button handling  */
        if (arduboy.buttonDown(UP_BUTTON)) {
            if (menuPos-- == 0) menuPos = 3;
    3706:	83 e0       	ldi	r24, 0x03	; 3
    3708:	c9 cf       	rjmp	.-110    	; 0x369c <_Z11updateTitlev+0x9a>
            playSound1();
            toDraw = true;
        }
        if (arduboy.buttonDown(DOWN_BUTTON)) {
            if (menuPos++ == 3) menuPos = 0;
    370a:	10 92 d5 02 	sts	0x02D5, r1	; 0x8002d5 <_ZL7menuPos>
    370e:	e4 cf       	rjmp	.-56     	; 0x36d8 <_Z11updateTitlev+0xd6>
            playSound1();
            toDraw = true;
        }
        if (arduboy.buttonDown(A_BUTTON | B_BUTTON)) {
            switch (menuPos) {
    3710:	80 91 d5 02 	lds	r24, 0x02D5	; 0x8002d5 <_ZL7menuPos>
    3714:	81 30       	cpi	r24, 0x01	; 1
    3716:	79 f1       	breq	.+94     	; 0x3776 <_Z11updateTitlev+0x174>
    3718:	24 f4       	brge	.+8      	; 0x3722 <_Z11updateTitlev+0x120>
    371a:	88 23       	and	r24, r24
    371c:	41 f0       	breq	.+16     	; 0x372e <_Z11updateTitlev+0x12c>
    lightWait = rnd(180) + 60;
}

bool updateTitle(void)
{
    bool ret = false;
    371e:	c0 e0       	ldi	r28, 0x00	; 0
    3720:	0d c0       	rjmp	.+26     	; 0x373c <_Z11updateTitlev+0x13a>
            if (menuPos++ == 3) menuPos = 0;
            playSound1();
            toDraw = true;
        }
        if (arduboy.buttonDown(A_BUTTON | B_BUTTON)) {
            switch (menuPos) {
    3722:	82 30       	cpi	r24, 0x02	; 2
    3724:	b1 f1       	breq	.+108    	; 0x3792 <_Z11updateTitlev+0x190>
    3726:	83 30       	cpi	r24, 0x03	; 3
    3728:	d1 f7       	brne	.-12     	; 0x371e <_Z11updateTitlev+0x11c>
            case 2:
                state = STATE_RECORD;
                playSound2();
                break;
            case 3:
                state = STATE_CREDIT;
    372a:	82 e0       	ldi	r24, 0x02	; 2
    372c:	33 c0       	rjmp	.+102    	; 0x3794 <_Z11updateTitlev+0x192>
    uint8_t operator*() const            { return eeprom_read_byte( (uint8_t*) index ); }
    operator uint8_t() const             { return **this; }
    
    //Assignment/write members.
    EERef &operator=( const EERef &ref ) { return *this = *ref; }
    EERef &operator=( uint8_t in )       { return eeprom_write_byte( (uint8_t*) index, in ), *this;  }
    372e:	60 91 1d 03 	lds	r22, 0x031D	; 0x80031d <_ZN12ArduboyAudio13audio_enabledE>
    3732:	82 e0       	ldi	r24, 0x02	; 2
    3734:	90 e0       	ldi	r25, 0x00	; 0
    3736:	0e 94 be 26 	call	0x4d7c	; 0x4d7c <eeprom_write_byte>
            toDraw = true;
        }
        if (arduboy.buttonDown(A_BUTTON | B_BUTTON)) {
            switch (menuPos) {
            case 0:
                ret = true;
    373a:	c1 e0       	ldi	r28, 0x01	; 1
            case 3:
                state = STATE_CREDIT;
                playSound2();
                break;
            }
            toDraw = true;
    373c:	81 e0       	ldi	r24, 0x01	; 1
    373e:	80 93 d9 02 	sts	0x02D9, r24	; 0x8002d9 <_ZL6toDraw>
            playSound2();
            toDraw = true;
        }
    }

    randomSeed(rand() ^ micros()); // Shuffle random
    3742:	0e 94 db 25 	call	0x4bb6	; 0x4bb6 <rand>
    3746:	6c 01       	movw	r12, r24
    3748:	99 0f       	add	r25, r25
    374a:	ee 08       	sbc	r14, r14
    374c:	ff 08       	sbc	r15, r15
    374e:	0e 94 77 0d 	call	0x1aee	; 0x1aee <micros>
  #include "stdlib.h"
}

void randomSeed(unsigned long seed)
{
  if (seed != 0) {
    3752:	c6 16       	cp	r12, r22
    3754:	d7 06       	cpc	r13, r23
    3756:	e8 06       	cpc	r14, r24
    3758:	f9 06       	cpc	r15, r25
    375a:	31 f0       	breq	.+12     	; 0x3768 <_Z11updateTitlev+0x166>
    375c:	6c 25       	eor	r22, r12
    375e:	7d 25       	eor	r23, r13
    3760:	8e 25       	eor	r24, r14
    3762:	9f 25       	eor	r25, r15
    srandom(seed);
    3764:	0e 94 86 26 	call	0x4d0c	; 0x4d0c <srandom>
    return ret;
}
    3768:	8c 2f       	mov	r24, r28
    376a:	cf 91       	pop	r28
    376c:	ff 90       	pop	r15
    376e:	ef 90       	pop	r14
    3770:	df 90       	pop	r13
    3772:	cf 90       	pop	r12
    3774:	08 95       	ret
            case 0:
                ret = true;
                arduboy.audio.saveOnOff();
                break;
            case 1:
                setSound(!sound);
    3776:	c0 91 d4 02 	lds	r28, 0x02D4	; 0x8002d4 <_ZL5sound>
    377a:	c8 27       	eor	r28, r24
    }
}

static void setSound(bool enabled)
{
    if (enabled) {
    377c:	39 f0       	breq	.+14     	; 0x378c <_Z11updateTitlev+0x18a>
        arduboy.audio.on();
    377e:	0e 94 ea 0f 	call	0x1fd4	; 0x1fd4 <_ZN12ArduboyAudio2onEv>
    } else {
        arduboy.audio.off();
    }
    sound = enabled;
    3782:	c0 93 d4 02 	sts	0x02D4, r28	; 0x8002d4 <_ZL5sound>
                state = STATE_RECORD;
                playSound2();
                break;
            case 3:
                state = STATE_CREDIT;
                playSound2();
    3786:	0e 94 35 11 	call	0x226a	; 0x226a <_ZL10playSound2v>
    378a:	c9 cf       	rjmp	.-110    	; 0x371e <_Z11updateTitlev+0x11c>
static void setSound(bool enabled)
{
    if (enabled) {
        arduboy.audio.on();
    } else {
        arduboy.audio.off();
    378c:	0e 94 dd 0f 	call	0x1fba	; 0x1fba <_ZN12ArduboyAudio3offEv>
    3790:	f8 cf       	rjmp	.-16     	; 0x3782 <_Z11updateTitlev+0x180>
            case 1:
                setSound(!sound);
                playSound2();
                break;
            case 2:
                state = STATE_RECORD;
    3792:	81 e0       	ldi	r24, 0x01	; 1
                playSound2();
                break;
            case 3:
                state = STATE_CREDIT;
    3794:	80 93 d8 02 	sts	0x02D8, r24	; 0x8002d8 <_ZL5state>
    3798:	f6 cf       	rjmp	.-20     	; 0x3786 <_Z11updateTitlev+0x184>
    379a:	80 91 8a 07 	lds	r24, 0x078A	; 0x80078a <arduboy+0x41c>
    379e:	90 e0       	ldi	r25, 0x00	; 0
    37a0:	80 95       	com	r24
    37a2:	90 95       	com	r25
    37a4:	20 91 8b 07 	lds	r18, 0x078B	; 0x80078b <arduboy+0x41d>
    37a8:	2c 70       	andi	r18, 0x0C	; 12
    37aa:	30 e0       	ldi	r19, 0x00	; 0
    37ac:	82 23       	and	r24, r18
    37ae:	93 23       	and	r25, r19
                break;
            }
            toDraw = true;
        }
    } else {
        if (arduboy.buttonDown(A_BUTTON | B_BUTTON)) {
    37b0:	89 2b       	or	r24, r25
    37b2:	09 f4       	brne	.+2      	; 0x37b6 <_Z11updateTitlev+0x1b4>
    37b4:	a6 cf       	rjmp	.-180    	; 0x3702 <_Z11updateTitlev+0x100>
            state = STATE_MENU;
    37b6:	10 92 d8 02 	sts	0x02D8, r1	; 0x8002d8 <_ZL5state>
            playSound2();
    37ba:	0e 94 35 11 	call	0x226a	; 0x226a <_ZL10playSound2v>
            toDraw = true;
    37be:	81 e0       	ldi	r24, 0x01	; 1
    37c0:	80 93 d9 02 	sts	0x02D9, r24	; 0x8002d9 <_ZL6toDraw>
    37c4:	9e cf       	rjmp	.-196    	; 0x3702 <_Z11updateTitlev+0x100>

000037c6 <_Z10updateGamev>:
}

bool updateGame(void)
{
    37c6:	bf 92       	push	r11
    37c8:	cf 92       	push	r12
    37ca:	df 92       	push	r13
    37cc:	ef 92       	push	r14
    37ce:	ff 92       	push	r15
    37d0:	0f 93       	push	r16
    37d2:	1f 93       	push	r17
    37d4:	cf 93       	push	r28
    37d6:	df 93       	push	r29
    37d8:	b0 90 65 01 	lds	r11, 0x0165	; 0x800165 <_ZL6isOver>
    if (isStart || isOver) {
    37dc:	80 91 5f 01 	lds	r24, 0x015F	; 0x80015f <_ZL7isStart>
    37e0:	81 11       	cpse	r24, r1
    37e2:	03 c0       	rjmp	.+6      	; 0x37ea <_Z10updateGamev+0x24>
    37e4:	bb 20       	and	r11, r11
    37e6:	09 f4       	brne	.+2      	; 0x37ea <_Z10updateGamev+0x24>
    37e8:	0b c3       	rjmp	.+1558   	; 0x3e00 <_Z10updateGamev+0x63a>
        if (--counter == 0) isStart = false;
    37ea:	80 91 5d 01 	lds	r24, 0x015D	; 0x80015d <_ZL7counter.lto_priv.55>
    37ee:	90 91 5e 01 	lds	r25, 0x015E	; 0x80015e <_ZL7counter.lto_priv.55+0x1>
    37f2:	01 97       	sbiw	r24, 0x01	; 1
    37f4:	90 93 5e 01 	sts	0x015E, r25	; 0x80015e <_ZL7counter.lto_priv.55+0x1>
    37f8:	80 93 5d 01 	sts	0x015D, r24	; 0x80015d <_ZL7counter.lto_priv.55>
    37fc:	89 2b       	or	r24, r25
    37fe:	11 f4       	brne	.+4      	; 0x3804 <_Z10updateGamev+0x3e>
    3800:	10 92 5f 01 	sts	0x015F, r1	; 0x80015f <_ZL7isStart>
    }
    if (!isStart) {
    3804:	10 91 5f 01 	lds	r17, 0x015F	; 0x80015f <_ZL7isStart>
    3808:	11 11       	cpse	r17, r1
    380a:	0f c0       	rjmp	.+30     	; 0x382a <_Z10updateGamev+0x64>
        cavePhase = (cavePhase + 2 - isOver) % 1024;
    380c:	80 91 b2 02 	lds	r24, 0x02B2	; 0x8002b2 <_ZL9cavePhase>
    3810:	90 91 b3 02 	lds	r25, 0x02B3	; 0x8002b3 <_ZL9cavePhase+0x1>
    3814:	02 96       	adiw	r24, 0x02	; 2
    3816:	8b 19       	sub	r24, r11
    3818:	91 09       	sbc	r25, r1
    381a:	60 e0       	ldi	r22, 0x00	; 0
    381c:	74 e0       	ldi	r23, 0x04	; 4
    381e:	0e 94 77 29 	call	0x52ee	; 0x52ee <__divmodhi4>
    3822:	90 93 b3 02 	sts	0x02B3, r25	; 0x8002b3 <_ZL9cavePhase+0x1>
    3826:	80 93 b2 02 	sts	0x02B2, r24	; 0x8002b2 <_ZL9cavePhase>
    }
    if (cavePhase == 976) {
    382a:	e0 90 b2 02 	lds	r14, 0x02B2	; 0x8002b2 <_ZL9cavePhase>
    382e:	f0 90 b3 02 	lds	r15, 0x02B3	; 0x8002b3 <_ZL9cavePhase+0x1>
    3832:	20 ed       	ldi	r18, 0xD0	; 208
    3834:	e2 16       	cp	r14, r18
    3836:	23 e0       	ldi	r18, 0x03	; 3
    3838:	f2 06       	cpc	r15, r18
    383a:	29 f4       	brne	.+10     	; 0x3846 <_Z10updateGamev+0x80>
        arduboy.playScore2(soundCrush, 2);
    383c:	62 e0       	ldi	r22, 0x02	; 2
    383e:	8e ea       	ldi	r24, 0xAE	; 174
    3840:	92 e0       	ldi	r25, 0x02	; 2
    3842:	0e 94 ab 0f 	call	0x1f56	; 0x1f56 <_ZN9MyArduboy10playScore2EPKhh.constprop.29>
    }
    caveGap = (0.5 - cos(cavePhase * PI / 512.0) / 2.0) * caveMaxGap;
    3846:	b7 01       	movw	r22, r14
    3848:	ff 0c       	add	r15, r15
    384a:	88 0b       	sbc	r24, r24
    384c:	99 0b       	sbc	r25, r25
    384e:	0e 94 f6 27 	call	0x4fec	; 0x4fec <__floatsisf>
    3852:	2b ed       	ldi	r18, 0xDB	; 219
    3854:	3f e0       	ldi	r19, 0x0F	; 15
    3856:	49 e4       	ldi	r20, 0x49	; 73
    3858:	50 e4       	ldi	r21, 0x40	; 64
    385a:	0e 94 c1 28 	call	0x5182	; 0x5182 <__mulsf3>
    385e:	20 e0       	ldi	r18, 0x00	; 0
    3860:	30 e0       	ldi	r19, 0x00	; 0
    3862:	40 e0       	ldi	r20, 0x00	; 0
    3864:	5b e3       	ldi	r21, 0x3B	; 59
    3866:	0e 94 c1 28 	call	0x5182	; 0x5182 <__mulsf3>
    386a:	0e 94 b9 27 	call	0x4f72	; 0x4f72 <cos>
    386e:	20 e0       	ldi	r18, 0x00	; 0
    3870:	30 e0       	ldi	r19, 0x00	; 0
    3872:	40 e0       	ldi	r20, 0x00	; 0
    3874:	5f e3       	ldi	r21, 0x3F	; 63
    3876:	0e 94 c1 28 	call	0x5182	; 0x5182 <__mulsf3>
    387a:	9b 01       	movw	r18, r22
    387c:	ac 01       	movw	r20, r24
    387e:	60 e0       	ldi	r22, 0x00	; 0
    3880:	70 e0       	ldi	r23, 0x00	; 0
    3882:	80 e0       	ldi	r24, 0x00	; 0
    3884:	9f e3       	ldi	r25, 0x3F	; 63
    3886:	0e 94 4c 27 	call	0x4e98	; 0x4e98 <__subsf3>
    388a:	6b 01       	movw	r12, r22
    388c:	7c 01       	movw	r14, r24
    388e:	60 91 5b 01 	lds	r22, 0x015B	; 0x80015b <_ZL10caveMaxGap>
    3892:	70 e0       	ldi	r23, 0x00	; 0
    3894:	90 e0       	ldi	r25, 0x00	; 0
    3896:	80 e0       	ldi	r24, 0x00	; 0
    3898:	0e 94 f6 27 	call	0x4fec	; 0x4fec <__floatsisf>
    389c:	9b 01       	movw	r18, r22
    389e:	ac 01       	movw	r20, r24
    38a0:	c7 01       	movw	r24, r14
    38a2:	b6 01       	movw	r22, r12
    38a4:	0e 94 c1 28 	call	0x5182	; 0x5182 <__mulsf3>
    38a8:	0e 94 be 27 	call	0x4f7c	; 0x4f7c <__fixsfsi>
    38ac:	6b 01       	movw	r12, r22
    38ae:	9b 01       	movw	r18, r22
    38b0:	70 93 5a 01 	sts	0x015A, r23	; 0x80015a <_ZL7caveGap+0x1>
    38b4:	60 93 59 01 	sts	0x0159, r22	; 0x800159 <_ZL7caveGap>
    caveBaseTop = -(caveGap + 1) / 2;
    38b8:	cb 01       	movw	r24, r22
    38ba:	80 95       	com	r24
    38bc:	90 95       	com	r25
    38be:	97 fd       	sbrc	r25, 7
    38c0:	01 96       	adiw	r24, 0x01	; 1
    38c2:	95 95       	asr	r25
    38c4:	87 95       	ror	r24
    38c6:	90 93 b1 02 	sts	0x02B1, r25	; 0x8002b1 <_ZL11caveBaseTop+0x1>
    38ca:	80 93 b0 02 	sts	0x02B0, r24	; 0x8002b0 <_ZL11caveBaseTop>
    caveBaseBottom = caveGap / 2;
    38ce:	c6 01       	movw	r24, r12
    38d0:	37 fd       	sbrc	r19, 7
    38d2:	01 96       	adiw	r24, 0x01	; 1
    38d4:	95 95       	asr	r25
    38d6:	87 95       	ror	r24
    38d8:	90 93 af 02 	sts	0x02AF, r25	; 0x8002af <_ZL14caveBaseBottom+0x1>
    38dc:	80 93 ae 02 	sts	0x02AE, r24	; 0x8002ae <_ZL14caveBaseBottom>

    /*  Key handling  */
    if (isOver) {
    38e0:	bb 20       	and	r11, r11
    38e2:	29 f1       	breq	.+74     	; 0x392e <_Z10updateGamev+0x168>
    38e4:	80 91 8b 07 	lds	r24, 0x078B	; 0x80078b <arduboy+0x41d>
    38e8:	8c 70       	andi	r24, 0x0C	; 12
    38ea:	90 e0       	ldi	r25, 0x00	; 0
    38ec:	20 91 8a 07 	lds	r18, 0x078A	; 0x80078a <arduboy+0x41c>
    38f0:	30 e0       	ldi	r19, 0x00	; 0
    38f2:	20 95       	com	r18
    38f4:	30 95       	com	r19
    38f6:	82 23       	and	r24, r18
    38f8:	93 23       	and	r25, r19
        if (arduboy.buttonDown(A_BUTTON | B_BUTTON)) {
    38fa:	89 2b       	or	r24, r25
    38fc:	11 f0       	breq	.+4      	; 0x3902 <_Z10updateGamev+0x13c>
            initGame();
    38fe:	0e 94 85 1a 	call	0x350a	; 0x350a <_Z8initGamev>
            }
        }
    }

    /*  Move and scroll  */
    if (playerMove > 0) {
    3902:	80 91 66 01 	lds	r24, 0x0166	; 0x800166 <_ZL10playerMove>
    3906:	88 23       	and	r24, r24
    3908:	09 f4       	brne	.+2      	; 0x390c <_Z10updateGamev+0x146>
    390a:	bc c0       	rjmp	.+376    	; 0x3a84 <_Z10updateGamev+0x2be>
        playerMove--;
    390c:	81 50       	subi	r24, 0x01	; 1
    390e:	80 93 66 01 	sts	0x0166, r24	; 0x800166 <_ZL10playerMove>
        playerX += playerDir * 2 - 1;
    3912:	80 91 64 01 	lds	r24, 0x0164	; 0x800164 <_ZL9playerDir>
    3916:	88 0f       	add	r24, r24
    3918:	90 91 63 01 	lds	r25, 0x0163	; 0x800163 <_ZL7playerX>
    391c:	89 0f       	add	r24, r25
    391e:	9f ef       	ldi	r25, 0xFF	; 255
    3920:	98 0f       	add	r25, r24
        if (playerX > 56) {
    3922:	99 33       	cpi	r25, 0x39	; 57
    3924:	08 f0       	brcs	.+2      	; 0x3928 <_Z10updateGamev+0x162>
    3926:	6e c1       	rjmp	.+732    	; 0x3c04 <_Z10updateGamev+0x43e>
    }

    /*  Move and scroll  */
    if (playerMove > 0) {
        playerMove--;
        playerX += playerDir * 2 - 1;
    3928:	90 93 63 01 	sts	0x0163, r25	; 0x800163 <_ZL7playerX>
    392c:	ab c0       	rjmp	.+342    	; 0x3a84 <_Z10updateGamev+0x2be>
    /*  Key handling  */
    if (isOver) {
        if (arduboy.buttonDown(A_BUTTON | B_BUTTON)) {
            initGame();
        }
    } else if (playerMove == 0) {
    392e:	80 91 66 01 	lds	r24, 0x0166	; 0x800166 <_ZL10playerMove>
    3932:	81 11       	cpse	r24, r1
    3934:	eb cf       	rjmp	.-42     	; 0x390c <_Z10updateGamev+0x146>
        int vx = 0;
        if (isStart) {
    3936:	11 11       	cpse	r17, r1
    3938:	08 c0       	rjmp	.+16     	; 0x394a <_Z10updateGamev+0x184>
}

bool MyArduboy::buttonPressed(uint8_t buttons)
{
    return currentButtonState & buttons;
    393a:	90 91 8b 07 	lds	r25, 0x078B	; 0x80078b <arduboy+0x41d>
    393e:	89 2f       	mov	r24, r25
    3940:	80 72       	andi	r24, 0x20	; 32
            vx = 1;
        } else {
            if (arduboy.buttonPressed(LEFT_BUTTON)) vx--;
            if (arduboy.buttonPressed(RIGHT_BUTTON)) vx++;
    3942:	96 ff       	sbrs	r25, 6
    3944:	95 c0       	rjmp	.+298    	; 0x3a70 <_Z10updateGamev+0x2aa>
        }
        if (vx < 0) {
            playerDir = false;
            if (playerX == 0) vx = 0;
        } else if (vx > 0) {
    3946:	81 11       	cpse	r24, r1
    3948:	9d c0       	rjmp	.+314    	; 0x3a84 <_Z10updateGamev+0x2be>
            playerDir = true;
    394a:	81 e0       	ldi	r24, 0x01	; 1
    394c:	80 93 64 01 	sts	0x0164, r24	; 0x800164 <_ZL9playerDir>
    3950:	01 e0       	ldi	r16, 0x01	; 1
    3952:	10 e0       	ldi	r17, 0x00	; 0
        }
        if (vx != 0) {
            int nextCol = mod(playerColumn + vx, 18);
    3954:	20 91 68 01 	lds	r18, 0x0168	; 0x800168 <_ZL12playerColumn>
    3958:	30 e0       	ldi	r19, 0x00	; 0
    395a:	c9 01       	movw	r24, r18
    395c:	80 0f       	add	r24, r16
    395e:	91 1f       	adc	r25, r17
    3960:	42 96       	adiw	r24, 0x12	; 18
    3962:	62 e1       	ldi	r22, 0x12	; 18
    3964:	70 e0       	ldi	r23, 0x00	; 0
    3966:	0e 94 77 29 	call	0x52ee	; 0x52ee <__divmodhi4>
            int nextGap = min(caveColumn[playerColumn].bottom - caveColumn[nextCol].top,
    396a:	dc 01       	movw	r26, r24
    396c:	aa 0f       	add	r26, r26
    396e:	bb 1f       	adc	r27, r27
    3970:	a7 57       	subi	r26, 0x77	; 119
    3972:	bd 4f       	sbci	r27, 0xFD	; 253
    3974:	11 96       	adiw	r26, 0x01	; 1
    3976:	5c 91       	ld	r21, X
    3978:	11 97       	sbiw	r26, 0x01	; 1
    397a:	22 0f       	add	r18, r18
    397c:	33 1f       	adc	r19, r19
    397e:	f9 01       	movw	r30, r18
    3980:	e7 57       	subi	r30, 0x77	; 119
    3982:	fd 4f       	sbci	r31, 0xFD	; 253
    3984:	41 81       	ldd	r20, Z+1	; 0x01
    3986:	20 81       	ld	r18, Z
    3988:	3c 91       	ld	r19, X
    398a:	e4 2f       	mov	r30, r20
    398c:	e3 1b       	sub	r30, r19
    398e:	ff 0b       	sbc	r31, r31
    3990:	bf 01       	movw	r22, r30
    3992:	e5 2f       	mov	r30, r21
    3994:	e2 1b       	sub	r30, r18
    3996:	ff 0b       	sbc	r31, r31
    3998:	9f 01       	movw	r18, r30
    399a:	6e 17       	cp	r22, r30
    399c:	7f 07       	cpc	r23, r31
    399e:	0c f4       	brge	.+2      	; 0x39a2 <_Z10updateGamev+0x1dc>
    39a0:	9b 01       	movw	r18, r22
                    caveColumn[nextCol].bottom - caveColumn[playerColumn].top);
            if (nextGap + caveGap >= 8) {
    39a2:	c2 0e       	add	r12, r18
    39a4:	d3 1e       	adc	r13, r19
    39a6:	f8 e0       	ldi	r31, 0x08	; 8
    39a8:	cf 16       	cp	r12, r31
    39aa:	d1 04       	cpc	r13, r1
    39ac:	0c f4       	brge	.+2      	; 0x39b0 <_Z10updateGamev+0x1ea>
    39ae:	6a c0       	rjmp	.+212    	; 0x3a84 <_Z10updateGamev+0x2be>
                playerJump = caveColumn[playerColumn].bottom - caveColumn[nextCol].bottom;
    39b0:	45 1b       	sub	r20, r21
    39b2:	40 93 67 01 	sts	0x0167, r20	; 0x800167 <_ZL10playerJump>
                playerColumn = nextCol;
    39b6:	80 93 68 01 	sts	0x0168, r24	; 0x800168 <_ZL12playerColumn>
                playerMove = 8;
    39ba:	88 e0       	ldi	r24, 0x08	; 8
    39bc:	80 93 66 01 	sts	0x0166, r24	; 0x800166 <_ZL10playerMove>
                if (playerX + vx > 56) {
    39c0:	80 91 63 01 	lds	r24, 0x0163	; 0x800163 <_ZL7playerX>
    39c4:	08 0f       	add	r16, r24
    39c6:	11 1d       	adc	r17, r1
    39c8:	09 33       	cpi	r16, 0x39	; 57
    39ca:	11 05       	cpc	r17, r1
    39cc:	0c f4       	brge	.+2      	; 0x39d0 <_Z10updateGamev+0x20a>
    39ce:	46 c0       	rjmp	.+140    	; 0x3a5c <_Z10updateGamev+0x296>
                    int growCol = caveOffset / 8;
    39d0:	00 91 ad 02 	lds	r16, 0x02AD	; 0x8002ad <_ZL10caveOffset>
    39d4:	06 95       	lsr	r16
    39d6:	06 95       	lsr	r16
    39d8:	06 95       	lsr	r16
    39da:	10 e0       	ldi	r17, 0x00	; 0
                    growColumn(caveColumn[growCol], isHollow(), caveColumn[mod(growCol - 1, 18)]);
    39dc:	c8 01       	movw	r24, r16
    39de:	41 96       	adiw	r24, 0x11	; 17
    39e0:	62 e1       	ldi	r22, 0x12	; 18
    39e2:	70 e0       	ldi	r23, 0x00	; 0
    39e4:	0e 94 77 29 	call	0x52ee	; 0x52ee <__divmodhi4>
    39e8:	88 0f       	add	r24, r24
    39ea:	99 1f       	adc	r25, r25
    39ec:	9c 01       	movw	r18, r24
    39ee:	27 57       	subi	r18, 0x77	; 119
    39f0:	3d 4f       	sbci	r19, 0xFD	; 253
    39f2:	79 01       	movw	r14, r18

/*---------------------------------------------------------------------------*/

static bool isHollow(void)
{
    if (caveHollowCnt-- < 0) {
    39f4:	80 91 56 01 	lds	r24, 0x0156	; 0x800156 <__data_end>
    39f8:	9f ef       	ldi	r25, 0xFF	; 255
    39fa:	98 0f       	add	r25, r24
    39fc:	90 93 56 01 	sts	0x0156, r25	; 0x800156 <__data_end>
    3a00:	87 ff       	sbrs	r24, 7
    3a02:	1a c0       	rjmp	.+52     	; 0x3a38 <_Z10updateGamev+0x272>
        caveHollowCnt = (rand() + 32768) * score >> 22;
    3a04:	0e 94 db 25 	call	0x4bb6	; 0x4bb6 <rand>
    3a08:	9c 01       	movw	r18, r24
    3a0a:	99 0f       	add	r25, r25
    3a0c:	44 0b       	sbc	r20, r20
    3a0e:	55 0b       	sbc	r21, r21
    3a10:	30 58       	subi	r19, 0x80	; 128
    3a12:	4f 4f       	sbci	r20, 0xFF	; 255
    3a14:	5f 4f       	sbci	r21, 0xFF	; 255
    3a16:	a0 91 60 01 	lds	r26, 0x0160	; 0x800160 <_ZL5score>
    3a1a:	b0 91 61 01 	lds	r27, 0x0161	; 0x800161 <_ZL5score+0x1>
    3a1e:	0e 94 08 27 	call	0x4e10	; 0x4e10 <__muluhisi3>
    3a22:	26 e1       	ldi	r18, 0x16	; 22
    3a24:	95 95       	asr	r25
    3a26:	87 95       	ror	r24
    3a28:	77 95       	ror	r23
    3a2a:	67 95       	ror	r22
    3a2c:	2a 95       	dec	r18
    3a2e:	d1 f7       	brne	.-12     	; 0x3a24 <_Z10updateGamev+0x25e>
    3a30:	60 93 56 01 	sts	0x0156, r22	; 0x800156 <__data_end>
    3a34:	bb 24       	eor	r11, r11
    3a36:	b3 94       	inc	r11
                playerJump = caveColumn[playerColumn].bottom - caveColumn[nextCol].bottom;
                playerColumn = nextCol;
                playerMove = 8;
                if (playerX + vx > 56) {
                    int growCol = caveOffset / 8;
                    growColumn(caveColumn[growCol], isHollow(), caveColumn[mod(growCol - 1, 18)]);
    3a38:	c8 01       	movw	r24, r16
    3a3a:	88 0f       	add	r24, r24
    3a3c:	99 1f       	adc	r25, r25
    3a3e:	a7 01       	movw	r20, r14
    3a40:	6b 2d       	mov	r22, r11
    3a42:	87 57       	subi	r24, 0x77	; 119
    3a44:	9d 4f       	sbci	r25, 0xFD	; 253
    3a46:	0e 94 15 1a 	call	0x342a	; 0x342a <_ZL10growColumnR6COLUMNbS0_>
                    score++;
    3a4a:	80 91 60 01 	lds	r24, 0x0160	; 0x800160 <_ZL5score>
    3a4e:	90 91 61 01 	lds	r25, 0x0161	; 0x800161 <_ZL5score+0x1>
    3a52:	01 96       	adiw	r24, 0x01	; 1
    3a54:	90 93 61 01 	sts	0x0161, r25	; 0x800161 <_ZL5score+0x1>
    3a58:	80 93 60 01 	sts	0x0160, r24	; 0x800160 <_ZL5score>
                }
                if (!isStart) {
    3a5c:	80 91 5f 01 	lds	r24, 0x015F	; 0x80015f <_ZL7isStart>
    3a60:	81 11       	cpse	r24, r1
    3a62:	4f cf       	rjmp	.-354    	; 0x3902 <_Z10updateGamev+0x13c>
                    arduboy.playScore2(soundMove, 3);
    3a64:	63 e0       	ldi	r22, 0x03	; 3
    3a66:	80 ea       	ldi	r24, 0xA0	; 160
    3a68:	92 e0       	ldi	r25, 0x02	; 2
    3a6a:	0e 94 ab 0f 	call	0x1f56	; 0x1f56 <_ZN9MyArduboy10playScore2EPKhh.constprop.29>
    3a6e:	49 cf       	rjmp	.-366    	; 0x3902 <_Z10updateGamev+0x13c>
            vx = 1;
        } else {
            if (arduboy.buttonPressed(LEFT_BUTTON)) vx--;
            if (arduboy.buttonPressed(RIGHT_BUTTON)) vx++;
        }
        if (vx < 0) {
    3a70:	88 23       	and	r24, r24
    3a72:	41 f0       	breq	.+16     	; 0x3a84 <_Z10updateGamev+0x2be>
            playerDir = false;
    3a74:	10 92 64 01 	sts	0x0164, r1	; 0x800164 <_ZL9playerDir>
            if (playerX == 0) vx = 0;
    3a78:	80 91 63 01 	lds	r24, 0x0163	; 0x800163 <_ZL7playerX>
    3a7c:	0f ef       	ldi	r16, 0xFF	; 255
    3a7e:	1f ef       	ldi	r17, 0xFF	; 255
    3a80:	81 11       	cpse	r24, r1
    3a82:	68 cf       	rjmp	.-304    	; 0x3954 <_Z10updateGamev+0x18e>
        }
    }

    /*  Debris  */
    for (int i = 0, dy; i < 144; i++) {
        if ((i & 7) == 0) dy = caveColumn[i / 8].bottom + caveBaseBottom;
    3a84:	20 91 ae 02 	lds	r18, 0x02AE	; 0x8002ae <_ZL14caveBaseBottom>
    3a88:	30 91 af 02 	lds	r19, 0x02AF	; 0x8002af <_ZL14caveBaseBottom+0x1>
    3a8c:	e9 e6       	ldi	r30, 0x69	; 105
    3a8e:	f1 e0       	ldi	r31, 0x01	; 1
    3a90:	10 e0       	ldi	r17, 0x00	; 0
    3a92:	00 e0       	ldi	r16, 0x00	; 0
    3a94:	c8 01       	movw	r24, r16
    3a96:	87 70       	andi	r24, 0x07	; 7
    3a98:	99 27       	eor	r25, r25
    3a9a:	89 2b       	or	r24, r25
    3a9c:	79 f4       	brne	.+30     	; 0x3abc <_Z10updateGamev+0x2f6>
    3a9e:	d8 01       	movw	r26, r16
    3aa0:	c3 e0       	ldi	r28, 0x03	; 3
    3aa2:	b5 95       	asr	r27
    3aa4:	a7 95       	ror	r26
    3aa6:	ca 95       	dec	r28
    3aa8:	e1 f7       	brne	.-8      	; 0x3aa2 <_Z10updateGamev+0x2dc>
    3aaa:	aa 0f       	add	r26, r26
    3aac:	bb 1f       	adc	r27, r27
    3aae:	a7 57       	subi	r26, 0x77	; 119
    3ab0:	bd 4f       	sbci	r27, 0xFD	; 253
    3ab2:	11 96       	adiw	r26, 0x01	; 1
    3ab4:	cc 91       	ld	r28, X
    3ab6:	c2 0f       	add	r28, r18
    3ab8:	d3 2f       	mov	r29, r19
    3aba:	d1 1d       	adc	r29, r1
        if (debris[i].t > 0) {
    3abc:	80 81       	ld	r24, Z
    3abe:	88 23       	and	r24, r24
    3ac0:	99 f0       	breq	.+38     	; 0x3ae8 <_Z10updateGamev+0x322>
            debris[i].t++;
    3ac2:	8f 5f       	subi	r24, 0xFF	; 255
    3ac4:	80 83       	st	Z, r24
    newColumn.bottom = bottom; 
}

static int calcDotY(int i)
{
    return debris[i].base + (debris[i].t * debris[i].t >> 6);
    3ac6:	88 9f       	mul	r24, r24
    3ac8:	c0 01       	movw	r24, r0
    3aca:	11 24       	eor	r1, r1
    3acc:	a6 e0       	ldi	r26, 0x06	; 6
    3ace:	95 95       	asr	r25
    3ad0:	87 95       	ror	r24
    3ad2:	aa 95       	dec	r26
    3ad4:	e1 f7       	brne	.-8      	; 0x3ace <_Z10updateGamev+0x308>
    3ad6:	41 81       	ldd	r20, Z+1	; 0x01
    3ad8:	84 0f       	add	r24, r20
    3ada:	91 1d       	adc	r25, r1
    3adc:	47 fd       	sbrc	r20, 7
    3ade:	9a 95       	dec	r25
    /*  Debris  */
    for (int i = 0, dy; i < 144; i++) {
        if ((i & 7) == 0) dy = caveColumn[i / 8].bottom + caveBaseBottom;
        if (debris[i].t > 0) {
            debris[i].t++;
            if (calcDotY(i) > dy) debris[i].t = 0;
    3ae0:	c8 17       	cp	r28, r24
    3ae2:	d9 07       	cpc	r29, r25
    3ae4:	0c f4       	brge	.+2      	; 0x3ae8 <_Z10updateGamev+0x322>
    3ae6:	10 82       	st	Z, r1
            caveOffset = (caveOffset + 1) % 144;
        }
    }

    /*  Debris  */
    for (int i = 0, dy; i < 144; i++) {
    3ae8:	0f 5f       	subi	r16, 0xFF	; 255
    3aea:	1f 4f       	sbci	r17, 0xFF	; 255
    3aec:	32 96       	adiw	r30, 0x02	; 2
    3aee:	00 39       	cpi	r16, 0x90	; 144
    3af0:	11 05       	cpc	r17, r1
    3af2:	81 f6       	brne	.-96     	; 0x3a94 <_Z10updateGamev+0x2ce>
        if (debris[i].t > 0) {
            debris[i].t++;
            if (calcDotY(i) > dy) debris[i].t = 0;
        }
    }
    if (!isStart && rnd((cavePhase >> 6) + 1) == 0) {
    3af4:	80 91 5f 01 	lds	r24, 0x015F	; 0x80015f <_ZL7isStart>
    3af8:	81 11       	cpse	r24, r1
    3afa:	55 c1       	rjmp	.+682    	; 0x3da6 <_Z10updateGamev+0x5e0>
    3afc:	0e 94 db 25 	call	0x4bb6	; 0x4bb6 <rand>
    3b00:	60 91 b2 02 	lds	r22, 0x02B2	; 0x8002b2 <_ZL9cavePhase>
    3b04:	70 91 b3 02 	lds	r23, 0x02B3	; 0x8002b3 <_ZL9cavePhase+0x1>
    3b08:	e6 e0       	ldi	r30, 0x06	; 6
    3b0a:	75 95       	asr	r23
    3b0c:	67 95       	ror	r22
    3b0e:	ea 95       	dec	r30
    3b10:	e1 f7       	brne	.-8      	; 0x3b0a <_Z10updateGamev+0x344>
    3b12:	6f 5f       	subi	r22, 0xFF	; 255
    3b14:	7f 4f       	sbci	r23, 0xFF	; 255
    3b16:	0e 94 77 29 	call	0x52ee	; 0x52ee <__divmodhi4>
    3b1a:	89 2b       	or	r24, r25
    3b1c:	09 f5       	brne	.+66     	; 0x3b60 <_Z10updateGamev+0x39a>
        int pos = rnd(144);
    3b1e:	0e 94 db 25 	call	0x4bb6	; 0x4bb6 <rand>
    3b22:	b8 01       	movw	r22, r16
    3b24:	0e 94 77 29 	call	0x52ee	; 0x52ee <__divmodhi4>
        if (debris[pos].t == 0) {
    3b28:	dc 01       	movw	r26, r24
    3b2a:	aa 0f       	add	r26, r26
    3b2c:	bb 1f       	adc	r27, r27
    3b2e:	a7 59       	subi	r26, 0x97	; 151
    3b30:	be 4f       	sbci	r27, 0xFE	; 254
    3b32:	2c 91       	ld	r18, X
    3b34:	21 11       	cpse	r18, r1
    3b36:	14 c0       	rjmp	.+40     	; 0x3b60 <_Z10updateGamev+0x39a>
            debris[pos].t = 1;
    3b38:	21 e0       	ldi	r18, 0x01	; 1
    3b3a:	2c 93       	st	X, r18
            debris[pos].base = caveColumn[pos / 8].top + caveBaseTop;
    3b3c:	97 fd       	sbrc	r25, 7
    3b3e:	07 96       	adiw	r24, 0x07	; 7
    3b40:	fc 01       	movw	r30, r24
    3b42:	33 e0       	ldi	r19, 0x03	; 3
    3b44:	f5 95       	asr	r31
    3b46:	e7 95       	ror	r30
    3b48:	3a 95       	dec	r19
    3b4a:	e1 f7       	brne	.-8      	; 0x3b44 <_Z10updateGamev+0x37e>
    3b4c:	ee 0f       	add	r30, r30
    3b4e:	ff 1f       	adc	r31, r31
    3b50:	e7 57       	subi	r30, 0x77	; 119
    3b52:	fd 4f       	sbci	r31, 0xFD	; 253
    3b54:	80 81       	ld	r24, Z
    3b56:	90 91 b0 02 	lds	r25, 0x02B0	; 0x8002b0 <_ZL11caveBaseTop>
    3b5a:	89 0f       	add	r24, r25
    3b5c:	11 96       	adiw	r26, 0x01	; 1
    3b5e:	8c 93       	st	X, r24
        }
    }

    /*  Judge game over  */
    if (!isStart && cavePhase == 0) {
    3b60:	80 91 5f 01 	lds	r24, 0x015F	; 0x80015f <_ZL7isStart>
    3b64:	81 11       	cpse	r24, r1
    3b66:	1f c1       	rjmp	.+574    	; 0x3da6 <_Z10updateGamev+0x5e0>
    3b68:	80 91 b2 02 	lds	r24, 0x02B2	; 0x8002b2 <_ZL9cavePhase>
    3b6c:	90 91 b3 02 	lds	r25, 0x02B3	; 0x8002b3 <_ZL9cavePhase+0x1>
    3b70:	89 2b       	or	r24, r25
    3b72:	09 f0       	breq	.+2      	; 0x3b76 <_Z10updateGamev+0x3b0>
    3b74:	18 c1       	rjmp	.+560    	; 0x3da6 <_Z10updateGamev+0x5e0>
        caveLoopCnt++;
    3b76:	80 91 57 01 	lds	r24, 0x0157	; 0x800157 <_ZL11caveLoopCnt>
    3b7a:	90 91 58 01 	lds	r25, 0x0158	; 0x800158 <_ZL11caveLoopCnt+0x1>
    3b7e:	01 96       	adiw	r24, 0x01	; 1
    3b80:	90 93 58 01 	sts	0x0158, r25	; 0x800158 <_ZL11caveLoopCnt+0x1>
    3b84:	80 93 57 01 	sts	0x0157, r24	; 0x800157 <_ZL11caveLoopCnt>
        if (caveMaxGap < 255) caveMaxGap++;
    3b88:	20 91 5b 01 	lds	r18, 0x015B	; 0x80015b <_ZL10caveMaxGap>
    3b8c:	2f 3f       	cpi	r18, 0xFF	; 255
    3b8e:	19 f0       	breq	.+6      	; 0x3b96 <_Z10updateGamev+0x3d0>
    3b90:	2f 5f       	subi	r18, 0xFF	; 255
    3b92:	20 93 5b 01 	sts	0x015B, r18	; 0x80015b <_ZL10caveMaxGap>
        if (caveColumn[playerColumn].bottom - caveColumn[playerColumn].top < 4) {
    3b96:	e0 91 68 01 	lds	r30, 0x0168	; 0x800168 <_ZL12playerColumn>
    3b9a:	f0 e0       	ldi	r31, 0x00	; 0
    3b9c:	ee 0f       	add	r30, r30
    3b9e:	ff 1f       	adc	r31, r31
    3ba0:	e7 57       	subi	r30, 0x77	; 119
    3ba2:	fd 4f       	sbci	r31, 0xFD	; 253
    3ba4:	21 81       	ldd	r18, Z+1	; 0x01
    3ba6:	30 81       	ld	r19, Z
    3ba8:	23 1b       	sub	r18, r19
    3baa:	33 0b       	sbc	r19, r19
    3bac:	24 30       	cpi	r18, 0x04	; 4
    3bae:	31 05       	cpc	r19, r1
    3bb0:	0c f0       	brlt	.+2      	; 0x3bb4 <_Z10updateGamev+0x3ee>
    3bb2:	f9 c0       	rjmp	.+498    	; 0x3da6 <_Z10updateGamev+0x5e0>
            isOver = true;
    3bb4:	21 e0       	ldi	r18, 0x01	; 1
    3bb6:	20 93 65 01 	sts	0x0165, r18	; 0x800165 <_ZL6isOver>
            isHiscore = (setLastScore(score, caveLoopCnt * 512) == 0);
    3bba:	98 2f       	mov	r25, r24
    3bbc:	88 27       	eor	r24, r24
    3bbe:	99 0f       	add	r25, r25
    3bc0:	09 2e       	mov	r0, r25
    3bc2:	00 0c       	add	r0, r0
    3bc4:	aa 0b       	sbc	r26, r26
    3bc6:	bb 0b       	sbc	r27, r27
    3bc8:	40 91 60 01 	lds	r20, 0x0160	; 0x800160 <_ZL5score>
    3bcc:	50 91 61 01 	lds	r21, 0x0161	; 0x800161 <_ZL5score+0x1>
    }
}

uint8_t setLastScore(int score, uint32_t frames)
{
    lastScore = score;
    3bd0:	50 93 d7 02 	sts	0x02D7, r21	; 0x8002d7 <_ZL9lastScore+0x1>
    3bd4:	40 93 d6 02 	sts	0x02D6, r20	; 0x8002d6 <_ZL9lastScore>

    /*  Updarte best 10  */
    int r = 10;
    3bd8:	2a e0       	ldi	r18, 0x0A	; 10
    3bda:	30 e0       	ldi	r19, 0x00	; 0
    3bdc:	e9 01       	movw	r28, r18
    uint16_t h;
    while (r > 0 && (h = hiScore[r - 1]) < score) {
    3bde:	9e 01       	movw	r18, r28
    3be0:	21 50       	subi	r18, 0x01	; 1
    3be2:	31 09       	sbc	r19, r1
    3be4:	f9 01       	movw	r30, r18
    3be6:	ee 0f       	add	r30, r30
    3be8:	ff 1f       	adc	r31, r31
    3bea:	e0 54       	subi	r30, 0x40	; 64
    3bec:	fd 4f       	sbci	r31, 0xFD	; 253
    3bee:	60 81       	ld	r22, Z
    3bf0:	71 81       	ldd	r23, Z+1	; 0x01
    3bf2:	64 17       	cp	r22, r20
    3bf4:	75 07       	cpc	r23, r21
    3bf6:	a0 f4       	brcc	.+40     	; 0x3c20 <_Z10updateGamev+0x45a>
        if (--r < 9) hiScore[r + 1] = h;
    3bf8:	29 30       	cpi	r18, 0x09	; 9
    3bfa:	31 05       	cpc	r19, r1
    3bfc:	b1 f4       	brne	.+44     	; 0x3c2a <_Z10updateGamev+0x464>
    3bfe:	c9 e0       	ldi	r28, 0x09	; 9
    3c00:	d0 e0       	ldi	r29, 0x00	; 0
    3c02:	ed cf       	rjmp	.-38     	; 0x3bde <_Z10updateGamev+0x418>
    /*  Move and scroll  */
    if (playerMove > 0) {
        playerMove--;
        playerX += playerDir * 2 - 1;
        if (playerX > 56) {
            playerX--;
    3c04:	82 50       	subi	r24, 0x02	; 2
    3c06:	80 93 63 01 	sts	0x0163, r24	; 0x800163 <_ZL7playerX>
            caveOffset = (caveOffset + 1) % 144;
    3c0a:	80 91 ad 02 	lds	r24, 0x02AD	; 0x8002ad <_ZL10caveOffset>
    3c0e:	90 e0       	ldi	r25, 0x00	; 0
    3c10:	01 96       	adiw	r24, 0x01	; 1
    3c12:	60 e9       	ldi	r22, 0x90	; 144
    3c14:	70 e0       	ldi	r23, 0x00	; 0
    3c16:	0e 94 77 29 	call	0x52ee	; 0x52ee <__divmodhi4>
    3c1a:	80 93 ad 02 	sts	0x02AD, r24	; 0x8002ad <_ZL10caveOffset>
    3c1e:	32 cf       	rjmp	.-412    	; 0x3a84 <_Z10updateGamev+0x2be>
    }
    if (r < 10) hiScore[r] = score;
    3c20:	ca 30       	cpi	r28, 0x0A	; 10
    3c22:	d1 05       	cpc	r29, r1
    3c24:	99 f0       	breq	.+38     	; 0x3c4c <_Z10updateGamev+0x486>
    3c26:	9e 01       	movw	r18, r28
    3c28:	09 c0       	rjmp	.+18     	; 0x3c3c <_Z10updateGamev+0x476>

    /*  Updarte best 10  */
    int r = 10;
    uint16_t h;
    while (r > 0 && (h = hiScore[r - 1]) < score) {
        if (--r < 9) hiScore[r + 1] = h;
    3c2a:	cc 0f       	add	r28, r28
    3c2c:	dd 1f       	adc	r29, r29
    3c2e:	c0 54       	subi	r28, 0x40	; 64
    3c30:	dd 4f       	sbci	r29, 0xFD	; 253
    3c32:	79 83       	std	Y+1, r23	; 0x01
    3c34:	68 83       	st	Y, r22
    lastScore = score;

    /*  Updarte best 10  */
    int r = 10;
    uint16_t h;
    while (r > 0 && (h = hiScore[r - 1]) < score) {
    3c36:	21 15       	cp	r18, r1
    3c38:	31 05       	cpc	r19, r1
    3c3a:	81 f6       	brne	.-96     	; 0x3bdc <_Z10updateGamev+0x416>
        if (--r < 9) hiScore[r + 1] = h;
    }
    if (r < 10) hiScore[r] = score;
    3c3c:	f9 01       	movw	r30, r18
    3c3e:	ee 0f       	add	r30, r30
    3c40:	ff 1f       	adc	r31, r31
    3c42:	e0 54       	subi	r30, 0x40	; 64
    3c44:	fd 4f       	sbci	r31, 0xFD	; 253
    3c46:	51 83       	std	Z+1, r21	; 0x01
    3c48:	40 83       	st	Z, r20
    3c4a:	e9 01       	movw	r28, r18
    playCount++;
    3c4c:	20 91 be 02 	lds	r18, 0x02BE	; 0x8002be <_ZL9playCount>
    3c50:	30 91 bf 02 	lds	r19, 0x02BF	; 0x8002bf <_ZL9playCount+0x1>
    3c54:	2f 5f       	subi	r18, 0xFF	; 255
    3c56:	3f 4f       	sbci	r19, 0xFF	; 255
    3c58:	30 93 bf 02 	sts	0x02BF, r19	; 0x8002bf <_ZL9playCount+0x1>
    3c5c:	20 93 be 02 	sts	0x02BE, r18	; 0x8002be <_ZL9playCount>
    playFrames += frames;
    3c60:	40 91 ba 02 	lds	r20, 0x02BA	; 0x8002ba <_ZL10playFrames>
    3c64:	50 91 bb 02 	lds	r21, 0x02BB	; 0x8002bb <_ZL10playFrames+0x1>
    3c68:	60 91 bc 02 	lds	r22, 0x02BC	; 0x8002bc <_ZL10playFrames+0x2>
    3c6c:	70 91 bd 02 	lds	r23, 0x02BD	; 0x8002bd <_ZL10playFrames+0x3>
    3c70:	84 0f       	add	r24, r20
    3c72:	95 1f       	adc	r25, r21
    3c74:	a6 1f       	adc	r26, r22
    3c76:	b7 1f       	adc	r27, r23
    3c78:	80 93 ba 02 	sts	0x02BA, r24	; 0x8002ba <_ZL10playFrames>
    3c7c:	90 93 bb 02 	sts	0x02BB, r25	; 0x8002bb <_ZL10playFrames+0x1>
    3c80:	a0 93 bc 02 	sts	0x02BC, r26	; 0x8002bc <_ZL10playFrames+0x2>
    3c84:	b0 93 bd 02 	sts	0x02BD, r27	; 0x8002bd <_ZL10playFrames+0x3>

    /*  Store record to EEPROM  */
    if (recordState == RECORD_INITIAL) {
    3c88:	80 91 b5 02 	lds	r24, 0x02B5	; 0x8002b5 <_ZL11recordState>
    3c8c:	81 30       	cpi	r24, 0x01	; 1
    3c8e:	61 f4       	brne	.+24     	; 0x3ca8 <_Z10updateGamev+0x4e2>
/*                             EEPROM Functions                              */
/*---------------------------------------------------------------------------*/

void eepSeek(int addr)
{
    eepAddr = max(addr, EEPROM_STORAGE_SPACE_START);
    3c90:	80 e0       	ldi	r24, 0x00	; 0
    3c92:	93 e0       	ldi	r25, 0x03	; 3
    3c94:	90 93 db 02 	sts	0x02DB, r25	; 0x8002db <_ZL7eepAddr+0x1>
    3c98:	80 93 da 02 	sts	0x02DA, r24	; 0x8002da <_ZL7eepAddr>
    playFrames += frames;

    /*  Store record to EEPROM  */
    if (recordState == RECORD_INITIAL) {
        eepSeek(EEPROM_ADDR_BASE);
        eepWrite32(EEPROM_SIGNATURE);
    3c9c:	6f e4       	ldi	r22, 0x4F	; 79
    3c9e:	72 e4       	ldi	r23, 0x42	; 66
    3ca0:	8e e4       	ldi	r24, 0x4E	; 78
    3ca2:	91 e0       	ldi	r25, 0x01	; 1
    3ca4:	0e 94 d6 13 	call	0x27ac	; 0x27ac <_ZL10eepWrite32m>
    }
    eepSeek(EEPROM_ADDR_BASE + 4 + r * 2);
    3ca8:	ce 01       	movw	r24, r28
    3caa:	8e 57       	subi	r24, 0x7E	; 126
    3cac:	9e 4f       	sbci	r25, 0xFE	; 254
    3cae:	88 0f       	add	r24, r24
    3cb0:	99 1f       	adc	r25, r25
/*                             EEPROM Functions                              */
/*---------------------------------------------------------------------------*/

void eepSeek(int addr)
{
    eepAddr = max(addr, EEPROM_STORAGE_SPACE_START);
    3cb2:	90 93 db 02 	sts	0x02DB, r25	; 0x8002db <_ZL7eepAddr+0x1>
    3cb6:	80 93 da 02 	sts	0x02DA, r24	; 0x8002da <_ZL7eepAddr>
    3cba:	8e 01       	movw	r16, r28
    3cbc:	00 0f       	add	r16, r16
    3cbe:	11 1f       	adc	r17, r17
    3cc0:	00 54       	subi	r16, 0x40	; 64
    3cc2:	1d 4f       	sbci	r17, 0xFD	; 253
    3cc4:	40 ec       	ldi	r20, 0xC0	; 192
    3cc6:	e4 2e       	mov	r14, r20
    3cc8:	42 e0       	ldi	r20, 0x02	; 2
    3cca:	f4 2e       	mov	r15, r20
    3ccc:	54 ed       	ldi	r21, 0xD4	; 212
    3cce:	c5 2e       	mov	r12, r21
    3cd0:	52 e0       	ldi	r21, 0x02	; 2
    3cd2:	d5 2e       	mov	r13, r21
    if (recordState == RECORD_INITIAL) {
        eepSeek(EEPROM_ADDR_BASE);
        eepWrite32(EEPROM_SIGNATURE);
    }
    eepSeek(EEPROM_ADDR_BASE + 4 + r * 2);
    for (int i = r; i < 10; i++) {
    3cd4:	c0 16       	cp	r12, r16
    3cd6:	d1 06       	cpc	r13, r17
    3cd8:	39 f0       	breq	.+14     	; 0x3ce8 <_Z10updateGamev+0x522>
        eepWrite16(hiScore[i]);
    3cda:	f8 01       	movw	r30, r16
    3cdc:	81 91       	ld	r24, Z+
    3cde:	91 91       	ld	r25, Z+
    3ce0:	8f 01       	movw	r16, r30
    3ce2:	0e 94 ea 13 	call	0x27d4	; 0x27d4 <_ZL10eepWrite16j>
    3ce6:	f6 cf       	rjmp	.-20     	; 0x3cd4 <_Z10updateGamev+0x50e>
    }
    eepWrite16(playCount);
    3ce8:	80 91 be 02 	lds	r24, 0x02BE	; 0x8002be <_ZL9playCount>
    3cec:	90 91 bf 02 	lds	r25, 0x02BF	; 0x8002bf <_ZL9playCount+0x1>
    3cf0:	0e 94 ea 13 	call	0x27d4	; 0x27d4 <_ZL10eepWrite16j>
    eepWrite32(playFrames);
    3cf4:	60 91 ba 02 	lds	r22, 0x02BA	; 0x8002ba <_ZL10playFrames>
    3cf8:	70 91 bb 02 	lds	r23, 0x02BB	; 0x8002bb <_ZL10playFrames+0x1>
    3cfc:	80 91 bc 02 	lds	r24, 0x02BC	; 0x8002bc <_ZL10playFrames+0x2>
    3d00:	90 91 bd 02 	lds	r25, 0x02BD	; 0x8002bd <_ZL10playFrames+0x3>
    3d04:	0e 94 d6 13 	call	0x27ac	; 0x27ac <_ZL10eepWrite32m>
    3d08:	23 e0       	ldi	r18, 0x03	; 3
    3d0a:	30 e0       	ldi	r19, 0x00	; 0

    uint16_t checkSum = (EEPROM_SIGNATURE & 0xFFFF) + (EEPROM_SIGNATURE >> 16) * 2;
    3d0c:	4b ee       	ldi	r20, 0xEB	; 235
    3d0e:	54 e4       	ldi	r21, 0x44	; 68
    for (int i = 0; i < 10; i++) {
        checkSum += hiScore[i] * (i + 3);
    3d10:	f7 01       	movw	r30, r14
    3d12:	61 91       	ld	r22, Z+
    3d14:	71 91       	ld	r23, Z+
    3d16:	7f 01       	movw	r14, r30
    3d18:	62 9f       	mul	r22, r18
    3d1a:	c0 01       	movw	r24, r0
    3d1c:	63 9f       	mul	r22, r19
    3d1e:	90 0d       	add	r25, r0
    3d20:	72 9f       	mul	r23, r18
    3d22:	90 0d       	add	r25, r0
    3d24:	11 24       	eor	r1, r1
    3d26:	48 0f       	add	r20, r24
    3d28:	59 1f       	adc	r21, r25
    3d2a:	2f 5f       	subi	r18, 0xFF	; 255
    3d2c:	3f 4f       	sbci	r19, 0xFF	; 255
    }
    eepWrite16(playCount);
    eepWrite32(playFrames);

    uint16_t checkSum = (EEPROM_SIGNATURE & 0xFFFF) + (EEPROM_SIGNATURE >> 16) * 2;
    for (int i = 0; i < 10; i++) {
    3d2e:	2d 30       	cpi	r18, 0x0D	; 13
    3d30:	31 05       	cpc	r19, r1
    3d32:	71 f7       	brne	.-36     	; 0x3d10 <_Z10updateGamev+0x54a>
        checkSum += hiScore[i] * (i + 3);
    }
    checkSum += playCount * 13;
    checkSum += (playFrames & 0xFFFF) * 14 + (playFrames >> 16) * 15;
    3d34:	c0 90 ba 02 	lds	r12, 0x02BA	; 0x8002ba <_ZL10playFrames>
    3d38:	d0 90 bb 02 	lds	r13, 0x02BB	; 0x8002bb <_ZL10playFrames+0x1>
    3d3c:	e0 90 bc 02 	lds	r14, 0x02BC	; 0x8002bc <_ZL10playFrames+0x2>
    3d40:	f0 90 bd 02 	lds	r15, 0x02BD	; 0x8002bd <_ZL10playFrames+0x3>

    uint16_t checkSum = (EEPROM_SIGNATURE & 0xFFFF) + (EEPROM_SIGNATURE >> 16) * 2;
    for (int i = 0; i < 10; i++) {
        checkSum += hiScore[i] * (i + 3);
    }
    checkSum += playCount * 13;
    3d44:	80 91 be 02 	lds	r24, 0x02BE	; 0x8002be <_ZL9playCount>
    3d48:	90 91 bf 02 	lds	r25, 0x02BF	; 0x8002bf <_ZL9playCount+0x1>
    3d4c:	6d e0       	ldi	r22, 0x0D	; 13
    3d4e:	68 9f       	mul	r22, r24
    3d50:	90 01       	movw	r18, r0
    3d52:	69 9f       	mul	r22, r25
    3d54:	30 0d       	add	r19, r0
    3d56:	11 24       	eor	r1, r1
    checkSum += (playFrames & 0xFFFF) * 14 + (playFrames >> 16) * 15;
    3d58:	6e e0       	ldi	r22, 0x0E	; 14
    3d5a:	6c 9d       	mul	r22, r12
    3d5c:	c0 01       	movw	r24, r0
    3d5e:	6d 9d       	mul	r22, r13
    3d60:	90 0d       	add	r25, r0
    3d62:	11 24       	eor	r1, r1
    3d64:	28 0f       	add	r18, r24
    3d66:	39 1f       	adc	r19, r25
    3d68:	6f e0       	ldi	r22, 0x0F	; 15
    3d6a:	6e 9d       	mul	r22, r14
    3d6c:	c0 01       	movw	r24, r0
    3d6e:	6f 9d       	mul	r22, r15
    3d70:	90 0d       	add	r25, r0
    3d72:	11 24       	eor	r1, r1
    3d74:	82 0f       	add	r24, r18
    3d76:	93 1f       	adc	r25, r19
    eepWrite16(checkSum);
    3d78:	84 0f       	add	r24, r20
    3d7a:	95 1f       	adc	r25, r21
    3d7c:	0e 94 ea 13 	call	0x27d4	; 0x27d4 <_ZL10eepWrite16j>

    recordState = RECORD_STORED;
    3d80:	82 e0       	ldi	r24, 0x02	; 2
    3d82:	80 93 b5 02 	sts	0x02B5, r24	; 0x8002b5 <_ZL11recordState>
    if (!isStart && cavePhase == 0) {
        caveLoopCnt++;
        if (caveMaxGap < 255) caveMaxGap++;
        if (caveColumn[playerColumn].bottom - caveColumn[playerColumn].top < 4) {
            isOver = true;
            isHiscore = (setLastScore(score, caveLoopCnt * 512) == 0);
    3d86:	81 e0       	ldi	r24, 0x01	; 1
    3d88:	c1 11       	cpse	r28, r1
    3d8a:	80 e0       	ldi	r24, 0x00	; 0
    3d8c:	80 93 5c 01 	sts	0x015C, r24	; 0x80015c <_ZL9isHiscore>
            counter = 480; // 8 secs
    3d90:	80 ee       	ldi	r24, 0xE0	; 224
    3d92:	91 e0       	ldi	r25, 0x01	; 1
    3d94:	90 93 5e 01 	sts	0x015E, r25	; 0x80015e <_ZL7counter.lto_priv.55+0x1>
    3d98:	80 93 5d 01 	sts	0x015D, r24	; 0x80015d <_ZL7counter.lto_priv.55>
            arduboy.playScore2(soundGameOver, 1);
    3d9c:	61 e0       	ldi	r22, 0x01	; 1
    3d9e:	89 e6       	ldi	r24, 0x69	; 105
    3da0:	92 e0       	ldi	r25, 0x02	; 2
    3da2:	0e 94 ab 0f 	call	0x1f56	; 0x1f56 <_ZN9MyArduboy10playScore2EPKhh.constprop.29>
    3da6:	80 91 65 01 	lds	r24, 0x0165	; 0x800165 <_ZL6isOver>
    3daa:	90 91 62 01 	lds	r25, 0x0162	; 0x800162 <_ZL8scoreTop>
        }
    }

    /*  Score displaying  */
    if (playerX < 48 || isStart || isOver) {
    3dae:	20 91 63 01 	lds	r18, 0x0163	; 0x800163 <_ZL7playerX>
    3db2:	20 33       	cpi	r18, 0x30	; 48
    3db4:	a8 f0       	brcs	.+42     	; 0x3de0 <_Z10updateGamev+0x61a>
    3db6:	20 91 5f 01 	lds	r18, 0x015F	; 0x80015f <_ZL7isStart>
    3dba:	21 11       	cpse	r18, r1
    3dbc:	11 c0       	rjmp	.+34     	; 0x3de0 <_Z10updateGamev+0x61a>
    3dbe:	81 11       	cpse	r24, r1
    3dc0:	21 c0       	rjmp	.+66     	; 0x3e04 <_Z10updateGamev+0x63e>
        if (scoreTop > 0) scoreTop--;
    } else {
        if (scoreTop < 32) scoreTop++;
    3dc2:	90 32       	cpi	r25, 0x20	; 32
    3dc4:	18 f4       	brcc	.+6      	; 0x3dcc <_Z10updateGamev+0x606>
    3dc6:	9f 5f       	subi	r25, 0xFF	; 255
    3dc8:	90 93 62 01 	sts	0x0162, r25	; 0x800162 <_ZL8scoreTop>
    }

    return (isOver && counter == 0);
}
    3dcc:	df 91       	pop	r29
    3dce:	cf 91       	pop	r28
    3dd0:	1f 91       	pop	r17
    3dd2:	0f 91       	pop	r16
    3dd4:	ff 90       	pop	r15
    3dd6:	ef 90       	pop	r14
    3dd8:	df 90       	pop	r13
    3dda:	cf 90       	pop	r12
    3ddc:	bf 90       	pop	r11
    3dde:	08 95       	ret
        }
    }

    /*  Score displaying  */
    if (playerX < 48 || isStart || isOver) {
        if (scoreTop > 0) scoreTop--;
    3de0:	99 23       	and	r25, r25
    3de2:	19 f0       	breq	.+6      	; 0x3dea <_Z10updateGamev+0x624>
    3de4:	91 50       	subi	r25, 0x01	; 1
    3de6:	90 93 62 01 	sts	0x0162, r25	; 0x800162 <_ZL8scoreTop>
    } else {
        if (scoreTop < 32) scoreTop++;
    }

    return (isOver && counter == 0);
    3dea:	88 23       	and	r24, r24
    3dec:	79 f3       	breq	.-34     	; 0x3dcc <_Z10updateGamev+0x606>
    3dee:	81 e0       	ldi	r24, 0x01	; 1
    3df0:	20 91 5d 01 	lds	r18, 0x015D	; 0x80015d <_ZL7counter.lto_priv.55>
    3df4:	30 91 5e 01 	lds	r19, 0x015E	; 0x80015e <_ZL7counter.lto_priv.55+0x1>
    3df8:	23 2b       	or	r18, r19
    3dfa:	41 f3       	breq	.-48     	; 0x3dcc <_Z10updateGamev+0x606>
    3dfc:	80 e0       	ldi	r24, 0x00	; 0
    3dfe:	e6 cf       	rjmp	.-52     	; 0x3dcc <_Z10updateGamev+0x606>
bool updateGame(void)
{
    if (isStart || isOver) {
        if (--counter == 0) isStart = false;
    }
    if (!isStart) {
    3e00:	10 e0       	ldi	r17, 0x00	; 0
    3e02:	04 cd       	rjmp	.-1528   	; 0x380c <_Z10updateGamev+0x46>
        }
    }

    /*  Score displaying  */
    if (playerX < 48 || isStart || isOver) {
        if (scoreTop > 0) scoreTop--;
    3e04:	99 23       	and	r25, r25
    3e06:	99 f3       	breq	.-26     	; 0x3dee <_Z10updateGamev+0x628>
    3e08:	ed cf       	rjmp	.-38     	; 0x3de4 <_Z10updateGamev+0x61e>

00003e0a <__vector_10>:
#endif
}

//	General interrupt
ISR(USB_GEN_vect)
{
    3e0a:	1f 92       	push	r1
    3e0c:	0f 92       	push	r0
    3e0e:	0f b6       	in	r0, 0x3f	; 63
    3e10:	0f 92       	push	r0
    3e12:	11 24       	eor	r1, r1
    3e14:	8f 93       	push	r24
    3e16:	9f 93       	push	r25
	u8 udint = UDINT;
    3e18:	80 91 e1 00 	lds	r24, 0x00E1	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
	UDINT &= ~((1<<EORSTI) | (1<<SOFI)); // clear the IRQ flags for the IRQs which are handled here, except WAKEUPI and SUSPI (see below)
    3e1c:	90 91 e1 00 	lds	r25, 0x00E1	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
    3e20:	93 7f       	andi	r25, 0xF3	; 243
    3e22:	90 93 e1 00 	sts	0x00E1, r25	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>

	//	End of Reset
	if (udint & (1<<EORSTI))
    3e26:	83 ff       	sbrs	r24, 3
    3e28:	0f c0       	rjmp	.+30     	; 0x3e48 <__vector_10+0x3e>
#define EP_SINGLE_16 0x12

static
void InitEP(u8 index, u8 type, u8 size)
{
	UENUM = index;
    3e2a:	10 92 e9 00 	sts	0x00E9, r1	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
	UECONX = (1<<EPEN);
    3e2e:	91 e0       	ldi	r25, 0x01	; 1
    3e30:	90 93 eb 00 	sts	0x00EB, r25	; 0x8000eb <__DATA_REGION_ORIGIN__+0x8b>
	UECFG0X = type;
    3e34:	10 92 ec 00 	sts	0x00EC, r1	; 0x8000ec <__DATA_REGION_ORIGIN__+0x8c>
	UECFG1X = size;
    3e38:	92 e3       	ldi	r25, 0x32	; 50
    3e3a:	90 93 ed 00 	sts	0x00ED, r25	; 0x8000ed <__DATA_REGION_ORIGIN__+0x8d>

	//	End of Reset
	if (udint & (1<<EORSTI))
	{
		InitEP(0,EP_TYPE_CONTROL,EP_SINGLE_64);	// init ep0
		_usbConfiguration = 0;			// not configured yet
    3e3e:	10 92 16 03 	sts	0x0316, r1	; 0x800316 <_usbConfiguration>
		UEIENX = 1 << RXSTPE;			// Enable interrupts for ep0
    3e42:	98 e0       	ldi	r25, 0x08	; 8
    3e44:	90 93 f0 00 	sts	0x00F0, r25	; 0x8000f0 <__DATA_REGION_ORIGIN__+0x90>
	}

	//	Start of Frame - happens every millisecond so we use it for TX and RX LED one-shot timing, too
	if (udint & (1<<SOFI))
    3e48:	82 ff       	sbrs	r24, 2
    3e4a:	22 c0       	rjmp	.+68     	; 0x3e90 <__vector_10+0x86>
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    3e4c:	93 e0       	ldi	r25, 0x03	; 3
    3e4e:	90 93 e9 00 	sts	0x00E9, r25	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
}

static inline u8 FifoByteCount()
{
	return UEBCLX;
    3e52:	90 91 f2 00 	lds	r25, 0x00F2	; 0x8000f2 <__DATA_REGION_ORIGIN__+0x92>
}

void USB_Flush(u8 ep)
{
	SetEP(ep);
	if (FifoByteCount())
    3e56:	99 23       	and	r25, r25
    3e58:	19 f0       	breq	.+6      	; 0x3e60 <__vector_10+0x56>
	UEINTX = 0x6B;	// FIFOCON=0 NAKINI=1 RWAL=1 NAKOUTI=0 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=1
}

static inline void ReleaseTX()
{
	UEINTX = 0x3A;	// FIFOCON=0 NAKINI=0 RWAL=1 NAKOUTI=1 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=0
    3e5a:	9a e3       	ldi	r25, 0x3A	; 58
    3e5c:	90 93 e8 00 	sts	0x00E8, r25	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
	if (udint & (1<<SOFI))
	{
		USB_Flush(CDC_TX);				// Send a tx frame if found
		
		// check whether the one-shot period has elapsed.  if so, turn off the LED
		if (TxLEDPulse && !(--TxLEDPulse))
    3e60:	90 91 07 03 	lds	r25, 0x0307	; 0x800307 <TxLEDPulse>
    3e64:	99 23       	and	r25, r25
    3e66:	41 f0       	breq	.+16     	; 0x3e78 <__vector_10+0x6e>
    3e68:	90 91 07 03 	lds	r25, 0x0307	; 0x800307 <TxLEDPulse>
    3e6c:	91 50       	subi	r25, 0x01	; 1
    3e6e:	90 93 07 03 	sts	0x0307, r25	; 0x800307 <TxLEDPulse>
    3e72:	91 11       	cpse	r25, r1
    3e74:	01 c0       	rjmp	.+2      	; 0x3e78 <__vector_10+0x6e>
			TXLED0;
    3e76:	5d 9a       	sbi	0x0b, 5	; 11
		if (RxLEDPulse && !(--RxLEDPulse))
    3e78:	90 91 15 03 	lds	r25, 0x0315	; 0x800315 <RxLEDPulse>
    3e7c:	99 23       	and	r25, r25
    3e7e:	41 f0       	breq	.+16     	; 0x3e90 <__vector_10+0x86>
    3e80:	90 91 15 03 	lds	r25, 0x0315	; 0x800315 <RxLEDPulse>
    3e84:	91 50       	subi	r25, 0x01	; 1
    3e86:	90 93 15 03 	sts	0x0315, r25	; 0x800315 <RxLEDPulse>
    3e8a:	91 11       	cpse	r25, r1
    3e8c:	01 c0       	rjmp	.+2      	; 0x3e90 <__vector_10+0x86>
			RXLED0;
    3e8e:	28 9a       	sbi	0x05, 0	; 5
	}

	// the WAKEUPI interrupt is triggered as soon as there are non-idle patterns on the data
	// lines. Thus, the WAKEUPI interrupt can occur even if the controller is not in the "suspend" mode.
	// Therefore the we enable it only when USB is suspended
	if (udint & (1<<WAKEUPI))
    3e90:	84 ff       	sbrs	r24, 4
    3e92:	18 c0       	rjmp	.+48     	; 0x3ec4 <__vector_10+0xba>
	{
		UDIEN = (UDIEN & ~(1<<WAKEUPE)) | (1<<SUSPE); // Disable interrupts for WAKEUP and enable interrupts for SUSPEND
    3e94:	80 91 e2 00 	lds	r24, 0x00E2	; 0x8000e2 <__DATA_REGION_ORIGIN__+0x82>
    3e98:	8e 7e       	andi	r24, 0xEE	; 238
    3e9a:	81 60       	ori	r24, 0x01	; 1
    3e9c:	80 93 e2 00 	sts	0x00E2, r24	; 0x8000e2 <__DATA_REGION_ORIGIN__+0x82>

		//TODO
		// WAKEUPI shall be cleared by software (USB clock inputs must be enabled before).
		//USB_ClockEnable();
		UDINT &= ~(1<<WAKEUPI);
    3ea0:	80 91 e1 00 	lds	r24, 0x00E1	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
    3ea4:	8f 7e       	andi	r24, 0xEF	; 239
    3ea6:	80 93 e1 00 	sts	0x00E1, r24	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
		_usbSuspendState = (_usbSuspendState & ~(1<<SUSPI)) | (1<<WAKEUPI);
    3eaa:	80 91 08 03 	lds	r24, 0x0308	; 0x800308 <_usbSuspendState>
    3eae:	8e 7e       	andi	r24, 0xEE	; 238
    3eb0:	80 61       	ori	r24, 0x10	; 16

		//TODO
		//USB_ClockDisable();

		UDINT &= ~((1<<WAKEUPI) | (1<<SUSPI)); // clear any already pending WAKEUP IRQs and the SUSPI request
		_usbSuspendState = (_usbSuspendState & ~(1<<WAKEUPI)) | (1<<SUSPI);
    3eb2:	80 93 08 03 	sts	0x0308, r24	; 0x800308 <_usbSuspendState>
	}
}
    3eb6:	9f 91       	pop	r25
    3eb8:	8f 91       	pop	r24
    3eba:	0f 90       	pop	r0
    3ebc:	0f be       	out	0x3f, r0	; 63
    3ebe:	0f 90       	pop	r0
    3ec0:	1f 90       	pop	r1
    3ec2:	18 95       	reti
		// WAKEUPI shall be cleared by software (USB clock inputs must be enabled before).
		//USB_ClockEnable();
		UDINT &= ~(1<<WAKEUPI);
		_usbSuspendState = (_usbSuspendState & ~(1<<SUSPI)) | (1<<WAKEUPI);
	}
	else if (udint & (1<<SUSPI)) // only one of the WAKEUPI / SUSPI bits can be active at time
    3ec4:	80 ff       	sbrs	r24, 0
    3ec6:	f7 cf       	rjmp	.-18     	; 0x3eb6 <__vector_10+0xac>
	{
		UDIEN = (UDIEN & ~(1<<SUSPE)) | (1<<WAKEUPE); // Disable interrupts for SUSPEND and enable interrupts for WAKEUP
    3ec8:	80 91 e2 00 	lds	r24, 0x00E2	; 0x8000e2 <__DATA_REGION_ORIGIN__+0x82>
    3ecc:	8e 7e       	andi	r24, 0xEE	; 238
    3ece:	80 61       	ori	r24, 0x10	; 16
    3ed0:	80 93 e2 00 	sts	0x00E2, r24	; 0x8000e2 <__DATA_REGION_ORIGIN__+0x82>

		//TODO
		//USB_ClockDisable();

		UDINT &= ~((1<<WAKEUPI) | (1<<SUSPI)); // clear any already pending WAKEUP IRQs and the SUSPI request
    3ed4:	80 91 e1 00 	lds	r24, 0x00E1	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
    3ed8:	8e 7e       	andi	r24, 0xEE	; 238
    3eda:	80 93 e1 00 	sts	0x00E1, r24	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
		_usbSuspendState = (_usbSuspendState & ~(1<<WAKEUPI)) | (1<<SUSPI);
    3ede:	80 91 08 03 	lds	r24, 0x0308	; 0x800308 <_usbSuspendState>
    3ee2:	8e 7e       	andi	r24, 0xEE	; 238
    3ee4:	81 60       	ori	r24, 0x01	; 1
    3ee6:	e5 cf       	rjmp	.-54     	; 0x3eb2 <__vector_10+0xa8>

00003ee8 <__vector_11>:
	return true;
}

//	Endpoint 0 interrupt
ISR(USB_COM_vect)
{
    3ee8:	1f 92       	push	r1
    3eea:	0f 92       	push	r0
    3eec:	0f b6       	in	r0, 0x3f	; 63
    3eee:	0f 92       	push	r0
    3ef0:	11 24       	eor	r1, r1
    3ef2:	cf 92       	push	r12
    3ef4:	df 92       	push	r13
    3ef6:	ef 92       	push	r14
    3ef8:	ff 92       	push	r15
    3efa:	0f 93       	push	r16
    3efc:	1f 93       	push	r17
    3efe:	2f 93       	push	r18
    3f00:	3f 93       	push	r19
    3f02:	4f 93       	push	r20
    3f04:	5f 93       	push	r21
    3f06:	6f 93       	push	r22
    3f08:	7f 93       	push	r23
    3f0a:	8f 93       	push	r24
    3f0c:	9f 93       	push	r25
    3f0e:	af 93       	push	r26
    3f10:	bf 93       	push	r27
    3f12:	ef 93       	push	r30
    3f14:	ff 93       	push	r31
    3f16:	cf 93       	push	r28
    3f18:	df 93       	push	r29
    3f1a:	cd b7       	in	r28, 0x3d	; 61
    3f1c:	de b7       	in	r29, 0x3e	; 62
    3f1e:	6c 97       	sbiw	r28, 0x1c	; 28
    3f20:	de bf       	out	0x3e, r29	; 62
    3f22:	cd bf       	out	0x3d, r28	; 61
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    3f24:	10 92 e9 00 	sts	0x00E9, r1	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
	return UEBCLX;
}

static inline u8 ReceivedSetupInt()
{
	return UEINTX & (1<<RXSTPI);
    3f28:	80 91 e8 00 	lds	r24, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>

//	Endpoint 0 interrupt
ISR(USB_COM_vect)
{
    SetEP(0);
	if (!ReceivedSetupInt())
    3f2c:	83 ff       	sbrs	r24, 3
    3f2e:	25 c0       	rjmp	.+74     	; 0x3f7a <__vector_11+0x92>
		return;

	USBSetup setup;
	Recv((u8*)&setup,8);
    3f30:	68 e0       	ldi	r22, 0x08	; 8
    3f32:	ce 01       	movw	r24, r28
    3f34:	45 96       	adiw	r24, 0x15	; 21
    3f36:	0e 94 e9 0b 	call	0x17d2	; 0x17d2 <_ZL4RecvPVhh>
	return UEINTX & (1<<RXSTPI);
}

static inline void ClearSetupInt()
{
	UEINTX = ~((1<<RXSTPI) | (1<<RXOUTI) | (1<<TXINI));
    3f3a:	82 ef       	ldi	r24, 0xF2	; 242
    3f3c:	80 93 e8 00 	sts	0x00E8, r24	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>

	USBSetup setup;
	Recv((u8*)&setup,8);
	ClearSetupInt();

	u8 requestType = setup.bmRequestType;
    3f40:	8d 89       	ldd	r24, Y+21	; 0x15
	if (requestType & REQUEST_DEVICETOHOST)
    3f42:	87 ff       	sbrs	r24, 7
    3f44:	39 c0       	rjmp	.+114    	; 0x3fb8 <__vector_11+0xd0>
volatile u8 _usbCurrentStatus = 0; // meaning of bits see usb_20.pdf, Figure 9-4. Information Returned by a GetStatus() Request to a Device
volatile u8 _usbSuspendState = 0; // copy of UDINT to check SUSPI and WAKEUPI bits

static inline void WaitIN(void)
{
	while (!(UEINTX & (1<<TXINI)))
    3f46:	90 91 e8 00 	lds	r25, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
    3f4a:	90 ff       	sbrs	r25, 0
    3f4c:	fc cf       	rjmp	.-8      	; 0x3f46 <__vector_11+0x5e>
		WaitIN();
	else
		ClearIN();

    bool ok = true;
	if (REQUEST_STANDARD == (requestType & REQUEST_TYPE))
    3f4e:	98 2f       	mov	r25, r24
    3f50:	90 76       	andi	r25, 0x60	; 96
    3f52:	09 f0       	breq	.+2      	; 0x3f56 <__vector_11+0x6e>
    3f54:	34 c1       	rjmp	.+616    	; 0x41be <__vector_11+0x2d6>
	{
		//	Standard Requests
		u8 r = setup.bRequest;
    3f56:	9e 89       	ldd	r25, Y+22	; 0x16
    3f58:	4f 89       	ldd	r20, Y+23	; 0x17
    3f5a:	58 8d       	ldd	r21, Y+24	; 0x18
		u16 wValue = setup.wValueL | (setup.wValueH << 8);
    3f5c:	2f 89       	ldd	r18, Y+23	; 0x17
    3f5e:	f8 8c       	ldd	r15, Y+24	; 0x18
		if (GET_STATUS == r)
    3f60:	91 11       	cpse	r25, r1
    3f62:	31 c0       	rjmp	.+98     	; 0x3fc6 <__vector_11+0xde>
		{
			if (requestType == (REQUEST_DEVICETOHOST | REQUEST_STANDARD | REQUEST_DEVICE))
    3f64:	80 38       	cpi	r24, 0x80	; 128
    3f66:	61 f5       	brne	.+88     	; 0x3fc0 <__vector_11+0xd8>
			{
				Send8(_usbCurrentStatus);
    3f68:	80 91 06 03 	lds	r24, 0x0306	; 0x800306 <_usbCurrentStatus>
	return UEDATX;	
}

static inline void Send8(u8 d)
{
	UEDATX = d;
    3f6c:	80 93 f1 00 	sts	0x00F1, r24	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
    3f70:	10 92 f1 00 	sts	0x00F1, r1	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
		;
}

static inline void ClearIN(void)
{
	UEINTX = ~(1<<TXINI);
    3f74:	8e ef       	ldi	r24, 0xFE	; 254
    3f76:	80 93 e8 00 	sts	0x00E8, r24	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
		ClearIN();
	else
	{
		Stall();
	}
}
    3f7a:	6c 96       	adiw	r28, 0x1c	; 28
    3f7c:	0f b6       	in	r0, 0x3f	; 63
    3f7e:	f8 94       	cli
    3f80:	de bf       	out	0x3e, r29	; 62
    3f82:	0f be       	out	0x3f, r0	; 63
    3f84:	cd bf       	out	0x3d, r28	; 61
    3f86:	df 91       	pop	r29
    3f88:	cf 91       	pop	r28
    3f8a:	ff 91       	pop	r31
    3f8c:	ef 91       	pop	r30
    3f8e:	bf 91       	pop	r27
    3f90:	af 91       	pop	r26
    3f92:	9f 91       	pop	r25
    3f94:	8f 91       	pop	r24
    3f96:	7f 91       	pop	r23
    3f98:	6f 91       	pop	r22
    3f9a:	5f 91       	pop	r21
    3f9c:	4f 91       	pop	r20
    3f9e:	3f 91       	pop	r19
    3fa0:	2f 91       	pop	r18
    3fa2:	1f 91       	pop	r17
    3fa4:	0f 91       	pop	r16
    3fa6:	ff 90       	pop	r15
    3fa8:	ef 90       	pop	r14
    3faa:	df 90       	pop	r13
    3fac:	cf 90       	pop	r12
    3fae:	0f 90       	pop	r0
    3fb0:	0f be       	out	0x3f, r0	; 63
    3fb2:	0f 90       	pop	r0
    3fb4:	1f 90       	pop	r1
    3fb6:	18 95       	reti
		;
}

static inline void ClearIN(void)
{
	UEINTX = ~(1<<TXINI);
    3fb8:	9e ef       	ldi	r25, 0xFE	; 254
    3fba:	90 93 e8 00 	sts	0x00E8, r25	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
    3fbe:	c7 cf       	rjmp	.-114    	; 0x3f4e <__vector_11+0x66>
	return UEDATX;	
}

static inline void Send8(u8 d)
{
	UEDATX = d;
    3fc0:	10 92 f1 00 	sts	0x00F1, r1	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
    3fc4:	d5 cf       	rjmp	.-86     	; 0x3f70 <__vector_11+0x88>
				// see "Figure 9-6. Information Returned by a GetStatus() Request to an Endpoint" in usb_20.pdf for more information
				Send8(0);
				Send8(0);
			}
		}
		else if (CLEAR_FEATURE == r)
    3fc6:	91 30       	cpi	r25, 0x01	; 1
    3fc8:	59 f4       	brne	.+22     	; 0x3fe0 <__vector_11+0xf8>
		{
			if((requestType == (REQUEST_HOSTTODEVICE | REQUEST_STANDARD | REQUEST_DEVICE))
    3fca:	81 11       	cpse	r24, r1
    3fcc:	d3 cf       	rjmp	.-90     	; 0x3f74 <__vector_11+0x8c>
				&& (wValue == DEVICE_REMOTE_WAKEUP))
    3fce:	41 30       	cpi	r20, 0x01	; 1
    3fd0:	51 05       	cpc	r21, r1
    3fd2:	81 f6       	brne	.-96     	; 0x3f74 <__vector_11+0x8c>
			{
				_usbCurrentStatus &= ~FEATURE_REMOTE_WAKEUP_ENABLED;
    3fd4:	80 91 06 03 	lds	r24, 0x0306	; 0x800306 <_usbCurrentStatus>
    3fd8:	8d 7f       	andi	r24, 0xFD	; 253
		else if (SET_FEATURE == r)
		{
			if((requestType == (REQUEST_HOSTTODEVICE | REQUEST_STANDARD | REQUEST_DEVICE))
				&& (wValue == DEVICE_REMOTE_WAKEUP))
			{
				_usbCurrentStatus |= FEATURE_REMOTE_WAKEUP_ENABLED;
    3fda:	80 93 06 03 	sts	0x0306, r24	; 0x800306 <_usbCurrentStatus>
    3fde:	ca cf       	rjmp	.-108    	; 0x3f74 <__vector_11+0x8c>
				&& (wValue == DEVICE_REMOTE_WAKEUP))
			{
				_usbCurrentStatus &= ~FEATURE_REMOTE_WAKEUP_ENABLED;
			}
		}
		else if (SET_FEATURE == r)
    3fe0:	93 30       	cpi	r25, 0x03	; 3
    3fe2:	49 f4       	brne	.+18     	; 0x3ff6 <__vector_11+0x10e>
		{
			if((requestType == (REQUEST_HOSTTODEVICE | REQUEST_STANDARD | REQUEST_DEVICE))
    3fe4:	81 11       	cpse	r24, r1
    3fe6:	c6 cf       	rjmp	.-116    	; 0x3f74 <__vector_11+0x8c>
				&& (wValue == DEVICE_REMOTE_WAKEUP))
    3fe8:	41 30       	cpi	r20, 0x01	; 1
    3fea:	51 05       	cpc	r21, r1
    3fec:	19 f6       	brne	.-122    	; 0x3f74 <__vector_11+0x8c>
			{
				_usbCurrentStatus |= FEATURE_REMOTE_WAKEUP_ENABLED;
    3fee:	80 91 06 03 	lds	r24, 0x0306	; 0x800306 <_usbCurrentStatus>
    3ff2:	82 60       	ori	r24, 0x02	; 2
    3ff4:	f2 cf       	rjmp	.-28     	; 0x3fda <__vector_11+0xf2>
			}
		}
		else if (SET_ADDRESS == r)
    3ff6:	95 30       	cpi	r25, 0x05	; 5
    3ff8:	41 f4       	brne	.+16     	; 0x400a <__vector_11+0x122>
volatile u8 _usbCurrentStatus = 0; // meaning of bits see usb_20.pdf, Figure 9-4. Information Returned by a GetStatus() Request to a Device
volatile u8 _usbSuspendState = 0; // copy of UDINT to check SUSPI and WAKEUPI bits

static inline void WaitIN(void)
{
	while (!(UEINTX & (1<<TXINI)))
    3ffa:	80 91 e8 00 	lds	r24, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
    3ffe:	80 ff       	sbrs	r24, 0
    4000:	fc cf       	rjmp	.-8      	; 0x3ffa <__vector_11+0x112>
			}
		}
		else if (SET_ADDRESS == r)
		{
			WaitIN();
			UDADDR = setup.wValueL | (1<<ADDEN);
    4002:	20 68       	ori	r18, 0x80	; 128
    4004:	20 93 e3 00 	sts	0x00E3, r18	; 0x8000e3 <__DATA_REGION_ORIGIN__+0x83>
    4008:	b5 cf       	rjmp	.-150    	; 0x3f74 <__vector_11+0x8c>
		}
		else if (GET_DESCRIPTOR == r)
    400a:	96 30       	cpi	r25, 0x06	; 6
    400c:	09 f0       	breq	.+2      	; 0x4010 <__vector_11+0x128>
    400e:	a9 c0       	rjmp	.+338    	; 0x4162 <__vector_11+0x27a>
    4010:	0b 8d       	ldd	r16, Y+27	; 0x1b
    4012:	1c 8d       	ldd	r17, Y+28	; 0x1c

static
bool SendDescriptor(USBSetup& setup)
{
	u8 t = setup.wValueH;
	if (USB_CONFIGURATION_DESCRIPTOR_TYPE == t)
    4014:	22 e0       	ldi	r18, 0x02	; 2
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    4016:	10 92 e9 00 	sts	0x00E9, r1	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
static int _cmark;
static int _cend;
void InitControl(int end)
{
	SetEP(0);
	_cmark = 0;
    401a:	10 92 04 03 	sts	0x0304, r1	; 0x800304 <_ZL6_cmark+0x1>
    401e:	10 92 03 03 	sts	0x0303, r1	; 0x800303 <_ZL6_cmark>

static
bool SendDescriptor(USBSetup& setup)
{
	u8 t = setup.wValueH;
	if (USB_CONFIGURATION_DESCRIPTOR_TYPE == t)
    4022:	f2 12       	cpse	r15, r18
    4024:	2e c0       	rjmp	.+92     	; 0x4082 <__vector_11+0x19a>
static int _cend;
void InitControl(int end)
{
	SetEP(0);
	_cmark = 0;
	_cend = end;
    4026:	10 92 02 03 	sts	0x0302, r1	; 0x800302 <_ZL5_cend+0x1>
    402a:	10 92 01 03 	sts	0x0301, r1	; 0x800301 <_ZL5_cend>
static
bool SendConfiguration(int maxlen)
{
	//	Count and measure interfaces
	InitControl(0);
	u8 interfaces = SendInterfaces();
    402e:	0e 94 b8 0b 	call	0x1770	; 0x1770 <_ZL14SendInterfacesv>
	ConfigDescriptor config = D_CONFIG(_cmark + sizeof(ConfigDescriptor),interfaces);
    4032:	1f 82       	std	Y+7, r1	; 0x07
    4034:	99 e0       	ldi	r25, 0x09	; 9
    4036:	99 83       	std	Y+1, r25	; 0x01
    4038:	fa 82       	std	Y+2, r15	; 0x02
    403a:	91 e0       	ldi	r25, 0x01	; 1
    403c:	9e 83       	std	Y+6, r25	; 0x06
    403e:	90 ea       	ldi	r25, 0xA0	; 160
    4040:	98 87       	std	Y+8, r25	; 0x08
    4042:	9a ef       	ldi	r25, 0xFA	; 250
    4044:	99 87       	std	Y+9, r25	; 0x09
    4046:	20 91 03 03 	lds	r18, 0x0303	; 0x800303 <_ZL6_cmark>
    404a:	30 91 04 03 	lds	r19, 0x0304	; 0x800304 <_ZL6_cmark+0x1>
    404e:	27 5f       	subi	r18, 0xF7	; 247
    4050:	3f 4f       	sbci	r19, 0xFF	; 255
    4052:	3c 83       	std	Y+4, r19	; 0x04
    4054:	2b 83       	std	Y+3, r18	; 0x03
    4056:	8d 83       	std	Y+5, r24	; 0x05
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    4058:	10 92 e9 00 	sts	0x00E9, r1	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
static int _cmark;
static int _cend;
void InitControl(int end)
{
	SetEP(0);
	_cmark = 0;
    405c:	10 92 04 03 	sts	0x0304, r1	; 0x800304 <_ZL6_cmark+0x1>
    4060:	10 92 03 03 	sts	0x0303, r1	; 0x800303 <_ZL6_cmark>
	_cend = end;
    4064:	10 93 02 03 	sts	0x0302, r17	; 0x800302 <_ZL5_cend+0x1>
    4068:	00 93 01 03 	sts	0x0301, r16	; 0x800301 <_ZL5_cend>
	u8 interfaces = SendInterfaces();
	ConfigDescriptor config = D_CONFIG(_cmark + sizeof(ConfigDescriptor),interfaces);

	//	Now send them
	InitControl(maxlen);
	USB_SendControl(0,&config,sizeof(ConfigDescriptor));
    406c:	49 e0       	ldi	r20, 0x09	; 9
    406e:	50 e0       	ldi	r21, 0x00	; 0
    4070:	be 01       	movw	r22, r28
    4072:	6f 5f       	subi	r22, 0xFF	; 255
    4074:	7f 4f       	sbci	r23, 0xFF	; 255
    4076:	80 e0       	ldi	r24, 0x00	; 0
    4078:	0e 94 92 0b 	call	0x1724	; 0x1724 <_Z15USB_SendControlhPKvi>
	SendInterfaces();
    407c:	0e 94 b8 0b 	call	0x1770	; 0x1770 <_ZL14SendInterfacesv>
    4080:	79 cf       	rjmp	.-270    	; 0x3f74 <__vector_11+0x8c>
static int _cend;
void InitControl(int end)
{
	SetEP(0);
	_cmark = 0;
	_cend = end;
    4082:	10 93 02 03 	sts	0x0302, r17	; 0x800302 <_ZL5_cend+0x1>
    4086:	00 93 01 03 	sts	0x0301, r16	; 0x800301 <_ZL5_cend>
	if (USB_CONFIGURATION_DESCRIPTOR_TYPE == t)
		return SendConfiguration(setup.wLength);

	InitControl(setup.wLength);
#ifdef PLUGGABLE_USB_ENABLED
	int ret = PluggableUSB().getDescriptor(setup);
    408a:	0e 94 9c 0a 	call	0x1538	; 0x1538 <_Z12PluggableUSBv>
}

int PluggableUSB_::getDescriptor(USBSetup& setup)
{
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
    408e:	dc 01       	movw	r26, r24
    4090:	12 96       	adiw	r26, 0x02	; 2
    4092:	0d 91       	ld	r16, X+
    4094:	1c 91       	ld	r17, X
    4096:	01 15       	cp	r16, r1
    4098:	11 05       	cpc	r17, r1
    409a:	09 f4       	brne	.+2      	; 0x409e <__vector_11+0x1b6>
    409c:	51 c1       	rjmp	.+674    	; 0x4340 <__vector_11+0x458>
		int ret = node->getDescriptor(setup);
    409e:	d8 01       	movw	r26, r16
    40a0:	ed 91       	ld	r30, X+
    40a2:	fc 91       	ld	r31, X
    40a4:	04 80       	ldd	r0, Z+4	; 0x04
    40a6:	f5 81       	ldd	r31, Z+5	; 0x05
    40a8:	e0 2d       	mov	r30, r0
    40aa:	be 01       	movw	r22, r28
    40ac:	6b 5e       	subi	r22, 0xEB	; 235
    40ae:	7f 4f       	sbci	r23, 0xFF	; 255
    40b0:	c8 01       	movw	r24, r16
    40b2:	09 95       	icall
		// ret!=0 -> request has been processed
		if (ret)
    40b4:	00 97       	sbiw	r24, 0x00	; 0
    40b6:	09 f0       	breq	.+2      	; 0x40ba <__vector_11+0x1d2>
    40b8:	3e c1       	rjmp	.+636    	; 0x4336 <__vector_11+0x44e>
}

int PluggableUSB_::getDescriptor(USBSetup& setup)
{
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
    40ba:	f8 01       	movw	r30, r16
    40bc:	00 85       	ldd	r16, Z+8	; 0x08
    40be:	11 85       	ldd	r17, Z+9	; 0x09
    40c0:	ea cf       	rjmp	.-44     	; 0x4096 <__vector_11+0x1ae>
	const u8* desc_addr = 0;
	if (USB_DEVICE_DESCRIPTOR_TYPE == t)
	{
		desc_addr = (const u8*)&USB_DeviceDescriptorIAD;
	}
	else if (USB_STRING_DESCRIPTOR_TYPE == t)
    40c2:	f3 e0       	ldi	r31, 0x03	; 3
    40c4:	ff 12       	cpse	r15, r31
    40c6:	0e c0       	rjmp	.+28     	; 0x40e4 <__vector_11+0x1fc>
	{
		if (setup.wValueL == 0) {
    40c8:	8f 89       	ldd	r24, Y+23	; 0x17
    40ca:	88 23       	and	r24, r24
    40cc:	09 f4       	brne	.+2      	; 0x40d0 <__vector_11+0x1e8>
    40ce:	40 c0       	rjmp	.+128    	; 0x4150 <__vector_11+0x268>
			desc_addr = (const u8*)&STRING_LANGUAGE;
		}
		else if (setup.wValueL == IPRODUCT) {
    40d0:	82 30       	cpi	r24, 0x02	; 2
    40d2:	61 f4       	brne	.+24     	; 0x40ec <__vector_11+0x204>
			return USB_SendStringDescriptor(STRING_PRODUCT, strlen(USB_PRODUCT), TRANSFER_PGM);
    40d4:	40 e8       	ldi	r20, 0x80	; 128
    40d6:	60 e1       	ldi	r22, 0x10	; 16
    40d8:	87 e4       	ldi	r24, 0x47	; 71
    40da:	90 e1       	ldi	r25, 0x10	; 16
		}
		else if (setup.wValueL == ISERIAL) {
#ifdef PLUGGABLE_USB_ENABLED
			char name[ISERIAL_MAX_LEN];
			PluggableUSB().getShortName(name);
			return USB_SendStringDescriptor((uint8_t*)name, strlen(name), 0);
    40dc:	0e 94 5f 0b 	call	0x16be	; 0x16be <_ZL24USB_SendStringDescriptorPKhhh>
	{
		InitControl(setup.wLength);		//	Max length of transfer
		ok = ClassInterfaceRequest(setup);
	}

	if (ok)
    40e0:	81 11       	cpse	r24, r1
    40e2:	48 cf       	rjmp	.-368    	; 0x3f74 <__vector_11+0x8c>
	UEINTX = ~((1<<RXSTPI) | (1<<RXOUTI) | (1<<TXINI));
}

static inline void Stall()
{
	UECONX = (1<<STALLRQ) | (1<<EPEN);
    40e4:	81 e2       	ldi	r24, 0x21	; 33
    40e6:	80 93 eb 00 	sts	0x00EB, r24	; 0x8000eb <__DATA_REGION_ORIGIN__+0x8b>
    40ea:	47 cf       	rjmp	.-370    	; 0x3f7a <__vector_11+0x92>
			desc_addr = (const u8*)&STRING_LANGUAGE;
		}
		else if (setup.wValueL == IPRODUCT) {
			return USB_SendStringDescriptor(STRING_PRODUCT, strlen(USB_PRODUCT), TRANSFER_PGM);
		}
		else if (setup.wValueL == IMANUFACTURER) {
    40ec:	81 30       	cpi	r24, 0x01	; 1
    40ee:	29 f4       	brne	.+10     	; 0x40fa <__vector_11+0x212>
			return USB_SendStringDescriptor(STRING_MANUFACTURER, strlen(USB_MANUFACTURER), TRANSFER_PGM);
    40f0:	40 e8       	ldi	r20, 0x80	; 128
    40f2:	6b e0       	ldi	r22, 0x0B	; 11
    40f4:	8b e3       	ldi	r24, 0x3B	; 59
    40f6:	90 e1       	ldi	r25, 0x10	; 16
    40f8:	f1 cf       	rjmp	.-30     	; 0x40dc <__vector_11+0x1f4>
		}
		else if (setup.wValueL == ISERIAL) {
    40fa:	83 30       	cpi	r24, 0x03	; 3
    40fc:	99 f7       	brne	.-26     	; 0x40e4 <__vector_11+0x1fc>
#ifdef PLUGGABLE_USB_ENABLED
			char name[ISERIAL_MAX_LEN];
			PluggableUSB().getShortName(name);
    40fe:	0e 94 9c 0a 	call	0x1538	; 0x1538 <_Z12PluggableUSBv>
}

void PluggableUSB_::getShortName(char *iSerialNum)
{
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
    4102:	dc 01       	movw	r26, r24
    4104:	12 96       	adiw	r26, 0x02	; 2
    4106:	ed 90       	ld	r14, X+
    4108:	fc 90       	ld	r15, X
    410a:	8e 01       	movw	r16, r28
    410c:	0f 5f       	subi	r16, 0xFF	; 255
    410e:	1f 4f       	sbci	r17, 0xFF	; 255
    4110:	68 01       	movw	r12, r16
    4112:	e1 14       	cp	r14, r1
    4114:	f1 04       	cpc	r15, r1
    4116:	79 f0       	breq	.+30     	; 0x4136 <__vector_11+0x24e>
		iSerialNum += node->getShortName(iSerialNum);
    4118:	d7 01       	movw	r26, r14
    411a:	ed 91       	ld	r30, X+
    411c:	fc 91       	ld	r31, X
    411e:	06 80       	ldd	r0, Z+6	; 0x06
    4120:	f7 81       	ldd	r31, Z+7	; 0x07
    4122:	e0 2d       	mov	r30, r0
    4124:	b8 01       	movw	r22, r16
    4126:	c7 01       	movw	r24, r14
    4128:	09 95       	icall
    412a:	08 0f       	add	r16, r24
    412c:	11 1d       	adc	r17, r1
}

void PluggableUSB_::getShortName(char *iSerialNum)
{
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
    412e:	f7 01       	movw	r30, r14
    4130:	e0 84       	ldd	r14, Z+8	; 0x08
    4132:	f1 84       	ldd	r15, Z+9	; 0x09
    4134:	ee cf       	rjmp	.-36     	; 0x4112 <__vector_11+0x22a>
		iSerialNum += node->getShortName(iSerialNum);
	}
	*iSerialNum = 0;
    4136:	d8 01       	movw	r26, r16
    4138:	1c 92       	st	X, r1
			return USB_SendStringDescriptor((uint8_t*)name, strlen(name), 0);
    413a:	f6 01       	movw	r30, r12
    413c:	01 90       	ld	r0, Z+
    413e:	00 20       	and	r0, r0
    4140:	e9 f7       	brne	.-6      	; 0x413c <__vector_11+0x254>
    4142:	31 97       	sbiw	r30, 0x01	; 1
    4144:	bf 01       	movw	r22, r30
    4146:	6c 19       	sub	r22, r12
    4148:	7d 09       	sbc	r23, r13
    414a:	40 e0       	ldi	r20, 0x00	; 0
    414c:	c6 01       	movw	r24, r12
    414e:	c6 cf       	rjmp	.-116    	; 0x40dc <__vector_11+0x1f4>
		desc_addr = (const u8*)&USB_DeviceDescriptorIAD;
	}
	else if (USB_STRING_DESCRIPTOR_TYPE == t)
	{
		if (setup.wValueL == 0) {
			desc_addr = (const u8*)&STRING_LANGUAGE;
    4150:	65 e2       	ldi	r22, 0x25	; 37
    4152:	70 e1       	ldi	r23, 0x10	; 16
			return false;
	}

	if (desc_addr == 0)
		return false;
	u8 desc_length = pgm_read_byte(desc_addr);
    4154:	fb 01       	movw	r30, r22
    4156:	44 91       	lpm	r20, Z

	USB_SendControl(TRANSFER_PGM,desc_addr,desc_length);
    4158:	50 e0       	ldi	r21, 0x00	; 0
    415a:	80 e8       	ldi	r24, 0x80	; 128

	if (REQUEST_DEVICETOHOST_CLASS_INTERFACE == requestType)
	{
		if (CDC_GET_LINE_CODING == r)
		{
			USB_SendControl(0,(void*)&_usbLineInfo,7);
    415c:	0e 94 92 0b 	call	0x1724	; 0x1724 <_Z15USB_SendControlhPKvi>
    4160:	09 cf       	rjmp	.-494    	; 0x3f74 <__vector_11+0x8c>
		}
		else if (GET_DESCRIPTOR == r)
		{
			ok = SendDescriptor(setup);
		}
		else if (SET_DESCRIPTOR == r)
    4162:	97 30       	cpi	r25, 0x07	; 7
    4164:	09 f4       	brne	.+2      	; 0x4168 <__vector_11+0x280>
    4166:	be cf       	rjmp	.-132    	; 0x40e4 <__vector_11+0x1fc>
		{
			ok = false;
		}
		else if (GET_CONFIGURATION == r)
    4168:	98 30       	cpi	r25, 0x08	; 8
    416a:	21 f4       	brne	.+8      	; 0x4174 <__vector_11+0x28c>
	return UEDATX;	
}

static inline void Send8(u8 d)
{
	UEDATX = d;
    416c:	81 e0       	ldi	r24, 0x01	; 1
    416e:	80 93 f1 00 	sts	0x00F1, r24	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
    4172:	00 cf       	rjmp	.-512    	; 0x3f74 <__vector_11+0x8c>
		}
		else if (GET_CONFIGURATION == r)
		{
			Send8(1);
		}
		else if (SET_CONFIGURATION == r)
    4174:	99 30       	cpi	r25, 0x09	; 9
    4176:	09 f0       	breq	.+2      	; 0x417a <__vector_11+0x292>
    4178:	fd ce       	rjmp	.-518    	; 0x3f74 <__vector_11+0x8c>
		{
			if (REQUEST_DEVICE == (requestType & REQUEST_RECIPIENT))
    417a:	83 70       	andi	r24, 0x03	; 3
    417c:	09 f0       	breq	.+2      	; 0x4180 <__vector_11+0x298>
    417e:	b2 cf       	rjmp	.-156    	; 0x40e4 <__vector_11+0x1fc>
    4180:	e7 e2       	ldi	r30, 0x27	; 39
    4182:	f1 e0       	ldi	r31, 0x01	; 1
}

static
void InitEndpoints()
{
	for (u8 i = 1; i < sizeof(_initEndpoints) && _initEndpoints[i] != 0; i++)
    4184:	81 e0       	ldi	r24, 0x01	; 1
	{
		UENUM = i;
		UECONX = (1<<EPEN);
    4186:	31 e0       	ldi	r19, 0x01	; 1
		UECFG0X = _initEndpoints[i];
#if USB_EP_SIZE == 16
		UECFG1X = EP_SINGLE_16;
#elif USB_EP_SIZE == 64
		UECFG1X = EP_DOUBLE_64;
    4188:	96 e3       	ldi	r25, 0x36	; 54
}

static
void InitEndpoints()
{
	for (u8 i = 1; i < sizeof(_initEndpoints) && _initEndpoints[i] != 0; i++)
    418a:	21 91       	ld	r18, Z+
    418c:	22 23       	and	r18, r18
    418e:	71 f0       	breq	.+28     	; 0x41ac <__vector_11+0x2c4>
	{
		UENUM = i;
    4190:	80 93 e9 00 	sts	0x00E9, r24	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
		UECONX = (1<<EPEN);
    4194:	30 93 eb 00 	sts	0x00EB, r19	; 0x8000eb <__DATA_REGION_ORIGIN__+0x8b>
		UECFG0X = _initEndpoints[i];
    4198:	df 01       	movw	r26, r30
    419a:	11 97       	sbiw	r26, 0x01	; 1
    419c:	2c 91       	ld	r18, X
    419e:	20 93 ec 00 	sts	0x00EC, r18	; 0x8000ec <__DATA_REGION_ORIGIN__+0x8c>
#if USB_EP_SIZE == 16
		UECFG1X = EP_SINGLE_16;
#elif USB_EP_SIZE == 64
		UECFG1X = EP_DOUBLE_64;
    41a2:	90 93 ed 00 	sts	0x00ED, r25	; 0x8000ed <__DATA_REGION_ORIGIN__+0x8d>
}

static
void InitEndpoints()
{
	for (u8 i = 1; i < sizeof(_initEndpoints) && _initEndpoints[i] != 0; i++)
    41a6:	8f 5f       	subi	r24, 0xFF	; 255
    41a8:	87 30       	cpi	r24, 0x07	; 7
    41aa:	79 f7       	brne	.-34     	; 0x418a <__vector_11+0x2a2>
		UECFG1X = EP_DOUBLE_64;
#else
#error Unsupported value for USB_EP_SIZE
#endif
	}
	UERST = 0x7E;	// And reset them
    41ac:	8e e7       	ldi	r24, 0x7E	; 126
    41ae:	80 93 ea 00 	sts	0x00EA, r24	; 0x8000ea <__DATA_REGION_ORIGIN__+0x8a>
	UERST = 0;
    41b2:	10 92 ea 00 	sts	0x00EA, r1	; 0x8000ea <__DATA_REGION_ORIGIN__+0x8a>
		else if (SET_CONFIGURATION == r)
		{
			if (REQUEST_DEVICE == (requestType & REQUEST_RECIPIENT))
			{
				InitEndpoints();
				_usbConfiguration = setup.wValueL;
    41b6:	8f 89       	ldd	r24, Y+23	; 0x17
    41b8:	80 93 16 03 	sts	0x0316, r24	; 0x800316 <_usbConfiguration>
    41bc:	db ce       	rjmp	.-586    	; 0x3f74 <__vector_11+0x8c>
		{
		}
	}
	else
	{
		InitControl(setup.wLength);		//	Max length of transfer
    41be:	8b 8d       	ldd	r24, Y+27	; 0x1b
    41c0:	9c 8d       	ldd	r25, Y+28	; 0x1c
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    41c2:	10 92 e9 00 	sts	0x00E9, r1	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
static int _cmark;
static int _cend;
void InitControl(int end)
{
	SetEP(0);
	_cmark = 0;
    41c6:	10 92 04 03 	sts	0x0304, r1	; 0x800304 <_ZL6_cmark+0x1>
    41ca:	10 92 03 03 	sts	0x0303, r1	; 0x800303 <_ZL6_cmark>
	_cend = end;
    41ce:	90 93 02 03 	sts	0x0302, r25	; 0x800302 <_ZL5_cend+0x1>
    41d2:	80 93 01 03 	sts	0x0301, r24	; 0x800301 <_ZL5_cend>
static
bool ClassInterfaceRequest(USBSetup& setup)
{
	u8 i = setup.wIndex;

	if (CDC_ACM_INTERFACE == i)
    41d6:	89 8d       	ldd	r24, Y+25	; 0x19
    41d8:	81 11       	cpse	r24, r1
    41da:	92 c0       	rjmp	.+292    	; 0x4300 <__vector_11+0x418>
	return USB_SendControl(TRANSFER_PGM,&_cdcInterface,sizeof(_cdcInterface));
}

bool CDC_Setup(USBSetup& setup)
{
	u8 r = setup.bRequest;
    41dc:	8e 89       	ldd	r24, Y+22	; 0x16
	u8 requestType = setup.bmRequestType;
    41de:	9d 89       	ldd	r25, Y+21	; 0x15

	if (REQUEST_DEVICETOHOST_CLASS_INTERFACE == requestType)
    41e0:	91 3a       	cpi	r25, 0xA1	; 161
    41e2:	49 f4       	brne	.+18     	; 0x41f6 <__vector_11+0x30e>
	{
		if (CDC_GET_LINE_CODING == r)
    41e4:	81 32       	cpi	r24, 0x21	; 33
    41e6:	09 f0       	breq	.+2      	; 0x41ea <__vector_11+0x302>
    41e8:	7d cf       	rjmp	.-262    	; 0x40e4 <__vector_11+0x1fc>
		{
			USB_SendControl(0,(void*)&_usbLineInfo,7);
    41ea:	47 e0       	ldi	r20, 0x07	; 7
    41ec:	50 e0       	ldi	r21, 0x00	; 0
    41ee:	64 e0       	ldi	r22, 0x04	; 4
    41f0:	71 e0       	ldi	r23, 0x01	; 1
    41f2:	80 e0       	ldi	r24, 0x00	; 0
    41f4:	b3 cf       	rjmp	.-154    	; 0x415c <__vector_11+0x274>
			return true;
		}
	}

	if (REQUEST_HOSTTODEVICE_CLASS_INTERFACE == requestType)
    41f6:	91 32       	cpi	r25, 0x21	; 33
    41f8:	09 f0       	breq	.+2      	; 0x41fc <__vector_11+0x314>
    41fa:	74 cf       	rjmp	.-280    	; 0x40e4 <__vector_11+0x1fc>
	{
		if (CDC_SEND_BREAK == r)
    41fc:	83 32       	cpi	r24, 0x23	; 35
    41fe:	69 f4       	brne	.+26     	; 0x421a <__vector_11+0x332>
		{
			breakValue = ((uint16_t)setup.wValueH << 8) | setup.wValueL;
    4200:	8f 89       	ldd	r24, Y+23	; 0x17
    4202:	98 8d       	ldd	r25, Y+24	; 0x18
    4204:	b0 e0       	ldi	r27, 0x00	; 0
    4206:	a0 e0       	ldi	r26, 0x00	; 0
    4208:	80 93 00 01 	sts	0x0100, r24	; 0x800100 <__data_start>
    420c:	90 93 01 01 	sts	0x0101, r25	; 0x800101 <__data_start+0x1>
    4210:	a0 93 02 01 	sts	0x0102, r26	; 0x800102 <__data_start+0x2>
    4214:	b0 93 03 01 	sts	0x0103, r27	; 0x800103 <__data_start+0x3>
    4218:	ad ce       	rjmp	.-678    	; 0x3f74 <__vector_11+0x8c>
		}

		if (CDC_SET_LINE_CODING == r)
    421a:	80 32       	cpi	r24, 0x20	; 32
    421c:	69 f4       	brne	.+26     	; 0x4238 <__vector_11+0x350>
	UEINTX = ~(1<<TXINI);
}

static inline void WaitOUT(void)
{
	while (!(UEINTX & (1<<RXOUTI)))
    421e:	80 91 e8 00 	lds	r24, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
    4222:	82 ff       	sbrs	r24, 2
    4224:	fc cf       	rjmp	.-8      	; 0x421e <__vector_11+0x336>
			recvLength = 64;
		}

		// Write data to fit to the end (not the beginning) of the array
		WaitOUT();
		Recv((u8*)d + len - length, recvLength);
    4226:	67 e0       	ldi	r22, 0x07	; 7
    4228:	84 e0       	ldi	r24, 0x04	; 4
    422a:	91 e0       	ldi	r25, 0x01	; 1
    422c:	0e 94 e9 0b 	call	0x17d2	; 0x17d2 <_ZL4RecvPVhh>
	return (UEINTX & (1<<RXOUTI)) == 0;
}

static inline void ClearOUT(void)
{
	UEINTX = ~(1<<RXOUTI);
    4230:	8b ef       	ldi	r24, 0xFB	; 251
    4232:	80 93 e8 00 	sts	0x00E8, r24	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
    4236:	9e ce       	rjmp	.-708    	; 0x3f74 <__vector_11+0x8c>
		{
			USB_RecvControl((void*)&_usbLineInfo,7);
		}

		if (CDC_SET_CONTROL_LINE_STATE == r)
    4238:	82 32       	cpi	r24, 0x22	; 34
    423a:	09 f0       	breq	.+2      	; 0x423e <__vector_11+0x356>
    423c:	9b ce       	rjmp	.-714    	; 0x3f74 <__vector_11+0x8c>
		{
			_usbLineInfo.lineState = setup.wValueL;
    423e:	8f 89       	ldd	r24, Y+23	; 0x17
    4240:	80 93 0b 01 	sts	0x010B, r24	; 0x80010b <_ZL12_usbLineInfo+0x7>
	D_ENDPOINT(USB_ENDPOINT_IN (CDC_ENDPOINT_IN ),USB_ENDPOINT_TYPE_BULK,USB_EP_SIZE,0)
};

bool isLUFAbootloader()
{
	return pgm_read_word(FLASHEND - 1) == NEW_LUFA_SIGNATURE;
    4244:	ee ef       	ldi	r30, 0xFE	; 254
    4246:	ff e7       	ldi	r31, 0x7F	; 127
    4248:	85 91       	lpm	r24, Z+
    424a:	94 91       	lpm	r25, Z
// This is used to keep compatible with the old leonardo bootloaders.
// You are still able to set the magic key position manually to RAMEND-1 to save a few bytes for this check.
#if MAGIC_KEY_POS != (RAMEND-1)
			// For future boards save the key in the inproblematic RAMEND
			// Which is reserved for the main() return value (which will never return)
			if (isLUFAbootloader()) {
    424c:	8b 3f       	cpi	r24, 0xFB	; 251
    424e:	9c 4d       	sbci	r25, 0xDC	; 220
    4250:	51 f1       	breq	.+84     	; 0x42a6 <__vector_11+0x3be>
			// auto-reset into the bootloader is triggered when the port, already 
			// open at 1200 bps, is closed.  this is the signal to start the watchdog
			// with a relatively long period so it can finish housekeeping tasks
			// like servicing endpoints before the sketch ends

			uint16_t magic_key_pos = MAGIC_KEY_POS;
    4252:	e0 e0       	ldi	r30, 0x00	; 0
    4254:	f8 e0       	ldi	r31, 0x08	; 8
				magic_key_pos = (RAMEND-1);
			}
#endif

			// We check DTR state to determine if host port is open (bit 0 of lineState).
			if (1200 == _usbLineInfo.dwDTERate && (_usbLineInfo.lineState & 0x01) == 0)
    4256:	80 91 04 01 	lds	r24, 0x0104	; 0x800104 <_ZL12_usbLineInfo>
    425a:	90 91 05 01 	lds	r25, 0x0105	; 0x800105 <_ZL12_usbLineInfo+0x1>
    425e:	a0 91 06 01 	lds	r26, 0x0106	; 0x800106 <_ZL12_usbLineInfo+0x2>
    4262:	b0 91 07 01 	lds	r27, 0x0107	; 0x800107 <_ZL12_usbLineInfo+0x3>
    4266:	80 3b       	cpi	r24, 0xB0	; 176
    4268:	94 40       	sbci	r25, 0x04	; 4
    426a:	a1 05       	cpc	r26, r1
    426c:	b1 05       	cpc	r27, r1
    426e:	f1 f4       	brne	.+60     	; 0x42ac <__vector_11+0x3c4>
    4270:	80 91 0b 01 	lds	r24, 0x010B	; 0x80010b <_ZL12_usbLineInfo+0x7>
    4274:	80 fd       	sbrc	r24, 0
    4276:	1a c0       	rjmp	.+52     	; 0x42ac <__vector_11+0x3c4>
			{
#if MAGIC_KEY_POS != (RAMEND-1)
				// Backup ram value if its not a newer bootloader and it hasn't already been saved.
				// This should avoid memory corruption at least a bit, not fully
				if (magic_key_pos != (RAMEND-1) && *(uint16_t *)magic_key_pos != MAGIC_KEY) {
    4278:	ee 3f       	cpi	r30, 0xFE	; 254
    427a:	8a e0       	ldi	r24, 0x0A	; 10
    427c:	f8 07       	cpc	r31, r24
    427e:	89 f5       	brne	.+98     	; 0x42e2 <__vector_11+0x3fa>
					*(uint16_t *)(RAMEND-1) = *(uint16_t *)magic_key_pos;
				}
#endif
				// Store boot key
				*(uint16_t *)magic_key_pos = MAGIC_KEY;
    4280:	87 e7       	ldi	r24, 0x77	; 119
    4282:	97 e7       	ldi	r25, 0x77	; 119
    4284:	91 83       	std	Z+1, r25	; 0x01
    4286:	80 83       	st	Z, r24
				// Save the watchdog state in case the reset is aborted.
				wdtcsr_save = WDTCSR;
    4288:	80 91 60 00 	lds	r24, 0x0060	; 0x800060 <__DATA_REGION_ORIGIN__>
    428c:	80 93 05 03 	sts	0x0305, r24	; 0x800305 <_ZL11wdtcsr_save>
				: "n" (_SFR_MEM_ADDR(_WD_CONTROL_REG)),
				"r" ((uint8_t)(_BV(_WD_CHANGE_BIT) | _BV(WDE))),
				"r" ((uint8_t) ((value & 0x08 ? _WD_PS3_MASK : 0x00) |
						_BV(WDE) | (value & 0x07)) )
				: "r0"
		);
    4290:	88 e1       	ldi	r24, 0x18	; 24
    4292:	9b e0       	ldi	r25, 0x0B	; 11
    4294:	0f b6       	in	r0, 0x3f	; 63
    4296:	f8 94       	cli
    4298:	a8 95       	wdr
    429a:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
    429e:	0f be       	out	0x3f, r0	; 63
    42a0:	90 93 60 00 	sts	0x0060, r25	; 0x800060 <__DATA_REGION_ORIGIN__>
    42a4:	67 ce       	rjmp	.-818    	; 0x3f74 <__vector_11+0x8c>
#if MAGIC_KEY_POS != (RAMEND-1)
			// For future boards save the key in the inproblematic RAMEND
			// Which is reserved for the main() return value (which will never return)
			if (isLUFAbootloader()) {
				// horray, we got a new bootloader!
				magic_key_pos = (RAMEND-1);
    42a6:	ee ef       	ldi	r30, 0xFE	; 254
    42a8:	fa e0       	ldi	r31, 0x0A	; 10
    42aa:	d5 cf       	rjmp	.-86     	; 0x4256 <__vector_11+0x36e>
				*(uint16_t *)magic_key_pos = MAGIC_KEY;
				// Save the watchdog state in case the reset is aborted.
				wdtcsr_save = WDTCSR;
				wdt_enable(WDTO_120MS);
			}
			else if (*(uint16_t *)magic_key_pos == MAGIC_KEY)
    42ac:	80 81       	ld	r24, Z
    42ae:	91 81       	ldd	r25, Z+1	; 0x01
    42b0:	87 37       	cpi	r24, 0x77	; 119
    42b2:	97 47       	sbci	r25, 0x77	; 119
    42b4:	09 f0       	breq	.+2      	; 0x42b8 <__vector_11+0x3d0>
    42b6:	5e ce       	rjmp	.-836    	; 0x3f74 <__vector_11+0x8c>
				// To avoid spurious resets we set the watchdog to 120ms and eventually
				// cancel if DTR goes back high.
				// Cancellation is only done if an auto-reset was started, which is
				// indicated by the magic key having been set.

				wdt_reset();
    42b8:	a8 95       	wdr
				// Restore the watchdog state in case the sketch was using it.
				WDTCSR |= (1<<WDCE) | (1<<WDE);
    42ba:	80 91 60 00 	lds	r24, 0x0060	; 0x800060 <__DATA_REGION_ORIGIN__>
    42be:	88 61       	ori	r24, 0x18	; 24
    42c0:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
				WDTCSR = wdtcsr_save;
    42c4:	80 91 05 03 	lds	r24, 0x0305	; 0x800305 <_ZL11wdtcsr_save>
    42c8:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
#if MAGIC_KEY_POS != (RAMEND-1)
				// Restore backed up (old bootloader) magic key data
				if (magic_key_pos != (RAMEND-1)) {
    42cc:	ee 3f       	cpi	r30, 0xFE	; 254
    42ce:	2a e0       	ldi	r18, 0x0A	; 10
    42d0:	f2 07       	cpc	r31, r18
    42d2:	89 f0       	breq	.+34     	; 0x42f6 <__vector_11+0x40e>
					*(uint16_t *)magic_key_pos = *(uint16_t *)(RAMEND-1);
    42d4:	80 91 fe 0a 	lds	r24, 0x0AFE	; 0x800afe <__bss_end+0x370>
    42d8:	90 91 ff 0a 	lds	r25, 0x0AFF	; 0x800aff <__bss_end+0x371>
    42dc:	91 83       	std	Z+1, r25	; 0x01
    42de:	80 83       	st	Z, r24
    42e0:	49 ce       	rjmp	.-878    	; 0x3f74 <__vector_11+0x8c>
			if (1200 == _usbLineInfo.dwDTERate && (_usbLineInfo.lineState & 0x01) == 0)
			{
#if MAGIC_KEY_POS != (RAMEND-1)
				// Backup ram value if its not a newer bootloader and it hasn't already been saved.
				// This should avoid memory corruption at least a bit, not fully
				if (magic_key_pos != (RAMEND-1) && *(uint16_t *)magic_key_pos != MAGIC_KEY) {
    42e2:	80 81       	ld	r24, Z
    42e4:	91 81       	ldd	r25, Z+1	; 0x01
    42e6:	87 37       	cpi	r24, 0x77	; 119
    42e8:	98 07       	cpc	r25, r24
    42ea:	51 f2       	breq	.-108    	; 0x4280 <__vector_11+0x398>
					*(uint16_t *)(RAMEND-1) = *(uint16_t *)magic_key_pos;
    42ec:	90 93 ff 0a 	sts	0x0AFF, r25	; 0x800aff <__bss_end+0x371>
    42f0:	80 93 fe 0a 	sts	0x0AFE, r24	; 0x800afe <__bss_end+0x370>
    42f4:	c5 cf       	rjmp	.-118    	; 0x4280 <__vector_11+0x398>
					*(uint16_t *)magic_key_pos = *(uint16_t *)(RAMEND-1);
				} else
#endif
				{
				// Clean up RAMEND key
					*(uint16_t *)magic_key_pos = 0x0000;
    42f6:	10 92 ff 0a 	sts	0x0AFF, r1	; 0x800aff <__bss_end+0x371>
    42fa:	10 92 fe 0a 	sts	0x0AFE, r1	; 0x800afe <__bss_end+0x370>
    42fe:	3a ce       	rjmp	.-908    	; 0x3f74 <__vector_11+0x8c>

	if (CDC_ACM_INTERFACE == i)
		return CDC_Setup(setup);

#ifdef PLUGGABLE_USB_ENABLED
	return PluggableUSB().setup(setup);
    4300:	0e 94 9c 0a 	call	0x1538	; 0x1538 <_Z12PluggableUSBv>
}

bool PluggableUSB_::setup(USBSetup& setup)
{
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
    4304:	dc 01       	movw	r26, r24
    4306:	12 96       	adiw	r26, 0x02	; 2
    4308:	0d 91       	ld	r16, X+
    430a:	1c 91       	ld	r17, X
    430c:	01 15       	cp	r16, r1
    430e:	11 05       	cpc	r17, r1
    4310:	09 f4       	brne	.+2      	; 0x4314 <__vector_11+0x42c>
    4312:	e8 ce       	rjmp	.-560    	; 0x40e4 <__vector_11+0x1fc>
		if (node->setup(setup)) {
    4314:	d8 01       	movw	r26, r16
    4316:	ed 91       	ld	r30, X+
    4318:	fc 91       	ld	r31, X
    431a:	01 90       	ld	r0, Z+
    431c:	f0 81       	ld	r31, Z
    431e:	e0 2d       	mov	r30, r0
    4320:	be 01       	movw	r22, r28
    4322:	6b 5e       	subi	r22, 0xEB	; 235
    4324:	7f 4f       	sbci	r23, 0xFF	; 255
    4326:	c8 01       	movw	r24, r16
    4328:	09 95       	icall
    432a:	81 11       	cpse	r24, r1
    432c:	23 ce       	rjmp	.-954    	; 0x3f74 <__vector_11+0x8c>
}

bool PluggableUSB_::setup(USBSetup& setup)
{
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
    432e:	f8 01       	movw	r30, r16
    4330:	00 85       	ldd	r16, Z+8	; 0x08
    4332:	11 85       	ldd	r17, Z+9	; 0x09
    4334:	eb cf       	rjmp	.-42     	; 0x430c <__vector_11+0x424>

	InitControl(setup.wLength);
#ifdef PLUGGABLE_USB_ENABLED
	int ret = PluggableUSB().getDescriptor(setup);
	if (ret != 0) {
		return (ret > 0 ? true : false);
    4336:	18 16       	cp	r1, r24
    4338:	19 06       	cpc	r1, r25
    433a:	0c f4       	brge	.+2      	; 0x433e <__vector_11+0x456>
    433c:	1b ce       	rjmp	.-970    	; 0x3f74 <__vector_11+0x8c>
    433e:	d2 ce       	rjmp	.-604    	; 0x40e4 <__vector_11+0x1fc>
	}
#endif

	const u8* desc_addr = 0;
	if (USB_DEVICE_DESCRIPTOR_TYPE == t)
    4340:	f1 e0       	ldi	r31, 0x01	; 1
    4342:	ff 12       	cpse	r15, r31
    4344:	be ce       	rjmp	.-644    	; 0x40c2 <__vector_11+0x1da>
	{
		desc_addr = (const u8*)&USB_DeviceDescriptorIAD;
    4346:	69 e2       	ldi	r22, 0x29	; 41
    4348:	70 e1       	ldi	r23, 0x10	; 16
    434a:	04 cf       	rjmp	.-504    	; 0x4154 <__vector_11+0x26c>

0000434c <__vector_23>:
#if defined(TIM0_OVF_vect)
ISR(TIM0_OVF_vect)
#else
ISR(TIMER0_OVF_vect)
#endif
{
    434c:	1f 92       	push	r1
    434e:	0f 92       	push	r0
    4350:	0f b6       	in	r0, 0x3f	; 63
    4352:	0f 92       	push	r0
    4354:	11 24       	eor	r1, r1
    4356:	2f 93       	push	r18
    4358:	3f 93       	push	r19
    435a:	8f 93       	push	r24
    435c:	9f 93       	push	r25
    435e:	af 93       	push	r26
    4360:	bf 93       	push	r27
	// copy these to local variables so they can be stored in registers
	// (volatile variables must be read from memory on every access)
	unsigned long m = timer0_millis;
    4362:	80 91 fb 02 	lds	r24, 0x02FB	; 0x8002fb <timer0_millis>
    4366:	90 91 fc 02 	lds	r25, 0x02FC	; 0x8002fc <timer0_millis+0x1>
    436a:	a0 91 fd 02 	lds	r26, 0x02FD	; 0x8002fd <timer0_millis+0x2>
    436e:	b0 91 fe 02 	lds	r27, 0x02FE	; 0x8002fe <timer0_millis+0x3>
	unsigned char f = timer0_fract;
    4372:	30 91 e8 02 	lds	r19, 0x02E8	; 0x8002e8 <timer0_fract>

	m += MILLIS_INC;
	f += FRACT_INC;
    4376:	23 e0       	ldi	r18, 0x03	; 3
    4378:	23 0f       	add	r18, r19
	if (f >= FRACT_MAX) {
    437a:	2d 37       	cpi	r18, 0x7D	; 125
    437c:	58 f5       	brcc	.+86     	; 0x43d4 <__vector_23+0x88>
	// copy these to local variables so they can be stored in registers
	// (volatile variables must be read from memory on every access)
	unsigned long m = timer0_millis;
	unsigned char f = timer0_fract;

	m += MILLIS_INC;
    437e:	01 96       	adiw	r24, 0x01	; 1
    4380:	a1 1d       	adc	r26, r1
    4382:	b1 1d       	adc	r27, r1
	if (f >= FRACT_MAX) {
		f -= FRACT_MAX;
		m += 1;
	}

	timer0_fract = f;
    4384:	20 93 e8 02 	sts	0x02E8, r18	; 0x8002e8 <timer0_fract>
	timer0_millis = m;
    4388:	80 93 fb 02 	sts	0x02FB, r24	; 0x8002fb <timer0_millis>
    438c:	90 93 fc 02 	sts	0x02FC, r25	; 0x8002fc <timer0_millis+0x1>
    4390:	a0 93 fd 02 	sts	0x02FD, r26	; 0x8002fd <timer0_millis+0x2>
    4394:	b0 93 fe 02 	sts	0x02FE, r27	; 0x8002fe <timer0_millis+0x3>
	timer0_overflow_count++;
    4398:	80 91 e9 02 	lds	r24, 0x02E9	; 0x8002e9 <timer0_overflow_count>
    439c:	90 91 ea 02 	lds	r25, 0x02EA	; 0x8002ea <timer0_overflow_count+0x1>
    43a0:	a0 91 eb 02 	lds	r26, 0x02EB	; 0x8002eb <timer0_overflow_count+0x2>
    43a4:	b0 91 ec 02 	lds	r27, 0x02EC	; 0x8002ec <timer0_overflow_count+0x3>
    43a8:	01 96       	adiw	r24, 0x01	; 1
    43aa:	a1 1d       	adc	r26, r1
    43ac:	b1 1d       	adc	r27, r1
    43ae:	80 93 e9 02 	sts	0x02E9, r24	; 0x8002e9 <timer0_overflow_count>
    43b2:	90 93 ea 02 	sts	0x02EA, r25	; 0x8002ea <timer0_overflow_count+0x1>
    43b6:	a0 93 eb 02 	sts	0x02EB, r26	; 0x8002eb <timer0_overflow_count+0x2>
    43ba:	b0 93 ec 02 	sts	0x02EC, r27	; 0x8002ec <timer0_overflow_count+0x3>
}
    43be:	bf 91       	pop	r27
    43c0:	af 91       	pop	r26
    43c2:	9f 91       	pop	r25
    43c4:	8f 91       	pop	r24
    43c6:	3f 91       	pop	r19
    43c8:	2f 91       	pop	r18
    43ca:	0f 90       	pop	r0
    43cc:	0f be       	out	0x3f, r0	; 63
    43ce:	0f 90       	pop	r0
    43d0:	1f 90       	pop	r1
    43d2:	18 95       	reti
	unsigned char f = timer0_fract;

	m += MILLIS_INC;
	f += FRACT_INC;
	if (f >= FRACT_MAX) {
		f -= FRACT_MAX;
    43d4:	26 e8       	ldi	r18, 0x86	; 134
    43d6:	23 0f       	add	r18, r19
		m += 1;
    43d8:	02 96       	adiw	r24, 0x02	; 2
    43da:	a1 1d       	adc	r26, r1
    43dc:	b1 1d       	adc	r27, r1
    43de:	d2 cf       	rjmp	.-92     	; 0x4384 <__vector_23+0x38>

000043e0 <__vector_32>:
  }
}

// TIMER 3
ISR(TIMER3_COMPA_vect)
{
    43e0:	1f 92       	push	r1
    43e2:	0f 92       	push	r0
    43e4:	0f b6       	in	r0, 0x3f	; 63
    43e6:	0f 92       	push	r0
    43e8:	11 24       	eor	r1, r1
    43ea:	2f 93       	push	r18
    43ec:	3f 93       	push	r19
    43ee:	4f 93       	push	r20
    43f0:	5f 93       	push	r21
    43f2:	6f 93       	push	r22
    43f4:	7f 93       	push	r23
    43f6:	8f 93       	push	r24
    43f8:	9f 93       	push	r25
    43fa:	af 93       	push	r26
    43fc:	bf 93       	push	r27
    43fe:	ef 93       	push	r30
    4400:	ff 93       	push	r31
  tune_playing = false;
}

void ArduboyTunes::soundOutput()
{
  if (wait_timer_playing) { // toggle the pin if we're sounding a note
    4402:	80 91 e5 02 	lds	r24, 0x02E5	; 0x8002e5 <wait_timer_playing>
    4406:	88 23       	and	r24, r24
    4408:	49 f0       	breq	.+18     	; 0x441c <__vector_32+0x3c>
    *_tunes_timer3_pin_port ^= _tunes_timer3_pin_mask;
    440a:	80 91 ed 02 	lds	r24, 0x02ED	; 0x8002ed <_tunes_timer3_pin_mask>
    440e:	e0 91 ee 02 	lds	r30, 0x02EE	; 0x8002ee <_tunes_timer3_pin_port>
    4412:	f0 91 ef 02 	lds	r31, 0x02EF	; 0x8002ef <_tunes_timer3_pin_port+0x1>
    4416:	90 81       	ld	r25, Z
    4418:	89 27       	eor	r24, r25
    441a:	80 83       	st	Z, r24
  }
  if (tune_playing && wait_toggle_count && --wait_toggle_count == 0) {
    441c:	80 91 18 03 	lds	r24, 0x0318	; 0x800318 <tune_playing>
    4420:	88 23       	and	r24, r24
    4422:	29 f1       	breq	.+74     	; 0x446e <__vector_32+0x8e>
    4424:	80 91 e1 02 	lds	r24, 0x02E1	; 0x8002e1 <wait_toggle_count>
    4428:	90 91 e2 02 	lds	r25, 0x02E2	; 0x8002e2 <wait_toggle_count+0x1>
    442c:	a0 91 e3 02 	lds	r26, 0x02E3	; 0x8002e3 <wait_toggle_count+0x2>
    4430:	b0 91 e4 02 	lds	r27, 0x02E4	; 0x8002e4 <wait_toggle_count+0x3>
    4434:	89 2b       	or	r24, r25
    4436:	8a 2b       	or	r24, r26
    4438:	8b 2b       	or	r24, r27
    443a:	c9 f0       	breq	.+50     	; 0x446e <__vector_32+0x8e>
    443c:	80 91 e1 02 	lds	r24, 0x02E1	; 0x8002e1 <wait_toggle_count>
    4440:	90 91 e2 02 	lds	r25, 0x02E2	; 0x8002e2 <wait_toggle_count+0x1>
    4444:	a0 91 e3 02 	lds	r26, 0x02E3	; 0x8002e3 <wait_toggle_count+0x2>
    4448:	b0 91 e4 02 	lds	r27, 0x02E4	; 0x8002e4 <wait_toggle_count+0x3>
    444c:	01 97       	sbiw	r24, 0x01	; 1
    444e:	a1 09       	sbc	r26, r1
    4450:	b1 09       	sbc	r27, r1
    4452:	80 93 e1 02 	sts	0x02E1, r24	; 0x8002e1 <wait_toggle_count>
    4456:	90 93 e2 02 	sts	0x02E2, r25	; 0x8002e2 <wait_toggle_count+0x1>
    445a:	a0 93 e3 02 	sts	0x02E3, r26	; 0x8002e3 <wait_toggle_count+0x2>
    445e:	b0 93 e4 02 	sts	0x02E4, r27	; 0x8002e4 <wait_toggle_count+0x3>
    4462:	89 2b       	or	r24, r25
    4464:	8a 2b       	or	r24, r26
    4466:	8b 2b       	or	r24, r27
    4468:	11 f4       	brne	.+4      	; 0x446e <__vector_32+0x8e>
    // end of a score wait, so execute more score commands
    ArduboyTunes::step();  // execute commands
    446a:	0e 94 38 0f 	call	0x1e70	; 0x1e70 <_ZN12ArduboyTunes4stepEv>
ISR(TIMER3_COMPA_vect)
{
  // Timer 3 is the one assigned first, so we keep it running always
  // and use it to time score waits, whether or not it is playing a note.
  ArduboyTunes::soundOutput();
}
    446e:	ff 91       	pop	r31
    4470:	ef 91       	pop	r30
    4472:	bf 91       	pop	r27
    4474:	af 91       	pop	r26
    4476:	9f 91       	pop	r25
    4478:	8f 91       	pop	r24
    447a:	7f 91       	pop	r23
    447c:	6f 91       	pop	r22
    447e:	5f 91       	pop	r21
    4480:	4f 91       	pop	r20
    4482:	3f 91       	pop	r19
    4484:	2f 91       	pop	r18
    4486:	0f 90       	pop	r0
    4488:	0f be       	out	0x3f, r0	; 63
    448a:	0f 90       	pop	r0
    448c:	1f 90       	pop	r1
    448e:	18 95       	reti

00004490 <__vector_17>:
  bitWrite(TIMSK1, OCIE1A, 1);
}

// TIMER 1
ISR(TIMER1_COMPA_vect)
{
    4490:	1f 92       	push	r1
    4492:	0f 92       	push	r0
    4494:	0f b6       	in	r0, 0x3f	; 63
    4496:	0f 92       	push	r0
    4498:	11 24       	eor	r1, r1
    449a:	8f 93       	push	r24
    449c:	9f 93       	push	r25
    449e:	af 93       	push	r26
    44a0:	bf 93       	push	r27
    44a2:	ef 93       	push	r30
    44a4:	ff 93       	push	r31
  if (tonePlaying) {
    44a6:	80 91 e0 02 	lds	r24, 0x02E0	; 0x8002e0 <tonePlaying>
    44aa:	88 23       	and	r24, r24
    44ac:	09 f4       	brne	.+2      	; 0x44b0 <__vector_17+0x20>
    44ae:	52 c0       	rjmp	.+164    	; 0x4554 <__vector_17+0xc4>
    if (timer1_toggle_count != 0) {
    44b0:	80 91 dc 02 	lds	r24, 0x02DC	; 0x8002dc <timer1_toggle_count>
    44b4:	90 91 dd 02 	lds	r25, 0x02DD	; 0x8002dd <timer1_toggle_count+0x1>
    44b8:	a0 91 de 02 	lds	r26, 0x02DE	; 0x8002de <timer1_toggle_count+0x2>
    44bc:	b0 91 df 02 	lds	r27, 0x02DF	; 0x8002df <timer1_toggle_count+0x3>
    44c0:	89 2b       	or	r24, r25
    44c2:	8a 2b       	or	r24, r26
    44c4:	8b 2b       	or	r24, r27
    44c6:	a1 f1       	breq	.+104    	; 0x4530 <__vector_17+0xa0>
      // toggle the pin
      *_tunes_timer1_pin_port ^= _tunes_timer1_pin_mask;
    44c8:	90 91 f0 02 	lds	r25, 0x02F0	; 0x8002f0 <_tunes_timer1_pin_mask>
    44cc:	e0 91 f1 02 	lds	r30, 0x02F1	; 0x8002f1 <_tunes_timer1_pin_port>
    44d0:	f0 91 f2 02 	lds	r31, 0x02F2	; 0x8002f2 <_tunes_timer1_pin_port+0x1>
    44d4:	80 81       	ld	r24, Z
    44d6:	89 27       	eor	r24, r25
    44d8:	80 83       	st	Z, r24
      if (timer1_toggle_count > 0) timer1_toggle_count--;
    44da:	80 91 dc 02 	lds	r24, 0x02DC	; 0x8002dc <timer1_toggle_count>
    44de:	90 91 dd 02 	lds	r25, 0x02DD	; 0x8002dd <timer1_toggle_count+0x1>
    44e2:	a0 91 de 02 	lds	r26, 0x02DE	; 0x8002de <timer1_toggle_count+0x2>
    44e6:	b0 91 df 02 	lds	r27, 0x02DF	; 0x8002df <timer1_toggle_count+0x3>
    44ea:	18 16       	cp	r1, r24
    44ec:	19 06       	cpc	r1, r25
    44ee:	1a 06       	cpc	r1, r26
    44f0:	1b 06       	cpc	r1, r27
    44f2:	9c f4       	brge	.+38     	; 0x451a <__vector_17+0x8a>
    44f4:	80 91 dc 02 	lds	r24, 0x02DC	; 0x8002dc <timer1_toggle_count>
    44f8:	90 91 dd 02 	lds	r25, 0x02DD	; 0x8002dd <timer1_toggle_count+0x1>
    44fc:	a0 91 de 02 	lds	r26, 0x02DE	; 0x8002de <timer1_toggle_count+0x2>
    4500:	b0 91 df 02 	lds	r27, 0x02DF	; 0x8002df <timer1_toggle_count+0x3>
    4504:	01 97       	sbiw	r24, 0x01	; 1
    4506:	a1 09       	sbc	r26, r1
    4508:	b1 09       	sbc	r27, r1
    450a:	80 93 dc 02 	sts	0x02DC, r24	; 0x8002dc <timer1_toggle_count>
    450e:	90 93 dd 02 	sts	0x02DD, r25	; 0x8002dd <timer1_toggle_count+0x1>
    4512:	a0 93 de 02 	sts	0x02DE, r26	; 0x8002de <timer1_toggle_count+0x2>
    4516:	b0 93 df 02 	sts	0x02DF, r27	; 0x8002df <timer1_toggle_count+0x3>
    }
  }
  else {
    *_tunes_timer1_pin_port ^= _tunes_timer1_pin_mask;  // toggle the pin
  }
}
    451a:	ff 91       	pop	r31
    451c:	ef 91       	pop	r30
    451e:	bf 91       	pop	r27
    4520:	af 91       	pop	r26
    4522:	9f 91       	pop	r25
    4524:	8f 91       	pop	r24
    4526:	0f 90       	pop	r0
    4528:	0f be       	out	0x3f, r0	; 63
    452a:	0f 90       	pop	r0
    452c:	1f 90       	pop	r1
    452e:	18 95       	reti
      // toggle the pin
      *_tunes_timer1_pin_port ^= _tunes_timer1_pin_mask;
      if (timer1_toggle_count > 0) timer1_toggle_count--;
    }
    else {
      tonePlaying = false;
    4530:	10 92 e0 02 	sts	0x02E0, r1	; 0x8002e0 <tonePlaying>
      TIMSK1 &= ~(1 << OCIE1A);                 // disable the interrupt
    4534:	80 91 6f 00 	lds	r24, 0x006F	; 0x80006f <__DATA_REGION_ORIGIN__+0xf>
    4538:	8d 7f       	andi	r24, 0xFD	; 253
    453a:	80 93 6f 00 	sts	0x006F, r24	; 0x80006f <__DATA_REGION_ORIGIN__+0xf>
      *_tunes_timer1_pin_port &= ~(_tunes_timer1_pin_mask);   // keep pin low after stop
    453e:	80 91 f0 02 	lds	r24, 0x02F0	; 0x8002f0 <_tunes_timer1_pin_mask>
    4542:	e0 91 f1 02 	lds	r30, 0x02F1	; 0x8002f1 <_tunes_timer1_pin_port>
    4546:	f0 91 f2 02 	lds	r31, 0x02F2	; 0x8002f2 <_tunes_timer1_pin_port+0x1>
    454a:	90 81       	ld	r25, Z
    454c:	80 95       	com	r24
    454e:	89 23       	and	r24, r25
    }
  }
  else {
    *_tunes_timer1_pin_port ^= _tunes_timer1_pin_mask;  // toggle the pin
    4550:	80 83       	st	Z, r24
    4552:	e3 cf       	rjmp	.-58     	; 0x451a <__vector_17+0x8a>
    4554:	90 91 f0 02 	lds	r25, 0x02F0	; 0x8002f0 <_tunes_timer1_pin_mask>
    4558:	e0 91 f1 02 	lds	r30, 0x02F1	; 0x8002f1 <_tunes_timer1_pin_port>
    455c:	f0 91 f2 02 	lds	r31, 0x02F2	; 0x8002f2 <_tunes_timer1_pin_port+0x1>
    4560:	80 81       	ld	r24, Z
    4562:	89 27       	eor	r24, r25
    4564:	f5 cf       	rjmp	.-22     	; 0x4550 <__vector_17+0xc0>

00004566 <_GLOBAL__I_65535_0_MyArduboy.cpp.o.2815>:
    4566:	ee e1       	ldi	r30, 0x1E	; 30
    4568:	f3 e0       	ldi	r31, 0x03	; 3
    456a:	13 82       	std	Z+3, r1	; 0x03
    456c:	12 82       	std	Z+2, r1	; 0x02
    456e:	88 ee       	ldi	r24, 0xE8	; 232
    4570:	93 e0       	ldi	r25, 0x03	; 3
    4572:	a0 e0       	ldi	r26, 0x00	; 0
    4574:	b0 e0       	ldi	r27, 0x00	; 0
    4576:	84 83       	std	Z+4, r24	; 0x04
    4578:	95 83       	std	Z+5, r25	; 0x05
    457a:	a6 83       	std	Z+6, r26	; 0x06
    457c:	b7 83       	std	Z+7, r27	; 0x07
    457e:	81 e3       	ldi	r24, 0x31	; 49
    4580:	91 e0       	ldi	r25, 0x01	; 1
    4582:	91 83       	std	Z+1, r25	; 0x01
    4584:	80 83       	st	Z, r24
    4586:	8f ef       	ldi	r24, 0xFF	; 255
    4588:	9f ef       	ldi	r25, 0xFF	; 255
    458a:	95 87       	std	Z+13, r25	; 0x0d
    458c:	84 87       	std	Z+12, r24	; 0x0c
    458e:	ee e6       	ldi	r30, 0x6E	; 110
    4590:	f3 e0       	ldi	r31, 0x03	; 3
    4592:	13 82       	std	Z+3, r1	; 0x03
    4594:	12 82       	std	Z+2, r1	; 0x02
    4596:	8c e3       	ldi	r24, 0x3C	; 60
    4598:	86 83       	std	Z+6, r24	; 0x06
    459a:	80 e1       	ldi	r24, 0x10	; 16
    459c:	81 87       	std	Z+9, r24	; 0x09
    459e:	10 86       	std	Z+8, r1	; 0x08
    45a0:	17 82       	std	Z+7, r1	; 0x07
    45a2:	16 86       	std	Z+14, r1	; 0x0e
    45a4:	17 86       	std	Z+15, r1	; 0x0f
    45a6:	10 8a       	std	Z+16, r1	; 0x10
    45a8:	11 8a       	std	Z+17, r1	; 0x11
    45aa:	12 8a       	std	Z+18, r1	; 0x12
    45ac:	10 92 83 07 	sts	0x0783, r1	; 0x800783 <arduboy+0x415>
    45b0:	10 92 82 07 	sts	0x0782, r1	; 0x800782 <arduboy+0x414>
    45b4:	10 92 85 07 	sts	0x0785, r1	; 0x800785 <arduboy+0x417>
    45b8:	10 92 84 07 	sts	0x0784, r1	; 0x800784 <arduboy+0x416>
    45bc:	81 e0       	ldi	r24, 0x01	; 1
    45be:	80 93 86 07 	sts	0x0786, r24	; 0x800786 <arduboy+0x418>
    45c2:	23 e4       	ldi	r18, 0x43	; 67
    45c4:	31 e0       	ldi	r19, 0x01	; 1
    45c6:	31 83       	std	Z+1, r19	; 0x01
    45c8:	20 83       	st	Z, r18
    45ca:	80 93 88 07 	sts	0x0788, r24	; 0x800788 <arduboy+0x41a>
    45ce:	10 92 89 07 	sts	0x0789, r1	; 0x800789 <arduboy+0x41b>
    45d2:	08 95       	ret

000045d4 <main>:

void init()
{
	// this needs to be called before setup() or some functions won't
	// work there
	sei();
    45d4:	78 94       	sei
	
	// on the ATmega168, timer 0 is also used for fast hardware pwm
	// (using phase-correct PWM would mean that timer 0 overflowed half as often
	// resulting in different millis() behavior on the ATmega8 and ATmega168)
#if defined(TCCR0A) && defined(WGM01)
	sbi(TCCR0A, WGM01);
    45d6:	84 b5       	in	r24, 0x24	; 36
    45d8:	82 60       	ori	r24, 0x02	; 2
    45da:	84 bd       	out	0x24, r24	; 36
	sbi(TCCR0A, WGM00);
    45dc:	84 b5       	in	r24, 0x24	; 36
    45de:	81 60       	ori	r24, 0x01	; 1
    45e0:	84 bd       	out	0x24, r24	; 36
	// this combination is for the standard atmega8
	sbi(TCCR0, CS01);
	sbi(TCCR0, CS00);
#elif defined(TCCR0B) && defined(CS01) && defined(CS00)
	// this combination is for the standard 168/328/1280/2560
	sbi(TCCR0B, CS01);
    45e2:	85 b5       	in	r24, 0x25	; 37
    45e4:	82 60       	ori	r24, 0x02	; 2
    45e6:	85 bd       	out	0x25, r24	; 37
	sbi(TCCR0B, CS00);
    45e8:	85 b5       	in	r24, 0x25	; 37
    45ea:	81 60       	ori	r24, 0x01	; 1
    45ec:	85 bd       	out	0x25, r24	; 37

	// enable timer 0 overflow interrupt
#if defined(TIMSK) && defined(TOIE0)
	sbi(TIMSK, TOIE0);
#elif defined(TIMSK0) && defined(TOIE0)
	sbi(TIMSK0, TOIE0);
    45ee:	80 91 6e 00 	lds	r24, 0x006E	; 0x80006e <__DATA_REGION_ORIGIN__+0xe>
    45f2:	81 60       	ori	r24, 0x01	; 1
    45f4:	80 93 6e 00 	sts	0x006E, r24	; 0x80006e <__DATA_REGION_ORIGIN__+0xe>
	// this is better for motors as it ensures an even waveform
	// note, however, that fast pwm mode can achieve a frequency of up
	// 8 MHz (with a 16 MHz clock) at 50% duty cycle

#if defined(TCCR1B) && defined(CS11) && defined(CS10)
	TCCR1B = 0;
    45f8:	10 92 81 00 	sts	0x0081, r1	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>

	// set timer 1 prescale factor to 64
	sbi(TCCR1B, CS11);
    45fc:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
    4600:	82 60       	ori	r24, 0x02	; 2
    4602:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
#if F_CPU >= 8000000L
	sbi(TCCR1B, CS10);
    4606:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
    460a:	81 60       	ori	r24, 0x01	; 1
    460c:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
	sbi(TCCR1, CS10);
#endif
#endif
	// put timer 1 in 8-bit phase correct pwm mode
#if defined(TCCR1A) && defined(WGM10)
	sbi(TCCR1A, WGM10);
    4610:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
    4614:	81 60       	ori	r24, 0x01	; 1
    4616:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
//#else
	// Timer 2 not finished (may not be present on this CPU)
#endif

#if defined(TCCR3B) && defined(CS31) && defined(WGM30)
	sbi(TCCR3B, CS31);		// set timer 3 prescale factor to 64
    461a:	80 91 91 00 	lds	r24, 0x0091	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
    461e:	82 60       	ori	r24, 0x02	; 2
    4620:	80 93 91 00 	sts	0x0091, r24	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
	sbi(TCCR3B, CS30);
    4624:	80 91 91 00 	lds	r24, 0x0091	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
    4628:	81 60       	ori	r24, 0x01	; 1
    462a:	80 93 91 00 	sts	0x0091, r24	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
	sbi(TCCR3A, WGM30);		// put timer 3 in 8-bit phase correct pwm mode
    462e:	80 91 90 00 	lds	r24, 0x0090	; 0x800090 <__DATA_REGION_ORIGIN__+0x30>
    4632:	81 60       	ori	r24, 0x01	; 1
    4634:	80 93 90 00 	sts	0x0090, r24	; 0x800090 <__DATA_REGION_ORIGIN__+0x30>
#endif

#if defined(TCCR4A) && defined(TCCR4B) && defined(TCCR4D) /* beginning of timer4 block for 32U4 and similar */
	sbi(TCCR4B, CS42);		// set timer4 prescale factor to 64
    4638:	80 91 c1 00 	lds	r24, 0x00C1	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
    463c:	84 60       	ori	r24, 0x04	; 4
    463e:	80 93 c1 00 	sts	0x00C1, r24	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
	sbi(TCCR4B, CS41);
    4642:	80 91 c1 00 	lds	r24, 0x00C1	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
    4646:	82 60       	ori	r24, 0x02	; 2
    4648:	80 93 c1 00 	sts	0x00C1, r24	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
	sbi(TCCR4B, CS40);
    464c:	80 91 c1 00 	lds	r24, 0x00C1	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
    4650:	81 60       	ori	r24, 0x01	; 1
    4652:	80 93 c1 00 	sts	0x00C1, r24	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
	sbi(TCCR4D, WGM40);		// put timer 4 in phase- and frequency-correct PWM mode	
    4656:	80 91 c3 00 	lds	r24, 0x00C3	; 0x8000c3 <__DATA_REGION_ORIGIN__+0x63>
    465a:	81 60       	ori	r24, 0x01	; 1
    465c:	80 93 c3 00 	sts	0x00C3, r24	; 0x8000c3 <__DATA_REGION_ORIGIN__+0x63>
	sbi(TCCR4A, PWM4A);		// enable PWM mode for comparator OCR4A
    4660:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__DATA_REGION_ORIGIN__+0x60>
    4664:	82 60       	ori	r24, 0x02	; 2
    4666:	80 93 c0 00 	sts	0x00C0, r24	; 0x8000c0 <__DATA_REGION_ORIGIN__+0x60>
	sbi(TCCR4C, PWM4D);		// enable PWM mode for comparator OCR4D
    466a:	80 91 c2 00 	lds	r24, 0x00C2	; 0x8000c2 <__DATA_REGION_ORIGIN__+0x62>
    466e:	81 60       	ori	r24, 0x01	; 1
    4670:	80 93 c2 00 	sts	0x00C2, r24	; 0x8000c2 <__DATA_REGION_ORIGIN__+0x62>
#endif

#if defined(ADCSRA)
	// set a2d prescaler so we are inside the desired 50-200 KHz range.
	#if F_CPU >= 16000000 // 16 MHz / 128 = 125 KHz
		sbi(ADCSRA, ADPS2);
    4674:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
    4678:	84 60       	ori	r24, 0x04	; 4
    467a:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
		sbi(ADCSRA, ADPS1);
    467e:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
    4682:	82 60       	ori	r24, 0x02	; 2
    4684:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
		sbi(ADCSRA, ADPS0);
    4688:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
    468c:	81 60       	ori	r24, 0x01	; 1
    468e:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
		cbi(ADCSRA, ADPS2);
		cbi(ADCSRA, ADPS1);
		sbi(ADCSRA, ADPS0);
	#endif
	// enable a2d conversions
	sbi(ADCSRA, ADEN);
    4692:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
    4696:	80 68       	ori	r24, 0x80	; 128
    4698:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
{
}

void USBDevice_::attach()
{
	_usbConfiguration = 0;
    469c:	10 92 16 03 	sts	0x0316, r1	; 0x800316 <_usbConfiguration>
	_usbCurrentStatus = 0;
    46a0:	10 92 06 03 	sts	0x0306, r1	; 0x800306 <_usbCurrentStatus>
	_usbSuspendState = 0;
    46a4:	10 92 08 03 	sts	0x0308, r1	; 0x800308 <_usbSuspendState>
}

static inline void USB_ClockEnable()
{
#if defined(UHWCON)
	UHWCON |= (1<<UVREGE);			// power internal reg
    46a8:	80 91 d7 00 	lds	r24, 0x00D7	; 0x8000d7 <__DATA_REGION_ORIGIN__+0x77>
    46ac:	81 60       	ori	r24, 0x01	; 1
    46ae:	80 93 d7 00 	sts	0x00D7, r24	; 0x8000d7 <__DATA_REGION_ORIGIN__+0x77>
#endif
	USBCON = (1<<USBE) | (1<<FRZCLK);	// clock frozen, usb enabled
    46b2:	80 ea       	ldi	r24, 0xA0	; 160
    46b4:	80 93 d8 00 	sts	0x00D8, r24	; 0x8000d8 <__DATA_REGION_ORIGIN__+0x78>

// ATmega32U4
#if defined(PINDIV)
#if F_CPU == 16000000UL
	PLLCSR |= (1<<PINDIV);                   // Need 16 MHz xtal
    46b8:	89 b5       	in	r24, 0x29	; 41
    46ba:	80 61       	ori	r24, 0x10	; 16
    46bc:	89 bd       	out	0x29, r24	; 41
#endif
#else
#error "USB Chip not supported, please defined method of USB PLL initialization"
#endif

	PLLCSR |= (1<<PLLE);
    46be:	89 b5       	in	r24, 0x29	; 41
    46c0:	82 60       	ori	r24, 0x02	; 2
    46c2:	89 bd       	out	0x29, r24	; 41
	while (!(PLLCSR & (1<<PLOCK)))		// wait for lock pll
    46c4:	09 b4       	in	r0, 0x29	; 41
    46c6:	00 fe       	sbrs	r0, 0
    46c8:	fd cf       	rjmp	.-6      	; 0x46c4 <main+0xf0>
	}

	// Some tests on specific versions of macosx (10.7.3), reported some
	// strange behaviors when the board is reset using the serial
	// port touch at 1200 bps. This delay fixes this behavior.
	delay(1);
    46ca:	61 e0       	ldi	r22, 0x01	; 1
    46cc:	70 e0       	ldi	r23, 0x00	; 0
    46ce:	80 e0       	ldi	r24, 0x00	; 0
    46d0:	90 e0       	ldi	r25, 0x00	; 0
    46d2:	0e 94 9c 0d 	call	0x1b38	; 0x1b38 <delay>
#if defined(OTGPADE)
	USBCON = (USBCON & ~(1<<FRZCLK)) | (1<<OTGPADE);	// start USB clock, enable VBUS Pad
    46d6:	80 91 d8 00 	lds	r24, 0x00D8	; 0x8000d8 <__DATA_REGION_ORIGIN__+0x78>
    46da:	8f 7c       	andi	r24, 0xCF	; 207
    46dc:	80 61       	ori	r24, 0x10	; 16
    46de:	80 93 d8 00 	sts	0x00D8, r24	; 0x8000d8 <__DATA_REGION_ORIGIN__+0x78>
	USBCON &= ~(1 << FRZCLK);	// start USB clock
#endif

#if defined(RSTCPU)
#if defined(LSM)
	UDCON &= ~((1<<RSTCPU) | (1<<LSM) | (1<<RMWKUP) | (1<<DETACH));	// enable attach resistor, set full speed mode
    46e2:	80 91 e0 00 	lds	r24, 0x00E0	; 0x8000e0 <__DATA_REGION_ORIGIN__+0x80>
    46e6:	80 7f       	andi	r24, 0xF0	; 240
    46e8:	80 93 e0 00 	sts	0x00E0, r24	; 0x8000e0 <__DATA_REGION_ORIGIN__+0x80>
	_usbConfiguration = 0;
	_usbCurrentStatus = 0;
	_usbSuspendState = 0;
	USB_ClockEnable();

	UDINT &= ~((1<<WAKEUPI) | (1<<SUSPI)); // clear already pending WAKEUP / SUSPEND requests
    46ec:	80 91 e1 00 	lds	r24, 0x00E1	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
    46f0:	8e 7e       	andi	r24, 0xEE	; 238
    46f2:	80 93 e1 00 	sts	0x00E1, r24	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
	UDIEN = (1<<EORSTE) | (1<<SOFE) | (1<<SUSPE);	// Enable interrupts for EOR (End of Reset), SOF (start of frame) and SUSPEND
    46f6:	8d e0       	ldi	r24, 0x0D	; 13
    46f8:	80 93 e2 00 	sts	0x00E2, r24	; 0x8000e2 <__DATA_REGION_ORIGIN__+0x82>
	
	TX_RX_LED_INIT;
    46fc:	55 9a       	sbi	0x0a, 5	; 10
    46fe:	20 9a       	sbi	0x04, 0	; 4
uint8_t SPIClass::inTransactionFlag = 0;
#endif

void SPIClass::begin()
{
  uint8_t sreg = SREG;
    4700:	cf b7       	in	r28, 0x3f	; 63
  noInterrupts(); // Protect from a scheduler and prevent transactionBegin
    4702:	f8 94       	cli
  if (!initialized) {
    4704:	80 91 f3 02 	lds	r24, 0x02F3	; 0x8002f3 <_ZN8SPIClass11initializedE>
    4708:	81 11       	cpse	r24, r1
    470a:	27 c0       	rjmp	.+78     	; 0x475a <main+0x186>
    // Set SS to high so a connected chip will be "deselected" by default
    uint8_t port = digitalPinToPort(SS);
    470c:	e2 ec       	ldi	r30, 0xC2	; 194
    470e:	ff e0       	ldi	r31, 0x0F	; 15
    4710:	84 91       	lpm	r24, Z
    uint8_t bit = digitalPinToBitMask(SS);
    4712:	e5 e9       	ldi	r30, 0x95	; 149
    4714:	ff e0       	ldi	r31, 0x0F	; 15
    4716:	94 91       	lpm	r25, Z
    volatile uint8_t *reg = portModeRegister(port);
    4718:	e8 2f       	mov	r30, r24
    471a:	f0 e0       	ldi	r31, 0x00	; 0
    471c:	ee 0f       	add	r30, r30
    471e:	ff 1f       	adc	r31, r31
    4720:	e7 59       	subi	r30, 0x97	; 151
    4722:	f0 4f       	sbci	r31, 0xF0	; 240
    4724:	a5 91       	lpm	r26, Z+
    4726:	b4 91       	lpm	r27, Z

    // if the SS pin is not already configured as an output
    // then set it high (to enable the internal pull-up resistor)
    if(!(*reg & bit)){
    4728:	ec 91       	ld	r30, X
    472a:	e9 23       	and	r30, r25
    472c:	21 f4       	brne	.+8      	; 0x4736 <main+0x162>
      digitalWrite(SS, HIGH);
    472e:	61 e0       	ldi	r22, 0x01	; 1
    4730:	81 e1       	ldi	r24, 0x11	; 17
    4732:	0e 94 27 0c 	call	0x184e	; 0x184e <digitalWrite>
    }

    // When the SS pin is set as OUTPUT, it can be used as
    // a general purpose output port (it doesn't influence
    // SPI operations).
    pinMode(SS, OUTPUT);
    4736:	61 e0       	ldi	r22, 0x01	; 1
    4738:	81 e1       	ldi	r24, 0x11	; 17
    473a:	0e 94 98 0c 	call	0x1930	; 0x1930 <pinMode>

    // Warning: if the SS pin ever becomes a LOW INPUT then SPI
    // automatically switches to Slave, so the data direction of
    // the SS pin MUST be kept as OUTPUT.
    SPCR |= _BV(MSTR);
    473e:	8c b5       	in	r24, 0x2c	; 44
    4740:	80 61       	ori	r24, 0x10	; 16
    4742:	8c bd       	out	0x2c, r24	; 44
    SPCR |= _BV(SPE);
    4744:	8c b5       	in	r24, 0x2c	; 44
    4746:	80 64       	ori	r24, 0x40	; 64
    4748:	8c bd       	out	0x2c, r24	; 44
    // MISO pin automatically overrides to INPUT.
    // By doing this AFTER enabling SPI, we avoid accidentally
    // clocking in a single bit since the lines go directly
    // from "input" to SPI control.
    // http://code.google.com/p/arduino/issues/detail?id=888
    pinMode(SCK, OUTPUT);
    474a:	61 e0       	ldi	r22, 0x01	; 1
    474c:	8f e0       	ldi	r24, 0x0F	; 15
    474e:	0e 94 98 0c 	call	0x1930	; 0x1930 <pinMode>
    pinMode(MOSI, OUTPUT);
    4752:	61 e0       	ldi	r22, 0x01	; 1
    4754:	80 e1       	ldi	r24, 0x10	; 16
    4756:	0e 94 98 0c 	call	0x1930	; 0x1930 <pinMode>
  }
  initialized++; // reference count
    475a:	80 91 f3 02 	lds	r24, 0x02F3	; 0x8002f3 <_ZN8SPIClass11initializedE>
    475e:	8f 5f       	subi	r24, 0xFF	; 255
    4760:	80 93 f3 02 	sts	0x02F3, r24	; 0x8002f3 <_ZN8SPIClass11initializedE>
  SREG = sreg;
    4764:	cf bf       	out	0x3f, r28	; 63
#endif

void ArduboyCore::bootPins()
{
  uint8_t pin, mode;
  const uint8_t *i = pinBootProgram;
    4766:	c0 ed       	ldi	r28, 0xD0	; 208
    4768:	df e0       	ldi	r29, 0x0F	; 15

  while(true) {
    pin = pgm_read_byte(i++);
    476a:	be 01       	movw	r22, r28
    476c:	fe 01       	movw	r30, r28
    476e:	84 91       	lpm	r24, Z
    mode = pgm_read_byte(i++);
    4770:	6f 5f       	subi	r22, 0xFF	; 255
    4772:	7f 4f       	sbci	r23, 0xFF	; 255
    4774:	22 96       	adiw	r28, 0x02	; 2
    4776:	fb 01       	movw	r30, r22
    4778:	64 91       	lpm	r22, Z
    if (pin==0) break;
    477a:	88 23       	and	r24, r24
    477c:	19 f0       	breq	.+6      	; 0x4784 <main+0x1b0>
    pinMode(pin, mode);
    477e:	0e 94 98 0c 	call	0x1930	; 0x1930 <pinMode>
    4782:	f3 cf       	rjmp	.-26     	; 0x476a <main+0x196>
  }

  digitalWrite(RST, HIGH);
    4784:	61 e0       	ldi	r22, 0x01	; 1
    4786:	86 e0       	ldi	r24, 0x06	; 6
    4788:	0e 94 27 0c 	call	0x184e	; 0x184e <digitalWrite>
  delay(1);           // VDD (3.3V) goes high at start, lets just chill for a ms
    478c:	61 e0       	ldi	r22, 0x01	; 1
    478e:	70 e0       	ldi	r23, 0x00	; 0
    4790:	80 e0       	ldi	r24, 0x00	; 0
    4792:	90 e0       	ldi	r25, 0x00	; 0
    4794:	0e 94 9c 0d 	call	0x1b38	; 0x1b38 <delay>
  digitalWrite(RST, LOW);   // bring reset low
    4798:	60 e0       	ldi	r22, 0x00	; 0
    479a:	86 e0       	ldi	r24, 0x06	; 6
    479c:	0e 94 27 0c 	call	0x184e	; 0x184e <digitalWrite>
  delay(10);          // wait 10ms
    47a0:	6a e0       	ldi	r22, 0x0A	; 10
    47a2:	70 e0       	ldi	r23, 0x00	; 0
    47a4:	80 e0       	ldi	r24, 0x00	; 0
    47a6:	90 e0       	ldi	r25, 0x00	; 0
    47a8:	0e 94 9c 0d 	call	0x1b38	; 0x1b38 <delay>
  digitalWrite(RST, HIGH);  // bring out of reset
    47ac:	61 e0       	ldi	r22, 0x01	; 1
    47ae:	86 e0       	ldi	r24, 0x06	; 6
    47b0:	0e 94 27 0c 	call	0x184e	; 0x184e <digitalWrite>
}

void ArduboyCore::bootLCD()
{
  // setup the ports we need to talk to the OLED
  csport = portOutputRegister(digitalPinToPort(CS));
    47b4:	ed eb       	ldi	r30, 0xBD	; 189
    47b6:	ff e0       	ldi	r31, 0x0F	; 15
    47b8:	e4 91       	lpm	r30, Z
    47ba:	f0 e0       	ldi	r31, 0x00	; 0
    47bc:	ee 0f       	add	r30, r30
    47be:	ff 1f       	adc	r31, r31
    47c0:	ed 55       	subi	r30, 0x5D	; 93
    47c2:	f0 4f       	sbci	r31, 0xF0	; 240
    47c4:	85 91       	lpm	r24, Z+
    47c6:	94 91       	lpm	r25, Z
    47c8:	90 93 f9 02 	sts	0x02F9, r25	; 0x8002f9 <_ZN11ArduboyCore6csportE+0x1>
    47cc:	80 93 f8 02 	sts	0x02F8, r24	; 0x8002f8 <_ZN11ArduboyCore6csportE>
  cspinmask = digitalPinToBitMask(CS);
    47d0:	e0 e9       	ldi	r30, 0x90	; 144
    47d2:	ff e0       	ldi	r31, 0x0F	; 15
    47d4:	e4 91       	lpm	r30, Z
    47d6:	e0 93 f7 02 	sts	0x02F7, r30	; 0x8002f7 <_ZN11ArduboyCore9cspinmaskE>
  dcport = portOutputRegister(digitalPinToPort(DC));
    47da:	e5 eb       	ldi	r30, 0xB5	; 181
    47dc:	ff e0       	ldi	r31, 0x0F	; 15
    47de:	e4 91       	lpm	r30, Z
    47e0:	f0 e0       	ldi	r31, 0x00	; 0
    47e2:	ee 0f       	add	r30, r30
    47e4:	ff 1f       	adc	r31, r31
    47e6:	ed 55       	subi	r30, 0x5D	; 93
    47e8:	f0 4f       	sbci	r31, 0xF0	; 240
    47ea:	85 91       	lpm	r24, Z+
    47ec:	94 91       	lpm	r25, Z
    47ee:	90 93 f6 02 	sts	0x02F6, r25	; 0x8002f6 <_ZN11ArduboyCore6dcportE+0x1>
    47f2:	80 93 f5 02 	sts	0x02F5, r24	; 0x8002f5 <_ZN11ArduboyCore6dcportE>
  dcpinmask = digitalPinToBitMask(DC);
    47f6:	e8 e8       	ldi	r30, 0x88	; 136
    47f8:	ff e0       	ldi	r31, 0x0F	; 15
    47fa:	e4 91       	lpm	r30, Z
    47fc:	e0 93 f4 02 	sts	0x02F4, r30	; 0x8002f4 <_ZN11ArduboyCore9dcpinmaskE>
    SPCR = (SPCR & ~SPI_MODE_MASK) | dataMode;
  }
  // This function is deprecated.  New applications should use
  // beginTransaction() to configure SPI settings.
  inline static void setClockDivider(uint8_t clockDiv) {
    SPCR = (SPCR & ~SPI_CLOCK_MASK) | (clockDiv & SPI_CLOCK_MASK);
    4800:	8c b5       	in	r24, 0x2c	; 44
    4802:	8c 7f       	andi	r24, 0xFC	; 252
    4804:	8c bd       	out	0x2c, r24	; 44
    SPSR = (SPSR & ~SPI_2XCLOCK_MASK) | ((clockDiv >> 2) & SPI_2XCLOCK_MASK);
    4806:	8d b5       	in	r24, 0x2d	; 45
    4808:	81 60       	ori	r24, 0x01	; 1
    480a:	8d bd       	out	0x2d, r24	; 45

  SPI.setClockDivider(SPI_CLOCK_DIV2);

  LCDCommandMode();
    480c:	0e 94 78 0e 	call	0x1cf0	; 0x1cf0 <_ZN11ArduboyCore14LCDCommandModeEv>
    4810:	e7 e7       	ldi	r30, 0x77	; 119
    4812:	ff e0       	ldi	r31, 0x0F	; 15
    4814:	84 e8       	ldi	r24, 0x84	; 132
    4816:	9f e0       	ldi	r25, 0x0F	; 15
  // run our customized boot-up command sequence against the
  // OLED to initialize it properly for Arduboy
  for (int8_t i=0; i < sizeof(lcdBootProgram); i++) {
    4818:	8e 17       	cp	r24, r30
    481a:	9f 07       	cpc	r25, r31
    481c:	49 f0       	breq	.+18     	; 0x4830 <main+0x25c>
    SPI.transfer(pgm_read_byte(lcdBootProgram + i));
    481e:	24 91       	lpm	r18, Z
    SPSR = settings.spsr;
  }

  // Write to the SPI bus (MOSI pin) and also receive (MISO pin)
  inline static uint8_t transfer(uint8_t data) {
    SPDR = data;
    4820:	2e bd       	out	0x2e, r18	; 46
     * The following NOP introduces a small delay that can prevent the wait
     * loop form iterating when running at the maximum speed. This gives
     * about 10% more speed, even if it seems counter-intuitive. At lower
     * speeds it is unnoticed.
     */
    asm volatile("nop");
    4822:	00 00       	nop
    while (!(SPSR & _BV(SPIF))) ; // wait
    4824:	0d b4       	in	r0, 0x2d	; 45
    4826:	07 fe       	sbrs	r0, 7
    4828:	fd cf       	rjmp	.-6      	; 0x4824 <main+0x250>
    return SPDR;
    482a:	2e b5       	in	r18, 0x2e	; 46
    482c:	31 96       	adiw	r30, 0x01	; 1
    482e:	f4 cf       	rjmp	.-24     	; 0x4818 <main+0x244>
  }
  LCDDataMode();
    4830:	0e 94 90 0e 	call	0x1d20	; 0x1d20 <_ZN11ArduboyCore11LCDDataModeEv>
  sleep_mode();
}

void ArduboyCore::saveMuchPower()
{
  power_adc_disable();
    4834:	80 91 64 00 	lds	r24, 0x0064	; 0x800064 <__DATA_REGION_ORIGIN__+0x4>
    4838:	81 60       	ori	r24, 0x01	; 1
    483a:	80 93 64 00 	sts	0x0064, r24	; 0x800064 <__DATA_REGION_ORIGIN__+0x4>
  power_usart0_disable();
    483e:	80 91 64 00 	lds	r24, 0x0064	; 0x800064 <__DATA_REGION_ORIGIN__+0x4>
    4842:	82 60       	ori	r24, 0x02	; 2
    4844:	80 93 64 00 	sts	0x0064, r24	; 0x800064 <__DATA_REGION_ORIGIN__+0x4>
  power_twi_disable();
    4848:	80 91 64 00 	lds	r24, 0x0064	; 0x800064 <__DATA_REGION_ORIGIN__+0x4>
    484c:	80 68       	ori	r24, 0x80	; 128
    484e:	80 93 64 00 	sts	0x0064, r24	; 0x800064 <__DATA_REGION_ORIGIN__+0x4>
  // timer 0 is for millis()
  // timers 1 and 3 are for music and sounds
  power_timer2_disable();
    4852:	80 91 64 00 	lds	r24, 0x0064	; 0x800064 <__DATA_REGION_ORIGIN__+0x4>
    4856:	80 64       	ori	r24, 0x40	; 64
    4858:	80 93 64 00 	sts	0x0064, r24	; 0x800064 <__DATA_REGION_ORIGIN__+0x4>
  power_usart1_disable();
    485c:	80 91 65 00 	lds	r24, 0x0065	; 0x800065 <__DATA_REGION_ORIGIN__+0x5>
    4860:	81 60       	ori	r24, 0x01	; 1
    4862:	80 93 65 00 	sts	0x0065, r24	; 0x800065 <__DATA_REGION_ORIGIN__+0x5>
}


boolean Arduboy::pressed(uint8_t buttons)
{
  return (buttonsState() & buttons) == buttons;
    4866:	0e 94 53 0e 	call	0x1ca6	; 0x1ca6 <_ZN11ArduboyCore12buttonsStateEv>
}

void MyArduboy::beginNoLogo(void)
{
    boot();
    if (pressed(UP_BUTTON)) {
    486a:	87 ff       	sbrs	r24, 7
    486c:	22 c0       	rjmp	.+68     	; 0x48b2 <main+0x2de>
    SPI.transfer(0x00);
}

void ArduboyCore::sendLCDCommand(uint8_t command)
{
  LCDCommandMode();
    486e:	0e 94 78 0e 	call	0x1cf0	; 0x1cf0 <_ZN11ArduboyCore14LCDCommandModeEv>
    SPSR = settings.spsr;
  }

  // Write to the SPI bus (MOSI pin) and also receive (MISO pin)
  inline static uint8_t transfer(uint8_t data) {
    SPDR = data;
    4872:	85 ea       	ldi	r24, 0xA5	; 165
    4874:	8e bd       	out	0x2e, r24	; 46
     * The following NOP introduces a small delay that can prevent the wait
     * loop form iterating when running at the maximum speed. This gives
     * about 10% more speed, even if it seems counter-intuitive. At lower
     * speeds it is unnoticed.
     */
    asm volatile("nop");
    4876:	00 00       	nop
    while (!(SPSR & _BV(SPIF))) ; // wait
    4878:	0d b4       	in	r0, 0x2d	; 45
    487a:	07 fe       	sbrs	r0, 7
    487c:	fd cf       	rjmp	.-6      	; 0x4878 <main+0x2a4>
    return SPDR;
    487e:	8e b5       	in	r24, 0x2e	; 46
  SPI.transfer(command);
  LCDDataMode();
    4880:	0e 94 90 0e 	call	0x1d20	; 0x1d20 <_ZN11ArduboyCore11LCDDataModeEv>

void ArduboyCore::setRGBled(uint8_t red, uint8_t green, uint8_t blue)
{
#ifdef ARDUBOY_10 // RGB, all the pretty colors
  // inversion is necessary because these are common annode LEDs
  analogWrite(RED_LED, 255 - red);
    4884:	70 e0       	ldi	r23, 0x00	; 0
    4886:	60 e0       	ldi	r22, 0x00	; 0
    4888:	8a e0       	ldi	r24, 0x0A	; 10
    488a:	0e 94 d4 0c 	call	0x19a8	; 0x19a8 <analogWrite>
  analogWrite(GREEN_LED, 255 - green);
    488e:	70 e0       	ldi	r23, 0x00	; 0
    4890:	60 e0       	ldi	r22, 0x00	; 0
    4892:	8b e0       	ldi	r24, 0x0B	; 11
    4894:	0e 94 d4 0c 	call	0x19a8	; 0x19a8 <analogWrite>
  analogWrite(BLUE_LED, 255 - blue);
    4898:	70 e0       	ldi	r23, 0x00	; 0
    489a:	60 e0       	ldi	r22, 0x00	; 0
    489c:	89 e0       	ldi	r24, 0x09	; 9
    489e:	0e 94 d4 0c 	call	0x19a8	; 0x19a8 <analogWrite>
        sendLCDCommand(OLED_ALL_PIXELS_ON);
        setRGBled(255, 255, 255);
        power_timer0_disable();
    48a2:	80 91 64 00 	lds	r24, 0x0064	; 0x800064 <__DATA_REGION_ORIGIN__+0x4>
    48a6:	80 62       	ori	r24, 0x20	; 32
    48a8:	80 93 64 00 	sts	0x0064, r24	; 0x800064 <__DATA_REGION_ORIGIN__+0x4>
        while (true) {
            idle(); // infinite loop
    48ac:	0e 94 6d 0e 	call	0x1cda	; 0x1cda <_ZN11ArduboyCore4idleEv>
    48b0:	fd cf       	rjmp	.-6      	; 0x48ac <main+0x2d8>
void ArduboyTunes::initChannel(byte pin)
{
  byte timer_num;

  // we are all out of timers
  if (_tune_num_chans == AVAILABLE_TIMERS)
    48b2:	80 91 17 03 	lds	r24, 0x0317	; 0x800317 <_tune_num_chans>
    48b6:	82 30       	cpi	r24, 0x02	; 2
    48b8:	91 f0       	breq	.+36     	; 0x48de <main+0x30a>
    return;

  timer_num = pgm_read_byte(tune_pin_to_timer_PGM + _tune_num_chans);
    48ba:	e8 2f       	mov	r30, r24
    48bc:	f0 e0       	ldi	r31, 0x00	; 0
    48be:	e9 59       	subi	r30, 0x99	; 153
    48c0:	f0 4f       	sbci	r31, 0xF0	; 240
    48c2:	c4 91       	lpm	r28, Z
  _tune_pins[_tune_num_chans] = pin;
  _tune_num_chans++;
    48c4:	8f 5f       	subi	r24, 0xFF	; 255
    48c6:	80 93 17 03 	sts	0x0317, r24	; 0x800317 <_tune_num_chans>
  pinMode(pin, OUTPUT);
    48ca:	61 e0       	ldi	r22, 0x01	; 1
    48cc:	85 e0       	ldi	r24, 0x05	; 5
    48ce:	0e 94 98 0c 	call	0x1930	; 0x1930 <pinMode>
  switch (timer_num) {
    48d2:	c1 30       	cpi	r28, 0x01	; 1
    48d4:	09 f4       	brne	.+2      	; 0x48d8 <main+0x304>
    48d6:	5c c0       	rjmp	.+184    	; 0x4990 <main+0x3bc>
    48d8:	c3 30       	cpi	r28, 0x03	; 3
    48da:	09 f4       	brne	.+2      	; 0x48de <main+0x30a>
    48dc:	7b c0       	rjmp	.+246    	; 0x49d4 <main+0x400>
        }
    }
    pTunes->initChannel(PIN_SPEAKER_1);
    pinMode(PIN_SPEAKER_2, OUTPUT); // trick
    48de:	61 e0       	ldi	r22, 0x01	; 1
    48e0:	8d e0       	ldi	r24, 0x0D	; 13
    48e2:	0e 94 98 0c 	call	0x1930	; 0x1930 <pinMode>

    EERef( const int index )
        : index( index )                 {}
    
    //Access/read members.
    uint8_t operator*() const            { return eeprom_read_byte( (uint8_t*) index ); }
    48e6:	82 e0       	ldi	r24, 0x02	; 2
    48e8:	90 e0       	ldi	r25, 0x00	; 0
    48ea:	0e 94 aa 26 	call	0x4d54	; 0x4d54 <eeprom_read_byte>
#define textWrap    wrap
#define pTunes      (&tunes)

void MyArduboyAudio::begin()
{
    if (EEPROM.read(EEPROM_AUDIO_ON_OFF))
    48ee:	88 23       	and	r24, r24
    48f0:	09 f4       	brne	.+2      	; 0x48f4 <main+0x320>
    48f2:	9d c0       	rjmp	.+314    	; 0x4a2e <main+0x45a>
        off();
}

void MyArduboyAudio::on()
{
    power_timer3_enable();
    48f4:	80 91 65 00 	lds	r24, 0x0065	; 0x800065 <__DATA_REGION_ORIGIN__+0x5>
    48f8:	87 7f       	andi	r24, 0xF7	; 247
    48fa:	80 93 65 00 	sts	0x0065, r24	; 0x800065 <__DATA_REGION_ORIGIN__+0x5>
    audio_enabled = true;
    48fe:	81 e0       	ldi	r24, 0x01	; 1
    4900:	80 93 1d 03 	sts	0x031D, r24	; 0x80031d <_ZN12ArduboyAudio13audio_enabledE>

/* Frame management */

void Arduboy::setFrameRate(uint8_t rate)
{
  frameRate = rate;
    4904:	8c e3       	ldi	r24, 0x3C	; 60
    4906:	80 93 74 03 	sts	0x0374, r24	; 0x800374 <arduboy+0x6>
  eachFrameMillis = 1000/rate;
    490a:	80 e1       	ldi	r24, 0x10	; 16
    490c:	80 93 77 03 	sts	0x0377, r24	; 0x800377 <arduboy+0x9>

/*---------------------------------------------------------------------------*/

void initLogo(void)
{
    counter = 120; // 2 secs
    4910:	88 e7       	ldi	r24, 0x78	; 120
    4912:	80 93 fa 02 	sts	0x02FA, r24	; 0x8002fa <_ZL7counter.lto_priv.56>
}

void loop()
{
    if (!(arduboy.nextFrame())) return;
    bool isDone = moduleTable[mode].updateFunc();
    4916:	16 e0       	ldi	r17, 0x06	; 6
	
	setup();
    
	for (;;) {
		loop();
		if (serialEventRun) serialEventRun();
    4918:	c0 e0       	ldi	r28, 0x00	; 0
    491a:	d0 e0       	ldi	r29, 0x00	; 0
  // running a slow render we would constnatly be behind the clock
  // keep an eye on this and see how it works.  If it works well the
  // lastFrameStart variable could be eliminated completely
  nextFrameStart = now + eachFrameMillis;
  lastFrameStart = now;
  post_render = true;
    491c:	01 e0       	ldi	r16, 0x01	; 1
}

unsigned long millis()
{
	unsigned long m;
	uint8_t oldSREG = SREG;
    491e:	2f b7       	in	r18, 0x3f	; 63

	// disable interrupts while we read timer0_millis or we might get an
	// inconsistent value (e.g. in the middle of a write to timer0_millis)
	cli();
    4920:	f8 94       	cli
	m = timer0_millis;
    4922:	80 91 fb 02 	lds	r24, 0x02FB	; 0x8002fb <timer0_millis>
    4926:	90 91 fc 02 	lds	r25, 0x02FC	; 0x8002fc <timer0_millis+0x1>
    492a:	a0 91 fd 02 	lds	r26, 0x02FD	; 0x8002fd <timer0_millis+0x2>
    492e:	b0 91 fe 02 	lds	r27, 0x02FE	; 0x8002fe <timer0_millis+0x3>
	SREG = oldSREG;
    4932:	2f bf       	out	0x3f, r18	; 63
{
  long now = millis();
  uint8_t remaining;

  // post render
  if (post_render) {
    4934:	20 91 80 03 	lds	r18, 0x0380	; 0x800380 <arduboy+0x12>
    4938:	22 23       	and	r18, r18
    493a:	91 f0       	breq	.+36     	; 0x4960 <main+0x38c>
    lastFrameDurationMs = now - lastFrameStart;
    493c:	20 91 78 03 	lds	r18, 0x0378	; 0x800378 <arduboy+0xa>
    4940:	f8 2f       	mov	r31, r24
    4942:	f2 1b       	sub	r31, r18
    4944:	f0 93 81 03 	sts	0x0381, r31	; 0x800381 <arduboy+0x13>
    frameCount++;
    4948:	20 91 75 03 	lds	r18, 0x0375	; 0x800375 <arduboy+0x7>
    494c:	30 91 76 03 	lds	r19, 0x0376	; 0x800376 <arduboy+0x8>
    4950:	2f 5f       	subi	r18, 0xFF	; 255
    4952:	3f 4f       	sbci	r19, 0xFF	; 255
    4954:	30 93 76 03 	sts	0x0376, r19	; 0x800376 <arduboy+0x8>
    4958:	20 93 75 03 	sts	0x0375, r18	; 0x800375 <arduboy+0x7>
    post_render = false;
    495c:	10 92 80 03 	sts	0x0380, r1	; 0x800380 <arduboy+0x12>
  }

  // if it's not time for the next frame yet
  if (now < nextFrameStart) {
    4960:	40 91 7c 03 	lds	r20, 0x037C	; 0x80037c <arduboy+0xe>
    4964:	50 91 7d 03 	lds	r21, 0x037D	; 0x80037d <arduboy+0xf>
    4968:	60 91 7e 03 	lds	r22, 0x037E	; 0x80037e <arduboy+0x10>
    496c:	70 91 7f 03 	lds	r23, 0x037F	; 0x80037f <arduboy+0x11>
    4970:	84 17       	cp	r24, r20
    4972:	95 07       	cpc	r25, r21
    4974:	a6 07       	cpc	r26, r22
    4976:	b7 07       	cpc	r27, r23
    4978:	0c f0       	brlt	.+2      	; 0x497c <main+0x3a8>
    497a:	61 c0       	rjmp	.+194    	; 0x4a3e <main+0x46a>
    remaining = nextFrameStart - now;
    497c:	48 1b       	sub	r20, r24
    // if we have more than 1ms to spare, lets sleep
    // we should be woken up by timer0 every 1ms, so this should be ok
    if (remaining > 1)
    497e:	42 30       	cpi	r20, 0x02	; 2
    4980:	10 f0       	brcs	.+4      	; 0x4986 <main+0x3b2>
      idle();
    4982:	0e 94 6d 0e 	call	0x1cda	; 0x1cda <_ZN11ArduboyCore4idleEv>
    4986:	20 97       	sbiw	r28, 0x00	; 0
    4988:	51 f2       	breq	.-108    	; 0x491e <main+0x34a>
    498a:	0e 94 00 00 	call	0	; 0x0 <__vectors>
    498e:	c7 cf       	rjmp	.-114    	; 0x491e <main+0x34a>
    case 1: // 16 bit timer
      TCCR1A = 0;
    4990:	10 92 80 00 	sts	0x0080, r1	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
      TCCR1B = 0;
    4994:	10 92 81 00 	sts	0x0081, r1	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
      bitWrite(TCCR1B, WGM12, 1);
    4998:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
    499c:	88 60       	ori	r24, 0x08	; 8
    499e:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
      bitWrite(TCCR1B, CS10, 1);
    49a2:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
    49a6:	81 60       	ori	r24, 0x01	; 1
    49a8:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
      _tunes_timer1_pin_port = portOutputRegister(digitalPinToPort(pin));
    49ac:	e6 eb       	ldi	r30, 0xB6	; 182
    49ae:	ff e0       	ldi	r31, 0x0F	; 15
    49b0:	e4 91       	lpm	r30, Z
    49b2:	f0 e0       	ldi	r31, 0x00	; 0
    49b4:	ee 0f       	add	r30, r30
    49b6:	ff 1f       	adc	r31, r31
    49b8:	ed 55       	subi	r30, 0x5D	; 93
    49ba:	f0 4f       	sbci	r31, 0xF0	; 240
    49bc:	85 91       	lpm	r24, Z+
    49be:	94 91       	lpm	r25, Z
    49c0:	90 93 f2 02 	sts	0x02F2, r25	; 0x8002f2 <_tunes_timer1_pin_port+0x1>
    49c4:	80 93 f1 02 	sts	0x02F1, r24	; 0x8002f1 <_tunes_timer1_pin_port>
      _tunes_timer1_pin_mask = digitalPinToBitMask(pin);
    49c8:	e9 e8       	ldi	r30, 0x89	; 137
    49ca:	ff e0       	ldi	r31, 0x0F	; 15
    49cc:	e4 91       	lpm	r30, Z
    49ce:	e0 93 f0 02 	sts	0x02F0, r30	; 0x8002f0 <_tunes_timer1_pin_mask>
    49d2:	85 cf       	rjmp	.-246    	; 0x48de <main+0x30a>
      break;
    case 3: // 16 bit timer
      TCCR3A = 0;
    49d4:	10 92 90 00 	sts	0x0090, r1	; 0x800090 <__DATA_REGION_ORIGIN__+0x30>
      TCCR3B = 0;
    49d8:	10 92 91 00 	sts	0x0091, r1	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
      bitWrite(TCCR3B, WGM32, 1);
    49dc:	80 91 91 00 	lds	r24, 0x0091	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
    49e0:	88 60       	ori	r24, 0x08	; 8
    49e2:	80 93 91 00 	sts	0x0091, r24	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
      bitWrite(TCCR3B, CS30, 1);
    49e6:	80 91 91 00 	lds	r24, 0x0091	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
    49ea:	81 60       	ori	r24, 0x01	; 1
    49ec:	80 93 91 00 	sts	0x0091, r24	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
      _tunes_timer3_pin_port = portOutputRegister(digitalPinToPort(pin));
    49f0:	e6 eb       	ldi	r30, 0xB6	; 182
    49f2:	ff e0       	ldi	r31, 0x0F	; 15
    49f4:	e4 91       	lpm	r30, Z
    49f6:	f0 e0       	ldi	r31, 0x00	; 0
    49f8:	ee 0f       	add	r30, r30
    49fa:	ff 1f       	adc	r31, r31
    49fc:	ed 55       	subi	r30, 0x5D	; 93
    49fe:	f0 4f       	sbci	r31, 0xF0	; 240
    4a00:	85 91       	lpm	r24, Z+
    4a02:	94 91       	lpm	r25, Z
    4a04:	90 93 ef 02 	sts	0x02EF, r25	; 0x8002ef <_tunes_timer3_pin_port+0x1>
    4a08:	80 93 ee 02 	sts	0x02EE, r24	; 0x8002ee <_tunes_timer3_pin_port>
      _tunes_timer3_pin_mask = digitalPinToBitMask(pin);
    4a0c:	e9 e8       	ldi	r30, 0x89	; 137
    4a0e:	ff e0       	ldi	r31, 0x0F	; 15
    4a10:	e4 91       	lpm	r30, Z
    4a12:	e0 93 ed 02 	sts	0x02ED, r30	; 0x8002ed <_tunes_timer3_pin_mask>
  byte prescalar_bits;
  unsigned int frequency2; /* frequency times 2 */
  unsigned long ocr;

  // we can't plan on a channel that does not exist
  if (chan >= _tune_num_chans)
    4a16:	80 91 17 03 	lds	r24, 0x0317	; 0x800317 <_tune_num_chans>
    4a1a:	88 23       	and	r24, r24
    4a1c:	21 f0       	breq	.+8      	; 0x4a26 <main+0x452>
    4a1e:	6c e3       	ldi	r22, 0x3C	; 60
    4a20:	80 e0       	ldi	r24, 0x00	; 0
    4a22:	0e 94 a4 0e 	call	0x1d48	; 0x1d48 <_ZN12ArduboyTunes8playNoteEhh.part.2>
      bitWrite(TCCR3B, WGM32, 1);
      bitWrite(TCCR3B, CS30, 1);
      _tunes_timer3_pin_port = portOutputRegister(digitalPinToPort(pin));
      _tunes_timer3_pin_mask = digitalPinToBitMask(pin);
      playNote(0, 60);  /* start and stop channel 0 (timer 3) on middle C so wait/delay works */
      stopNote(0);
    4a26:	80 e0       	ldi	r24, 0x00	; 0
    4a28:	0e 94 15 0f 	call	0x1e2a	; 0x1e2a <_ZN12ArduboyTunes8stopNoteEh>
    4a2c:	58 cf       	rjmp	.-336    	; 0x48de <main+0x30a>
}

void MyArduboyAudio::off()
{
    audio_enabled = false;
    4a2e:	10 92 1d 03 	sts	0x031D, r1	; 0x80031d <_ZN12ArduboyAudio13audio_enabledE>
    power_timer3_disable();
    4a32:	80 91 65 00 	lds	r24, 0x0065	; 0x800065 <__DATA_REGION_ORIGIN__+0x5>
    4a36:	88 60       	ori	r24, 0x08	; 8
    4a38:	80 93 65 00 	sts	0x0065, r24	; 0x800065 <__DATA_REGION_ORIGIN__+0x5>
    4a3c:	63 cf       	rjmp	.-314    	; 0x4904 <main+0x330>

  // technically next frame should be last frame + each frame but if we're
  // running a slow render we would constnatly be behind the clock
  // keep an eye on this and see how it works.  If it works well the
  // lastFrameStart variable could be eliminated completely
  nextFrameStart = now + eachFrameMillis;
    4a3e:	20 91 77 03 	lds	r18, 0x0377	; 0x800377 <arduboy+0x9>
    4a42:	ac 01       	movw	r20, r24
    4a44:	bd 01       	movw	r22, r26
    4a46:	42 0f       	add	r20, r18
    4a48:	51 1d       	adc	r21, r1
    4a4a:	61 1d       	adc	r22, r1
    4a4c:	71 1d       	adc	r23, r1
    4a4e:	40 93 7c 03 	sts	0x037C, r20	; 0x80037c <arduboy+0xe>
    4a52:	50 93 7d 03 	sts	0x037D, r21	; 0x80037d <arduboy+0xf>
    4a56:	60 93 7e 03 	sts	0x037E, r22	; 0x80037e <arduboy+0x10>
    4a5a:	70 93 7f 03 	sts	0x037F, r23	; 0x80037f <arduboy+0x11>
  lastFrameStart = now;
    4a5e:	80 93 78 03 	sts	0x0378, r24	; 0x800378 <arduboy+0xa>
    4a62:	90 93 79 03 	sts	0x0379, r25	; 0x800379 <arduboy+0xb>
    4a66:	a0 93 7a 03 	sts	0x037A, r26	; 0x80037a <arduboy+0xc>
    4a6a:	b0 93 7b 03 	sts	0x037B, r27	; 0x80037b <arduboy+0xd>
  post_render = true;
    4a6e:	00 93 80 03 	sts	0x0380, r16	; 0x800380 <arduboy+0x12>

bool MyArduboy::nextFrame(void)
{
    bool ret = ARDUBOY_LIB_CLASS::nextFrame();
    if (ret) {
        lastButtonState = currentButtonState;
    4a72:	80 91 8b 07 	lds	r24, 0x078B	; 0x80078b <arduboy+0x41d>
    4a76:	80 93 8a 07 	sts	0x078A, r24	; 0x80078a <arduboy+0x41c>
        currentButtonState = buttonsState();
    4a7a:	0e 94 53 0e 	call	0x1ca6	; 0x1ca6 <_ZN11ArduboyCore12buttonsStateEv>
    4a7e:	80 93 8b 07 	sts	0x078B, r24	; 0x80078b <arduboy+0x41d>
    4a82:	80 91 ff 02 	lds	r24, 0x02FF	; 0x8002ff <_ZL4mode>
    4a86:	90 91 00 03 	lds	r25, 0x0300	; 0x800300 <_ZL4mode+0x1>
    4a8a:	18 9f       	mul	r17, r24
    4a8c:	f0 01       	movw	r30, r0
    4a8e:	19 9f       	mul	r17, r25
    4a90:	f0 0d       	add	r31, r0
    4a92:	11 24       	eor	r1, r1
    4a94:	ec 5e       	subi	r30, 0xEC	; 236
    4a96:	fe 4f       	sbci	r31, 0xFE	; 254
    4a98:	02 80       	ldd	r0, Z+2	; 0x02
    4a9a:	f3 81       	ldd	r31, Z+3	; 0x03
    4a9c:	e0 2d       	mov	r30, r0
    4a9e:	09 95       	icall
    4aa0:	f8 2e       	mov	r15, r24
    moduleTable[mode].drawFunc();
    4aa2:	80 91 ff 02 	lds	r24, 0x02FF	; 0x8002ff <_ZL4mode>
    4aa6:	90 91 00 03 	lds	r25, 0x0300	; 0x800300 <_ZL4mode+0x1>
    4aaa:	18 9f       	mul	r17, r24
    4aac:	f0 01       	movw	r30, r0
    4aae:	19 9f       	mul	r17, r25
    4ab0:	f0 0d       	add	r31, r0
    4ab2:	11 24       	eor	r1, r1
    4ab4:	ec 5e       	subi	r30, 0xEC	; 236
    4ab6:	fe 4f       	sbci	r31, 0xFE	; 254
    4ab8:	04 80       	ldd	r0, Z+4	; 0x04
    4aba:	f5 81       	ldd	r31, Z+5	; 0x05
    4abc:	e0 2d       	mov	r30, r0
    4abe:	09 95       	icall
void ArduboyCore::paintScreen(unsigned char image[])
{
  uint8_t c;
  int i = 0;

  SPDR = image[i++]; // set the first SPI data byte to get things started
    4ac0:	80 91 82 03 	lds	r24, 0x0382	; 0x800382 <arduboy+0x14>
    4ac4:	8e bd       	out	0x2e, r24	; 46
    4ac6:	e3 e8       	ldi	r30, 0x83	; 131
    4ac8:	f3 e0       	ldi	r31, 0x03	; 3
  // executed while the previous byte is being sent out by the SPI controller
  while (i < (HEIGHT * WIDTH) / 8)
  {
    // get the next byte. It's put in a local variable so it can be sent as
    // as soon as possible after the sending of the previous byte has completed
    c = image[i++];
    4aca:	81 91       	ld	r24, Z+

    while (!(SPSR & _BV(SPIF))) { } // wait for the previous byte to be sent
    4acc:	0d b4       	in	r0, 0x2d	; 45
    4ace:	07 fe       	sbrs	r0, 7
    4ad0:	fd cf       	rjmp	.-6      	; 0x4acc <main+0x4f8>

    // put the next byte in the SPI data register. The SPI controller will
    // clock it out while the loop continues and gets the next byte ready
    SPDR = c;
    4ad2:	8e bd       	out	0x2e, r24	; 46

  SPDR = image[i++]; // set the first SPI data byte to get things started

  // the code to iterate the loop and get the next byte from the buffer is
  // executed while the previous byte is being sent out by the SPI controller
  while (i < (HEIGHT * WIDTH) / 8)
    4ad4:	37 e0       	ldi	r19, 0x07	; 7
    4ad6:	e2 38       	cpi	r30, 0x82	; 130
    4ad8:	f3 07       	cpc	r31, r19
    4ada:	b9 f7       	brne	.-18     	; 0x4aca <main+0x4f6>

    // put the next byte in the SPI data register. The SPI controller will
    // clock it out while the loop continues and gets the next byte ready
    SPDR = c;
  }
  while (!(SPSR & _BV(SPIF))) { } // wait for the last byte to be sent
    4adc:	0d b4       	in	r0, 0x2d	; 45
    4ade:	07 fe       	sbrs	r0, 7
    4ae0:	fd cf       	rjmp	.-6      	; 0x4adc <main+0x508>
    arduboy.display();
    if (isDone) {
    4ae2:	ff 20       	and	r15, r15
    4ae4:	09 f4       	brne	.+2      	; 0x4ae8 <main+0x514>
    4ae6:	4f cf       	rjmp	.-354    	; 0x4986 <main+0x3b2>
        mode = (mode == TITLE_MODE) ? GAME_MODE : TITLE_MODE;
    4ae8:	80 91 ff 02 	lds	r24, 0x02FF	; 0x8002ff <_ZL4mode>
    4aec:	90 91 00 03 	lds	r25, 0x0300	; 0x800300 <_ZL4mode+0x1>
    4af0:	01 97       	sbiw	r24, 0x01	; 1
    4af2:	91 f0       	breq	.+36     	; 0x4b18 <main+0x544>
    4af4:	81 e0       	ldi	r24, 0x01	; 1
    4af6:	90 e0       	ldi	r25, 0x00	; 0
    4af8:	90 93 00 03 	sts	0x0300, r25	; 0x800300 <_ZL4mode+0x1>
    4afc:	80 93 ff 02 	sts	0x02FF, r24	; 0x8002ff <_ZL4mode>
        moduleTable[mode].initFunc();
    4b00:	18 9f       	mul	r17, r24
    4b02:	f0 01       	movw	r30, r0
    4b04:	19 9f       	mul	r17, r25
    4b06:	f0 0d       	add	r31, r0
    4b08:	11 24       	eor	r1, r1
    4b0a:	ec 5e       	subi	r30, 0xEC	; 236
    4b0c:	fe 4f       	sbci	r31, 0xFE	; 254
    4b0e:	01 90       	ld	r0, Z+
    4b10:	f0 81       	ld	r31, Z
    4b12:	e0 2d       	mov	r30, r0
    4b14:	09 95       	icall
    4b16:	37 cf       	rjmp	.-402    	; 0x4986 <main+0x3b2>
    if (!(arduboy.nextFrame())) return;
    bool isDone = moduleTable[mode].updateFunc();
    moduleTable[mode].drawFunc();
    arduboy.display();
    if (isDone) {
        mode = (mode == TITLE_MODE) ? GAME_MODE : TITLE_MODE;
    4b18:	82 e0       	ldi	r24, 0x02	; 2
    4b1a:	90 e0       	ldi	r25, 0x00	; 0
    4b1c:	ed cf       	rjmp	.-38     	; 0x4af8 <main+0x524>

00004b1e <do_rand>:
    4b1e:	8f 92       	push	r8
    4b20:	9f 92       	push	r9
    4b22:	af 92       	push	r10
    4b24:	bf 92       	push	r11
    4b26:	cf 92       	push	r12
    4b28:	df 92       	push	r13
    4b2a:	ef 92       	push	r14
    4b2c:	ff 92       	push	r15
    4b2e:	cf 93       	push	r28
    4b30:	df 93       	push	r29
    4b32:	ec 01       	movw	r28, r24
    4b34:	68 81       	ld	r22, Y
    4b36:	79 81       	ldd	r23, Y+1	; 0x01
    4b38:	8a 81       	ldd	r24, Y+2	; 0x02
    4b3a:	9b 81       	ldd	r25, Y+3	; 0x03
    4b3c:	61 15       	cp	r22, r1
    4b3e:	71 05       	cpc	r23, r1
    4b40:	81 05       	cpc	r24, r1
    4b42:	91 05       	cpc	r25, r1
    4b44:	21 f4       	brne	.+8      	; 0x4b4e <do_rand+0x30>
    4b46:	64 e2       	ldi	r22, 0x24	; 36
    4b48:	79 ed       	ldi	r23, 0xD9	; 217
    4b4a:	8b e5       	ldi	r24, 0x5B	; 91
    4b4c:	97 e0       	ldi	r25, 0x07	; 7
    4b4e:	2d e1       	ldi	r18, 0x1D	; 29
    4b50:	33 ef       	ldi	r19, 0xF3	; 243
    4b52:	41 e0       	ldi	r20, 0x01	; 1
    4b54:	50 e0       	ldi	r21, 0x00	; 0
    4b56:	0e 94 e9 26 	call	0x4dd2	; 0x4dd2 <__divmodsi4>
    4b5a:	49 01       	movw	r8, r18
    4b5c:	5a 01       	movw	r10, r20
    4b5e:	9b 01       	movw	r18, r22
    4b60:	ac 01       	movw	r20, r24
    4b62:	a7 ea       	ldi	r26, 0xA7	; 167
    4b64:	b1 e4       	ldi	r27, 0x41	; 65
    4b66:	0e 94 08 27 	call	0x4e10	; 0x4e10 <__muluhisi3>
    4b6a:	6b 01       	movw	r12, r22
    4b6c:	7c 01       	movw	r14, r24
    4b6e:	ac ee       	ldi	r26, 0xEC	; 236
    4b70:	b4 ef       	ldi	r27, 0xF4	; 244
    4b72:	a5 01       	movw	r20, r10
    4b74:	94 01       	movw	r18, r8
    4b76:	0e 94 16 27 	call	0x4e2c	; 0x4e2c <__mulohisi3>
    4b7a:	dc 01       	movw	r26, r24
    4b7c:	cb 01       	movw	r24, r22
    4b7e:	8c 0d       	add	r24, r12
    4b80:	9d 1d       	adc	r25, r13
    4b82:	ae 1d       	adc	r26, r14
    4b84:	bf 1d       	adc	r27, r15
    4b86:	b7 ff       	sbrs	r27, 7
    4b88:	03 c0       	rjmp	.+6      	; 0x4b90 <do_rand+0x72>
    4b8a:	01 97       	sbiw	r24, 0x01	; 1
    4b8c:	a1 09       	sbc	r26, r1
    4b8e:	b0 48       	sbci	r27, 0x80	; 128
    4b90:	88 83       	st	Y, r24
    4b92:	99 83       	std	Y+1, r25	; 0x01
    4b94:	aa 83       	std	Y+2, r26	; 0x02
    4b96:	bb 83       	std	Y+3, r27	; 0x03
    4b98:	9f 77       	andi	r25, 0x7F	; 127
    4b9a:	df 91       	pop	r29
    4b9c:	cf 91       	pop	r28
    4b9e:	ff 90       	pop	r15
    4ba0:	ef 90       	pop	r14
    4ba2:	df 90       	pop	r13
    4ba4:	cf 90       	pop	r12
    4ba6:	bf 90       	pop	r11
    4ba8:	af 90       	pop	r10
    4baa:	9f 90       	pop	r9
    4bac:	8f 90       	pop	r8
    4bae:	08 95       	ret

00004bb0 <rand_r>:
    4bb0:	0e 94 8f 25 	call	0x4b1e	; 0x4b1e <do_rand>
    4bb4:	08 95       	ret

00004bb6 <rand>:
    4bb6:	8c e0       	ldi	r24, 0x0C	; 12
    4bb8:	91 e0       	ldi	r25, 0x01	; 1
    4bba:	0e 94 8f 25 	call	0x4b1e	; 0x4b1e <do_rand>
    4bbe:	08 95       	ret

00004bc0 <srand>:
    4bc0:	b0 e0       	ldi	r27, 0x00	; 0
    4bc2:	a0 e0       	ldi	r26, 0x00	; 0
    4bc4:	80 93 0c 01 	sts	0x010C, r24	; 0x80010c <next>
    4bc8:	90 93 0d 01 	sts	0x010D, r25	; 0x80010d <next+0x1>
    4bcc:	a0 93 0e 01 	sts	0x010E, r26	; 0x80010e <next+0x2>
    4bd0:	b0 93 0f 01 	sts	0x010F, r27	; 0x80010f <next+0x3>
    4bd4:	08 95       	ret

00004bd6 <random_r>:
    4bd6:	8f 92       	push	r8
    4bd8:	9f 92       	push	r9
    4bda:	af 92       	push	r10
    4bdc:	bf 92       	push	r11
    4bde:	cf 92       	push	r12
    4be0:	df 92       	push	r13
    4be2:	ef 92       	push	r14
    4be4:	ff 92       	push	r15
    4be6:	cf 93       	push	r28
    4be8:	df 93       	push	r29
    4bea:	ec 01       	movw	r28, r24
    4bec:	68 81       	ld	r22, Y
    4bee:	79 81       	ldd	r23, Y+1	; 0x01
    4bf0:	8a 81       	ldd	r24, Y+2	; 0x02
    4bf2:	9b 81       	ldd	r25, Y+3	; 0x03
    4bf4:	61 15       	cp	r22, r1
    4bf6:	71 05       	cpc	r23, r1
    4bf8:	81 05       	cpc	r24, r1
    4bfa:	91 05       	cpc	r25, r1
    4bfc:	21 f4       	brne	.+8      	; 0x4c06 <random_r+0x30>
    4bfe:	64 e2       	ldi	r22, 0x24	; 36
    4c00:	79 ed       	ldi	r23, 0xD9	; 217
    4c02:	8b e5       	ldi	r24, 0x5B	; 91
    4c04:	97 e0       	ldi	r25, 0x07	; 7
    4c06:	2d e1       	ldi	r18, 0x1D	; 29
    4c08:	33 ef       	ldi	r19, 0xF3	; 243
    4c0a:	41 e0       	ldi	r20, 0x01	; 1
    4c0c:	50 e0       	ldi	r21, 0x00	; 0
    4c0e:	0e 94 e9 26 	call	0x4dd2	; 0x4dd2 <__divmodsi4>
    4c12:	49 01       	movw	r8, r18
    4c14:	5a 01       	movw	r10, r20
    4c16:	9b 01       	movw	r18, r22
    4c18:	ac 01       	movw	r20, r24
    4c1a:	a7 ea       	ldi	r26, 0xA7	; 167
    4c1c:	b1 e4       	ldi	r27, 0x41	; 65
    4c1e:	0e 94 08 27 	call	0x4e10	; 0x4e10 <__muluhisi3>
    4c22:	6b 01       	movw	r12, r22
    4c24:	7c 01       	movw	r14, r24
    4c26:	ac ee       	ldi	r26, 0xEC	; 236
    4c28:	b4 ef       	ldi	r27, 0xF4	; 244
    4c2a:	a5 01       	movw	r20, r10
    4c2c:	94 01       	movw	r18, r8
    4c2e:	0e 94 16 27 	call	0x4e2c	; 0x4e2c <__mulohisi3>
    4c32:	c6 0e       	add	r12, r22
    4c34:	d7 1e       	adc	r13, r23
    4c36:	e8 1e       	adc	r14, r24
    4c38:	f9 1e       	adc	r15, r25
    4c3a:	f7 fe       	sbrs	r15, 7
    4c3c:	06 c0       	rjmp	.+12     	; 0x4c4a <random_r+0x74>
    4c3e:	81 e0       	ldi	r24, 0x01	; 1
    4c40:	c8 1a       	sub	r12, r24
    4c42:	d1 08       	sbc	r13, r1
    4c44:	e1 08       	sbc	r14, r1
    4c46:	80 e8       	ldi	r24, 0x80	; 128
    4c48:	f8 0a       	sbc	r15, r24
    4c4a:	c8 82       	st	Y, r12
    4c4c:	d9 82       	std	Y+1, r13	; 0x01
    4c4e:	ea 82       	std	Y+2, r14	; 0x02
    4c50:	fb 82       	std	Y+3, r15	; 0x03
    4c52:	c7 01       	movw	r24, r14
    4c54:	b6 01       	movw	r22, r12
    4c56:	9f 77       	andi	r25, 0x7F	; 127
    4c58:	df 91       	pop	r29
    4c5a:	cf 91       	pop	r28
    4c5c:	ff 90       	pop	r15
    4c5e:	ef 90       	pop	r14
    4c60:	df 90       	pop	r13
    4c62:	cf 90       	pop	r12
    4c64:	bf 90       	pop	r11
    4c66:	af 90       	pop	r10
    4c68:	9f 90       	pop	r9
    4c6a:	8f 90       	pop	r8
    4c6c:	08 95       	ret

00004c6e <random>:
    4c6e:	8f 92       	push	r8
    4c70:	9f 92       	push	r9
    4c72:	af 92       	push	r10
    4c74:	bf 92       	push	r11
    4c76:	cf 92       	push	r12
    4c78:	df 92       	push	r13
    4c7a:	ef 92       	push	r14
    4c7c:	ff 92       	push	r15
    4c7e:	60 91 10 01 	lds	r22, 0x0110	; 0x800110 <next>
    4c82:	70 91 11 01 	lds	r23, 0x0111	; 0x800111 <next+0x1>
    4c86:	80 91 12 01 	lds	r24, 0x0112	; 0x800112 <next+0x2>
    4c8a:	90 91 13 01 	lds	r25, 0x0113	; 0x800113 <next+0x3>
    4c8e:	61 15       	cp	r22, r1
    4c90:	71 05       	cpc	r23, r1
    4c92:	81 05       	cpc	r24, r1
    4c94:	91 05       	cpc	r25, r1
    4c96:	21 f4       	brne	.+8      	; 0x4ca0 <random+0x32>
    4c98:	64 e2       	ldi	r22, 0x24	; 36
    4c9a:	79 ed       	ldi	r23, 0xD9	; 217
    4c9c:	8b e5       	ldi	r24, 0x5B	; 91
    4c9e:	97 e0       	ldi	r25, 0x07	; 7
    4ca0:	2d e1       	ldi	r18, 0x1D	; 29
    4ca2:	33 ef       	ldi	r19, 0xF3	; 243
    4ca4:	41 e0       	ldi	r20, 0x01	; 1
    4ca6:	50 e0       	ldi	r21, 0x00	; 0
    4ca8:	0e 94 e9 26 	call	0x4dd2	; 0x4dd2 <__divmodsi4>
    4cac:	49 01       	movw	r8, r18
    4cae:	5a 01       	movw	r10, r20
    4cb0:	9b 01       	movw	r18, r22
    4cb2:	ac 01       	movw	r20, r24
    4cb4:	a7 ea       	ldi	r26, 0xA7	; 167
    4cb6:	b1 e4       	ldi	r27, 0x41	; 65
    4cb8:	0e 94 08 27 	call	0x4e10	; 0x4e10 <__muluhisi3>
    4cbc:	6b 01       	movw	r12, r22
    4cbe:	7c 01       	movw	r14, r24
    4cc0:	ac ee       	ldi	r26, 0xEC	; 236
    4cc2:	b4 ef       	ldi	r27, 0xF4	; 244
    4cc4:	a5 01       	movw	r20, r10
    4cc6:	94 01       	movw	r18, r8
    4cc8:	0e 94 16 27 	call	0x4e2c	; 0x4e2c <__mulohisi3>
    4ccc:	c6 0e       	add	r12, r22
    4cce:	d7 1e       	adc	r13, r23
    4cd0:	e8 1e       	adc	r14, r24
    4cd2:	f9 1e       	adc	r15, r25
    4cd4:	f7 fe       	sbrs	r15, 7
    4cd6:	06 c0       	rjmp	.+12     	; 0x4ce4 <random+0x76>
    4cd8:	81 e0       	ldi	r24, 0x01	; 1
    4cda:	c8 1a       	sub	r12, r24
    4cdc:	d1 08       	sbc	r13, r1
    4cde:	e1 08       	sbc	r14, r1
    4ce0:	80 e8       	ldi	r24, 0x80	; 128
    4ce2:	f8 0a       	sbc	r15, r24
    4ce4:	c0 92 10 01 	sts	0x0110, r12	; 0x800110 <next>
    4ce8:	d0 92 11 01 	sts	0x0111, r13	; 0x800111 <next+0x1>
    4cec:	e0 92 12 01 	sts	0x0112, r14	; 0x800112 <next+0x2>
    4cf0:	f0 92 13 01 	sts	0x0113, r15	; 0x800113 <next+0x3>
    4cf4:	c7 01       	movw	r24, r14
    4cf6:	b6 01       	movw	r22, r12
    4cf8:	9f 77       	andi	r25, 0x7F	; 127
    4cfa:	ff 90       	pop	r15
    4cfc:	ef 90       	pop	r14
    4cfe:	df 90       	pop	r13
    4d00:	cf 90       	pop	r12
    4d02:	bf 90       	pop	r11
    4d04:	af 90       	pop	r10
    4d06:	9f 90       	pop	r9
    4d08:	8f 90       	pop	r8
    4d0a:	08 95       	ret

00004d0c <srandom>:
    4d0c:	60 93 10 01 	sts	0x0110, r22	; 0x800110 <next>
    4d10:	70 93 11 01 	sts	0x0111, r23	; 0x800111 <next+0x1>
    4d14:	80 93 12 01 	sts	0x0112, r24	; 0x800112 <next+0x2>
    4d18:	90 93 13 01 	sts	0x0113, r25	; 0x800113 <next+0x3>
    4d1c:	08 95       	ret

00004d1e <memcpy_P>:
    4d1e:	fb 01       	movw	r30, r22
    4d20:	dc 01       	movw	r26, r24
    4d22:	02 c0       	rjmp	.+4      	; 0x4d28 <memcpy_P+0xa>
    4d24:	05 90       	lpm	r0, Z+
    4d26:	0d 92       	st	X+, r0
    4d28:	41 50       	subi	r20, 0x01	; 1
    4d2a:	50 40       	sbci	r21, 0x00	; 0
    4d2c:	d8 f7       	brcc	.-10     	; 0x4d24 <memcpy_P+0x6>
    4d2e:	08 95       	ret

00004d30 <strcpy_P>:
    4d30:	fb 01       	movw	r30, r22
    4d32:	dc 01       	movw	r26, r24
    4d34:	05 90       	lpm	r0, Z+
    4d36:	0d 92       	st	X+, r0
    4d38:	00 20       	and	r0, r0
    4d3a:	e1 f7       	brne	.-8      	; 0x4d34 <strcpy_P+0x4>
    4d3c:	08 95       	ret

00004d3e <strnlen>:
    4d3e:	fc 01       	movw	r30, r24
    4d40:	61 50       	subi	r22, 0x01	; 1
    4d42:	70 40       	sbci	r23, 0x00	; 0
    4d44:	01 90       	ld	r0, Z+
    4d46:	01 10       	cpse	r0, r1
    4d48:	d8 f7       	brcc	.-10     	; 0x4d40 <strnlen+0x2>
    4d4a:	80 95       	com	r24
    4d4c:	90 95       	com	r25
    4d4e:	8e 0f       	add	r24, r30
    4d50:	9f 1f       	adc	r25, r31
    4d52:	08 95       	ret

00004d54 <eeprom_read_byte>:
    4d54:	f9 99       	sbic	0x1f, 1	; 31
    4d56:	fe cf       	rjmp	.-4      	; 0x4d54 <eeprom_read_byte>
    4d58:	92 bd       	out	0x22, r25	; 34
    4d5a:	81 bd       	out	0x21, r24	; 33
    4d5c:	f8 9a       	sbi	0x1f, 0	; 31
    4d5e:	99 27       	eor	r25, r25
    4d60:	80 b5       	in	r24, 0x20	; 32
    4d62:	08 95       	ret

00004d64 <eeprom_read_dword>:
    4d64:	a6 e1       	ldi	r26, 0x16	; 22
    4d66:	b0 e0       	ldi	r27, 0x00	; 0
    4d68:	44 e0       	ldi	r20, 0x04	; 4
    4d6a:	50 e0       	ldi	r21, 0x00	; 0
    4d6c:	0c 94 db 26 	jmp	0x4db6	; 0x4db6 <eeprom_read_blraw>

00004d70 <eeprom_read_word>:
    4d70:	a8 e1       	ldi	r26, 0x18	; 24
    4d72:	b0 e0       	ldi	r27, 0x00	; 0
    4d74:	42 e0       	ldi	r20, 0x02	; 2
    4d76:	50 e0       	ldi	r21, 0x00	; 0
    4d78:	0c 94 db 26 	jmp	0x4db6	; 0x4db6 <eeprom_read_blraw>

00004d7c <eeprom_write_byte>:
    4d7c:	26 2f       	mov	r18, r22

00004d7e <eeprom_write_r18>:
    4d7e:	f9 99       	sbic	0x1f, 1	; 31
    4d80:	fe cf       	rjmp	.-4      	; 0x4d7e <eeprom_write_r18>
    4d82:	1f ba       	out	0x1f, r1	; 31
    4d84:	92 bd       	out	0x22, r25	; 34
    4d86:	81 bd       	out	0x21, r24	; 33
    4d88:	20 bd       	out	0x20, r18	; 32
    4d8a:	0f b6       	in	r0, 0x3f	; 63
    4d8c:	f8 94       	cli
    4d8e:	fa 9a       	sbi	0x1f, 2	; 31
    4d90:	f9 9a       	sbi	0x1f, 1	; 31
    4d92:	0f be       	out	0x3f, r0	; 63
    4d94:	01 96       	adiw	r24, 0x01	; 1
    4d96:	08 95       	ret

00004d98 <eeprom_write_dword>:
    4d98:	24 2f       	mov	r18, r20
    4d9a:	0e 94 bf 26 	call	0x4d7e	; 0x4d7e <eeprom_write_r18>
    4d9e:	25 2f       	mov	r18, r21
    4da0:	0e 94 bf 26 	call	0x4d7e	; 0x4d7e <eeprom_write_r18>
    4da4:	0c 94 d4 26 	jmp	0x4da8	; 0x4da8 <eeprom_write_word>

00004da8 <eeprom_write_word>:
    4da8:	0e 94 be 26 	call	0x4d7c	; 0x4d7c <eeprom_write_byte>
    4dac:	27 2f       	mov	r18, r23
    4dae:	0c 94 bf 26 	jmp	0x4d7e	; 0x4d7e <eeprom_write_r18>

00004db2 <eeprom_read_block>:
    4db2:	dc 01       	movw	r26, r24
    4db4:	cb 01       	movw	r24, r22

00004db6 <eeprom_read_blraw>:
    4db6:	fc 01       	movw	r30, r24
    4db8:	f9 99       	sbic	0x1f, 1	; 31
    4dba:	fe cf       	rjmp	.-4      	; 0x4db8 <eeprom_read_blraw+0x2>
    4dbc:	06 c0       	rjmp	.+12     	; 0x4dca <eeprom_read_blraw+0x14>
    4dbe:	f2 bd       	out	0x22, r31	; 34
    4dc0:	e1 bd       	out	0x21, r30	; 33
    4dc2:	f8 9a       	sbi	0x1f, 0	; 31
    4dc4:	31 96       	adiw	r30, 0x01	; 1
    4dc6:	00 b4       	in	r0, 0x20	; 32
    4dc8:	0d 92       	st	X+, r0
    4dca:	41 50       	subi	r20, 0x01	; 1
    4dcc:	50 40       	sbci	r21, 0x00	; 0
    4dce:	b8 f7       	brcc	.-18     	; 0x4dbe <eeprom_read_blraw+0x8>
    4dd0:	08 95       	ret

00004dd2 <__divmodsi4>:
    4dd2:	05 2e       	mov	r0, r21
    4dd4:	97 fb       	bst	r25, 7
    4dd6:	1e f4       	brtc	.+6      	; 0x4dde <__divmodsi4+0xc>
    4dd8:	00 94       	com	r0
    4dda:	0e 94 00 27 	call	0x4e00	; 0x4e00 <__negsi2>
    4dde:	57 fd       	sbrc	r21, 7
    4de0:	07 d0       	rcall	.+14     	; 0x4df0 <__divmodsi4_neg2>
    4de2:	0e 94 1b 27 	call	0x4e36	; 0x4e36 <__udivmodsi4>
    4de6:	07 fc       	sbrc	r0, 7
    4de8:	03 d0       	rcall	.+6      	; 0x4df0 <__divmodsi4_neg2>
    4dea:	4e f4       	brtc	.+18     	; 0x4dfe <__divmodsi4_exit>
    4dec:	0c 94 00 27 	jmp	0x4e00	; 0x4e00 <__negsi2>

00004df0 <__divmodsi4_neg2>:
    4df0:	50 95       	com	r21
    4df2:	40 95       	com	r20
    4df4:	30 95       	com	r19
    4df6:	21 95       	neg	r18
    4df8:	3f 4f       	sbci	r19, 0xFF	; 255
    4dfa:	4f 4f       	sbci	r20, 0xFF	; 255
    4dfc:	5f 4f       	sbci	r21, 0xFF	; 255

00004dfe <__divmodsi4_exit>:
    4dfe:	08 95       	ret

00004e00 <__negsi2>:
    4e00:	90 95       	com	r25
    4e02:	80 95       	com	r24
    4e04:	70 95       	com	r23
    4e06:	61 95       	neg	r22
    4e08:	7f 4f       	sbci	r23, 0xFF	; 255
    4e0a:	8f 4f       	sbci	r24, 0xFF	; 255
    4e0c:	9f 4f       	sbci	r25, 0xFF	; 255
    4e0e:	08 95       	ret

00004e10 <__muluhisi3>:
    4e10:	0e 94 3d 27 	call	0x4e7a	; 0x4e7a <__umulhisi3>
    4e14:	a5 9f       	mul	r26, r21
    4e16:	90 0d       	add	r25, r0
    4e18:	b4 9f       	mul	r27, r20
    4e1a:	90 0d       	add	r25, r0
    4e1c:	a4 9f       	mul	r26, r20
    4e1e:	80 0d       	add	r24, r0
    4e20:	91 1d       	adc	r25, r1
    4e22:	11 24       	eor	r1, r1
    4e24:	08 95       	ret

00004e26 <__mulshisi3>:
    4e26:	b7 ff       	sbrs	r27, 7
    4e28:	0c 94 08 27 	jmp	0x4e10	; 0x4e10 <__muluhisi3>

00004e2c <__mulohisi3>:
    4e2c:	0e 94 08 27 	call	0x4e10	; 0x4e10 <__muluhisi3>
    4e30:	82 1b       	sub	r24, r18
    4e32:	93 0b       	sbc	r25, r19
    4e34:	08 95       	ret

00004e36 <__udivmodsi4>:
    4e36:	a1 e2       	ldi	r26, 0x21	; 33
    4e38:	1a 2e       	mov	r1, r26
    4e3a:	aa 1b       	sub	r26, r26
    4e3c:	bb 1b       	sub	r27, r27
    4e3e:	fd 01       	movw	r30, r26
    4e40:	0d c0       	rjmp	.+26     	; 0x4e5c <__udivmodsi4_ep>

00004e42 <__udivmodsi4_loop>:
    4e42:	aa 1f       	adc	r26, r26
    4e44:	bb 1f       	adc	r27, r27
    4e46:	ee 1f       	adc	r30, r30
    4e48:	ff 1f       	adc	r31, r31
    4e4a:	a2 17       	cp	r26, r18
    4e4c:	b3 07       	cpc	r27, r19
    4e4e:	e4 07       	cpc	r30, r20
    4e50:	f5 07       	cpc	r31, r21
    4e52:	20 f0       	brcs	.+8      	; 0x4e5c <__udivmodsi4_ep>
    4e54:	a2 1b       	sub	r26, r18
    4e56:	b3 0b       	sbc	r27, r19
    4e58:	e4 0b       	sbc	r30, r20
    4e5a:	f5 0b       	sbc	r31, r21

00004e5c <__udivmodsi4_ep>:
    4e5c:	66 1f       	adc	r22, r22
    4e5e:	77 1f       	adc	r23, r23
    4e60:	88 1f       	adc	r24, r24
    4e62:	99 1f       	adc	r25, r25
    4e64:	1a 94       	dec	r1
    4e66:	69 f7       	brne	.-38     	; 0x4e42 <__udivmodsi4_loop>
    4e68:	60 95       	com	r22
    4e6a:	70 95       	com	r23
    4e6c:	80 95       	com	r24
    4e6e:	90 95       	com	r25
    4e70:	9b 01       	movw	r18, r22
    4e72:	ac 01       	movw	r20, r24
    4e74:	bd 01       	movw	r22, r26
    4e76:	cf 01       	movw	r24, r30
    4e78:	08 95       	ret

00004e7a <__umulhisi3>:
    4e7a:	a2 9f       	mul	r26, r18
    4e7c:	b0 01       	movw	r22, r0
    4e7e:	b3 9f       	mul	r27, r19
    4e80:	c0 01       	movw	r24, r0
    4e82:	a3 9f       	mul	r26, r19
    4e84:	70 0d       	add	r23, r0
    4e86:	81 1d       	adc	r24, r1
    4e88:	11 24       	eor	r1, r1
    4e8a:	91 1d       	adc	r25, r1
    4e8c:	b2 9f       	mul	r27, r18
    4e8e:	70 0d       	add	r23, r0
    4e90:	81 1d       	adc	r24, r1
    4e92:	11 24       	eor	r1, r1
    4e94:	91 1d       	adc	r25, r1
    4e96:	08 95       	ret

00004e98 <__subsf3>:
    4e98:	50 58       	subi	r21, 0x80	; 128

00004e9a <__addsf3>:
    4e9a:	bb 27       	eor	r27, r27
    4e9c:	aa 27       	eor	r26, r26
    4e9e:	0e 94 64 27 	call	0x4ec8	; 0x4ec8 <__addsf3x>
    4ea2:	0c 94 73 28 	jmp	0x50e6	; 0x50e6 <__fp_round>
    4ea6:	0e 94 3a 28 	call	0x5074	; 0x5074 <__fp_pscA>
    4eaa:	38 f0       	brcs	.+14     	; 0x4eba <__addsf3+0x20>
    4eac:	0e 94 41 28 	call	0x5082	; 0x5082 <__fp_pscB>
    4eb0:	20 f0       	brcs	.+8      	; 0x4eba <__addsf3+0x20>
    4eb2:	39 f4       	brne	.+14     	; 0x4ec2 <__addsf3+0x28>
    4eb4:	9f 3f       	cpi	r25, 0xFF	; 255
    4eb6:	19 f4       	brne	.+6      	; 0x4ebe <__addsf3+0x24>
    4eb8:	26 f4       	brtc	.+8      	; 0x4ec2 <__addsf3+0x28>
    4eba:	0c 94 37 28 	jmp	0x506e	; 0x506e <__fp_nan>
    4ebe:	0e f4       	brtc	.+2      	; 0x4ec2 <__addsf3+0x28>
    4ec0:	e0 95       	com	r30
    4ec2:	e7 fb       	bst	r30, 7
    4ec4:	0c 94 31 28 	jmp	0x5062	; 0x5062 <__fp_inf>

00004ec8 <__addsf3x>:
    4ec8:	e9 2f       	mov	r30, r25
    4eca:	0e 94 98 28 	call	0x5130	; 0x5130 <__fp_split3>
    4ece:	58 f3       	brcs	.-42     	; 0x4ea6 <__addsf3+0xc>
    4ed0:	ba 17       	cp	r27, r26
    4ed2:	62 07       	cpc	r22, r18
    4ed4:	73 07       	cpc	r23, r19
    4ed6:	84 07       	cpc	r24, r20
    4ed8:	95 07       	cpc	r25, r21
    4eda:	20 f0       	brcs	.+8      	; 0x4ee4 <__addsf3x+0x1c>
    4edc:	79 f4       	brne	.+30     	; 0x4efc <__addsf3x+0x34>
    4ede:	a6 f5       	brtc	.+104    	; 0x4f48 <__addsf3x+0x80>
    4ee0:	0c 94 ba 28 	jmp	0x5174	; 0x5174 <__fp_zero>
    4ee4:	0e f4       	brtc	.+2      	; 0x4ee8 <__addsf3x+0x20>
    4ee6:	e0 95       	com	r30
    4ee8:	0b 2e       	mov	r0, r27
    4eea:	ba 2f       	mov	r27, r26
    4eec:	a0 2d       	mov	r26, r0
    4eee:	0b 01       	movw	r0, r22
    4ef0:	b9 01       	movw	r22, r18
    4ef2:	90 01       	movw	r18, r0
    4ef4:	0c 01       	movw	r0, r24
    4ef6:	ca 01       	movw	r24, r20
    4ef8:	a0 01       	movw	r20, r0
    4efa:	11 24       	eor	r1, r1
    4efc:	ff 27       	eor	r31, r31
    4efe:	59 1b       	sub	r21, r25
    4f00:	99 f0       	breq	.+38     	; 0x4f28 <__addsf3x+0x60>
    4f02:	59 3f       	cpi	r21, 0xF9	; 249
    4f04:	50 f4       	brcc	.+20     	; 0x4f1a <__addsf3x+0x52>
    4f06:	50 3e       	cpi	r21, 0xE0	; 224
    4f08:	68 f1       	brcs	.+90     	; 0x4f64 <__addsf3x+0x9c>
    4f0a:	1a 16       	cp	r1, r26
    4f0c:	f0 40       	sbci	r31, 0x00	; 0
    4f0e:	a2 2f       	mov	r26, r18
    4f10:	23 2f       	mov	r18, r19
    4f12:	34 2f       	mov	r19, r20
    4f14:	44 27       	eor	r20, r20
    4f16:	58 5f       	subi	r21, 0xF8	; 248
    4f18:	f3 cf       	rjmp	.-26     	; 0x4f00 <__addsf3x+0x38>
    4f1a:	46 95       	lsr	r20
    4f1c:	37 95       	ror	r19
    4f1e:	27 95       	ror	r18
    4f20:	a7 95       	ror	r26
    4f22:	f0 40       	sbci	r31, 0x00	; 0
    4f24:	53 95       	inc	r21
    4f26:	c9 f7       	brne	.-14     	; 0x4f1a <__addsf3x+0x52>
    4f28:	7e f4       	brtc	.+30     	; 0x4f48 <__addsf3x+0x80>
    4f2a:	1f 16       	cp	r1, r31
    4f2c:	ba 0b       	sbc	r27, r26
    4f2e:	62 0b       	sbc	r22, r18
    4f30:	73 0b       	sbc	r23, r19
    4f32:	84 0b       	sbc	r24, r20
    4f34:	ba f0       	brmi	.+46     	; 0x4f64 <__addsf3x+0x9c>
    4f36:	91 50       	subi	r25, 0x01	; 1
    4f38:	a1 f0       	breq	.+40     	; 0x4f62 <__addsf3x+0x9a>
    4f3a:	ff 0f       	add	r31, r31
    4f3c:	bb 1f       	adc	r27, r27
    4f3e:	66 1f       	adc	r22, r22
    4f40:	77 1f       	adc	r23, r23
    4f42:	88 1f       	adc	r24, r24
    4f44:	c2 f7       	brpl	.-16     	; 0x4f36 <__addsf3x+0x6e>
    4f46:	0e c0       	rjmp	.+28     	; 0x4f64 <__addsf3x+0x9c>
    4f48:	ba 0f       	add	r27, r26
    4f4a:	62 1f       	adc	r22, r18
    4f4c:	73 1f       	adc	r23, r19
    4f4e:	84 1f       	adc	r24, r20
    4f50:	48 f4       	brcc	.+18     	; 0x4f64 <__addsf3x+0x9c>
    4f52:	87 95       	ror	r24
    4f54:	77 95       	ror	r23
    4f56:	67 95       	ror	r22
    4f58:	b7 95       	ror	r27
    4f5a:	f7 95       	ror	r31
    4f5c:	9e 3f       	cpi	r25, 0xFE	; 254
    4f5e:	08 f0       	brcs	.+2      	; 0x4f62 <__addsf3x+0x9a>
    4f60:	b0 cf       	rjmp	.-160    	; 0x4ec2 <__addsf3+0x28>
    4f62:	93 95       	inc	r25
    4f64:	88 0f       	add	r24, r24
    4f66:	08 f0       	brcs	.+2      	; 0x4f6a <__addsf3x+0xa2>
    4f68:	99 27       	eor	r25, r25
    4f6a:	ee 0f       	add	r30, r30
    4f6c:	97 95       	ror	r25
    4f6e:	87 95       	ror	r24
    4f70:	08 95       	ret

00004f72 <cos>:
    4f72:	0e 94 4a 28 	call	0x5094	; 0x5094 <__fp_rempio2>
    4f76:	e3 95       	inc	r30
    4f78:	0c 94 84 28 	jmp	0x5108	; 0x5108 <__fp_sinus>

00004f7c <__fixsfsi>:
    4f7c:	0e 94 c5 27 	call	0x4f8a	; 0x4f8a <__fixunssfsi>
    4f80:	68 94       	set
    4f82:	b1 11       	cpse	r27, r1
    4f84:	0c 94 bb 28 	jmp	0x5176	; 0x5176 <__fp_szero>
    4f88:	08 95       	ret

00004f8a <__fixunssfsi>:
    4f8a:	0e 94 a0 28 	call	0x5140	; 0x5140 <__fp_splitA>
    4f8e:	88 f0       	brcs	.+34     	; 0x4fb2 <__fixunssfsi+0x28>
    4f90:	9f 57       	subi	r25, 0x7F	; 127
    4f92:	98 f0       	brcs	.+38     	; 0x4fba <__fixunssfsi+0x30>
    4f94:	b9 2f       	mov	r27, r25
    4f96:	99 27       	eor	r25, r25
    4f98:	b7 51       	subi	r27, 0x17	; 23
    4f9a:	b0 f0       	brcs	.+44     	; 0x4fc8 <__fixunssfsi+0x3e>
    4f9c:	e1 f0       	breq	.+56     	; 0x4fd6 <__fixunssfsi+0x4c>
    4f9e:	66 0f       	add	r22, r22
    4fa0:	77 1f       	adc	r23, r23
    4fa2:	88 1f       	adc	r24, r24
    4fa4:	99 1f       	adc	r25, r25
    4fa6:	1a f0       	brmi	.+6      	; 0x4fae <__fixunssfsi+0x24>
    4fa8:	ba 95       	dec	r27
    4faa:	c9 f7       	brne	.-14     	; 0x4f9e <__fixunssfsi+0x14>
    4fac:	14 c0       	rjmp	.+40     	; 0x4fd6 <__fixunssfsi+0x4c>
    4fae:	b1 30       	cpi	r27, 0x01	; 1
    4fb0:	91 f0       	breq	.+36     	; 0x4fd6 <__fixunssfsi+0x4c>
    4fb2:	0e 94 ba 28 	call	0x5174	; 0x5174 <__fp_zero>
    4fb6:	b1 e0       	ldi	r27, 0x01	; 1
    4fb8:	08 95       	ret
    4fba:	0c 94 ba 28 	jmp	0x5174	; 0x5174 <__fp_zero>
    4fbe:	67 2f       	mov	r22, r23
    4fc0:	78 2f       	mov	r23, r24
    4fc2:	88 27       	eor	r24, r24
    4fc4:	b8 5f       	subi	r27, 0xF8	; 248
    4fc6:	39 f0       	breq	.+14     	; 0x4fd6 <__fixunssfsi+0x4c>
    4fc8:	b9 3f       	cpi	r27, 0xF9	; 249
    4fca:	cc f3       	brlt	.-14     	; 0x4fbe <__fixunssfsi+0x34>
    4fcc:	86 95       	lsr	r24
    4fce:	77 95       	ror	r23
    4fd0:	67 95       	ror	r22
    4fd2:	b3 95       	inc	r27
    4fd4:	d9 f7       	brne	.-10     	; 0x4fcc <__fixunssfsi+0x42>
    4fd6:	3e f4       	brtc	.+14     	; 0x4fe6 <__fixunssfsi+0x5c>
    4fd8:	90 95       	com	r25
    4fda:	80 95       	com	r24
    4fdc:	70 95       	com	r23
    4fde:	61 95       	neg	r22
    4fe0:	7f 4f       	sbci	r23, 0xFF	; 255
    4fe2:	8f 4f       	sbci	r24, 0xFF	; 255
    4fe4:	9f 4f       	sbci	r25, 0xFF	; 255
    4fe6:	08 95       	ret

00004fe8 <__floatunsisf>:
    4fe8:	e8 94       	clt
    4fea:	09 c0       	rjmp	.+18     	; 0x4ffe <__floatsisf+0x12>

00004fec <__floatsisf>:
    4fec:	97 fb       	bst	r25, 7
    4fee:	3e f4       	brtc	.+14     	; 0x4ffe <__floatsisf+0x12>
    4ff0:	90 95       	com	r25
    4ff2:	80 95       	com	r24
    4ff4:	70 95       	com	r23
    4ff6:	61 95       	neg	r22
    4ff8:	7f 4f       	sbci	r23, 0xFF	; 255
    4ffa:	8f 4f       	sbci	r24, 0xFF	; 255
    4ffc:	9f 4f       	sbci	r25, 0xFF	; 255
    4ffe:	99 23       	and	r25, r25
    5000:	a9 f0       	breq	.+42     	; 0x502c <__floatsisf+0x40>
    5002:	f9 2f       	mov	r31, r25
    5004:	96 e9       	ldi	r25, 0x96	; 150
    5006:	bb 27       	eor	r27, r27
    5008:	93 95       	inc	r25
    500a:	f6 95       	lsr	r31
    500c:	87 95       	ror	r24
    500e:	77 95       	ror	r23
    5010:	67 95       	ror	r22
    5012:	b7 95       	ror	r27
    5014:	f1 11       	cpse	r31, r1
    5016:	f8 cf       	rjmp	.-16     	; 0x5008 <__floatsisf+0x1c>
    5018:	fa f4       	brpl	.+62     	; 0x5058 <__floatsisf+0x6c>
    501a:	bb 0f       	add	r27, r27
    501c:	11 f4       	brne	.+4      	; 0x5022 <__floatsisf+0x36>
    501e:	60 ff       	sbrs	r22, 0
    5020:	1b c0       	rjmp	.+54     	; 0x5058 <__floatsisf+0x6c>
    5022:	6f 5f       	subi	r22, 0xFF	; 255
    5024:	7f 4f       	sbci	r23, 0xFF	; 255
    5026:	8f 4f       	sbci	r24, 0xFF	; 255
    5028:	9f 4f       	sbci	r25, 0xFF	; 255
    502a:	16 c0       	rjmp	.+44     	; 0x5058 <__floatsisf+0x6c>
    502c:	88 23       	and	r24, r24
    502e:	11 f0       	breq	.+4      	; 0x5034 <__floatsisf+0x48>
    5030:	96 e9       	ldi	r25, 0x96	; 150
    5032:	11 c0       	rjmp	.+34     	; 0x5056 <__floatsisf+0x6a>
    5034:	77 23       	and	r23, r23
    5036:	21 f0       	breq	.+8      	; 0x5040 <__floatsisf+0x54>
    5038:	9e e8       	ldi	r25, 0x8E	; 142
    503a:	87 2f       	mov	r24, r23
    503c:	76 2f       	mov	r23, r22
    503e:	05 c0       	rjmp	.+10     	; 0x504a <__floatsisf+0x5e>
    5040:	66 23       	and	r22, r22
    5042:	71 f0       	breq	.+28     	; 0x5060 <__floatsisf+0x74>
    5044:	96 e8       	ldi	r25, 0x86	; 134
    5046:	86 2f       	mov	r24, r22
    5048:	70 e0       	ldi	r23, 0x00	; 0
    504a:	60 e0       	ldi	r22, 0x00	; 0
    504c:	2a f0       	brmi	.+10     	; 0x5058 <__floatsisf+0x6c>
    504e:	9a 95       	dec	r25
    5050:	66 0f       	add	r22, r22
    5052:	77 1f       	adc	r23, r23
    5054:	88 1f       	adc	r24, r24
    5056:	da f7       	brpl	.-10     	; 0x504e <__floatsisf+0x62>
    5058:	88 0f       	add	r24, r24
    505a:	96 95       	lsr	r25
    505c:	87 95       	ror	r24
    505e:	97 f9       	bld	r25, 7
    5060:	08 95       	ret

00005062 <__fp_inf>:
    5062:	97 f9       	bld	r25, 7
    5064:	9f 67       	ori	r25, 0x7F	; 127
    5066:	80 e8       	ldi	r24, 0x80	; 128
    5068:	70 e0       	ldi	r23, 0x00	; 0
    506a:	60 e0       	ldi	r22, 0x00	; 0
    506c:	08 95       	ret

0000506e <__fp_nan>:
    506e:	9f ef       	ldi	r25, 0xFF	; 255
    5070:	80 ec       	ldi	r24, 0xC0	; 192
    5072:	08 95       	ret

00005074 <__fp_pscA>:
    5074:	00 24       	eor	r0, r0
    5076:	0a 94       	dec	r0
    5078:	16 16       	cp	r1, r22
    507a:	17 06       	cpc	r1, r23
    507c:	18 06       	cpc	r1, r24
    507e:	09 06       	cpc	r0, r25
    5080:	08 95       	ret

00005082 <__fp_pscB>:
    5082:	00 24       	eor	r0, r0
    5084:	0a 94       	dec	r0
    5086:	12 16       	cp	r1, r18
    5088:	13 06       	cpc	r1, r19
    508a:	14 06       	cpc	r1, r20
    508c:	05 06       	cpc	r0, r21
    508e:	08 95       	ret
    5090:	0c 94 37 28 	jmp	0x506e	; 0x506e <__fp_nan>

00005094 <__fp_rempio2>:
    5094:	0e 94 a0 28 	call	0x5140	; 0x5140 <__fp_splitA>
    5098:	d8 f3       	brcs	.-10     	; 0x5090 <__fp_pscB+0xe>
    509a:	e8 94       	clt
    509c:	e0 e0       	ldi	r30, 0x00	; 0
    509e:	bb 27       	eor	r27, r27
    50a0:	9f 57       	subi	r25, 0x7F	; 127
    50a2:	f0 f0       	brcs	.+60     	; 0x50e0 <__fp_rempio2+0x4c>
    50a4:	2a ed       	ldi	r18, 0xDA	; 218
    50a6:	3f e0       	ldi	r19, 0x0F	; 15
    50a8:	49 ec       	ldi	r20, 0xC9	; 201
    50aa:	06 c0       	rjmp	.+12     	; 0x50b8 <__fp_rempio2+0x24>
    50ac:	ee 0f       	add	r30, r30
    50ae:	bb 0f       	add	r27, r27
    50b0:	66 1f       	adc	r22, r22
    50b2:	77 1f       	adc	r23, r23
    50b4:	88 1f       	adc	r24, r24
    50b6:	28 f0       	brcs	.+10     	; 0x50c2 <__fp_rempio2+0x2e>
    50b8:	b2 3a       	cpi	r27, 0xA2	; 162
    50ba:	62 07       	cpc	r22, r18
    50bc:	73 07       	cpc	r23, r19
    50be:	84 07       	cpc	r24, r20
    50c0:	28 f0       	brcs	.+10     	; 0x50cc <__fp_rempio2+0x38>
    50c2:	b2 5a       	subi	r27, 0xA2	; 162
    50c4:	62 0b       	sbc	r22, r18
    50c6:	73 0b       	sbc	r23, r19
    50c8:	84 0b       	sbc	r24, r20
    50ca:	e3 95       	inc	r30
    50cc:	9a 95       	dec	r25
    50ce:	72 f7       	brpl	.-36     	; 0x50ac <__fp_rempio2+0x18>
    50d0:	80 38       	cpi	r24, 0x80	; 128
    50d2:	30 f4       	brcc	.+12     	; 0x50e0 <__fp_rempio2+0x4c>
    50d4:	9a 95       	dec	r25
    50d6:	bb 0f       	add	r27, r27
    50d8:	66 1f       	adc	r22, r22
    50da:	77 1f       	adc	r23, r23
    50dc:	88 1f       	adc	r24, r24
    50de:	d2 f7       	brpl	.-12     	; 0x50d4 <__fp_rempio2+0x40>
    50e0:	90 48       	sbci	r25, 0x80	; 128
    50e2:	0c 94 30 29 	jmp	0x5260	; 0x5260 <__fp_mpack_finite>

000050e6 <__fp_round>:
    50e6:	09 2e       	mov	r0, r25
    50e8:	03 94       	inc	r0
    50ea:	00 0c       	add	r0, r0
    50ec:	11 f4       	brne	.+4      	; 0x50f2 <__fp_round+0xc>
    50ee:	88 23       	and	r24, r24
    50f0:	52 f0       	brmi	.+20     	; 0x5106 <__fp_round+0x20>
    50f2:	bb 0f       	add	r27, r27
    50f4:	40 f4       	brcc	.+16     	; 0x5106 <__fp_round+0x20>
    50f6:	bf 2b       	or	r27, r31
    50f8:	11 f4       	brne	.+4      	; 0x50fe <__fp_round+0x18>
    50fa:	60 ff       	sbrs	r22, 0
    50fc:	04 c0       	rjmp	.+8      	; 0x5106 <__fp_round+0x20>
    50fe:	6f 5f       	subi	r22, 0xFF	; 255
    5100:	7f 4f       	sbci	r23, 0xFF	; 255
    5102:	8f 4f       	sbci	r24, 0xFF	; 255
    5104:	9f 4f       	sbci	r25, 0xFF	; 255
    5106:	08 95       	ret

00005108 <__fp_sinus>:
    5108:	ef 93       	push	r30
    510a:	e0 ff       	sbrs	r30, 0
    510c:	07 c0       	rjmp	.+14     	; 0x511c <__fp_sinus+0x14>
    510e:	a2 ea       	ldi	r26, 0xA2	; 162
    5110:	2a ed       	ldi	r18, 0xDA	; 218
    5112:	3f e0       	ldi	r19, 0x0F	; 15
    5114:	49 ec       	ldi	r20, 0xC9	; 201
    5116:	5f eb       	ldi	r21, 0xBF	; 191
    5118:	0e 94 64 27 	call	0x4ec8	; 0x4ec8 <__addsf3x>
    511c:	0e 94 73 28 	call	0x50e6	; 0x50e6 <__fp_round>
    5120:	0f 90       	pop	r0
    5122:	03 94       	inc	r0
    5124:	01 fc       	sbrc	r0, 1
    5126:	90 58       	subi	r25, 0x80	; 128
    5128:	ec ea       	ldi	r30, 0xAC	; 172
    512a:	f0 e0       	ldi	r31, 0x00	; 0
    512c:	0c 94 3c 29 	jmp	0x5278	; 0x5278 <__fp_powsodd>

00005130 <__fp_split3>:
    5130:	57 fd       	sbrc	r21, 7
    5132:	90 58       	subi	r25, 0x80	; 128
    5134:	44 0f       	add	r20, r20
    5136:	55 1f       	adc	r21, r21
    5138:	59 f0       	breq	.+22     	; 0x5150 <__fp_splitA+0x10>
    513a:	5f 3f       	cpi	r21, 0xFF	; 255
    513c:	71 f0       	breq	.+28     	; 0x515a <__fp_splitA+0x1a>
    513e:	47 95       	ror	r20

00005140 <__fp_splitA>:
    5140:	88 0f       	add	r24, r24
    5142:	97 fb       	bst	r25, 7
    5144:	99 1f       	adc	r25, r25
    5146:	61 f0       	breq	.+24     	; 0x5160 <__fp_splitA+0x20>
    5148:	9f 3f       	cpi	r25, 0xFF	; 255
    514a:	79 f0       	breq	.+30     	; 0x516a <__fp_splitA+0x2a>
    514c:	87 95       	ror	r24
    514e:	08 95       	ret
    5150:	12 16       	cp	r1, r18
    5152:	13 06       	cpc	r1, r19
    5154:	14 06       	cpc	r1, r20
    5156:	55 1f       	adc	r21, r21
    5158:	f2 cf       	rjmp	.-28     	; 0x513e <__fp_split3+0xe>
    515a:	46 95       	lsr	r20
    515c:	f1 df       	rcall	.-30     	; 0x5140 <__fp_splitA>
    515e:	08 c0       	rjmp	.+16     	; 0x5170 <__fp_splitA+0x30>
    5160:	16 16       	cp	r1, r22
    5162:	17 06       	cpc	r1, r23
    5164:	18 06       	cpc	r1, r24
    5166:	99 1f       	adc	r25, r25
    5168:	f1 cf       	rjmp	.-30     	; 0x514c <__fp_splitA+0xc>
    516a:	86 95       	lsr	r24
    516c:	71 05       	cpc	r23, r1
    516e:	61 05       	cpc	r22, r1
    5170:	08 94       	sec
    5172:	08 95       	ret

00005174 <__fp_zero>:
    5174:	e8 94       	clt

00005176 <__fp_szero>:
    5176:	bb 27       	eor	r27, r27
    5178:	66 27       	eor	r22, r22
    517a:	77 27       	eor	r23, r23
    517c:	cb 01       	movw	r24, r22
    517e:	97 f9       	bld	r25, 7
    5180:	08 95       	ret

00005182 <__mulsf3>:
    5182:	0e 94 d4 28 	call	0x51a8	; 0x51a8 <__mulsf3x>
    5186:	0c 94 73 28 	jmp	0x50e6	; 0x50e6 <__fp_round>
    518a:	0e 94 3a 28 	call	0x5074	; 0x5074 <__fp_pscA>
    518e:	38 f0       	brcs	.+14     	; 0x519e <__mulsf3+0x1c>
    5190:	0e 94 41 28 	call	0x5082	; 0x5082 <__fp_pscB>
    5194:	20 f0       	brcs	.+8      	; 0x519e <__mulsf3+0x1c>
    5196:	95 23       	and	r25, r21
    5198:	11 f0       	breq	.+4      	; 0x519e <__mulsf3+0x1c>
    519a:	0c 94 31 28 	jmp	0x5062	; 0x5062 <__fp_inf>
    519e:	0c 94 37 28 	jmp	0x506e	; 0x506e <__fp_nan>
    51a2:	11 24       	eor	r1, r1
    51a4:	0c 94 bb 28 	jmp	0x5176	; 0x5176 <__fp_szero>

000051a8 <__mulsf3x>:
    51a8:	0e 94 98 28 	call	0x5130	; 0x5130 <__fp_split3>
    51ac:	70 f3       	brcs	.-36     	; 0x518a <__mulsf3+0x8>

000051ae <__mulsf3_pse>:
    51ae:	95 9f       	mul	r25, r21
    51b0:	c1 f3       	breq	.-16     	; 0x51a2 <__mulsf3+0x20>
    51b2:	95 0f       	add	r25, r21
    51b4:	50 e0       	ldi	r21, 0x00	; 0
    51b6:	55 1f       	adc	r21, r21
    51b8:	62 9f       	mul	r22, r18
    51ba:	f0 01       	movw	r30, r0
    51bc:	72 9f       	mul	r23, r18
    51be:	bb 27       	eor	r27, r27
    51c0:	f0 0d       	add	r31, r0
    51c2:	b1 1d       	adc	r27, r1
    51c4:	63 9f       	mul	r22, r19
    51c6:	aa 27       	eor	r26, r26
    51c8:	f0 0d       	add	r31, r0
    51ca:	b1 1d       	adc	r27, r1
    51cc:	aa 1f       	adc	r26, r26
    51ce:	64 9f       	mul	r22, r20
    51d0:	66 27       	eor	r22, r22
    51d2:	b0 0d       	add	r27, r0
    51d4:	a1 1d       	adc	r26, r1
    51d6:	66 1f       	adc	r22, r22
    51d8:	82 9f       	mul	r24, r18
    51da:	22 27       	eor	r18, r18
    51dc:	b0 0d       	add	r27, r0
    51de:	a1 1d       	adc	r26, r1
    51e0:	62 1f       	adc	r22, r18
    51e2:	73 9f       	mul	r23, r19
    51e4:	b0 0d       	add	r27, r0
    51e6:	a1 1d       	adc	r26, r1
    51e8:	62 1f       	adc	r22, r18
    51ea:	83 9f       	mul	r24, r19
    51ec:	a0 0d       	add	r26, r0
    51ee:	61 1d       	adc	r22, r1
    51f0:	22 1f       	adc	r18, r18
    51f2:	74 9f       	mul	r23, r20
    51f4:	33 27       	eor	r19, r19
    51f6:	a0 0d       	add	r26, r0
    51f8:	61 1d       	adc	r22, r1
    51fa:	23 1f       	adc	r18, r19
    51fc:	84 9f       	mul	r24, r20
    51fe:	60 0d       	add	r22, r0
    5200:	21 1d       	adc	r18, r1
    5202:	82 2f       	mov	r24, r18
    5204:	76 2f       	mov	r23, r22
    5206:	6a 2f       	mov	r22, r26
    5208:	11 24       	eor	r1, r1
    520a:	9f 57       	subi	r25, 0x7F	; 127
    520c:	50 40       	sbci	r21, 0x00	; 0
    520e:	9a f0       	brmi	.+38     	; 0x5236 <__mulsf3_pse+0x88>
    5210:	f1 f0       	breq	.+60     	; 0x524e <__mulsf3_pse+0xa0>
    5212:	88 23       	and	r24, r24
    5214:	4a f0       	brmi	.+18     	; 0x5228 <__mulsf3_pse+0x7a>
    5216:	ee 0f       	add	r30, r30
    5218:	ff 1f       	adc	r31, r31
    521a:	bb 1f       	adc	r27, r27
    521c:	66 1f       	adc	r22, r22
    521e:	77 1f       	adc	r23, r23
    5220:	88 1f       	adc	r24, r24
    5222:	91 50       	subi	r25, 0x01	; 1
    5224:	50 40       	sbci	r21, 0x00	; 0
    5226:	a9 f7       	brne	.-22     	; 0x5212 <__mulsf3_pse+0x64>
    5228:	9e 3f       	cpi	r25, 0xFE	; 254
    522a:	51 05       	cpc	r21, r1
    522c:	80 f0       	brcs	.+32     	; 0x524e <__mulsf3_pse+0xa0>
    522e:	0c 94 31 28 	jmp	0x5062	; 0x5062 <__fp_inf>
    5232:	0c 94 bb 28 	jmp	0x5176	; 0x5176 <__fp_szero>
    5236:	5f 3f       	cpi	r21, 0xFF	; 255
    5238:	e4 f3       	brlt	.-8      	; 0x5232 <__mulsf3_pse+0x84>
    523a:	98 3e       	cpi	r25, 0xE8	; 232
    523c:	d4 f3       	brlt	.-12     	; 0x5232 <__mulsf3_pse+0x84>
    523e:	86 95       	lsr	r24
    5240:	77 95       	ror	r23
    5242:	67 95       	ror	r22
    5244:	b7 95       	ror	r27
    5246:	f7 95       	ror	r31
    5248:	e7 95       	ror	r30
    524a:	9f 5f       	subi	r25, 0xFF	; 255
    524c:	c1 f7       	brne	.-16     	; 0x523e <__mulsf3_pse+0x90>
    524e:	fe 2b       	or	r31, r30
    5250:	88 0f       	add	r24, r24
    5252:	91 1d       	adc	r25, r1
    5254:	96 95       	lsr	r25
    5256:	87 95       	ror	r24
    5258:	97 f9       	bld	r25, 7
    525a:	08 95       	ret

0000525c <__fp_mpack>:
    525c:	9f 3f       	cpi	r25, 0xFF	; 255
    525e:	31 f0       	breq	.+12     	; 0x526c <__fp_mpack_finite+0xc>

00005260 <__fp_mpack_finite>:
    5260:	91 50       	subi	r25, 0x01	; 1
    5262:	20 f4       	brcc	.+8      	; 0x526c <__fp_mpack_finite+0xc>
    5264:	87 95       	ror	r24
    5266:	77 95       	ror	r23
    5268:	67 95       	ror	r22
    526a:	b7 95       	ror	r27
    526c:	88 0f       	add	r24, r24
    526e:	91 1d       	adc	r25, r1
    5270:	96 95       	lsr	r25
    5272:	87 95       	ror	r24
    5274:	97 f9       	bld	r25, 7
    5276:	08 95       	ret

00005278 <__fp_powsodd>:
    5278:	9f 93       	push	r25
    527a:	8f 93       	push	r24
    527c:	7f 93       	push	r23
    527e:	6f 93       	push	r22
    5280:	ff 93       	push	r31
    5282:	ef 93       	push	r30
    5284:	9b 01       	movw	r18, r22
    5286:	ac 01       	movw	r20, r24
    5288:	0e 94 c1 28 	call	0x5182	; 0x5182 <__mulsf3>
    528c:	ef 91       	pop	r30
    528e:	ff 91       	pop	r31
    5290:	0e 94 50 29 	call	0x52a0	; 0x52a0 <__fp_powser>
    5294:	2f 91       	pop	r18
    5296:	3f 91       	pop	r19
    5298:	4f 91       	pop	r20
    529a:	5f 91       	pop	r21
    529c:	0c 94 c1 28 	jmp	0x5182	; 0x5182 <__mulsf3>

000052a0 <__fp_powser>:
    52a0:	df 93       	push	r29
    52a2:	cf 93       	push	r28
    52a4:	1f 93       	push	r17
    52a6:	0f 93       	push	r16
    52a8:	ff 92       	push	r15
    52aa:	ef 92       	push	r14
    52ac:	df 92       	push	r13
    52ae:	7b 01       	movw	r14, r22
    52b0:	8c 01       	movw	r16, r24
    52b2:	68 94       	set
    52b4:	06 c0       	rjmp	.+12     	; 0x52c2 <__fp_powser+0x22>
    52b6:	da 2e       	mov	r13, r26
    52b8:	ef 01       	movw	r28, r30
    52ba:	0e 94 d4 28 	call	0x51a8	; 0x51a8 <__mulsf3x>
    52be:	fe 01       	movw	r30, r28
    52c0:	e8 94       	clt
    52c2:	a5 91       	lpm	r26, Z+
    52c4:	25 91       	lpm	r18, Z+
    52c6:	35 91       	lpm	r19, Z+
    52c8:	45 91       	lpm	r20, Z+
    52ca:	55 91       	lpm	r21, Z+
    52cc:	a6 f3       	brts	.-24     	; 0x52b6 <__fp_powser+0x16>
    52ce:	ef 01       	movw	r28, r30
    52d0:	0e 94 64 27 	call	0x4ec8	; 0x4ec8 <__addsf3x>
    52d4:	fe 01       	movw	r30, r28
    52d6:	97 01       	movw	r18, r14
    52d8:	a8 01       	movw	r20, r16
    52da:	da 94       	dec	r13
    52dc:	69 f7       	brne	.-38     	; 0x52b8 <__fp_powser+0x18>
    52de:	df 90       	pop	r13
    52e0:	ef 90       	pop	r14
    52e2:	ff 90       	pop	r15
    52e4:	0f 91       	pop	r16
    52e6:	1f 91       	pop	r17
    52e8:	cf 91       	pop	r28
    52ea:	df 91       	pop	r29
    52ec:	08 95       	ret

000052ee <__divmodhi4>:
    52ee:	97 fb       	bst	r25, 7
    52f0:	07 2e       	mov	r0, r23
    52f2:	16 f4       	brtc	.+4      	; 0x52f8 <__divmodhi4+0xa>
    52f4:	00 94       	com	r0
    52f6:	07 d0       	rcall	.+14     	; 0x5306 <__divmodhi4_neg1>
    52f8:	77 fd       	sbrc	r23, 7
    52fa:	09 d0       	rcall	.+18     	; 0x530e <__divmodhi4_neg2>
    52fc:	0e 94 91 29 	call	0x5322	; 0x5322 <__udivmodhi4>
    5300:	07 fc       	sbrc	r0, 7
    5302:	05 d0       	rcall	.+10     	; 0x530e <__divmodhi4_neg2>
    5304:	3e f4       	brtc	.+14     	; 0x5314 <__divmodhi4_exit>

00005306 <__divmodhi4_neg1>:
    5306:	90 95       	com	r25
    5308:	81 95       	neg	r24
    530a:	9f 4f       	sbci	r25, 0xFF	; 255
    530c:	08 95       	ret

0000530e <__divmodhi4_neg2>:
    530e:	70 95       	com	r23
    5310:	61 95       	neg	r22
    5312:	7f 4f       	sbci	r23, 0xFF	; 255

00005314 <__divmodhi4_exit>:
    5314:	08 95       	ret

00005316 <__tablejump2__>:
    5316:	ee 0f       	add	r30, r30
    5318:	ff 1f       	adc	r31, r31
    531a:	05 90       	lpm	r0, Z+
    531c:	f4 91       	lpm	r31, Z
    531e:	e0 2d       	mov	r30, r0
    5320:	09 94       	ijmp

00005322 <__udivmodhi4>:
    5322:	aa 1b       	sub	r26, r26
    5324:	bb 1b       	sub	r27, r27
    5326:	51 e1       	ldi	r21, 0x11	; 17
    5328:	07 c0       	rjmp	.+14     	; 0x5338 <__udivmodhi4_ep>

0000532a <__udivmodhi4_loop>:
    532a:	aa 1f       	adc	r26, r26
    532c:	bb 1f       	adc	r27, r27
    532e:	a6 17       	cp	r26, r22
    5330:	b7 07       	cpc	r27, r23
    5332:	10 f0       	brcs	.+4      	; 0x5338 <__udivmodhi4_ep>
    5334:	a6 1b       	sub	r26, r22
    5336:	b7 0b       	sbc	r27, r23

00005338 <__udivmodhi4_ep>:
    5338:	88 1f       	adc	r24, r24
    533a:	99 1f       	adc	r25, r25
    533c:	5a 95       	dec	r21
    533e:	a9 f7       	brne	.-22     	; 0x532a <__udivmodhi4_loop>
    5340:	80 95       	com	r24
    5342:	90 95       	com	r25
    5344:	bc 01       	movw	r22, r24
    5346:	cd 01       	movw	r24, r26
    5348:	08 95       	ret

0000534a <abort>:
    534a:	81 e0       	ldi	r24, 0x01	; 1
    534c:	90 e0       	ldi	r25, 0x00	; 0
    534e:	f8 94       	cli
    5350:	0c 94 77 2c 	jmp	0x58ee	; 0x58ee <_exit>

00005354 <sprintf>:
    5354:	ae e0       	ldi	r26, 0x0E	; 14
    5356:	b0 e0       	ldi	r27, 0x00	; 0
    5358:	e0 eb       	ldi	r30, 0xB0	; 176
    535a:	f9 e2       	ldi	r31, 0x29	; 41
    535c:	0c 94 4e 2c 	jmp	0x589c	; 0x589c <__prologue_saves__+0x1c>
    5360:	0d 89       	ldd	r16, Y+21	; 0x15
    5362:	1e 89       	ldd	r17, Y+22	; 0x16
    5364:	86 e0       	ldi	r24, 0x06	; 6
    5366:	8c 83       	std	Y+4, r24	; 0x04
    5368:	1a 83       	std	Y+2, r17	; 0x02
    536a:	09 83       	std	Y+1, r16	; 0x01
    536c:	8f ef       	ldi	r24, 0xFF	; 255
    536e:	9f e7       	ldi	r25, 0x7F	; 127
    5370:	9e 83       	std	Y+6, r25	; 0x06
    5372:	8d 83       	std	Y+5, r24	; 0x05
    5374:	ae 01       	movw	r20, r28
    5376:	47 5e       	subi	r20, 0xE7	; 231
    5378:	5f 4f       	sbci	r21, 0xFF	; 255
    537a:	6f 89       	ldd	r22, Y+23	; 0x17
    537c:	78 8d       	ldd	r23, Y+24	; 0x18
    537e:	ce 01       	movw	r24, r28
    5380:	01 96       	adiw	r24, 0x01	; 1
    5382:	0e 94 cd 29 	call	0x539a	; 0x539a <vfprintf>
    5386:	2f 81       	ldd	r18, Y+7	; 0x07
    5388:	38 85       	ldd	r19, Y+8	; 0x08
    538a:	02 0f       	add	r16, r18
    538c:	13 1f       	adc	r17, r19
    538e:	f8 01       	movw	r30, r16
    5390:	10 82       	st	Z, r1
    5392:	2e 96       	adiw	r28, 0x0e	; 14
    5394:	e4 e0       	ldi	r30, 0x04	; 4
    5396:	0c 94 6a 2c 	jmp	0x58d4	; 0x58d4 <__epilogue_restores__+0x1c>

0000539a <vfprintf>:
    539a:	ab e0       	ldi	r26, 0x0B	; 11
    539c:	b0 e0       	ldi	r27, 0x00	; 0
    539e:	e3 ed       	ldi	r30, 0xD3	; 211
    53a0:	f9 e2       	ldi	r31, 0x29	; 41
    53a2:	0c 94 40 2c 	jmp	0x5880	; 0x5880 <__prologue_saves__>
    53a6:	7c 01       	movw	r14, r24
    53a8:	3b 01       	movw	r6, r22
    53aa:	8a 01       	movw	r16, r20
    53ac:	fc 01       	movw	r30, r24
    53ae:	17 82       	std	Z+7, r1	; 0x07
    53b0:	16 82       	std	Z+6, r1	; 0x06
    53b2:	83 81       	ldd	r24, Z+3	; 0x03
    53b4:	81 ff       	sbrs	r24, 1
    53b6:	c8 c1       	rjmp	.+912    	; 0x5748 <vfprintf+0x3ae>
    53b8:	ce 01       	movw	r24, r28
    53ba:	01 96       	adiw	r24, 0x01	; 1
    53bc:	5c 01       	movw	r10, r24
    53be:	f7 01       	movw	r30, r14
    53c0:	93 81       	ldd	r25, Z+3	; 0x03
    53c2:	f3 01       	movw	r30, r6
    53c4:	93 fd       	sbrc	r25, 3
    53c6:	85 91       	lpm	r24, Z+
    53c8:	93 ff       	sbrs	r25, 3
    53ca:	81 91       	ld	r24, Z+
    53cc:	3f 01       	movw	r6, r30
    53ce:	88 23       	and	r24, r24
    53d0:	09 f4       	brne	.+2      	; 0x53d4 <vfprintf+0x3a>
    53d2:	53 c1       	rjmp	.+678    	; 0x567a <vfprintf+0x2e0>
    53d4:	85 32       	cpi	r24, 0x25	; 37
    53d6:	39 f4       	brne	.+14     	; 0x53e6 <vfprintf+0x4c>
    53d8:	93 fd       	sbrc	r25, 3
    53da:	85 91       	lpm	r24, Z+
    53dc:	93 ff       	sbrs	r25, 3
    53de:	81 91       	ld	r24, Z+
    53e0:	3f 01       	movw	r6, r30
    53e2:	85 32       	cpi	r24, 0x25	; 37
    53e4:	29 f4       	brne	.+10     	; 0x53f0 <vfprintf+0x56>
    53e6:	b7 01       	movw	r22, r14
    53e8:	90 e0       	ldi	r25, 0x00	; 0
    53ea:	0e 94 b2 2b 	call	0x5764	; 0x5764 <fputc>
    53ee:	e7 cf       	rjmp	.-50     	; 0x53be <vfprintf+0x24>
    53f0:	91 2c       	mov	r9, r1
    53f2:	21 2c       	mov	r2, r1
    53f4:	31 2c       	mov	r3, r1
    53f6:	ff e1       	ldi	r31, 0x1F	; 31
    53f8:	f3 15       	cp	r31, r3
    53fa:	38 f0       	brcs	.+14     	; 0x540a <vfprintf+0x70>
    53fc:	8b 32       	cpi	r24, 0x2B	; 43
    53fe:	11 f1       	breq	.+68     	; 0x5444 <vfprintf+0xaa>
    5400:	90 f4       	brcc	.+36     	; 0x5426 <vfprintf+0x8c>
    5402:	80 32       	cpi	r24, 0x20	; 32
    5404:	09 f1       	breq	.+66     	; 0x5448 <vfprintf+0xae>
    5406:	83 32       	cpi	r24, 0x23	; 35
    5408:	29 f1       	breq	.+74     	; 0x5454 <vfprintf+0xba>
    540a:	37 fc       	sbrc	r3, 7
    540c:	3c c0       	rjmp	.+120    	; 0x5486 <vfprintf+0xec>
    540e:	20 ed       	ldi	r18, 0xD0	; 208
    5410:	28 0f       	add	r18, r24
    5412:	2a 30       	cpi	r18, 0x0A	; 10
    5414:	50 f5       	brcc	.+84     	; 0x546a <vfprintf+0xd0>
    5416:	36 fe       	sbrs	r3, 6
    5418:	20 c0       	rjmp	.+64     	; 0x545a <vfprintf+0xc0>
    541a:	8a e0       	ldi	r24, 0x0A	; 10
    541c:	98 9e       	mul	r9, r24
    541e:	20 0d       	add	r18, r0
    5420:	11 24       	eor	r1, r1
    5422:	92 2e       	mov	r9, r18
    5424:	06 c0       	rjmp	.+12     	; 0x5432 <vfprintf+0x98>
    5426:	8d 32       	cpi	r24, 0x2D	; 45
    5428:	91 f0       	breq	.+36     	; 0x544e <vfprintf+0xb4>
    542a:	80 33       	cpi	r24, 0x30	; 48
    542c:	71 f7       	brne	.-36     	; 0x540a <vfprintf+0x70>
    542e:	68 94       	set
    5430:	30 f8       	bld	r3, 0
    5432:	f3 01       	movw	r30, r6
    5434:	93 fd       	sbrc	r25, 3
    5436:	85 91       	lpm	r24, Z+
    5438:	93 ff       	sbrs	r25, 3
    543a:	81 91       	ld	r24, Z+
    543c:	3f 01       	movw	r6, r30
    543e:	81 11       	cpse	r24, r1
    5440:	da cf       	rjmp	.-76     	; 0x53f6 <vfprintf+0x5c>
    5442:	21 c0       	rjmp	.+66     	; 0x5486 <vfprintf+0xec>
    5444:	68 94       	set
    5446:	31 f8       	bld	r3, 1
    5448:	68 94       	set
    544a:	32 f8       	bld	r3, 2
    544c:	f2 cf       	rjmp	.-28     	; 0x5432 <vfprintf+0x98>
    544e:	68 94       	set
    5450:	33 f8       	bld	r3, 3
    5452:	ef cf       	rjmp	.-34     	; 0x5432 <vfprintf+0x98>
    5454:	68 94       	set
    5456:	34 f8       	bld	r3, 4
    5458:	ec cf       	rjmp	.-40     	; 0x5432 <vfprintf+0x98>
    545a:	ea e0       	ldi	r30, 0x0A	; 10
    545c:	2e 9e       	mul	r2, r30
    545e:	20 0d       	add	r18, r0
    5460:	11 24       	eor	r1, r1
    5462:	22 2e       	mov	r2, r18
    5464:	68 94       	set
    5466:	35 f8       	bld	r3, 5
    5468:	e4 cf       	rjmp	.-56     	; 0x5432 <vfprintf+0x98>
    546a:	8e 32       	cpi	r24, 0x2E	; 46
    546c:	29 f4       	brne	.+10     	; 0x5478 <vfprintf+0xde>
    546e:	36 fc       	sbrc	r3, 6
    5470:	04 c1       	rjmp	.+520    	; 0x567a <vfprintf+0x2e0>
    5472:	68 94       	set
    5474:	36 f8       	bld	r3, 6
    5476:	dd cf       	rjmp	.-70     	; 0x5432 <vfprintf+0x98>
    5478:	8c 36       	cpi	r24, 0x6C	; 108
    547a:	19 f4       	brne	.+6      	; 0x5482 <vfprintf+0xe8>
    547c:	68 94       	set
    547e:	37 f8       	bld	r3, 7
    5480:	d8 cf       	rjmp	.-80     	; 0x5432 <vfprintf+0x98>
    5482:	88 36       	cpi	r24, 0x68	; 104
    5484:	b1 f2       	breq	.-84     	; 0x5432 <vfprintf+0x98>
    5486:	98 2f       	mov	r25, r24
    5488:	9f 7d       	andi	r25, 0xDF	; 223
    548a:	95 54       	subi	r25, 0x45	; 69
    548c:	93 30       	cpi	r25, 0x03	; 3
    548e:	e0 f0       	brcs	.+56     	; 0x54c8 <vfprintf+0x12e>
    5490:	83 36       	cpi	r24, 0x63	; 99
    5492:	a1 f1       	breq	.+104    	; 0x54fc <vfprintf+0x162>
    5494:	83 37       	cpi	r24, 0x73	; 115
    5496:	c1 f1       	breq	.+112    	; 0x5508 <vfprintf+0x16e>
    5498:	83 35       	cpi	r24, 0x53	; 83
    549a:	09 f0       	breq	.+2      	; 0x549e <vfprintf+0x104>
    549c:	63 c0       	rjmp	.+198    	; 0x5564 <vfprintf+0x1ca>
    549e:	28 01       	movw	r4, r16
    54a0:	f2 e0       	ldi	r31, 0x02	; 2
    54a2:	4f 0e       	add	r4, r31
    54a4:	51 1c       	adc	r5, r1
    54a6:	f8 01       	movw	r30, r16
    54a8:	c0 80       	ld	r12, Z
    54aa:	d1 80       	ldd	r13, Z+1	; 0x01
    54ac:	69 2d       	mov	r22, r9
    54ae:	70 e0       	ldi	r23, 0x00	; 0
    54b0:	36 fc       	sbrc	r3, 6
    54b2:	02 c0       	rjmp	.+4      	; 0x54b8 <vfprintf+0x11e>
    54b4:	6f ef       	ldi	r22, 0xFF	; 255
    54b6:	7f ef       	ldi	r23, 0xFF	; 255
    54b8:	c6 01       	movw	r24, r12
    54ba:	0e 94 a7 2b 	call	0x574e	; 0x574e <strnlen_P>
    54be:	4c 01       	movw	r8, r24
    54c0:	68 94       	set
    54c2:	37 f8       	bld	r3, 7
    54c4:	82 01       	movw	r16, r4
    54c6:	0a c0       	rjmp	.+20     	; 0x54dc <vfprintf+0x142>
    54c8:	0c 5f       	subi	r16, 0xFC	; 252
    54ca:	1f 4f       	sbci	r17, 0xFF	; 255
    54cc:	ff e3       	ldi	r31, 0x3F	; 63
    54ce:	f9 83       	std	Y+1, r31	; 0x01
    54d0:	88 24       	eor	r8, r8
    54d2:	83 94       	inc	r8
    54d4:	91 2c       	mov	r9, r1
    54d6:	65 01       	movw	r12, r10
    54d8:	e8 94       	clt
    54da:	37 f8       	bld	r3, 7
    54dc:	33 fe       	sbrs	r3, 3
    54de:	2d c0       	rjmp	.+90     	; 0x553a <vfprintf+0x1a0>
    54e0:	52 2c       	mov	r5, r2
    54e2:	81 14       	cp	r8, r1
    54e4:	91 04       	cpc	r9, r1
    54e6:	71 f5       	brne	.+92     	; 0x5544 <vfprintf+0x1aa>
    54e8:	55 20       	and	r5, r5
    54ea:	09 f4       	brne	.+2      	; 0x54ee <vfprintf+0x154>
    54ec:	68 cf       	rjmp	.-304    	; 0x53be <vfprintf+0x24>
    54ee:	b7 01       	movw	r22, r14
    54f0:	80 e2       	ldi	r24, 0x20	; 32
    54f2:	90 e0       	ldi	r25, 0x00	; 0
    54f4:	0e 94 b2 2b 	call	0x5764	; 0x5764 <fputc>
    54f8:	5a 94       	dec	r5
    54fa:	f6 cf       	rjmp	.-20     	; 0x54e8 <vfprintf+0x14e>
    54fc:	f8 01       	movw	r30, r16
    54fe:	80 81       	ld	r24, Z
    5500:	89 83       	std	Y+1, r24	; 0x01
    5502:	0e 5f       	subi	r16, 0xFE	; 254
    5504:	1f 4f       	sbci	r17, 0xFF	; 255
    5506:	e4 cf       	rjmp	.-56     	; 0x54d0 <vfprintf+0x136>
    5508:	28 01       	movw	r4, r16
    550a:	f2 e0       	ldi	r31, 0x02	; 2
    550c:	4f 0e       	add	r4, r31
    550e:	51 1c       	adc	r5, r1
    5510:	f8 01       	movw	r30, r16
    5512:	c0 80       	ld	r12, Z
    5514:	d1 80       	ldd	r13, Z+1	; 0x01
    5516:	69 2d       	mov	r22, r9
    5518:	70 e0       	ldi	r23, 0x00	; 0
    551a:	36 fc       	sbrc	r3, 6
    551c:	02 c0       	rjmp	.+4      	; 0x5522 <vfprintf+0x188>
    551e:	6f ef       	ldi	r22, 0xFF	; 255
    5520:	7f ef       	ldi	r23, 0xFF	; 255
    5522:	c6 01       	movw	r24, r12
    5524:	0e 94 9f 26 	call	0x4d3e	; 0x4d3e <strnlen>
    5528:	4c 01       	movw	r8, r24
    552a:	82 01       	movw	r16, r4
    552c:	d5 cf       	rjmp	.-86     	; 0x54d8 <vfprintf+0x13e>
    552e:	b7 01       	movw	r22, r14
    5530:	80 e2       	ldi	r24, 0x20	; 32
    5532:	90 e0       	ldi	r25, 0x00	; 0
    5534:	0e 94 b2 2b 	call	0x5764	; 0x5764 <fputc>
    5538:	2a 94       	dec	r2
    553a:	28 14       	cp	r2, r8
    553c:	19 04       	cpc	r1, r9
    553e:	09 f0       	breq	.+2      	; 0x5542 <vfprintf+0x1a8>
    5540:	b0 f7       	brcc	.-20     	; 0x552e <vfprintf+0x194>
    5542:	ce cf       	rjmp	.-100    	; 0x54e0 <vfprintf+0x146>
    5544:	f6 01       	movw	r30, r12
    5546:	37 fc       	sbrc	r3, 7
    5548:	85 91       	lpm	r24, Z+
    554a:	37 fe       	sbrs	r3, 7
    554c:	81 91       	ld	r24, Z+
    554e:	6f 01       	movw	r12, r30
    5550:	b7 01       	movw	r22, r14
    5552:	90 e0       	ldi	r25, 0x00	; 0
    5554:	0e 94 b2 2b 	call	0x5764	; 0x5764 <fputc>
    5558:	51 10       	cpse	r5, r1
    555a:	5a 94       	dec	r5
    555c:	f1 e0       	ldi	r31, 0x01	; 1
    555e:	8f 1a       	sub	r8, r31
    5560:	91 08       	sbc	r9, r1
    5562:	bf cf       	rjmp	.-130    	; 0x54e2 <vfprintf+0x148>
    5564:	84 36       	cpi	r24, 0x64	; 100
    5566:	19 f0       	breq	.+6      	; 0x556e <vfprintf+0x1d4>
    5568:	89 36       	cpi	r24, 0x69	; 105
    556a:	09 f0       	breq	.+2      	; 0x556e <vfprintf+0x1d4>
    556c:	77 c0       	rjmp	.+238    	; 0x565c <vfprintf+0x2c2>
    556e:	f8 01       	movw	r30, r16
    5570:	37 fe       	sbrs	r3, 7
    5572:	6b c0       	rjmp	.+214    	; 0x564a <vfprintf+0x2b0>
    5574:	60 81       	ld	r22, Z
    5576:	71 81       	ldd	r23, Z+1	; 0x01
    5578:	82 81       	ldd	r24, Z+2	; 0x02
    557a:	93 81       	ldd	r25, Z+3	; 0x03
    557c:	0c 5f       	subi	r16, 0xFC	; 252
    557e:	1f 4f       	sbci	r17, 0xFF	; 255
    5580:	f3 2d       	mov	r31, r3
    5582:	ff 76       	andi	r31, 0x6F	; 111
    5584:	3f 2e       	mov	r3, r31
    5586:	97 ff       	sbrs	r25, 7
    5588:	09 c0       	rjmp	.+18     	; 0x559c <vfprintf+0x202>
    558a:	90 95       	com	r25
    558c:	80 95       	com	r24
    558e:	70 95       	com	r23
    5590:	61 95       	neg	r22
    5592:	7f 4f       	sbci	r23, 0xFF	; 255
    5594:	8f 4f       	sbci	r24, 0xFF	; 255
    5596:	9f 4f       	sbci	r25, 0xFF	; 255
    5598:	68 94       	set
    559a:	37 f8       	bld	r3, 7
    559c:	2a e0       	ldi	r18, 0x0A	; 10
    559e:	30 e0       	ldi	r19, 0x00	; 0
    55a0:	a5 01       	movw	r20, r10
    55a2:	0e 94 e2 2b 	call	0x57c4	; 0x57c4 <__ultoa_invert>
    55a6:	c8 2e       	mov	r12, r24
    55a8:	ca 18       	sub	r12, r10
    55aa:	8c 2c       	mov	r8, r12
    55ac:	43 2c       	mov	r4, r3
    55ae:	36 fe       	sbrs	r3, 6
    55b0:	0c c0       	rjmp	.+24     	; 0x55ca <vfprintf+0x230>
    55b2:	e8 94       	clt
    55b4:	40 f8       	bld	r4, 0
    55b6:	c9 14       	cp	r12, r9
    55b8:	40 f4       	brcc	.+16     	; 0x55ca <vfprintf+0x230>
    55ba:	34 fe       	sbrs	r3, 4
    55bc:	05 c0       	rjmp	.+10     	; 0x55c8 <vfprintf+0x22e>
    55be:	32 fc       	sbrc	r3, 2
    55c0:	03 c0       	rjmp	.+6      	; 0x55c8 <vfprintf+0x22e>
    55c2:	f3 2d       	mov	r31, r3
    55c4:	fe 7e       	andi	r31, 0xEE	; 238
    55c6:	4f 2e       	mov	r4, r31
    55c8:	89 2c       	mov	r8, r9
    55ca:	44 fe       	sbrs	r4, 4
    55cc:	95 c0       	rjmp	.+298    	; 0x56f8 <vfprintf+0x35e>
    55ce:	fe 01       	movw	r30, r28
    55d0:	ec 0d       	add	r30, r12
    55d2:	f1 1d       	adc	r31, r1
    55d4:	80 81       	ld	r24, Z
    55d6:	80 33       	cpi	r24, 0x30	; 48
    55d8:	09 f0       	breq	.+2      	; 0x55dc <vfprintf+0x242>
    55da:	87 c0       	rjmp	.+270    	; 0x56ea <vfprintf+0x350>
    55dc:	24 2d       	mov	r18, r4
    55de:	29 7e       	andi	r18, 0xE9	; 233
    55e0:	42 2e       	mov	r4, r18
    55e2:	84 2d       	mov	r24, r4
    55e4:	88 70       	andi	r24, 0x08	; 8
    55e6:	58 2e       	mov	r5, r24
    55e8:	43 fc       	sbrc	r4, 3
    55ea:	95 c0       	rjmp	.+298    	; 0x5716 <vfprintf+0x37c>
    55ec:	40 fe       	sbrs	r4, 0
    55ee:	8f c0       	rjmp	.+286    	; 0x570e <vfprintf+0x374>
    55f0:	9c 2c       	mov	r9, r12
    55f2:	82 14       	cp	r8, r2
    55f4:	18 f4       	brcc	.+6      	; 0x55fc <vfprintf+0x262>
    55f6:	2c 0c       	add	r2, r12
    55f8:	92 2c       	mov	r9, r2
    55fa:	98 18       	sub	r9, r8
    55fc:	44 fe       	sbrs	r4, 4
    55fe:	91 c0       	rjmp	.+290    	; 0x5722 <vfprintf+0x388>
    5600:	b7 01       	movw	r22, r14
    5602:	80 e3       	ldi	r24, 0x30	; 48
    5604:	90 e0       	ldi	r25, 0x00	; 0
    5606:	0e 94 b2 2b 	call	0x5764	; 0x5764 <fputc>
    560a:	42 fe       	sbrs	r4, 2
    560c:	09 c0       	rjmp	.+18     	; 0x5620 <vfprintf+0x286>
    560e:	88 e7       	ldi	r24, 0x78	; 120
    5610:	90 e0       	ldi	r25, 0x00	; 0
    5612:	41 fe       	sbrs	r4, 1
    5614:	02 c0       	rjmp	.+4      	; 0x561a <vfprintf+0x280>
    5616:	88 e5       	ldi	r24, 0x58	; 88
    5618:	90 e0       	ldi	r25, 0x00	; 0
    561a:	b7 01       	movw	r22, r14
    561c:	0e 94 b2 2b 	call	0x5764	; 0x5764 <fputc>
    5620:	c9 14       	cp	r12, r9
    5622:	08 f4       	brcc	.+2      	; 0x5626 <vfprintf+0x28c>
    5624:	8a c0       	rjmp	.+276    	; 0x573a <vfprintf+0x3a0>
    5626:	ca 94       	dec	r12
    5628:	d1 2c       	mov	r13, r1
    562a:	9f ef       	ldi	r25, 0xFF	; 255
    562c:	c9 1a       	sub	r12, r25
    562e:	d9 0a       	sbc	r13, r25
    5630:	ca 0c       	add	r12, r10
    5632:	db 1c       	adc	r13, r11
    5634:	f6 01       	movw	r30, r12
    5636:	82 91       	ld	r24, -Z
    5638:	6f 01       	movw	r12, r30
    563a:	b7 01       	movw	r22, r14
    563c:	90 e0       	ldi	r25, 0x00	; 0
    563e:	0e 94 b2 2b 	call	0x5764	; 0x5764 <fputc>
    5642:	ac 14       	cp	r10, r12
    5644:	bd 04       	cpc	r11, r13
    5646:	b1 f7       	brne	.-20     	; 0x5634 <vfprintf+0x29a>
    5648:	4f cf       	rjmp	.-354    	; 0x54e8 <vfprintf+0x14e>
    564a:	60 81       	ld	r22, Z
    564c:	71 81       	ldd	r23, Z+1	; 0x01
    564e:	07 2e       	mov	r0, r23
    5650:	00 0c       	add	r0, r0
    5652:	88 0b       	sbc	r24, r24
    5654:	99 0b       	sbc	r25, r25
    5656:	0e 5f       	subi	r16, 0xFE	; 254
    5658:	1f 4f       	sbci	r17, 0xFF	; 255
    565a:	92 cf       	rjmp	.-220    	; 0x5580 <vfprintf+0x1e6>
    565c:	d3 2c       	mov	r13, r3
    565e:	e8 94       	clt
    5660:	d4 f8       	bld	r13, 4
    5662:	2a e0       	ldi	r18, 0x0A	; 10
    5664:	30 e0       	ldi	r19, 0x00	; 0
    5666:	85 37       	cpi	r24, 0x75	; 117
    5668:	39 f1       	breq	.+78     	; 0x56b8 <vfprintf+0x31e>
    566a:	23 2d       	mov	r18, r3
    566c:	29 7f       	andi	r18, 0xF9	; 249
    566e:	d2 2e       	mov	r13, r18
    5670:	8f 36       	cpi	r24, 0x6F	; 111
    5672:	01 f1       	breq	.+64     	; 0x56b4 <vfprintf+0x31a>
    5674:	48 f4       	brcc	.+18     	; 0x5688 <vfprintf+0x2ee>
    5676:	88 35       	cpi	r24, 0x58	; 88
    5678:	a9 f0       	breq	.+42     	; 0x56a4 <vfprintf+0x30a>
    567a:	f7 01       	movw	r30, r14
    567c:	86 81       	ldd	r24, Z+6	; 0x06
    567e:	97 81       	ldd	r25, Z+7	; 0x07
    5680:	2b 96       	adiw	r28, 0x0b	; 11
    5682:	e2 e1       	ldi	r30, 0x12	; 18
    5684:	0c 94 5c 2c 	jmp	0x58b8	; 0x58b8 <__epilogue_restores__>
    5688:	80 37       	cpi	r24, 0x70	; 112
    568a:	49 f0       	breq	.+18     	; 0x569e <vfprintf+0x304>
    568c:	88 37       	cpi	r24, 0x78	; 120
    568e:	a9 f7       	brne	.-22     	; 0x567a <vfprintf+0x2e0>
    5690:	d4 fe       	sbrs	r13, 4
    5692:	02 c0       	rjmp	.+4      	; 0x5698 <vfprintf+0x2fe>
    5694:	68 94       	set
    5696:	d2 f8       	bld	r13, 2
    5698:	20 e1       	ldi	r18, 0x10	; 16
    569a:	30 e0       	ldi	r19, 0x00	; 0
    569c:	0d c0       	rjmp	.+26     	; 0x56b8 <vfprintf+0x31e>
    569e:	68 94       	set
    56a0:	d4 f8       	bld	r13, 4
    56a2:	f6 cf       	rjmp	.-20     	; 0x5690 <vfprintf+0x2f6>
    56a4:	34 fe       	sbrs	r3, 4
    56a6:	03 c0       	rjmp	.+6      	; 0x56ae <vfprintf+0x314>
    56a8:	82 2f       	mov	r24, r18
    56aa:	86 60       	ori	r24, 0x06	; 6
    56ac:	d8 2e       	mov	r13, r24
    56ae:	20 e1       	ldi	r18, 0x10	; 16
    56b0:	32 e0       	ldi	r19, 0x02	; 2
    56b2:	02 c0       	rjmp	.+4      	; 0x56b8 <vfprintf+0x31e>
    56b4:	28 e0       	ldi	r18, 0x08	; 8
    56b6:	30 e0       	ldi	r19, 0x00	; 0
    56b8:	f8 01       	movw	r30, r16
    56ba:	d7 fe       	sbrs	r13, 7
    56bc:	0f c0       	rjmp	.+30     	; 0x56dc <vfprintf+0x342>
    56be:	60 81       	ld	r22, Z
    56c0:	71 81       	ldd	r23, Z+1	; 0x01
    56c2:	82 81       	ldd	r24, Z+2	; 0x02
    56c4:	93 81       	ldd	r25, Z+3	; 0x03
    56c6:	0c 5f       	subi	r16, 0xFC	; 252
    56c8:	1f 4f       	sbci	r17, 0xFF	; 255
    56ca:	a5 01       	movw	r20, r10
    56cc:	0e 94 e2 2b 	call	0x57c4	; 0x57c4 <__ultoa_invert>
    56d0:	c8 2e       	mov	r12, r24
    56d2:	ca 18       	sub	r12, r10
    56d4:	3d 2c       	mov	r3, r13
    56d6:	e8 94       	clt
    56d8:	37 f8       	bld	r3, 7
    56da:	67 cf       	rjmp	.-306    	; 0x55aa <vfprintf+0x210>
    56dc:	60 81       	ld	r22, Z
    56de:	71 81       	ldd	r23, Z+1	; 0x01
    56e0:	90 e0       	ldi	r25, 0x00	; 0
    56e2:	80 e0       	ldi	r24, 0x00	; 0
    56e4:	0e 5f       	subi	r16, 0xFE	; 254
    56e6:	1f 4f       	sbci	r17, 0xFF	; 255
    56e8:	f0 cf       	rjmp	.-32     	; 0x56ca <vfprintf+0x330>
    56ea:	42 fc       	sbrc	r4, 2
    56ec:	02 c0       	rjmp	.+4      	; 0x56f2 <vfprintf+0x358>
    56ee:	83 94       	inc	r8
    56f0:	78 cf       	rjmp	.-272    	; 0x55e2 <vfprintf+0x248>
    56f2:	83 94       	inc	r8
    56f4:	83 94       	inc	r8
    56f6:	75 cf       	rjmp	.-278    	; 0x55e2 <vfprintf+0x248>
    56f8:	84 2d       	mov	r24, r4
    56fa:	86 78       	andi	r24, 0x86	; 134
    56fc:	09 f4       	brne	.+2      	; 0x5700 <vfprintf+0x366>
    56fe:	71 cf       	rjmp	.-286    	; 0x55e2 <vfprintf+0x248>
    5700:	f6 cf       	rjmp	.-20     	; 0x56ee <vfprintf+0x354>
    5702:	b7 01       	movw	r22, r14
    5704:	80 e2       	ldi	r24, 0x20	; 32
    5706:	90 e0       	ldi	r25, 0x00	; 0
    5708:	0e 94 b2 2b 	call	0x5764	; 0x5764 <fputc>
    570c:	83 94       	inc	r8
    570e:	82 14       	cp	r8, r2
    5710:	c0 f3       	brcs	.-16     	; 0x5702 <vfprintf+0x368>
    5712:	51 2c       	mov	r5, r1
    5714:	73 cf       	rjmp	.-282    	; 0x55fc <vfprintf+0x262>
    5716:	52 2c       	mov	r5, r2
    5718:	58 18       	sub	r5, r8
    571a:	82 14       	cp	r8, r2
    571c:	08 f4       	brcc	.+2      	; 0x5720 <vfprintf+0x386>
    571e:	6e cf       	rjmp	.-292    	; 0x55fc <vfprintf+0x262>
    5720:	f8 cf       	rjmp	.-16     	; 0x5712 <vfprintf+0x378>
    5722:	84 2d       	mov	r24, r4
    5724:	86 78       	andi	r24, 0x86	; 134
    5726:	09 f4       	brne	.+2      	; 0x572a <vfprintf+0x390>
    5728:	7b cf       	rjmp	.-266    	; 0x5620 <vfprintf+0x286>
    572a:	8b e2       	ldi	r24, 0x2B	; 43
    572c:	41 fe       	sbrs	r4, 1
    572e:	80 e2       	ldi	r24, 0x20	; 32
    5730:	47 fc       	sbrc	r4, 7
    5732:	8d e2       	ldi	r24, 0x2D	; 45
    5734:	b7 01       	movw	r22, r14
    5736:	90 e0       	ldi	r25, 0x00	; 0
    5738:	71 cf       	rjmp	.-286    	; 0x561c <vfprintf+0x282>
    573a:	b7 01       	movw	r22, r14
    573c:	80 e3       	ldi	r24, 0x30	; 48
    573e:	90 e0       	ldi	r25, 0x00	; 0
    5740:	0e 94 b2 2b 	call	0x5764	; 0x5764 <fputc>
    5744:	9a 94       	dec	r9
    5746:	6c cf       	rjmp	.-296    	; 0x5620 <vfprintf+0x286>
    5748:	8f ef       	ldi	r24, 0xFF	; 255
    574a:	9f ef       	ldi	r25, 0xFF	; 255
    574c:	99 cf       	rjmp	.-206    	; 0x5680 <vfprintf+0x2e6>

0000574e <strnlen_P>:
    574e:	fc 01       	movw	r30, r24
    5750:	05 90       	lpm	r0, Z+
    5752:	61 50       	subi	r22, 0x01	; 1
    5754:	70 40       	sbci	r23, 0x00	; 0
    5756:	01 10       	cpse	r0, r1
    5758:	d8 f7       	brcc	.-10     	; 0x5750 <strnlen_P+0x2>
    575a:	80 95       	com	r24
    575c:	90 95       	com	r25
    575e:	8e 0f       	add	r24, r30
    5760:	9f 1f       	adc	r25, r31
    5762:	08 95       	ret

00005764 <fputc>:
    5764:	0f 93       	push	r16
    5766:	1f 93       	push	r17
    5768:	cf 93       	push	r28
    576a:	df 93       	push	r29
    576c:	18 2f       	mov	r17, r24
    576e:	09 2f       	mov	r16, r25
    5770:	eb 01       	movw	r28, r22
    5772:	8b 81       	ldd	r24, Y+3	; 0x03
    5774:	81 fd       	sbrc	r24, 1
    5776:	09 c0       	rjmp	.+18     	; 0x578a <fputc+0x26>
    5778:	1f ef       	ldi	r17, 0xFF	; 255
    577a:	0f ef       	ldi	r16, 0xFF	; 255
    577c:	81 2f       	mov	r24, r17
    577e:	90 2f       	mov	r25, r16
    5780:	df 91       	pop	r29
    5782:	cf 91       	pop	r28
    5784:	1f 91       	pop	r17
    5786:	0f 91       	pop	r16
    5788:	08 95       	ret
    578a:	82 ff       	sbrs	r24, 2
    578c:	14 c0       	rjmp	.+40     	; 0x57b6 <fputc+0x52>
    578e:	2e 81       	ldd	r18, Y+6	; 0x06
    5790:	3f 81       	ldd	r19, Y+7	; 0x07
    5792:	8c 81       	ldd	r24, Y+4	; 0x04
    5794:	9d 81       	ldd	r25, Y+5	; 0x05
    5796:	28 17       	cp	r18, r24
    5798:	39 07       	cpc	r19, r25
    579a:	3c f4       	brge	.+14     	; 0x57aa <fputc+0x46>
    579c:	e8 81       	ld	r30, Y
    579e:	f9 81       	ldd	r31, Y+1	; 0x01
    57a0:	cf 01       	movw	r24, r30
    57a2:	01 96       	adiw	r24, 0x01	; 1
    57a4:	99 83       	std	Y+1, r25	; 0x01
    57a6:	88 83       	st	Y, r24
    57a8:	10 83       	st	Z, r17
    57aa:	8e 81       	ldd	r24, Y+6	; 0x06
    57ac:	9f 81       	ldd	r25, Y+7	; 0x07
    57ae:	01 96       	adiw	r24, 0x01	; 1
    57b0:	9f 83       	std	Y+7, r25	; 0x07
    57b2:	8e 83       	std	Y+6, r24	; 0x06
    57b4:	e3 cf       	rjmp	.-58     	; 0x577c <fputc+0x18>
    57b6:	e8 85       	ldd	r30, Y+8	; 0x08
    57b8:	f9 85       	ldd	r31, Y+9	; 0x09
    57ba:	81 2f       	mov	r24, r17
    57bc:	09 95       	icall
    57be:	89 2b       	or	r24, r25
    57c0:	a1 f3       	breq	.-24     	; 0x57aa <fputc+0x46>
    57c2:	da cf       	rjmp	.-76     	; 0x5778 <fputc+0x14>

000057c4 <__ultoa_invert>:
    57c4:	fa 01       	movw	r30, r20
    57c6:	aa 27       	eor	r26, r26
    57c8:	28 30       	cpi	r18, 0x08	; 8
    57ca:	51 f1       	breq	.+84     	; 0x5820 <__ultoa_invert+0x5c>
    57cc:	20 31       	cpi	r18, 0x10	; 16
    57ce:	81 f1       	breq	.+96     	; 0x5830 <__ultoa_invert+0x6c>
    57d0:	e8 94       	clt
    57d2:	6f 93       	push	r22
    57d4:	6e 7f       	andi	r22, 0xFE	; 254
    57d6:	6e 5f       	subi	r22, 0xFE	; 254
    57d8:	7f 4f       	sbci	r23, 0xFF	; 255
    57da:	8f 4f       	sbci	r24, 0xFF	; 255
    57dc:	9f 4f       	sbci	r25, 0xFF	; 255
    57de:	af 4f       	sbci	r26, 0xFF	; 255
    57e0:	b1 e0       	ldi	r27, 0x01	; 1
    57e2:	3e d0       	rcall	.+124    	; 0x5860 <__ultoa_invert+0x9c>
    57e4:	b4 e0       	ldi	r27, 0x04	; 4
    57e6:	3c d0       	rcall	.+120    	; 0x5860 <__ultoa_invert+0x9c>
    57e8:	67 0f       	add	r22, r23
    57ea:	78 1f       	adc	r23, r24
    57ec:	89 1f       	adc	r24, r25
    57ee:	9a 1f       	adc	r25, r26
    57f0:	a1 1d       	adc	r26, r1
    57f2:	68 0f       	add	r22, r24
    57f4:	79 1f       	adc	r23, r25
    57f6:	8a 1f       	adc	r24, r26
    57f8:	91 1d       	adc	r25, r1
    57fa:	a1 1d       	adc	r26, r1
    57fc:	6a 0f       	add	r22, r26
    57fe:	71 1d       	adc	r23, r1
    5800:	81 1d       	adc	r24, r1
    5802:	91 1d       	adc	r25, r1
    5804:	a1 1d       	adc	r26, r1
    5806:	20 d0       	rcall	.+64     	; 0x5848 <__ultoa_invert+0x84>
    5808:	09 f4       	brne	.+2      	; 0x580c <__ultoa_invert+0x48>
    580a:	68 94       	set
    580c:	3f 91       	pop	r19
    580e:	2a e0       	ldi	r18, 0x0A	; 10
    5810:	26 9f       	mul	r18, r22
    5812:	11 24       	eor	r1, r1
    5814:	30 19       	sub	r19, r0
    5816:	30 5d       	subi	r19, 0xD0	; 208
    5818:	31 93       	st	Z+, r19
    581a:	de f6       	brtc	.-74     	; 0x57d2 <__ultoa_invert+0xe>
    581c:	cf 01       	movw	r24, r30
    581e:	08 95       	ret
    5820:	46 2f       	mov	r20, r22
    5822:	47 70       	andi	r20, 0x07	; 7
    5824:	40 5d       	subi	r20, 0xD0	; 208
    5826:	41 93       	st	Z+, r20
    5828:	b3 e0       	ldi	r27, 0x03	; 3
    582a:	0f d0       	rcall	.+30     	; 0x584a <__ultoa_invert+0x86>
    582c:	c9 f7       	brne	.-14     	; 0x5820 <__ultoa_invert+0x5c>
    582e:	f6 cf       	rjmp	.-20     	; 0x581c <__ultoa_invert+0x58>
    5830:	46 2f       	mov	r20, r22
    5832:	4f 70       	andi	r20, 0x0F	; 15
    5834:	40 5d       	subi	r20, 0xD0	; 208
    5836:	4a 33       	cpi	r20, 0x3A	; 58
    5838:	18 f0       	brcs	.+6      	; 0x5840 <__ultoa_invert+0x7c>
    583a:	49 5d       	subi	r20, 0xD9	; 217
    583c:	31 fd       	sbrc	r19, 1
    583e:	40 52       	subi	r20, 0x20	; 32
    5840:	41 93       	st	Z+, r20
    5842:	02 d0       	rcall	.+4      	; 0x5848 <__ultoa_invert+0x84>
    5844:	a9 f7       	brne	.-22     	; 0x5830 <__ultoa_invert+0x6c>
    5846:	ea cf       	rjmp	.-44     	; 0x581c <__ultoa_invert+0x58>
    5848:	b4 e0       	ldi	r27, 0x04	; 4
    584a:	a6 95       	lsr	r26
    584c:	97 95       	ror	r25
    584e:	87 95       	ror	r24
    5850:	77 95       	ror	r23
    5852:	67 95       	ror	r22
    5854:	ba 95       	dec	r27
    5856:	c9 f7       	brne	.-14     	; 0x584a <__ultoa_invert+0x86>
    5858:	00 97       	sbiw	r24, 0x00	; 0
    585a:	61 05       	cpc	r22, r1
    585c:	71 05       	cpc	r23, r1
    585e:	08 95       	ret
    5860:	9b 01       	movw	r18, r22
    5862:	ac 01       	movw	r20, r24
    5864:	0a 2e       	mov	r0, r26
    5866:	06 94       	lsr	r0
    5868:	57 95       	ror	r21
    586a:	47 95       	ror	r20
    586c:	37 95       	ror	r19
    586e:	27 95       	ror	r18
    5870:	ba 95       	dec	r27
    5872:	c9 f7       	brne	.-14     	; 0x5866 <__ultoa_invert+0xa2>
    5874:	62 0f       	add	r22, r18
    5876:	73 1f       	adc	r23, r19
    5878:	84 1f       	adc	r24, r20
    587a:	95 1f       	adc	r25, r21
    587c:	a0 1d       	adc	r26, r0
    587e:	08 95       	ret

00005880 <__prologue_saves__>:
    5880:	2f 92       	push	r2
    5882:	3f 92       	push	r3
    5884:	4f 92       	push	r4
    5886:	5f 92       	push	r5
    5888:	6f 92       	push	r6
    588a:	7f 92       	push	r7
    588c:	8f 92       	push	r8
    588e:	9f 92       	push	r9
    5890:	af 92       	push	r10
    5892:	bf 92       	push	r11
    5894:	cf 92       	push	r12
    5896:	df 92       	push	r13
    5898:	ef 92       	push	r14
    589a:	ff 92       	push	r15
    589c:	0f 93       	push	r16
    589e:	1f 93       	push	r17
    58a0:	cf 93       	push	r28
    58a2:	df 93       	push	r29
    58a4:	cd b7       	in	r28, 0x3d	; 61
    58a6:	de b7       	in	r29, 0x3e	; 62
    58a8:	ca 1b       	sub	r28, r26
    58aa:	db 0b       	sbc	r29, r27
    58ac:	0f b6       	in	r0, 0x3f	; 63
    58ae:	f8 94       	cli
    58b0:	de bf       	out	0x3e, r29	; 62
    58b2:	0f be       	out	0x3f, r0	; 63
    58b4:	cd bf       	out	0x3d, r28	; 61
    58b6:	09 94       	ijmp

000058b8 <__epilogue_restores__>:
    58b8:	2a 88       	ldd	r2, Y+18	; 0x12
    58ba:	39 88       	ldd	r3, Y+17	; 0x11
    58bc:	48 88       	ldd	r4, Y+16	; 0x10
    58be:	5f 84       	ldd	r5, Y+15	; 0x0f
    58c0:	6e 84       	ldd	r6, Y+14	; 0x0e
    58c2:	7d 84       	ldd	r7, Y+13	; 0x0d
    58c4:	8c 84       	ldd	r8, Y+12	; 0x0c
    58c6:	9b 84       	ldd	r9, Y+11	; 0x0b
    58c8:	aa 84       	ldd	r10, Y+10	; 0x0a
    58ca:	b9 84       	ldd	r11, Y+9	; 0x09
    58cc:	c8 84       	ldd	r12, Y+8	; 0x08
    58ce:	df 80       	ldd	r13, Y+7	; 0x07
    58d0:	ee 80       	ldd	r14, Y+6	; 0x06
    58d2:	fd 80       	ldd	r15, Y+5	; 0x05
    58d4:	0c 81       	ldd	r16, Y+4	; 0x04
    58d6:	1b 81       	ldd	r17, Y+3	; 0x03
    58d8:	aa 81       	ldd	r26, Y+2	; 0x02
    58da:	b9 81       	ldd	r27, Y+1	; 0x01
    58dc:	ce 0f       	add	r28, r30
    58de:	d1 1d       	adc	r29, r1
    58e0:	0f b6       	in	r0, 0x3f	; 63
    58e2:	f8 94       	cli
    58e4:	de bf       	out	0x3e, r29	; 62
    58e6:	0f be       	out	0x3f, r0	; 63
    58e8:	cd bf       	out	0x3d, r28	; 61
    58ea:	ed 01       	movw	r28, r26
    58ec:	08 95       	ret

000058ee <_exit>:
    58ee:	f8 94       	cli

000058f0 <__stop_program>:
    58f0:	ff cf       	rjmp	.-2      	; 0x58f0 <__stop_program>
