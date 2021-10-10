
MicroCity.ino.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
       0:	0c 94 bf 08 	jmp	0x117e	; 0x117e <__ctors_end>
       4:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
       8:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
       c:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      10:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      14:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      18:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      1c:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      20:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      24:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      28:	0c 94 01 1d 	jmp	0x3a02	; 0x3a02 <__vector_10>
      2c:	0c 94 70 1d 	jmp	0x3ae0	; 0x3ae0 <__vector_11>
      30:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      34:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      38:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      3c:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      40:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      44:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      48:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      4c:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      50:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      54:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      58:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      5c:	0c 94 a2 1f 	jmp	0x3f44	; 0x3f44 <__vector_23>
      60:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      64:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      68:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      6c:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      70:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      74:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      78:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      7c:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      80:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      84:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      88:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      8c:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      90:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      94:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      98:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      9c:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      a0:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      a4:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>
      a8:	0c 94 e7 08 	jmp	0x11ce	; 0x11ce <__bad_interrupt>

000000ac <__trampolines_end>:
      ac:	42 75       	andi	r20, 0x52	; 82
      ae:	64 67       	ori	r22, 0x74	; 116
      b0:	65 74       	andi	r22, 0x45	; 69
	...

000000b3 <_ZL11SaveLoadStr>:
      b3:	53 61 76 65 2f 4c 6f 61 64 00                       Save/Load.

000000bd <_ZL10StadiumStr>:
      bd:	53 74 61 64 69 75 6d 00                             Stadium.

000000c5 <_ZL11FireDeptStr>:
      c5:	46 69 72 65 20 44 65 70 74 00                       Fire Dept.

000000cf <_ZL13PoliceDeptStr>:
      cf:	50 6f 6c 69 63 65 20 44 65 70 74 00                 Police Dept.

000000db <_ZL7ParkStr>:
      db:	50 61 72 6b 00                                      Park.

000000e0 <_ZL13PowerplantStr>:
      e0:	50 6f 77 65 72 70 6c 61 6e 74 00                    Powerplant.

000000eb <_ZL13IndustrialStr>:
      eb:	49 6e 64 75 73 74 72 69 61 6c 00                    Industrial.

000000f6 <_ZL13CommericalStr>:
      f6:	43 6f 6d 6d 65 72 63 69 61 6c 00                    Commercial.

00000101 <_ZL14ResidentialStr>:
     101:	52 65 73 69 64 65 6e 74 69 61 6c 00                 Residential.

0000010d <_ZL12PowerlineStr>:
     10d:	50 6f 77 65 72 6c 69 6e 65 00                       Powerline.

00000117 <_ZL7RoadStr>:
     117:	52 6f 61 64 00                                      Road.

0000011c <_ZL12BulldozerStr>:
     11c:	42 75 6c 6c 64 6f 7a 65 72 00                       Bulldozer.

00000126 <_ZL6DecStr>:
     126:	44 65 63 00                                         Dec.

0000012a <_ZL6NovStr>:
     12a:	4e 6f 76 00                                         Nov.

0000012e <_ZL6OctStr>:
     12e:	4f 63 74 00                                         Oct.

00000132 <_ZL6SepStr>:
     132:	53 65 70 00                                         Sep.

00000136 <_ZL6AugStr>:
     136:	41 75 67 00                                         Aug.

0000013a <_ZL6JulStr>:
     13a:	4a 75 6c 00                                         Jul.

0000013e <_ZL6JunStr>:
     13e:	4a 75 6e 00                                         Jun.

00000142 <_ZL6MayStr>:
     142:	4d 61 79 00                                         May.

00000146 <_ZL6AprStr>:
     146:	41 70 72 00                                         Apr.

0000014a <_ZL6MarStr>:
     14a:	4d 61 72 00                                         Mar.

0000014e <_ZL6FebStr>:
     14e:	46 65 62 00                                         Feb.

00000152 <_ZL6JanStr>:
     152:	4a 61 6e 00                                         Jan.

00000156 <_ZL19BuildingPopulaceMap>:
     156:	01 0d 05 0b 07 0e 03 04 01 06 0c 02 0a 09 0b 08     ................

00000166 <_ZL7FireMap>:
     166:	01 02 03 01 02 03 01 03 01 02 03 02 02 01 03 01     ................

00000176 <_ZL12TileVariants>:
     176:	00 01 00 05 01 01 02 09 00 04 00 08 03 07 06 0a     ................

00000186 <_ZL7font4x6>:
     186:	00 00 49 08 b4 00 be f6 7b 7a a5 94 55 b8 48 00     ..I.....{z..U.H.
     196:	29 44 44 2a 15 a0 0b 42 00 50 03 02 00 08 25 90     )DD*...B.P....%.
     1a6:	76 ba 59 5c c5 9e c5 38 92 e6 f3 3a 73 ba e5 90     v.Y\...8...:s...
     1b6:	77 ba 77 3a 08 40 08 50 2a 44 1c e0 88 52 e5 08     w.w:.@.P*D...R..
     1c6:	56 8e 77 b6 77 b8 72 8c d6 ba 73 9e 73 92 72 ae     V.w.w.r...s.s.r.
     1d6:	b7 b6 e9 5c 64 aa b7 b4 92 9c be b6 d6 b6 56 aa     ...\d.........V.
     1e6:	d7 92 76 ee 77 b4 71 38 e9 48 b6 ae b6 aa b6 f6     ..v.w.q8.H......
     1f6:	b5 b4 b5 48 e5 9c 69 4c 91 24 64 2e 54 00 00 1c     ...H..iL.$d.T...
     206:	44 00 0e ae 9a ba 0e 8c 2e ae 0e ce 56 d0 55 3b     D...........V.U;
     216:	93 b4 41 44 41 51 97 b4 49 44 17 b6 1a b6 0a aa     ..ADAQ..ID......
     226:	d6 d3 76 67 17 90 0f 38 9a 8c 16 ae 16 ba 16 f6     ..vg...8........
     236:	15 b4 b5 2b 1c 5e 6b 4c 49 48 c9 5a 54 00 56 e2     ...+.^kLIH.ZT.V.

00000246 <_ZN12Arduboy2Core14lcdBootProgramE>:
     246:	d5 f0 8d 14 a1 c8 81 cf d9 f1 af 20 00              ........... .

00000253 <_ZN12Arduboy2Base12arduboy_logoE>:
     253:	f0 f8 9c 8e 87 83 87 8e 9c f8 f0 00 00 fe ff 03     ................
     263:	03 03 03 03 07 0e fc f8 00 00 fe ff 03 03 03 03     ................
     273:	03 07 0e fc f8 00 00 ff ff 00 00 00 00 00 00 00     ................
     283:	ff ff 00 00 fe ff 83 83 83 83 83 c7 ee 7c 38 00     .............|8.
     293:	00 f8 fc 0e 07 03 03 03 07 0e fc f8 00 00 3f 7f     ..............?.
     2a3:	e0 c0 80 80 c0 e0 7f 3f ff ff 01 01 01 01 01 01     .......?........
     2b3:	01 ff ff 00 00 ff ff 0c 0c 0c 0c 1c 3e 77 e3 c1     ............>w..
     2c3:	00 00 7f ff c0 c0 c0 c0 c0 e0 70 3f 1f 00 00 1f     ..........p?....
     2d3:	3f 70 e0 c0 c0 c0 e0 70 3f 1f 00 00 7f ff c1 c1     ?p.....p?.......
     2e3:	c1 c1 c1 e3 77 3e 1c 00 00 1f 3f 70 e0 c0 c0 c0     ....w>....?p....
     2f3:	e0 70 3f 1f 00 00 00 00 00 01 ff ff 01 00 00 00     .p?.............

00000303 <_ZL10TwitterStr>:
     303:	62 79 20 40 6a 61 6d 65 73 68 68 6f 77 61 72 64     by @jameshhoward
	...

00000314 <_ZL10LogoBitmap>:
     314:	00 fe 02 fa 0a ea ea ea ea ea ea da da ea ea ea     ................
     324:	ea ea ea 0a fa 0a ea ea ea 0a fa 32 da ea ea ea     ...........2....
     334:	ea ea ea ea ea ea ea 0a fa 0a ea ea ea ea ea ea     ................
     344:	ea ea ea ea ea 1a f2 62 b2 da ea ea ea ea ea ea     .......b........
     354:	ea da b2 62 c2 02 fe 00 00 ff 00 ff 00 ff ff ff     ...b............
     364:	00 fe 40 5f 5f 40 fe 00 ff ff ff 00 ff 00 ff ff     ..@__@..........
     374:	ff 00 ff 00 ff ff ff 00 7e 42 42 42 42 42 42 42     ........~BBBBBBB
     384:	ff 00 ff ff ff 38 ba ba 7a f8 ff bf 3f c0 ff 00     .....8..z...?...
     394:	ff ff ff 00 7e 42 7e 00 ff ff ff 00 ff 00 ff 00     ....~B~.........
     3a4:	00 ff 80 1f 10 17 17 17 10 1f 00 00 00 00 1f 10     ................
     3b4:	17 17 17 10 1f 10 f7 37 d7 50 5f 56 5d 5b 17 f7     .......7.P_V][..
     3c4:	17 d7 17 f7 17 57 57 d0 5f 50 17 f7 17 d0 9f 71     .....WW._P.....q
     3d4:	9f d0 17 f7 17 10 1f 06 0d 1b 17 17 17 17 17 17     ................
     3e4:	17 1b 0d 06 03 80 ff 00 ff fe fd fb f6 ec d8 b0     ................
     3f4:	60 c0 80 00 00 00 00 00 00 00 00 00 00 00 7f c0     `...............
     404:	bf a0 af a9 a9 a9 89 ff 80 bf 80 ff 01 ff 80 bf     ................
     414:	80 ff 01 01 03 fe 81 bf 81 fe 03 01 00 00 00 00     ................
     424:	00 00 00 00 00 80 c0 60 b0 d8 ec f6 fb fd fe ff     .......`........
     434:	ff ff ff ff ff ff ff ff ff fe fd fb fa fa fa fa     ................
     444:	fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa     ................
     454:	fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa     ................
     464:	fa fa fa fa fa fa fa fa fa fa fa fa fb fd fe ff     ................
     474:	ff ff ff ff ff ff ff ff                             ........

0000047c <_ZL12Terrain3Data>:
     47c:	ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
     48c:	ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
     49c:	ff ff ff ff ff ff ff ff ff ff ff ff ff 1f 00 00     ................
     4ac:	ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 7f     ................
     4bc:	7f 7f 3f 3f 3f 7f ff ff ff 7f 7f ff ff ff ff ff     ..???...........
     4cc:	ff ff ff ff ff ff ff ff ff ff ff ff ff e0 00 00     ................
     4dc:	ff ff ff ff ff ff ff ff ff ff ff ff ff ff 80 00     ................
	...
     4f8:	01 03 0f 7f 7f 7f 7f ff ff ff ff ff 7f 7f 3f 3f     ..............??
     508:	3f 1f 00 00 ff ff ff ff ff ff ff ff ff ff ff ff     ?...............
     518:	ff ff ff ff fe fe fc f8 f0 80 00 00 00 00 00 00     ................
     528:	00 e0 f0 f8 fc fc fc f8 f8 f8 f8 f8 f8 fc fc fc     ................
     538:	f8 f0 00 00 ff ff ff ff ff ff ff ff ff ff ff ff     ................
     548:	ff ff ff ff ff ff ff ff 1f 03 00 00 00 00 00 00     ................
     558:	00 07 0f 0f 1f 3f ff ff ff ff ff ff ff ff ff ff     .....?..........
     568:	ff 00 00 00 ff ff ff ff ff ff ff ff ff ff ff ff     ................
     578:	ff ff ff ff ff ff ff ff ff fe fe fc fc fc fc fc     ................
     588:	fc fc fc fc fc fe ff ff ff ff ff ff ff ff ff ff     ................
     598:	ff 1f 00 00                                         ....

0000059c <_ZL12Terrain2Data>:
     59c:	00 f0 f8 fc fc fc fe fe fe fc fc fc fc fc fc fe     ................
     5ac:	fe fe fe fe fe fe fe fc f8 f8 f8 f8 f8 f8 f8 f8     ................
     5bc:	fc fc fc fc fe fe fe fe fe fe fe fe fc f8 c0 00     ................
     5cc:	00 00 81 c3 e3 e3 e3 e3 e3 e3 e3 c7 07 0f ff ff     ................
     5dc:	ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
     5ec:	ff ff ff ff ff ff ff ff ff ff ff ff ff ff 0f 00     ................
     5fc:	00 00 1f 3f 7f 7f 7f 7f 3f 3f 3f 0f 80 c0 ff ff     ...?....???.....
     60c:	ff ff ff ff ff ff ff ff ff ff ff ff ff ff 1f 0f     ................
     61c:	0f 0f 0f 0f 0f 0f 07 07 07 03 03 83 c3 c1 80 00     ................
     62c:	00 00 00 c0 f8 fc fe fe fe ff ff ff ff ff ff ff     ................
     63c:	ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff fc     ................
     64c:	fc f8 f8 f8 f8 f8 fc fe fe ff ff ff ff ff ff 00     ................
     65c:	00 00 07 ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
     66c:	ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
     67c:	ff ff ff ff ff ff ff ff ff ff ff ff ff 07 00 00     ................
     68c:	00 3c 7f 7f 7f 7f 7f 3f 3f 3f 3f 3f 3f 3f 3f 3f     .<.....?????????
     69c:	1f 1f 0f 0f 07 07 0f 0f 0f 0f 3f 3f 7f 7f 3f 3f     ..........??..??
     6ac:	3f 1f 1f 1f 1f 1f 3f 7f 7f 7f 7f 7f 3f 1e 00 00     ?.....?.....?...

000006bc <_ZL12Terrain1Data>:
     6bc:	ff ff ff ff ff ff ff ff ff ff ff ff ff ff 3f 0f     ..............?.
     6cc:	07 01 c0 e0 f8 fc fe ff ff ff ff ff ff ff ff ff     ................
     6dc:	ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
     6ec:	ff ff ff ff ff ff ff ff ff ff ff ff ff ff e0 c0     ................
     6fc:	80 00 03 0f 1f 3f 3f 7f ff ff ff ff ff ff ff ff     .....??.........
     70c:	ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
     71c:	ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
     72c:	ff ff fe fc f8 f8 f0 e0 c0 80 01 03 07 0f 3f ff     ..............?.
     73c:	ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
     74c:	ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
     75c:	ff ff ff ff ff ff ff ff ff ff fe f8 e0 00 00 00     ................
     76c:	03 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
     77c:	ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
     78c:	ff ff ff ff ff ff ff ff ff ff ff ff 3f 00 00 00     ............?...
     79c:	00 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
     7ac:	ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
     7bc:	ff ff ff ff ff ff ff ff 3f 0f 07 00 00 80 c0 f8     ........?.......
     7cc:	fe ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................

000007dc <_ZL11Terrain3Str>:
     7dc:	4c 61 6b 65 00                                      Lake.

000007e1 <_ZL11Terrain2Str>:
     7e1:	49 73 6c 61 6e 64 00                                Island.

000007e8 <_ZL11Terrain1Str>:
     7e8:	52 69 76 65 72 00                                   River.

000007ee <_ZL13RightArrowStr>:
     7ee:	3e 00                                               >.

000007f0 <_ZL12LeftArrowStr>:
     7f0:	3c 00                                               <.

000007f2 <_ZL16BuildingMetaData>:
     7f2:	00 00 00 00 00 64 00 03 03 40 64 00 03 03 43 64     .....d...@d...Cd
     802:	00 03 03 46 b8 0b 04 04 a0 32 00 03 03 49 f4 01     ...F.....2...I..
     812:	03 03 4c f4 01 03 03 7c b8 0b 04 04 a4 00 00 03     ..L....|........
     822:	03 00 00 00 04 04 00                                .......

00000829 <_ZL14ToolbarStrings>:
     829:	1c 01 17 01 0d 01 01 01 f6 00 eb 00 e0 00 db 00     ................
     839:	cf 00 c5 00 bd 00 b3 00 ac 00                       ..........

00000843 <_ZL12MonthStrings>:
     843:	52 01 4e 01 4a 01 46 01 42 01 3e 01 3a 01 36 01     R.N.J.F.B.>.:.6.
     853:	32 01 2e 01 2a 01 26 01                             2...*.&.

0000085b <_ZL15FireReportedStr>:
     85b:	46 69 72 65 20 72 65 70 6f 72 74 65 64 21 00        Fire reported!.

0000086a <_ZL6OffStr>:
     86a:	4f 66 66 00                                         Off.

0000086e <_ZL5OnStr>:
     86e:	4f 6e 00                                            On.

00000871 <_ZL13AutoBudgetStr>:
     871:	41 75 74 6f 20 42 75 64 67 65 74 3a 00              Auto Budget:.

0000087e <_ZL10NewCityStr>:
     87e:	4e 65 77 20 43 69 74 79 00                          New City.

00000887 <_ZL11LoadCityStr>:
     887:	4c 6f 61 64 20 43 69 74 79 00                       Load City.

00000891 <_ZL11SaveCityStr>:
     891:	53 61 76 65 20 43 69 74 79 00                       Save City.

0000089b <_ZL11CashFlowStr>:
     89b:	43 61 73 68 20 66 6c 6f 77 00                       Cash flow.

000008a5 <_ZL13RoadBudgetStr>:
     8a5:	52 6f 61 64 20 62 75 64 67 65 74 00                 Road budget.

000008b1 <_ZL15PoliceBudgetStr>:
     8b1:	50 6f 6c 69 63 65 20 62 75 64 67 65 74 00           Police budget.

000008bf <_ZL13FireBudgetStr>:
     8bf:	46 69 72 65 20 62 75 64 67 65 74 00                 Fire budget.

000008cb <_ZL17TaxesCollectedStr>:
     8cb:	54 61 78 65 73 20 63 6f 6c 6c 65 63 74 65 64 00     Taxes collected.

000008db <_ZL10TaxRateStr>:
     8db:	54 61 78 20 72 61 74 65 20 20 20 20 20 20 20 20     Tax rate        
     8eb:	20 3c 20 20 20 25 20 3e 00                           <   % >.

000008f4 <_ZL15BudgetHeaderStr>:
     8f4:	42 75 64 67 65 74 20 72 65 70 6f 72 74 20 66 6f     Budget report fo
     904:	72 00                                               r.

00000906 <_cdcInterface>:
     906:	08 0b 00 02 02 02 00 00 09 04 00 00 01 02 02 00     ................
     916:	00 05 24 00 10 01 05 24 01 01 01 04 24 02 06 05     ..$....$....$...
     926:	24 06 00 01 07 05 81 03 10 00 40 09 04 01 00 02     $.........@.....
     936:	0a 00 00 00 07 05 02 02 40 00 00 07 05 83 02 40     ........@......@
	...

00000948 <STRING_LANGUAGE>:
     948:	04 03 09 04                                         ....

0000094c <USB_DeviceDescriptorIAD>:
     94c:	12 01 00 02 ef 02 01 40 41 23 36 80 00 01 01 02     .......@A#6.....
     95c:	03 01                                               ..

0000095e <STRING_MANUFACTURER>:
     95e:	41 72 64 75 69 6e 6f 20 4c 4c 43 00                 Arduino LLC.

0000096a <STRING_PRODUCT>:
     96a:	41 72 64 75 69 6e 6f 20 4c 65 6f 6e 61 72 64 6f     Arduino Leonardo
	...

0000097b <_ZL13TileImageData>:
	...
     983:	ff ff dd ff ff ff ef ff ff fd ff df ff fb ff ff     ................
     993:	ff ff fd ff bf ff ff ff ff ff ff f7 ff bf fd ff     ................
     9a3:	01 11 11 01 01 11 11 01 ff 00 00 00 66 00 00 00     ............f...
     9b3:	ff 07 03 01 61 11 11 01 01 11 11 01 61 01 03 07     ....a.......a...
     9c3:	01 10 10 00 06 00 80 c0 ff c0 80 00 06 10 10 00     ................
     9d3:	01 11 11 01 81 11 91 01 51 00 00 00 66 00 00 00     ........Q...f...
     9e3:	01 10 11 00 01 10 10 00 ff 00 00 00 66 00 00 14     ............f...
     9f3:	51 00 01 00 81 00 80 14 ff ff ff ff ff ff ff ff     Q...............
     a03:	88 88 82 22 20 00 08 88 88 80 a2 22 20 20 00 88     ..." ......"  ..
     a13:	88 82 22 22 22 20 00 08 88 8a 02 22 22 00 08 08     ..""" .....""...
     a23:	41 15 51 05 41 15 51 05 ff 00 55 00 66 00 aa 00     A.Q.A.Q...U.f...
     a33:	ff 07 43 09 61 15 91 05 41 15 51 05 61 09 a3 07     ..C.a...A.Q.a...
     a43:	41 14 51 00 26 00 8a c0 ff c0 95 00 46 10 52 00     A.Q.&.......F.R.
     a53:	41 15 51 05 c1 15 d1 05 51 00 55 00 66 00 aa 00     A.Q.....Q.U.f...
     a63:	41 14 51 04 41 14 50 04 ff 00 55 00 66 00 aa 14     A.Q.A.P...U.f...
     a73:	51 04 41 00 81 00 84 14 82 92 92 82 82 92 92 82     Q.A.............
     a83:	00 ff 00 00 66 00 00 ff 8a 8a 0a 0a 2a 2a 0a 0a     ....f.......**..
     a93:	88 80 00 ff 00 ff 00 08 ff ff ff ff ff ff ff ff     ................
     aa3:	05 51 15 41 05 51 15 41 ff 00 aa 00 66 00 55 00     .Q.A.Q.A....f.U.
     ab3:	ff 07 93 01 65 11 15 01 05 51 95 01 65 01 53 07     ....e....Q..e.S.
     ac3:	05 50 12 40 06 10 85 c0 ff c0 8a 20 06 50 11 40     .P.@....... .P.@
     ad3:	05 51 15 41 85 51 95 41 51 00 aa 00 66 00 55 00     .Q.A.Q.AQ...f.U.
     ae3:	05 50 15 40 05 50 14 40 ff 00 aa 00 66 00 55 14     .P.@.P.@....f.U.
     af3:	51 40 03 00 81 02 80 14 00 7e 66 2a 4c 6e 7e 00     Q@.......~f*Ln~.
     b03:	01 11 11 fe 01 fe 11 01 f5 0a 0a 0a 6e 0a 0a 0a     ............n...
     b13:	7d f7 de fb fe b7 fd df ff ff ff ff ff ff ff ff     }...............
     b23:	f5 f5 f5 81 81 f5 f5 f5 ff ff ff 00 ff 00 ff ff     ................
     b33:	ff ff ff 01 fd 05 f5 f5 f5 f5 f5 05 fd 01 ff ff     ................
     b43:	f5 f5 f5 80 83 f0 ff ff ff ff ff f0 83 80 f5 f5     ................
     b53:	f5 f5 f5 05 fd 05 f5 f5 f5 f5 f5 04 ff 00 ff ff     ................
     b63:	f5 f5 f5 f4 f7 f4 f5 f5 ff ff ff 00 ff 04 f5 f5     ................
     b73:	f5 f5 f5 04 ff 04 f5 f5 ff 55 ff fd ff fd ff fd     .........U......
     b83:	ff fd ff fd ff fd ff fd ff fd ff fd ff fd ff 55     ...............U
     b93:	ff 55 ff fd ff fd ff fd ff fd ff fd ff fd ff fd     .U..............
     ba3:	ff fd ff fd ff fd ff 55 ff 55 ff fd ff fd ff fd     .......U.U......
     bb3:	ff fd ff fd ff fd ff fd ff fd ff fd ff fd ff 55     ...............U
     bc3:	ff 01 e9 e5 31 5d 9d 31 e5 a9 01 ff ff 01 bd e5     ....1].1........
     bd3:	d1 49 65 fd 35 9d 59 01 ff 0f f7 fb 01 fd fd fd     .Ie.5.Y.........
     be3:	fd 11 d7 d7 37 f7 17 d7 d7 37 f1 fd fd fd fd 01     ....7....7......
     bf3:	80 e0 f0 f0 f8 fe ee ff ff 55 ff ff ff ff ff ff     .........U......
     c03:	ff ff 81 ed ed 93 ff ff ff ff ff ff ff ff ff 55     ...............U
     c13:	ff 55 ff ff ff ff ff ff ff ff c3 bd bd db ff ff     .U..............
     c23:	ff ff ff ff ff ff ff 55 ff 55 ff ff ff ff ff ff     .......U.U......
     c33:	ff ff bd 81 bd ff ff ff ff ff ff ff ff ff ff 55     ...............U
     c43:	ff 18 db da 1b 9a 5a 1b db bd 66 c3 cb 66 bd 5b     ......Z...f..f.[
     c53:	98 1a 59 d8 1b 9a 5a 18 ff 00 3f 5f 60 6f 6f 6f     ..Y...Z...?_`ooo
     c63:	6f 68 2e ae af af a8 2b 6b 6c 6f 6f 6f af cf e0     oh.....+klooo...
     c73:	ff fe fc d8 f8 f0 e0 80 ff 55 ff 7f ff 7f ff 7f     .........U......
     c83:	ff 7f ff 7f ff 7f ff 7f ff 7f ff 7f ff 7f ff 55     ...............U
     c93:	ff 55 ff 7f ff 7f ff 7f ff 7f ff 7f ff 7f ff 7f     .U..............
     ca3:	ff 7f ff 7f ff 7f ff 55 ff 55 ff 7f ff 7f ff 7f     .......U.U......
     cb3:	ff 7f ff 7f ff 7f ff 7f ff 7f ff 7f ff 7f ff 55     ...............U
     cc3:	ff 00 27 15 4f 7e 66 4b 52 67 00 ff ff 00 77 5e     ..'.O~fKRg....w^
     cd3:	7c 4d 26 17 4d 7e 76 00 ff 81 a5 81 a1 85 81 ff     |M&.M~v.........
     ce3:	c0 cf d0 d7 d7 d7 e7 f0 ff 81 85 a1 85 a1 81 ff     ................
     cf3:	01 07 0f 1f 1b 3f 7f ff ff ff c3 3d a5 c5 6d f3     .....?.....=..m.
     d03:	5b fd 00 fe fe fe fe 0e 6e 6e 9e fe fe fe fe 00     [.......nn......
     d13:	ff 1f ef 57 fb 01 fd 7d 71 77 77 77 77 77 77 3b     ...W...}qwwwwww;
     d23:	41 5d dd dd dd 5d 9d c1 ff 01 7d 7d 01 ed ed 6d     A]...]....}}...m
     d33:	ad a1 bf bf a1 ad ad 61 ff ff ff 01 55 a9 01 ff     .......a....U...
     d43:	ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
     d53:	ff ff ff ff ff ff ff ff ff 07 fb 01 fd 7d 7d 7d     .............}}}
     d63:	7d 7d 7d 7d 7d 7d 7d 41 5f 5f 5f 5f 5f 5f df 1f     }}}}}}}A______..
     d73:	ff 7f 3d 1f 1f 0f 07 01 ff 01 56 ff 55 ff d5 ff     ..=.......V.U...
     d83:	75 bf c0 5f df 5f df 5c df 5f dc 5f df 5f 9f c0     u.._._.\._._._..
     d93:	ff 00 ff 95 ff 24 fe 00 ff ff c3 bd bd db ff ff     .....$..........
     da3:	ff 00 fe fe fe e0 ef 0f ff ff ff 07 fb 01 fe ff     ................
     db3:	ff ff bd 81 bd ff ff ff fe 01 ff 26 da da 26 ff     ...........&..&.
     dc3:	ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
     dd3:	ff ff ff ff ff ff ff ff ff 00 ff 54 fe 00 ff ff     ...........T....
     de3:	ff 03 db db fb ff 03 7b 7b 87 ff ff ff 00 ff 00     .......{{.......
     df3:	ff ff ff ff ff ff ff ff ff 80 9d af b7 9b bd 96     ................
     e03:	bf 95 bf 95 bf 95 bf d5 ef 85 b3 b5 b6 b6 b6 80     ................
     e13:	ff 00 3f 5a 6f 55 7b 54 55 7d 55 75 5d 75 6d 65     ..?ZoU{TU}Uu]ume
     e23:	69 6c 6f 6f 6f af cf e0 ff 9f 6f 6c 9b f7 ee ed     ilooo.....ol....
     e33:	eb eb eb eb eb f3 fb 05 76 47 5f 59 56 56 19 ff     ........vG_YVV..
     e43:	ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
     e53:	ff ff ff ff ff ff ff ff ff 00 3f 55 6f 70 37 17     ..........?Uop7.
     e63:	17 17 57 77 37 17 17 17 57 77 77 57 47 50 9f c0     ..Ww7...WwwWGP..
     e73:	ff ff ff ff ff ff ff ff ff 01 fd fd 7d 9d ed 05     ............}...
     e83:	f9 ad 56 aa 56 aa 56 aa 55 f9 05 ed 05 f9 ad 56     ..V.V.V.U......V
     e93:	aa 56 aa 56 aa 55 fb 07 ff 01 6d 6d 6d 6d 45 45     .V.V.U....mmmmEE
     ea3:	6d 01 f7 9b fd 15 d5 55 5d d5 55 55 5d 55 55 d5     m......U].UU]UU.
     eb3:	5d 55 d5 15 fd 9b f7 0f ff ff ff ff ff ff ff ff     ]U..............
     ec3:	ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
     ed3:	ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
     ee3:	ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
     ef3:	ff ff ff ff ff ff ff ff ff 00 7f c0 bf 7f ff f8     ................
     f03:	fb f6 ed ea ed 6a ad ca c5 bb 7c ff fc fb f6 ed     .....j....|.....
     f13:	ea 6d aa cd ea 05 fb fc ff 01 25 01 25 01 25 01     .m........%.%.%.
     f23:	ff 00 ff 24 ff 00 ff 00 00 03 82 42 42 42 82 03     ...$.......BBB..
     f33:	00 00 ff 00 ff 24 ff 00 ff ff ff ff ff ff ff ff     .....$..........
     f43:	ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
     f53:	ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
     f63:	ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
     f73:	ff ff ff ff ff ff ff ff ff ff 00 ef f7 9b fc 00     ................
     f83:	fe fe fe ce 46 12 9e de fe fe fe 00 76 56 76 8e     ....F.......vVv.
     f93:	fe 8f 77 57 77 8e fe 00 e3 80 a2 80 a2 00 22 80     ..wWw.........".
     fa3:	ff 00 ff 49 ff 00 ff 01 01 81 83 85 85 85 83 81     ...I............
     fb3:	01 01 ff 00 ff 49 ff 00 ff ff ff ff ff ff ff ff     .....I..........
     fc3:	ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
     fd3:	ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
     fe3:	ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
     ff3:	ff ff ff ff ff ff ff ff ff ff 00 5f 4f 56 5b 5c     ..........._OV[\
    1003:	55 5d 55 5d 55 55 5d 55 6d 75 79 60 5d 55 5d 63     U]U]UU]Umuy`]U]c
    1013:	7f 63 5d 55 5d 63 7f 00 ff 00 7e 70 77 74 74 04     .c]U]c....~pwtt.
    1023:	fc e0 df b2 7f 50 57 54 74 57 54 54 74 54 54 57     .....PWTtWTTtTTW
    1033:	74 54 57 50 7f b2 df e0 ff ff ff ff ff ff ff ff     tTWP............
    1043:	ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
    1053:	ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
    1063:	ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
    1073:	ff ff ff ff ff ff ff ff ff 01 6d 68 6a 0a 78 01     ..........mhj.x.
    1083:	ff c1 d5 d4 14 55 41 1f 21 2d ed ed 0d 7d 7d 01     .....UA.!-...}}.
    1093:	ff 80 b6 b6 80 b6 b6 80 00 7e 7e 00 7e 66 66 00     .........~~.~ff.
    10a3:	ff c1 1d 5d 5d 40 7e 00 07 57 57 57 50 02 fa f8     ...]]@~..WWWP...
    10b3:	ff c0 1e 5e 40 1e de c0 ff 8f 77 3b 1d 7e 81 ff     ...^@.....w;.~..
    10c3:	ff 9f 63 3d 1e 79 87 ff ff 83 7d 1b 3b 77 8f ff     ..c=.y....}.;w..
    10d3:	ff 9f 67 3b 37 7b a3 9f ff ff ff ff ff ff ff ff     ..g;7{..........
    10e3:	ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
    10f3:	ff ff ff ff ff ff ff ff ff df a3 ab a3 af cf b7     ................
    1103:	ff 1f 07 01 6a 01 07 1f ff ff f5 f5 00 f5 f5 ff     ....j...........
    1113:	ff ef 07 c3 01 23 07 ef ff ff 00 2a 80 2a 00 ff     .....#.....*.*..
    1123:	ff 03 1d 02 1d 1e 1f 1f ff ff e7 a3 89 cf ef ff     ................
    1133:	ff f3 e9 15 e9 f3 ff ff ff c0 a1 13 0b 85 c0 ff     ................
    1143:	ff ff 05 01 05 db e7 ff ff cf 97 1b 63 a7 cf ff     ............c...
    1153:	00 70 77 77 74 77 70 01 ff ff b7 ab 01 ab db ff     .pwwtwp.........
    1163:	ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
    1173:	ff ff ff ff ff ff ff ff 00                          .........

0000117c <__ctors_start>:
    117c:	1f 20       	and	r1, r15

0000117e <__ctors_end>:
    117e:	11 24       	eor	r1, r1
    1180:	1f be       	out	0x3f, r1	; 63
    1182:	cf ef       	ldi	r28, 0xFF	; 255
    1184:	da e0       	ldi	r29, 0x0A	; 10
    1186:	de bf       	out	0x3e, r29	; 62
    1188:	cd bf       	out	0x3d, r28	; 61

0000118a <__do_copy_data>:
    118a:	11 e0       	ldi	r17, 0x01	; 1
    118c:	a0 e0       	ldi	r26, 0x00	; 0
    118e:	b1 e0       	ldi	r27, 0x01	; 1
    1190:	e6 eb       	ldi	r30, 0xB6	; 182
    1192:	fc e5       	ldi	r31, 0x5C	; 92
    1194:	02 c0       	rjmp	.+4      	; 0x119a <__do_copy_data+0x10>
    1196:	05 90       	lpm	r0, Z+
    1198:	0d 92       	st	X+, r0
    119a:	a8 32       	cpi	r26, 0x28	; 40
    119c:	b1 07       	cpc	r27, r17
    119e:	d9 f7       	brne	.-10     	; 0x1196 <__do_copy_data+0xc>

000011a0 <__do_clear_bss>:
    11a0:	2a e0       	ldi	r18, 0x0A	; 10
    11a2:	a8 e2       	ldi	r26, 0x28	; 40
    11a4:	b1 e0       	ldi	r27, 0x01	; 1
    11a6:	01 c0       	rjmp	.+2      	; 0x11aa <.do_clear_bss_start>

000011a8 <.do_clear_bss_loop>:
    11a8:	1d 92       	st	X+, r1

000011aa <.do_clear_bss_start>:
    11aa:	a5 32       	cpi	r26, 0x25	; 37
    11ac:	b2 07       	cpc	r27, r18
    11ae:	e1 f7       	brne	.-8      	; 0x11a8 <.do_clear_bss_loop>

000011b0 <__do_global_ctors>:
    11b0:	18 e0       	ldi	r17, 0x08	; 8
    11b2:	cf eb       	ldi	r28, 0xBF	; 191
    11b4:	d8 e0       	ldi	r29, 0x08	; 8
    11b6:	04 c0       	rjmp	.+8      	; 0x11c0 <__do_global_ctors+0x10>
    11b8:	21 97       	sbiw	r28, 0x01	; 1
    11ba:	fe 01       	movw	r30, r28
    11bc:	0e 94 53 2e 	call	0x5ca6	; 0x5ca6 <__tablejump2__>
    11c0:	ce 3b       	cpi	r28, 0xBE	; 190
    11c2:	d1 07       	cpc	r29, r17
    11c4:	c9 f7       	brne	.-14     	; 0x11b8 <__do_global_ctors+0x8>
    11c6:	0e 94 34 20 	call	0x4068	; 0x4068 <main>
    11ca:	0c 94 59 2e 	jmp	0x5cb2	; 0x5cb2 <_exit>

000011ce <__bad_interrupt>:
    11ce:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000011d2 <_Z7SetTilehhh.constprop.16>:
    11d2:	90 e0       	ldi	r25, 0x00	; 0
    11d4:	20 91 24 0a 	lds	r18, 0x0A24	; 0x800a24 <CachedScrollX>
    11d8:	82 1b       	sub	r24, r18
    11da:	91 09       	sbc	r25, r1
    11dc:	27 fd       	sbrc	r18, 7
    11de:	93 95       	inc	r25
    11e0:	81 31       	cpi	r24, 0x11	; 17
    11e2:	91 05       	cpc	r25, r1
    11e4:	b8 f4       	brcc	.+46     	; 0x1214 <_Z7SetTilehhh.constprop.16+0x42>
    11e6:	70 e0       	ldi	r23, 0x00	; 0
    11e8:	20 91 23 0a 	lds	r18, 0x0A23	; 0x800a23 <CachedScrollY>
    11ec:	62 1b       	sub	r22, r18
    11ee:	71 09       	sbc	r23, r1
    11f0:	27 fd       	sbrc	r18, 7
    11f2:	73 95       	inc	r23
    11f4:	69 30       	cpi	r22, 0x09	; 9
    11f6:	71 05       	cpc	r23, r1
    11f8:	68 f4       	brcc	.+26     	; 0x1214 <_Z7SetTilehhh.constprop.16+0x42>
    11fa:	41 e1       	ldi	r20, 0x11	; 17
    11fc:	46 9f       	mul	r20, r22
    11fe:	90 01       	movw	r18, r0
    1200:	47 9f       	mul	r20, r23
    1202:	30 0d       	add	r19, r0
    1204:	11 24       	eor	r1, r1
    1206:	26 57       	subi	r18, 0x76	; 118
    1208:	36 4f       	sbci	r19, 0xF6	; 246
    120a:	82 0f       	add	r24, r18
    120c:	93 1f       	adc	r25, r19
    120e:	23 e3       	ldi	r18, 0x33	; 51
    1210:	fc 01       	movw	r30, r24
    1212:	20 83       	st	Z, r18
    1214:	08 95       	ret

00001216 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh.constprop.14>:

    drawFastHLine(a, y, b-a+1, color);
  }
}

void Arduboy2Base::drawBitmap
    1216:	4f 92       	push	r4
    1218:	5f 92       	push	r5
    121a:	6f 92       	push	r6
    121c:	7f 92       	push	r7
    121e:	8f 92       	push	r8
    1220:	9f 92       	push	r9
    1222:	af 92       	push	r10
    1224:	bf 92       	push	r11
    1226:	cf 92       	push	r12
    1228:	df 92       	push	r13
    122a:	ef 92       	push	r14
    122c:	ff 92       	push	r15
    122e:	0f 93       	push	r16
    1230:	1f 93       	push	r17
    1232:	cf 93       	push	r28
    1234:	df 93       	push	r29
(int16_t x, int16_t y, const uint8_t *bitmap, uint8_t w, uint8_t h,
 uint8_t color)
{
  // no need to draw at all if we're offscreen
  if (x + w <= 0 || x > WIDTH - 1 || y + h <= 0 || y > HEIGHT - 1)
    1236:	80 38       	cpi	r24, 0x80	; 128
    1238:	91 05       	cpc	r25, r1
    123a:	0c f0       	brlt	.+2      	; 0x123e <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh.constprop.14+0x28>
    123c:	91 c0       	rjmp	.+290    	; 0x1360 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh.constprop.14+0x14a>
    123e:	fb 01       	movw	r30, r22
    1240:	e0 0f       	add	r30, r16
    1242:	f1 1d       	adc	r31, r1
    1244:	1e 16       	cp	r1, r30
    1246:	1f 06       	cpc	r1, r31
    1248:	0c f0       	brlt	.+2      	; 0x124c <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh.constprop.14+0x36>
    124a:	8a c0       	rjmp	.+276    	; 0x1360 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh.constprop.14+0x14a>
    124c:	60 34       	cpi	r22, 0x40	; 64
    124e:	71 05       	cpc	r23, r1
    1250:	0c f0       	brlt	.+2      	; 0x1254 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh.constprop.14+0x3e>
    1252:	86 c0       	rjmp	.+268    	; 0x1360 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh.constprop.14+0x14a>
    return;

  int yOffset = abs(y) % 8;
    1254:	db 01       	movw	r26, r22
    1256:	77 ff       	sbrs	r23, 7
    1258:	04 c0       	rjmp	.+8      	; 0x1262 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh.constprop.14+0x4c>
    125a:	aa 27       	eor	r26, r26
    125c:	bb 27       	eor	r27, r27
    125e:	a6 1b       	sub	r26, r22
    1260:	b7 0b       	sbc	r27, r23
    1262:	a7 70       	andi	r26, 0x07	; 7
    1264:	bb 27       	eor	r27, r27
  int sRow = y / 8;
    1266:	eb 01       	movw	r28, r22
    1268:	77 fd       	sbrc	r23, 7
    126a:	27 96       	adiw	r28, 0x07	; 7
    126c:	e3 e0       	ldi	r30, 0x03	; 3
    126e:	d5 95       	asr	r29
    1270:	c7 95       	ror	r28
    1272:	ea 95       	dec	r30
    1274:	e1 f7       	brne	.-8      	; 0x126e <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh.constprop.14+0x58>
  if (y < 0) {
    1276:	77 ff       	sbrs	r23, 7
    1278:	07 c0       	rjmp	.+14     	; 0x1288 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh.constprop.14+0x72>
    sRow--;
    127a:	21 97       	sbiw	r28, 0x01	; 1
    yOffset = 8 - yOffset;
    127c:	68 e0       	ldi	r22, 0x08	; 8
    127e:	70 e0       	ldi	r23, 0x00	; 0
    1280:	fb 01       	movw	r30, r22
    1282:	ea 1b       	sub	r30, r26
    1284:	fb 0b       	sbc	r31, r27
    1286:	df 01       	movw	r26, r30
void Arduboy2Base::drawBitmap
(int16_t x, int16_t y, const uint8_t *bitmap, uint8_t w, uint8_t h,
 uint8_t color)
{
  // no need to draw at all if we're offscreen
  if (x + w <= 0 || x > WIDTH - 1 || y + h <= 0 || y > HEIGHT - 1)
    1288:	30 e0       	ldi	r19, 0x00	; 0
  int sRow = y / 8;
  if (y < 0) {
    sRow--;
    yOffset = 8 - yOffset;
  }
  int rows = h/8;
    128a:	06 95       	lsr	r16
    128c:	06 95       	lsr	r16
    128e:	06 95       	lsr	r16
    1290:	80 2e       	mov	r8, r16
    1292:	91 2c       	mov	r9, r1
    1294:	8a 01       	movw	r16, r20
    1296:	ae 01       	movw	r20, r28
    1298:	56 95       	lsr	r21
    129a:	54 2f       	mov	r21, r20
    129c:	44 27       	eor	r20, r20
    129e:	57 95       	ror	r21
    12a0:	47 95       	ror	r20
    12a2:	48 0f       	add	r20, r24
    12a4:	59 1f       	adc	r21, r25
    12a6:	46 57       	subi	r20, 0x76	; 118
    12a8:	5a 4f       	sbci	r21, 0xFA	; 250
    12aa:	be 01       	movw	r22, r28
    12ac:	e0 e8       	ldi	r30, 0x80	; 128
    12ae:	f0 e0       	ldi	r31, 0x00	; 0
    12b0:	7f 01       	movw	r14, r30
    12b2:	e8 1a       	sub	r14, r24
    12b4:	f9 0a       	sbc	r15, r25
            else
              sBuffer[(bRow*WIDTH) + x + iCol] ^= pgm_read_byte(bitmap+(a*w)+iCol) << yOffset;
          }
          if (yOffset && bRow<(HEIGHT/8)-1 && bRow > -2) {
            if (color == WHITE)
              sBuffer[((bRow+1)*WIDTH) + x + iCol] |= pgm_read_byte(bitmap+(a*w)+iCol) >> (8-yOffset);
    12b6:	88 e0       	ldi	r24, 0x08	; 8
    12b8:	90 e0       	ldi	r25, 0x00	; 0
    12ba:	3c 01       	movw	r6, r24
    12bc:	6a 1a       	sub	r6, r26
    12be:	7b 0a       	sbc	r7, r27
  int rows = h/8;
  if (h%8!=0) rows++;
  for (int a = 0; a < rows; a++) {
    int bRow = sRow + a;
    if (bRow > (HEIGHT/8)-1) break;
    if (bRow > -2) {
    12c0:	6f 3f       	cpi	r22, 0xFF	; 255
    12c2:	ff ef       	ldi	r31, 0xFF	; 255
    12c4:	7f 07       	cpc	r23, r31
    12c6:	0c f4       	brge	.+2      	; 0x12ca <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh.constprop.14+0xb4>
    12c8:	3b c0       	rjmp	.+118    	; 0x1340 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh.constprop.14+0x12a>
      for (int iCol = 0; iCol<w; iCol++) {
    12ca:	90 e0       	ldi	r25, 0x00	; 0
    12cc:	80 e0       	ldi	r24, 0x00	; 0
    12ce:	5a 01       	movw	r10, r20
    12d0:	e0 e8       	ldi	r30, 0x80	; 128
    12d2:	ae 0e       	add	r10, r30
    12d4:	b1 1c       	adc	r11, r1
        if (iCol + x > (WIDTH-1)) break;
        if (iCol + x >= 0) {
          if (bRow >= 0) {
    12d6:	6f 3f       	cpi	r22, 0xFF	; 255
    12d8:	76 07       	cpc	r23, r22
    12da:	09 f4       	brne	.+2      	; 0x12de <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh.constprop.14+0xc8>
    12dc:	52 c0       	rjmp	.+164    	; 0x1382 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh.constprop.14+0x16c>
            if (color == WHITE)
              sBuffer[(bRow*WIDTH) + x + iCol] |= pgm_read_byte(bitmap+(a*w)+iCol) << yOffset;
    12de:	fc 01       	movw	r30, r24
    12e0:	e0 0f       	add	r30, r16
    12e2:	f1 1f       	adc	r31, r17
    12e4:	e4 91       	lpm	r30, Z
    12e6:	6a 01       	movw	r12, r20
    12e8:	c8 0e       	add	r12, r24
    12ea:	d9 1e       	adc	r13, r25
    12ec:	f0 e0       	ldi	r31, 0x00	; 0
    12ee:	2f 01       	movw	r4, r30
    12f0:	0a 2e       	mov	r0, r26
    12f2:	01 c0       	rjmp	.+2      	; 0x12f6 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh.constprop.14+0xe0>
    12f4:	44 0c       	add	r4, r4
    12f6:	0a 94       	dec	r0
    12f8:	ea f7       	brpl	.-6      	; 0x12f4 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh.constprop.14+0xde>
    12fa:	f6 01       	movw	r30, r12
    12fc:	50 80       	ld	r5, Z
    12fe:	45 28       	or	r4, r5
    1300:	40 82       	st	Z, r4
            else if (color == BLACK)
              sBuffer[(bRow*WIDTH) + x + iCol] &= ~(pgm_read_byte(bitmap+(a*w)+iCol) << yOffset);
            else
              sBuffer[(bRow*WIDTH) + x + iCol] ^= pgm_read_byte(bitmap+(a*w)+iCol) << yOffset;
          }
          if (yOffset && bRow<(HEIGHT/8)-1 && bRow > -2) {
    1302:	10 97       	sbiw	r26, 0x00	; 0
    1304:	b1 f0       	breq	.+44     	; 0x1332 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh.constprop.14+0x11c>
    1306:	67 30       	cpi	r22, 0x07	; 7
    1308:	71 05       	cpc	r23, r1
    130a:	99 f0       	breq	.+38     	; 0x1332 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh.constprop.14+0x11c>
            if (color == WHITE)
              sBuffer[((bRow+1)*WIDTH) + x + iCol] |= pgm_read_byte(bitmap+(a*w)+iCol) >> (8-yOffset);
    130c:	f8 01       	movw	r30, r16
    130e:	e8 0f       	add	r30, r24
    1310:	f9 1f       	adc	r31, r25
    1312:	e4 91       	lpm	r30, Z
    1314:	65 01       	movw	r12, r10
    1316:	c8 0e       	add	r12, r24
    1318:	d9 1e       	adc	r13, r25
    131a:	f0 e0       	ldi	r31, 0x00	; 0
    131c:	2f 01       	movw	r4, r30
    131e:	06 2c       	mov	r0, r6
    1320:	02 c0       	rjmp	.+4      	; 0x1326 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh.constprop.14+0x110>
    1322:	55 94       	asr	r5
    1324:	47 94       	ror	r4
    1326:	0a 94       	dec	r0
    1328:	e2 f7       	brpl	.-8      	; 0x1322 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh.constprop.14+0x10c>
    132a:	f6 01       	movw	r30, r12
    132c:	50 80       	ld	r5, Z
    132e:	45 28       	or	r4, r5
    1330:	40 82       	st	Z, r4
  if (h%8!=0) rows++;
  for (int a = 0; a < rows; a++) {
    int bRow = sRow + a;
    if (bRow > (HEIGHT/8)-1) break;
    if (bRow > -2) {
      for (int iCol = 0; iCol<w; iCol++) {
    1332:	01 96       	adiw	r24, 0x01	; 1
    1334:	82 17       	cp	r24, r18
    1336:	93 07       	cpc	r25, r19
    1338:	1c f4       	brge	.+6      	; 0x1340 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh.constprop.14+0x12a>
        if (iCol + x > (WIDTH-1)) break;
    133a:	e8 16       	cp	r14, r24
    133c:	f9 06       	cpc	r15, r25
    133e:	59 f6       	brne	.-106    	; 0x12d6 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh.constprop.14+0xc0>
    1340:	6f 5f       	subi	r22, 0xFF	; 255
    1342:	7f 4f       	sbci	r23, 0xFF	; 255
    1344:	02 0f       	add	r16, r18
    1346:	13 1f       	adc	r17, r19
    1348:	40 58       	subi	r20, 0x80	; 128
    134a:	5f 4f       	sbci	r21, 0xFF	; 255
    sRow--;
    yOffset = 8 - yOffset;
  }
  int rows = h/8;
  if (h%8!=0) rows++;
  for (int a = 0; a < rows; a++) {
    134c:	cb 01       	movw	r24, r22
    134e:	8c 1b       	sub	r24, r28
    1350:	9d 0b       	sbc	r25, r29
    1352:	88 15       	cp	r24, r8
    1354:	99 05       	cpc	r25, r9
    1356:	24 f4       	brge	.+8      	; 0x1360 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh.constprop.14+0x14a>
    int bRow = sRow + a;
    if (bRow > (HEIGHT/8)-1) break;
    1358:	68 30       	cpi	r22, 0x08	; 8
    135a:	71 05       	cpc	r23, r1
    135c:	09 f0       	breq	.+2      	; 0x1360 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh.constprop.14+0x14a>
    135e:	b0 cf       	rjmp	.-160    	; 0x12c0 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh.constprop.14+0xaa>
          }
        }
      }
    }
  }
}
    1360:	df 91       	pop	r29
    1362:	cf 91       	pop	r28
    1364:	1f 91       	pop	r17
    1366:	0f 91       	pop	r16
    1368:	ff 90       	pop	r15
    136a:	ef 90       	pop	r14
    136c:	df 90       	pop	r13
    136e:	cf 90       	pop	r12
    1370:	bf 90       	pop	r11
    1372:	af 90       	pop	r10
    1374:	9f 90       	pop	r9
    1376:	8f 90       	pop	r8
    1378:	7f 90       	pop	r7
    137a:	6f 90       	pop	r6
    137c:	5f 90       	pop	r5
    137e:	4f 90       	pop	r4
    1380:	08 95       	ret
            else if (color == BLACK)
              sBuffer[(bRow*WIDTH) + x + iCol] &= ~(pgm_read_byte(bitmap+(a*w)+iCol) << yOffset);
            else
              sBuffer[(bRow*WIDTH) + x + iCol] ^= pgm_read_byte(bitmap+(a*w)+iCol) << yOffset;
          }
          if (yOffset && bRow<(HEIGHT/8)-1 && bRow > -2) {
    1382:	10 97       	sbiw	r26, 0x00	; 0
    1384:	09 f0       	breq	.+2      	; 0x1388 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh.constprop.14+0x172>
    1386:	c2 cf       	rjmp	.-124    	; 0x130c <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh.constprop.14+0xf6>
    1388:	d4 cf       	rjmp	.-88     	; 0x1332 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh.constprop.14+0x11c>

0000138a <_ZN12Arduboy2Core11paintScreenEPhb.constprop.13>:
    : [spdr]    "I"   (_SFR_IO_ADDR(SPDR)),
      [spsr]    "I"   (_SFR_IO_ADDR(SPSR)),
      [len_msb] "M"   (WIDTH * (HEIGHT / 8 * 2) >> 8),   // 8: pixels per byte
      [len_lsb] "M"   (WIDTH * (HEIGHT / 8 * 2) & 0xFF), // 2: for delay loop multiplier
      [clear]   "r"   (clear)
  );
    138a:	ea e8       	ldi	r30, 0x8A	; 138
    138c:	f5 e0       	ldi	r31, 0x05	; 5
    138e:	a0 e0       	ldi	r26, 0x00	; 0
    1390:	b8 e0       	ldi	r27, 0x08	; 8
    1392:	00 80       	ld	r0, Z
    1394:	0e bc       	out	0x2e, r0	; 46
    1396:	81 11       	cpse	r24, r1
    1398:	01 2c       	mov	r0, r1
    139a:	11 97       	sbiw	r26, 0x01	; 1
    139c:	a0 fd       	sbrc	r26, 0
    139e:	fd cf       	rjmp	.-6      	; 0x139a <_ZN12Arduboy2Core11paintScreenEPhb.constprop.13+0x10>
    13a0:	01 92       	st	Z+, r0
    13a2:	b9 f7       	brne	.-18     	; 0x1392 <_ZN12Arduboy2Core11paintScreenEPhb.constprop.13+0x8>
    13a4:	0d b4       	in	r0, 0x2d	; 45
}
    13a6:	08 95       	ret

000013a8 <_Z8USB_RecvhPvi.constprop.5>:
	return FifoByteCount();
}

//	Non Blocking receive
//	Return number of bytes read
int USB_Recv(u8 ep, void* d, int len)
    13a8:	fc 01       	movw	r30, r24
{
	if (!_usbConfiguration || len < 0)
    13aa:	80 91 89 05 	lds	r24, 0x0589	; 0x800589 <_usbConfiguration>
    13ae:	88 23       	and	r24, r24
    13b0:	11 f1       	breq	.+68     	; 0x13f6 <_Z8USB_RecvhPvi.constprop.5+0x4e>
#define USB_RECV_TIMEOUT
class LockEP
{
	u8 _sreg;
public:
	LockEP(u8 ep) : _sreg(SREG)
    13b2:	3f b7       	in	r19, 0x3f	; 63
	{
		cli();
    13b4:	f8 94       	cli
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    13b6:	82 e0       	ldi	r24, 0x02	; 2
    13b8:	80 93 e9 00 	sts	0x00E9, r24	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
}

static inline u8 FifoByteCount()
{
	return UEBCLX;
    13bc:	20 91 f2 00 	lds	r18, 0x00F2	; 0x8000f2 <__DATA_REGION_ORIGIN__+0x92>
	if (!_usbConfiguration || len < 0)
		return -1;
	
	LockEP lock(ep);
	u8 n = FifoByteCount();
	len = min(n,len);
    13c0:	82 2f       	mov	r24, r18
    13c2:	90 e0       	ldi	r25, 0x00	; 0
    13c4:	18 16       	cp	r1, r24
    13c6:	19 06       	cpc	r1, r25
    13c8:	14 f4       	brge	.+4      	; 0x13ce <_Z8USB_RecvhPvi.constprop.5+0x26>
    13ca:	81 e0       	ldi	r24, 0x01	; 1
    13cc:	90 e0       	ldi	r25, 0x00	; 0
	n = len;
	u8* dst = (u8*)d;
	while (n--)
    13ce:	88 23       	and	r24, r24
    13d0:	39 f0       	breq	.+14     	; 0x13e0 <_Z8USB_RecvhPvi.constprop.5+0x38>
	RxLEDPulse = TX_RX_LED_PULSE_MS;	
}

static inline u8 Recv8()
{
	RXLED1;					// light the RX LED
    13d2:	28 98       	cbi	0x05, 0	; 5
	RxLEDPulse = TX_RX_LED_PULSE_MS;
    13d4:	44 e6       	ldi	r20, 0x64	; 100
    13d6:	40 93 88 05 	sts	0x0588, r20	; 0x800588 <RxLEDPulse>

	return UEDATX;	
    13da:	40 91 f1 00 	lds	r20, 0x00F1	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
	u8 n = FifoByteCount();
	len = min(n,len);
	n = len;
	u8* dst = (u8*)d;
	while (n--)
		*dst++ = Recv8();
    13de:	40 83       	st	Z, r20
	if (len && !FifoByteCount())	// release empty buffer
    13e0:	22 23       	and	r18, r18
    13e2:	39 f0       	breq	.+14     	; 0x13f2 <_Z8USB_RecvhPvi.constprop.5+0x4a>
	UENUM = ep;
}

static inline u8 FifoByteCount()
{
	return UEBCLX;
    13e4:	20 91 f2 00 	lds	r18, 0x00F2	; 0x8000f2 <__DATA_REGION_ORIGIN__+0x92>
	len = min(n,len);
	n = len;
	u8* dst = (u8*)d;
	while (n--)
		*dst++ = Recv8();
	if (len && !FifoByteCount())	// release empty buffer
    13e8:	21 11       	cpse	r18, r1
    13ea:	03 c0       	rjmp	.+6      	; 0x13f2 <_Z8USB_RecvhPvi.constprop.5+0x4a>
	return UEINTX & (1<<FIFOCON);
}

static inline void ReleaseRX()
{
	UEINTX = 0x6B;	// FIFOCON=0 NAKINI=1 RWAL=1 NAKOUTI=0 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=1
    13ec:	2b e6       	ldi	r18, 0x6B	; 107
    13ee:	20 93 e8 00 	sts	0x00E8, r18	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
		cli();
		SetEP(ep & 7);
	}
	~LockEP()
	{
		SREG = _sreg;
    13f2:	3f bf       	out	0x3f, r19	; 63
    13f4:	08 95       	ret
//	Non Blocking receive
//	Return number of bytes read
int USB_Recv(u8 ep, void* d, int len)
{
	if (!_usbConfiguration || len < 0)
		return -1;
    13f6:	8f ef       	ldi	r24, 0xFF	; 255
    13f8:	9f ef       	ldi	r25, 0xFF	; 255
		*dst++ = Recv8();
	if (len && !FifoByteCount())	// release empty buffer
		ReleaseRX();
	
	return len;
}
    13fa:	08 95       	ret

000013fc <_Z13USB_SendSpaceh.constprop.3>:
#define USB_RECV_TIMEOUT
class LockEP
{
	u8 _sreg;
public:
	LockEP(u8 ep) : _sreg(SREG)
    13fc:	2f b7       	in	r18, 0x3f	; 63
	{
		cli();
    13fe:	f8 94       	cli
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    1400:	83 e0       	ldi	r24, 0x03	; 3
    1402:	80 93 e9 00 	sts	0x00E9, r24	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
	UECONX = (1<<STALLRQ) | (1<<EPEN);
}

static inline u8 ReadWriteAllowed()
{
	return UEINTX & (1<<RWAL);
    1406:	90 91 e8 00 	lds	r25, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>

//	Space in send EP
u8 USB_SendSpace(u8 ep)
{
	LockEP lock(ep);
	if (!ReadWriteAllowed())
    140a:	89 2f       	mov	r24, r25
    140c:	80 72       	andi	r24, 0x20	; 32
    140e:	95 ff       	sbrs	r25, 5
    1410:	04 c0       	rjmp	.+8      	; 0x141a <_Z13USB_SendSpaceh.constprop.3+0x1e>
	UENUM = ep;
}

static inline u8 FifoByteCount()
{
	return UEBCLX;
    1412:	90 91 f2 00 	lds	r25, 0x00F2	; 0x8000f2 <__DATA_REGION_ORIGIN__+0x92>
u8 USB_SendSpace(u8 ep)
{
	LockEP lock(ep);
	if (!ReadWriteAllowed())
		return 0;
	return USB_EP_SIZE - FifoByteCount();
    1416:	80 e4       	ldi	r24, 0x40	; 64
    1418:	89 1b       	sub	r24, r25
		cli();
		SetEP(ep & 7);
	}
	~LockEP()
	{
		SREG = _sreg;
    141a:	2f bf       	out	0x3f, r18	; 63
{
	LockEP lock(ep);
	if (!ReadWriteAllowed())
		return 0;
	return USB_EP_SIZE - FifoByteCount();
}
    141c:	08 95       	ret

0000141e <_Z12PluggableUSBv>:
	// restart USB layer???
}

PluggableUSB_& PluggableUSB()
{
	static PluggableUSB_ obj;
    141e:	80 91 80 05 	lds	r24, 0x0580	; 0x800580 <_ZGVZ12PluggableUSBvE3obj>
    1422:	81 11       	cpse	r24, r1
    1424:	0d c0       	rjmp	.+26     	; 0x1440 <_Z12PluggableUSBv+0x22>
	return obj;
}

PluggableUSB_::PluggableUSB_() : lastIf(CDC_ACM_INTERFACE + CDC_INTERFACE_COUNT),
                                 lastEp(CDC_FIRST_ENDPOINT + CDC_ENPOINT_COUNT),
                                 rootNode(NULL)
    1426:	82 e0       	ldi	r24, 0x02	; 2
    1428:	80 93 7c 05 	sts	0x057C, r24	; 0x80057c <_ZZ12PluggableUSBvE3obj>
    142c:	84 e0       	ldi	r24, 0x04	; 4
    142e:	80 93 7d 05 	sts	0x057D, r24	; 0x80057d <_ZZ12PluggableUSBvE3obj+0x1>
    1432:	10 92 7f 05 	sts	0x057F, r1	; 0x80057f <_ZZ12PluggableUSBvE3obj+0x3>
    1436:	10 92 7e 05 	sts	0x057E, r1	; 0x80057e <_ZZ12PluggableUSBvE3obj+0x2>
	// restart USB layer???
}

PluggableUSB_& PluggableUSB()
{
	static PluggableUSB_ obj;
    143a:	81 e0       	ldi	r24, 0x01	; 1
    143c:	80 93 80 05 	sts	0x0580, r24	; 0x800580 <_ZGVZ12PluggableUSBvE3obj>
	return obj;
}
    1440:	8c e7       	ldi	r24, 0x7C	; 124
    1442:	95 e0       	ldi	r25, 0x05	; 5
    1444:	08 95       	ret

00001446 <_ZN7Serial_5writeEh>:
{
	USB_Flush(CDC_TX);
}

size_t Serial_::write(uint8_t c)
{
    1446:	cf 93       	push	r28
    1448:	df 93       	push	r29
    144a:	1f 92       	push	r1
    144c:	cd b7       	in	r28, 0x3d	; 61
    144e:	de b7       	in	r29, 0x3e	; 62
    1450:	69 83       	std	Y+1, r22	; 0x01
	return write(&c, 1);
    1452:	dc 01       	movw	r26, r24
    1454:	ed 91       	ld	r30, X+
    1456:	fc 91       	ld	r31, X
    1458:	02 80       	ldd	r0, Z+2	; 0x02
    145a:	f3 81       	ldd	r31, Z+3	; 0x03
    145c:	e0 2d       	mov	r30, r0
    145e:	41 e0       	ldi	r20, 0x01	; 1
    1460:	50 e0       	ldi	r21, 0x00	; 0
    1462:	be 01       	movw	r22, r28
    1464:	6f 5f       	subi	r22, 0xFF	; 255
    1466:	7f 4f       	sbci	r23, 0xFF	; 255
    1468:	09 95       	icall
}
    146a:	0f 90       	pop	r0
    146c:	df 91       	pop	r29
    146e:	cf 91       	pop	r28
    1470:	08 95       	ret

00001472 <_ZN7Serial_5flushEv>:
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    1472:	83 e0       	ldi	r24, 0x03	; 3
    1474:	80 93 e9 00 	sts	0x00E9, r24	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
}

static inline u8 FifoByteCount()
{
	return UEBCLX;
    1478:	80 91 f2 00 	lds	r24, 0x00F2	; 0x8000f2 <__DATA_REGION_ORIGIN__+0x92>
}

void USB_Flush(u8 ep)
{
	SetEP(ep);
	if (FifoByteCount())
    147c:	88 23       	and	r24, r24
    147e:	19 f0       	breq	.+6      	; 0x1486 <_ZN7Serial_5flushEv+0x14>
	UEINTX = 0x6B;	// FIFOCON=0 NAKINI=1 RWAL=1 NAKOUTI=0 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=1
}

static inline void ReleaseTX()
{
	UEINTX = 0x3A;	// FIFOCON=0 NAKINI=0 RWAL=1 NAKOUTI=1 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=0
    1480:	8a e3       	ldi	r24, 0x3A	; 58
    1482:	80 93 e8 00 	sts	0x00E8, r24	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
}

void Serial_::flush(void)
{
	USB_Flush(CDC_TX);
}
    1486:	08 95       	ret

00001488 <_ZN7Serial_17availableForWriteEv>:
	return USB_Recv(CDC_RX);
}

int Serial_::availableForWrite(void)
{
	return USB_SendSpace(CDC_TX);
    1488:	0e 94 fe 09 	call	0x13fc	; 0x13fc <_Z13USB_SendSpaceh.constprop.3>
}
    148c:	90 e0       	ldi	r25, 0x00	; 0
    148e:	08 95       	ret

00001490 <_ZN7Serial_4readEv>:
		peek_buffer = USB_Recv(CDC_RX);
	return peek_buffer;
}

int Serial_::read(void)
{
    1490:	cf 93       	push	r28
    1492:	df 93       	push	r29
    1494:	1f 92       	push	r1
    1496:	cd b7       	in	r28, 0x3d	; 61
    1498:	de b7       	in	r29, 0x3e	; 62
    149a:	fc 01       	movw	r30, r24
	if (peek_buffer >= 0) {
    149c:	84 85       	ldd	r24, Z+12	; 0x0c
    149e:	95 85       	ldd	r25, Z+13	; 0x0d
    14a0:	97 fd       	sbrc	r25, 7
    14a2:	08 c0       	rjmp	.+16     	; 0x14b4 <_ZN7Serial_4readEv+0x24>
		int c = peek_buffer;
		peek_buffer = -1;
    14a4:	2f ef       	ldi	r18, 0xFF	; 255
    14a6:	3f ef       	ldi	r19, 0xFF	; 255
    14a8:	35 87       	std	Z+13, r19	; 0x0d
    14aa:	24 87       	std	Z+12, r18	; 0x0c
		return c;
	}
	return USB_Recv(CDC_RX);
}
    14ac:	0f 90       	pop	r0
    14ae:	df 91       	pop	r29
    14b0:	cf 91       	pop	r28
    14b2:	08 95       	ret

//	Recv 1 byte if ready
int USB_Recv(u8 ep)
{
	u8 c;
	if (USB_Recv(ep,&c,1) != 1)
    14b4:	ce 01       	movw	r24, r28
    14b6:	01 96       	adiw	r24, 0x01	; 1
    14b8:	0e 94 d4 09 	call	0x13a8	; 0x13a8 <_Z8USB_RecvhPvi.constprop.5>
    14bc:	01 97       	sbiw	r24, 0x01	; 1
    14be:	19 f4       	brne	.+6      	; 0x14c6 <_ZN7Serial_4readEv+0x36>
		return -1;
	return c;
    14c0:	89 81       	ldd	r24, Y+1	; 0x01
    14c2:	90 e0       	ldi	r25, 0x00	; 0
    14c4:	f3 cf       	rjmp	.-26     	; 0x14ac <_ZN7Serial_4readEv+0x1c>
//	Recv 1 byte if ready
int USB_Recv(u8 ep)
{
	u8 c;
	if (USB_Recv(ep,&c,1) != 1)
		return -1;
    14c6:	8f ef       	ldi	r24, 0xFF	; 255
    14c8:	9f ef       	ldi	r25, 0xFF	; 255
    14ca:	f0 cf       	rjmp	.-32     	; 0x14ac <_ZN7Serial_4readEv+0x1c>

000014cc <_ZN7Serial_4peekEv>:
	}
	return USB_Available(CDC_RX);
}

int Serial_::peek(void)
{
    14cc:	0f 93       	push	r16
    14ce:	1f 93       	push	r17
    14d0:	cf 93       	push	r28
    14d2:	df 93       	push	r29
    14d4:	1f 92       	push	r1
    14d6:	cd b7       	in	r28, 0x3d	; 61
    14d8:	de b7       	in	r29, 0x3e	; 62
    14da:	8c 01       	movw	r16, r24
	if (peek_buffer < 0)
    14dc:	fc 01       	movw	r30, r24
    14de:	84 85       	ldd	r24, Z+12	; 0x0c
    14e0:	95 85       	ldd	r25, Z+13	; 0x0d
    14e2:	97 ff       	sbrs	r25, 7
    14e4:	0b c0       	rjmp	.+22     	; 0x14fc <_ZN7Serial_4peekEv+0x30>

//	Recv 1 byte if ready
int USB_Recv(u8 ep)
{
	u8 c;
	if (USB_Recv(ep,&c,1) != 1)
    14e6:	ce 01       	movw	r24, r28
    14e8:	01 96       	adiw	r24, 0x01	; 1
    14ea:	0e 94 d4 09 	call	0x13a8	; 0x13a8 <_Z8USB_RecvhPvi.constprop.5>
    14ee:	01 97       	sbiw	r24, 0x01	; 1
    14f0:	71 f4       	brne	.+28     	; 0x150e <_ZN7Serial_4peekEv+0x42>
		return -1;
	return c;
    14f2:	89 81       	ldd	r24, Y+1	; 0x01
    14f4:	90 e0       	ldi	r25, 0x00	; 0
		peek_buffer = USB_Recv(CDC_RX);
    14f6:	f8 01       	movw	r30, r16
    14f8:	95 87       	std	Z+13, r25	; 0x0d
    14fa:	84 87       	std	Z+12, r24	; 0x0c
	return peek_buffer;
}
    14fc:	f8 01       	movw	r30, r16
    14fe:	84 85       	ldd	r24, Z+12	; 0x0c
    1500:	95 85       	ldd	r25, Z+13	; 0x0d
    1502:	0f 90       	pop	r0
    1504:	df 91       	pop	r29
    1506:	cf 91       	pop	r28
    1508:	1f 91       	pop	r17
    150a:	0f 91       	pop	r16
    150c:	08 95       	ret
//	Recv 1 byte if ready
int USB_Recv(u8 ep)
{
	u8 c;
	if (USB_Recv(ep,&c,1) != 1)
		return -1;
    150e:	8f ef       	ldi	r24, 0xFF	; 255
    1510:	9f ef       	ldi	r25, 0xFF	; 255
    1512:	f1 cf       	rjmp	.-30     	; 0x14f6 <_ZN7Serial_4peekEv+0x2a>

00001514 <_ZN7Serial_9availableEv>:
{
}

int Serial_::available(void)
{
	if (peek_buffer >= 0) {
    1514:	fc 01       	movw	r30, r24
    1516:	84 85       	ldd	r24, Z+12	; 0x0c
    1518:	95 85       	ldd	r25, Z+13	; 0x0d
    151a:	97 fd       	sbrc	r25, 7
    151c:	0b c0       	rjmp	.+22     	; 0x1534 <_ZN7Serial_9availableEv+0x20>
#define USB_RECV_TIMEOUT
class LockEP
{
	u8 _sreg;
public:
	LockEP(u8 ep) : _sreg(SREG)
    151e:	9f b7       	in	r25, 0x3f	; 63
	{
		cli();
    1520:	f8 94       	cli
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    1522:	82 e0       	ldi	r24, 0x02	; 2
    1524:	80 93 e9 00 	sts	0x00E9, r24	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
}

static inline u8 FifoByteCount()
{
	return UEBCLX;
    1528:	80 91 f2 00 	lds	r24, 0x00F2	; 0x8000f2 <__DATA_REGION_ORIGIN__+0x92>
		cli();
		SetEP(ep & 7);
	}
	~LockEP()
	{
		SREG = _sreg;
    152c:	9f bf       	out	0x3f, r25	; 63
		return 1 + USB_Available(CDC_RX);
    152e:	90 e0       	ldi	r25, 0x00	; 0
    1530:	01 96       	adiw	r24, 0x01	; 1
    1532:	08 95       	ret
#define USB_RECV_TIMEOUT
class LockEP
{
	u8 _sreg;
public:
	LockEP(u8 ep) : _sreg(SREG)
    1534:	9f b7       	in	r25, 0x3f	; 63
	{
		cli();
    1536:	f8 94       	cli
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    1538:	82 e0       	ldi	r24, 0x02	; 2
    153a:	80 93 e9 00 	sts	0x00E9, r24	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
}

static inline u8 FifoByteCount()
{
	return UEBCLX;
    153e:	80 91 f2 00 	lds	r24, 0x00F2	; 0x8000f2 <__DATA_REGION_ORIGIN__+0x92>
		cli();
		SetEP(ep & 7);
	}
	~LockEP()
	{
		SREG = _sreg;
    1542:	9f bf       	out	0x3f, r25	; 63
	}
	return USB_Available(CDC_RX);
    1544:	90 e0       	ldi	r25, 0x00	; 0
}
    1546:	08 95       	ret

00001548 <_ZL11SendControlh>:
}

static
bool SendControl(u8 d)
{
	if (_cmark < _cend)
    1548:	40 91 26 05 	lds	r20, 0x0526	; 0x800526 <_ZL6_cmark>
    154c:	50 91 27 05 	lds	r21, 0x0527	; 0x800527 <_ZL6_cmark+0x1>
    1550:	20 91 24 05 	lds	r18, 0x0524	; 0x800524 <_ZL5_cend>
    1554:	30 91 25 05 	lds	r19, 0x0525	; 0x800525 <_ZL5_cend+0x1>
    1558:	42 17       	cp	r20, r18
    155a:	53 07       	cpc	r21, r19
    155c:	b4 f4       	brge	.+44     	; 0x158a <_ZL11SendControlh+0x42>
		;
}

static inline u8 WaitForINOrOUT()
{
	while (!(UEINTX & ((1<<TXINI)|(1<<RXOUTI))))
    155e:	90 91 e8 00 	lds	r25, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
    1562:	95 70       	andi	r25, 0x05	; 5
    1564:	e1 f3       	breq	.-8      	; 0x155e <_ZL11SendControlh+0x16>
		;
	return (UEINTX & (1<<RXOUTI)) == 0;
    1566:	90 91 e8 00 	lds	r25, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
static
bool SendControl(u8 d)
{
	if (_cmark < _cend)
	{
		if (!WaitForINOrOUT())
    156a:	92 fd       	sbrc	r25, 2
    156c:	19 c0       	rjmp	.+50     	; 0x15a0 <_ZL11SendControlh+0x58>
	return UEDATX;	
}

static inline void Send8(u8 d)
{
	UEDATX = d;
    156e:	80 93 f1 00 	sts	0x00F1, r24	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
	if (_cmark < _cend)
	{
		if (!WaitForINOrOUT())
			return false;
		Send8(d);
		if (!((_cmark + 1) & 0x3F))
    1572:	80 91 26 05 	lds	r24, 0x0526	; 0x800526 <_ZL6_cmark>
    1576:	90 91 27 05 	lds	r25, 0x0527	; 0x800527 <_ZL6_cmark+0x1>
    157a:	01 96       	adiw	r24, 0x01	; 1
    157c:	8f 73       	andi	r24, 0x3F	; 63
    157e:	99 27       	eor	r25, r25
    1580:	89 2b       	or	r24, r25
    1582:	19 f4       	brne	.+6      	; 0x158a <_ZL11SendControlh+0x42>
		;
}

static inline void ClearIN(void)
{
	UEINTX = ~(1<<TXINI);
    1584:	8e ef       	ldi	r24, 0xFE	; 254
    1586:	80 93 e8 00 	sts	0x00E8, r24	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
			return false;
		Send8(d);
		if (!((_cmark + 1) & 0x3F))
			ClearIN();	// Fifo is full, release this packet
	}
	_cmark++;
    158a:	80 91 26 05 	lds	r24, 0x0526	; 0x800526 <_ZL6_cmark>
    158e:	90 91 27 05 	lds	r25, 0x0527	; 0x800527 <_ZL6_cmark+0x1>
    1592:	01 96       	adiw	r24, 0x01	; 1
    1594:	90 93 27 05 	sts	0x0527, r25	; 0x800527 <_ZL6_cmark+0x1>
    1598:	80 93 26 05 	sts	0x0526, r24	; 0x800526 <_ZL6_cmark>
	return true;
    159c:	81 e0       	ldi	r24, 0x01	; 1
    159e:	08 95       	ret
bool SendControl(u8 d)
{
	if (_cmark < _cend)
	{
		if (!WaitForINOrOUT())
			return false;
    15a0:	80 e0       	ldi	r24, 0x00	; 0
		if (!((_cmark + 1) & 0x3F))
			ClearIN();	// Fifo is full, release this packet
	}
	_cmark++;
	return true;
}
    15a2:	08 95       	ret

000015a4 <_Z15USB_SendControlhPKvi>:

//	Clipped by _cmark/_cend
int USB_SendControl(u8 flags, const void* d, int len)
{
    15a4:	df 92       	push	r13
    15a6:	ef 92       	push	r14
    15a8:	ff 92       	push	r15
    15aa:	0f 93       	push	r16
    15ac:	1f 93       	push	r17
    15ae:	cf 93       	push	r28
    15b0:	df 93       	push	r29
    15b2:	d8 2e       	mov	r13, r24
    15b4:	8a 01       	movw	r16, r20
    15b6:	eb 01       	movw	r28, r22
    15b8:	7b 01       	movw	r14, r22
    15ba:	e4 0e       	add	r14, r20
    15bc:	f5 1e       	adc	r15, r21
	int sent = len;
	const u8* data = (const u8*)d;
	bool pgm = flags & TRANSFER_PGM;
	while (len--)
    15be:	ce 15       	cp	r28, r14
    15c0:	df 05       	cpc	r29, r15
    15c2:	59 f0       	breq	.+22     	; 0x15da <_Z15USB_SendControlhPKvi+0x36>
	{
		u8 c = pgm ? pgm_read_byte(data++) : *data++;
    15c4:	d7 fe       	sbrs	r13, 7
    15c6:	12 c0       	rjmp	.+36     	; 0x15ec <_Z15USB_SendControlhPKvi+0x48>
    15c8:	fe 01       	movw	r30, r28
    15ca:	84 91       	lpm	r24, Z
		if (!SendControl(c))
    15cc:	0e 94 a4 0a 	call	0x1548	; 0x1548 <_ZL11SendControlh>
    15d0:	21 96       	adiw	r28, 0x01	; 1
    15d2:	81 11       	cpse	r24, r1
    15d4:	f4 cf       	rjmp	.-24     	; 0x15be <_Z15USB_SendControlhPKvi+0x1a>
			return -1;
    15d6:	0f ef       	ldi	r16, 0xFF	; 255
    15d8:	1f ef       	ldi	r17, 0xFF	; 255
	}
	return sent;
}
    15da:	c8 01       	movw	r24, r16
    15dc:	df 91       	pop	r29
    15de:	cf 91       	pop	r28
    15e0:	1f 91       	pop	r17
    15e2:	0f 91       	pop	r16
    15e4:	ff 90       	pop	r15
    15e6:	ef 90       	pop	r14
    15e8:	df 90       	pop	r13
    15ea:	08 95       	ret
	int sent = len;
	const u8* data = (const u8*)d;
	bool pgm = flags & TRANSFER_PGM;
	while (len--)
	{
		u8 c = pgm ? pgm_read_byte(data++) : *data++;
    15ec:	88 81       	ld	r24, Y
    15ee:	ee cf       	rjmp	.-36     	; 0x15cc <_Z15USB_SendControlhPKvi+0x28>

000015f0 <_ZL14SendInterfacesv>:
	}
	return len;
}

static u8 SendInterfaces()
{
    15f0:	0f 93       	push	r16
    15f2:	1f 93       	push	r17
    15f4:	cf 93       	push	r28
    15f6:	df 93       	push	r29
    15f8:	1f 92       	push	r1
    15fa:	cd b7       	in	r28, 0x3d	; 61
    15fc:	de b7       	in	r29, 0x3e	; 62
	return pgm_read_word(FLASHEND - 1) == NEW_LUFA_SIGNATURE;
}

int CDC_GetInterface(u8* interfaceNum)
{
	interfaceNum[0] += 2;	// uses 2
    15fe:	82 e0       	ldi	r24, 0x02	; 2
    1600:	89 83       	std	Y+1, r24	; 0x01
	return USB_SendControl(TRANSFER_PGM,&_cdcInterface,sizeof(_cdcInterface));
    1602:	42 e4       	ldi	r20, 0x42	; 66
    1604:	50 e0       	ldi	r21, 0x00	; 0
    1606:	66 e0       	ldi	r22, 0x06	; 6
    1608:	79 e0       	ldi	r23, 0x09	; 9
    160a:	80 e8       	ldi	r24, 0x80	; 128
    160c:	0e 94 d2 0a 	call	0x15a4	; 0x15a4 <_Z15USB_SendControlhPKvi>
	u8 interfaces = 0;

	CDC_GetInterface(&interfaces);

#ifdef PLUGGABLE_USB_ENABLED
	PluggableUSB().getInterface(&interfaces);
    1610:	0e 94 0f 0a 	call	0x141e	; 0x141e <_Z12PluggableUSBv>

int PluggableUSB_::getInterface(uint8_t* interfaceCount)
{
	int sent = 0;
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
    1614:	dc 01       	movw	r26, r24
    1616:	12 96       	adiw	r26, 0x02	; 2
    1618:	0d 91       	ld	r16, X+
    161a:	1c 91       	ld	r17, X
    161c:	01 15       	cp	r16, r1
    161e:	11 05       	cpc	r17, r1
    1620:	89 f0       	breq	.+34     	; 0x1644 <_ZL14SendInterfacesv+0x54>
		int res = node->getInterface(interfaceCount);
    1622:	d8 01       	movw	r26, r16
    1624:	ed 91       	ld	r30, X+
    1626:	fc 91       	ld	r31, X
    1628:	02 80       	ldd	r0, Z+2	; 0x02
    162a:	f3 81       	ldd	r31, Z+3	; 0x03
    162c:	e0 2d       	mov	r30, r0
    162e:	be 01       	movw	r22, r28
    1630:	6f 5f       	subi	r22, 0xFF	; 255
    1632:	7f 4f       	sbci	r23, 0xFF	; 255
    1634:	c8 01       	movw	r24, r16
    1636:	09 95       	icall
		if (res < 0)
    1638:	97 fd       	sbrc	r25, 7
    163a:	04 c0       	rjmp	.+8      	; 0x1644 <_ZL14SendInterfacesv+0x54>

int PluggableUSB_::getInterface(uint8_t* interfaceCount)
{
	int sent = 0;
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
    163c:	f8 01       	movw	r30, r16
    163e:	00 85       	ldd	r16, Z+8	; 0x08
    1640:	11 85       	ldd	r17, Z+9	; 0x09
    1642:	ec cf       	rjmp	.-40     	; 0x161c <_ZL14SendInterfacesv+0x2c>
#endif

	return interfaces;
}
    1644:	89 81       	ldd	r24, Y+1	; 0x01
    1646:	0f 90       	pop	r0
    1648:	df 91       	pop	r29
    164a:	cf 91       	pop	r28
    164c:	1f 91       	pop	r17
    164e:	0f 91       	pop	r16
    1650:	08 95       	ret

00001652 <_ZL4RecvPVhh>:
	UEINTX = ~(1<<RXOUTI);
}

static inline void Recv(volatile u8* data, u8 count)
{
	while (count--)
    1652:	61 50       	subi	r22, 0x01	; 1
    1654:	30 f0       	brcs	.+12     	; 0x1662 <_ZL4RecvPVhh+0x10>
		*data++ = UEDATX;
    1656:	20 91 f1 00 	lds	r18, 0x00F1	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
    165a:	fc 01       	movw	r30, r24
    165c:	20 83       	st	Z, r18
    165e:	01 96       	adiw	r24, 0x01	; 1
    1660:	f8 cf       	rjmp	.-16     	; 0x1652 <_ZL4RecvPVhh>
	
	RXLED1;					// light the RX LED
    1662:	28 98       	cbi	0x05, 0	; 5
	RxLEDPulse = TX_RX_LED_PULSE_MS;	
    1664:	84 e6       	ldi	r24, 0x64	; 100
    1666:	80 93 88 05 	sts	0x0588, r24	; 0x800588 <RxLEDPulse>
}
    166a:	08 95       	ret

0000166c <micros>:
	return m;
}

unsigned long micros() {
	unsigned long m;
	uint8_t oldSREG = SREG, t;
    166c:	3f b7       	in	r19, 0x3f	; 63
	
	cli();
    166e:	f8 94       	cli
	m = timer0_overflow_count;
    1670:	80 91 2b 01 	lds	r24, 0x012B	; 0x80012b <timer0_overflow_count>
    1674:	90 91 2c 01 	lds	r25, 0x012C	; 0x80012c <timer0_overflow_count+0x1>
    1678:	a0 91 2d 01 	lds	r26, 0x012D	; 0x80012d <timer0_overflow_count+0x2>
    167c:	b0 91 2e 01 	lds	r27, 0x012E	; 0x80012e <timer0_overflow_count+0x3>
#if defined(TCNT0)
	t = TCNT0;
    1680:	26 b5       	in	r18, 0x26	; 38
#else
	#error TIMER 0 not defined
#endif

#ifdef TIFR0
	if ((TIFR0 & _BV(TOV0)) && (t < 255))
    1682:	a8 9b       	sbis	0x15, 0	; 21
    1684:	05 c0       	rjmp	.+10     	; 0x1690 <micros+0x24>
    1686:	2f 3f       	cpi	r18, 0xFF	; 255
    1688:	19 f0       	breq	.+6      	; 0x1690 <micros+0x24>
		m++;
    168a:	01 96       	adiw	r24, 0x01	; 1
    168c:	a1 1d       	adc	r26, r1
    168e:	b1 1d       	adc	r27, r1
#else
	if ((TIFR & _BV(TOV0)) && (t < 255))
		m++;
#endif

	SREG = oldSREG;
    1690:	3f bf       	out	0x3f, r19	; 63
	
	return ((m << 8) + t) * (64 / clockCyclesPerMicrosecond());
    1692:	ba 2f       	mov	r27, r26
    1694:	a9 2f       	mov	r26, r25
    1696:	98 2f       	mov	r25, r24
    1698:	88 27       	eor	r24, r24
    169a:	bc 01       	movw	r22, r24
    169c:	cd 01       	movw	r24, r26
    169e:	62 0f       	add	r22, r18
    16a0:	71 1d       	adc	r23, r1
    16a2:	81 1d       	adc	r24, r1
    16a4:	91 1d       	adc	r25, r1
    16a6:	42 e0       	ldi	r20, 0x02	; 2
    16a8:	66 0f       	add	r22, r22
    16aa:	77 1f       	adc	r23, r23
    16ac:	88 1f       	adc	r24, r24
    16ae:	99 1f       	adc	r25, r25
    16b0:	4a 95       	dec	r20
    16b2:	d1 f7       	brne	.-12     	; 0x16a8 <micros+0x3c>
}
    16b4:	08 95       	ret

000016b6 <delay>:

void delay(unsigned long ms)
{
    16b6:	8f 92       	push	r8
    16b8:	9f 92       	push	r9
    16ba:	af 92       	push	r10
    16bc:	bf 92       	push	r11
    16be:	cf 92       	push	r12
    16c0:	df 92       	push	r13
    16c2:	ef 92       	push	r14
    16c4:	ff 92       	push	r15
    16c6:	6b 01       	movw	r12, r22
    16c8:	7c 01       	movw	r14, r24
	uint32_t start = micros();
    16ca:	0e 94 36 0b 	call	0x166c	; 0x166c <micros>
    16ce:	4b 01       	movw	r8, r22
    16d0:	5c 01       	movw	r10, r24

	while (ms > 0) {
		yield();
		while ( ms > 0 && (micros() - start) >= 1000) {
    16d2:	c1 14       	cp	r12, r1
    16d4:	d1 04       	cpc	r13, r1
    16d6:	e1 04       	cpc	r14, r1
    16d8:	f1 04       	cpc	r15, r1
    16da:	b9 f0       	breq	.+46     	; 0x170a <delay+0x54>
    16dc:	0e 94 36 0b 	call	0x166c	; 0x166c <micros>
    16e0:	68 19       	sub	r22, r8
    16e2:	79 09       	sbc	r23, r9
    16e4:	8a 09       	sbc	r24, r10
    16e6:	9b 09       	sbc	r25, r11
    16e8:	68 3e       	cpi	r22, 0xE8	; 232
    16ea:	73 40       	sbci	r23, 0x03	; 3
    16ec:	81 05       	cpc	r24, r1
    16ee:	91 05       	cpc	r25, r1
    16f0:	80 f3       	brcs	.-32     	; 0x16d2 <delay+0x1c>
			ms--;
    16f2:	21 e0       	ldi	r18, 0x01	; 1
    16f4:	c2 1a       	sub	r12, r18
    16f6:	d1 08       	sbc	r13, r1
    16f8:	e1 08       	sbc	r14, r1
    16fa:	f1 08       	sbc	r15, r1
			start += 1000;
    16fc:	88 ee       	ldi	r24, 0xE8	; 232
    16fe:	88 0e       	add	r8, r24
    1700:	83 e0       	ldi	r24, 0x03	; 3
    1702:	98 1e       	adc	r9, r24
    1704:	a1 1c       	adc	r10, r1
    1706:	b1 1c       	adc	r11, r1
    1708:	e4 cf       	rjmp	.-56     	; 0x16d2 <delay+0x1c>
		}
	}
}
    170a:	ff 90       	pop	r15
    170c:	ef 90       	pop	r14
    170e:	df 90       	pop	r13
    1710:	cf 90       	pop	r12
    1712:	bf 90       	pop	r11
    1714:	af 90       	pop	r10
    1716:	9f 90       	pop	r9
    1718:	8f 90       	pop	r8
    171a:	08 95       	ret

0000171c <_ZN7Serial_5writeEPKhj>:
{
	return write(&c, 1);
}

size_t Serial_::write(const uint8_t *buffer, size_t size)
{
    171c:	8f 92       	push	r8
    171e:	9f 92       	push	r9
    1720:	af 92       	push	r10
    1722:	bf 92       	push	r11
    1724:	cf 92       	push	r12
    1726:	df 92       	push	r13
    1728:	ef 92       	push	r14
    172a:	ff 92       	push	r15
    172c:	0f 93       	push	r16
    172e:	1f 93       	push	r17
    1730:	cf 93       	push	r28
    1732:	df 93       	push	r29
    1734:	6c 01       	movw	r12, r24
    1736:	7b 01       	movw	r14, r22
    1738:	8a 01       	movw	r16, r20
	 the connection is closed are lost - just like with a UART. */
	
	// TODO - ZE - check behavior on different OSes and test what happens if an
	// open connection isn't broken cleanly (cable is yanked out, host dies
	// or locks up, or host virtual serial port hangs)
	if (_usbLineInfo.lineState > 0)	{
    173a:	80 91 0e 01 	lds	r24, 0x010E	; 0x80010e <_ZL12_usbLineInfo+0x7>
    173e:	88 23       	and	r24, r24
    1740:	09 f4       	brne	.+2      	; 0x1744 <_ZN7Serial_5writeEPKhj+0x28>
    1742:	5c c0       	rjmp	.+184    	; 0x17fc <_ZN7Serial_5writeEPKhj+0xe0>
}

//	Blocking Send of data to an endpoint
int USB_Send(u8 ep, const void* d, int len)
{
	if (!_usbConfiguration)
    1744:	80 91 89 05 	lds	r24, 0x0589	; 0x800589 <_usbConfiguration>
    1748:	88 23       	and	r24, r24
    174a:	09 f4       	brne	.+2      	; 0x174e <_ZN7Serial_5writeEPKhj+0x32>
    174c:	57 c0       	rjmp	.+174    	; 0x17fc <_ZN7Serial_5writeEPKhj+0xe0>
		return -1;

	if (_usbSuspendState & (1<<SUSPI)) {
    174e:	80 91 2b 05 	lds	r24, 0x052B	; 0x80052b <_usbSuspendState>
    1752:	80 ff       	sbrs	r24, 0
    1754:	05 c0       	rjmp	.+10     	; 0x1760 <_ZN7Serial_5writeEPKhj+0x44>
		//send a remote wakeup
		UDCON |= (1 << RMWKUP);
    1756:	80 91 e0 00 	lds	r24, 0x00E0	; 0x8000e0 <__DATA_REGION_ORIGIN__+0x80>
    175a:	82 60       	ori	r24, 0x02	; 2
    175c:	80 93 e0 00 	sts	0x00E0, r24	; 0x8000e0 <__DATA_REGION_ORIGIN__+0x80>
{
	return write(&c, 1);
}

size_t Serial_::write(const uint8_t *buffer, size_t size)
{
    1760:	e8 01       	movw	r28, r16
    1762:	b1 2c       	mov	r11, r1
    1764:	8a ef       	ldi	r24, 0xFA	; 250
    1766:	a8 2e       	mov	r10, r24
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    1768:	93 e0       	ldi	r25, 0x03	; 3
    176a:	89 2e       	mov	r8, r25
	UEINTX = 0x6B;	// FIFOCON=0 NAKINI=1 RWAL=1 NAKOUTI=0 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=1
}

static inline void ReleaseTX()
{
	UEINTX = 0x3A;	// FIFOCON=0 NAKINI=0 RWAL=1 NAKOUTI=1 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=0
    176c:	2a e3       	ldi	r18, 0x3A	; 58
    176e:	92 2e       	mov	r9, r18
	int r = len;
	const u8* data = (const u8*)d;
	u8 timeout = 250;		// 250ms timeout on send? TODO
	bool sendZlp = false;

	while (len || sendZlp)
    1770:	20 97       	sbiw	r28, 0x00	; 0
    1772:	11 f4       	brne	.+4      	; 0x1778 <_ZN7Serial_5writeEPKhj+0x5c>
    1774:	bb 20       	and	r11, r11
    1776:	d9 f1       	breq	.+118    	; 0x17ee <_ZN7Serial_5writeEPKhj+0xd2>
	{
		u8 n = USB_SendSpace(ep);
    1778:	0e 94 fe 09 	call	0x13fc	; 0x13fc <_Z13USB_SendSpaceh.constprop.3>
		if (n == 0)
    177c:	81 11       	cpse	r24, r1
    177e:	0a c0       	rjmp	.+20     	; 0x1794 <_ZN7Serial_5writeEPKhj+0x78>
		{
			if (!(--timeout))
    1780:	aa 94       	dec	r10
    1782:	aa 20       	and	r10, r10
    1784:	d9 f1       	breq	.+118    	; 0x17fc <_ZN7Serial_5writeEPKhj+0xe0>
				return -1;
			delay(1);
    1786:	61 e0       	ldi	r22, 0x01	; 1
    1788:	70 e0       	ldi	r23, 0x00	; 0
    178a:	80 e0       	ldi	r24, 0x00	; 0
    178c:	90 e0       	ldi	r25, 0x00	; 0
    178e:	0e 94 5b 0b 	call	0x16b6	; 0x16b6 <delay>
    1792:	ee cf       	rjmp	.-36     	; 0x1770 <_ZN7Serial_5writeEPKhj+0x54>
			continue;
		}

		if (n > len) {
    1794:	8c 17       	cp	r24, r28
    1796:	1d 06       	cpc	r1, r29
    1798:	11 f0       	breq	.+4      	; 0x179e <_ZN7Serial_5writeEPKhj+0x82>
    179a:	0c f0       	brlt	.+2      	; 0x179e <_ZN7Serial_5writeEPKhj+0x82>
			n = len;
    179c:	8c 2f       	mov	r24, r28
#define USB_RECV_TIMEOUT
class LockEP
{
	u8 _sreg;
public:
	LockEP(u8 ep) : _sreg(SREG)
    179e:	9f b7       	in	r25, 0x3f	; 63
	{
		cli();
    17a0:	f8 94       	cli
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    17a2:	80 92 e9 00 	sts	0x00E9, r8	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
	UECONX = (1<<STALLRQ) | (1<<EPEN);
}

static inline u8 ReadWriteAllowed()
{
	return UEINTX & (1<<RWAL);
    17a6:	20 91 e8 00 	lds	r18, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
		}

		{
			LockEP lock(ep);
			// Frame may have been released by the SOF interrupt handler
			if (!ReadWriteAllowed())
    17aa:	25 fd       	sbrc	r18, 5
    17ac:	02 c0       	rjmp	.+4      	; 0x17b2 <_ZN7Serial_5writeEPKhj+0x96>
		cli();
		SetEP(ep & 7);
	}
	~LockEP()
	{
		SREG = _sreg;
    17ae:	9f bf       	out	0x3f, r25	; 63
    17b0:	df cf       	rjmp	.-66     	; 0x1770 <_ZN7Serial_5writeEPKhj+0x54>
			LockEP lock(ep);
			// Frame may have been released by the SOF interrupt handler
			if (!ReadWriteAllowed())
				continue;

			len -= n;
    17b2:	28 2f       	mov	r18, r24
    17b4:	30 e0       	ldi	r19, 0x00	; 0
    17b6:	c2 1b       	sub	r28, r18
    17b8:	d3 0b       	sbc	r29, r19
    17ba:	f7 01       	movw	r30, r14
				while (n--)
					Send8(pgm_read_byte(data++));
			}
			else
			{
				while (n--)
    17bc:	81 50       	subi	r24, 0x01	; 1
    17be:	20 f0       	brcs	.+8      	; 0x17c8 <_ZN7Serial_5writeEPKhj+0xac>
					Send8(*data++);
    17c0:	41 91       	ld	r20, Z+
	return UEDATX;	
}

static inline void Send8(u8 d)
{
	UEDATX = d;
    17c2:	40 93 f1 00 	sts	0x00F1, r20	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
    17c6:	fa cf       	rjmp	.-12     	; 0x17bc <_ZN7Serial_5writeEPKhj+0xa0>
    17c8:	e2 0e       	add	r14, r18
    17ca:	f3 1e       	adc	r15, r19
			{
				while (n--)
					Send8(*data++);
			}

			if (sendZlp) {
    17cc:	bb 20       	and	r11, r11
    17ce:	21 f0       	breq	.+8      	; 0x17d8 <_ZN7Serial_5writeEPKhj+0xbc>
	UEINTX = 0x6B;	// FIFOCON=0 NAKINI=1 RWAL=1 NAKOUTI=0 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=1
}

static inline void ReleaseTX()
{
	UEINTX = 0x3A;	// FIFOCON=0 NAKINI=0 RWAL=1 NAKOUTI=1 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=0
    17d0:	90 92 e8 00 	sts	0x00E8, r9	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
			if (sendZlp) {
				ReleaseTX();
				sendZlp = false;
			} else if (!ReadWriteAllowed()) { // ...release if buffer is full...
				ReleaseTX();
				if (len == 0) sendZlp = true;
    17d4:	b1 2c       	mov	r11, r1
    17d6:	eb cf       	rjmp	.-42     	; 0x17ae <_ZN7Serial_5writeEPKhj+0x92>
	UECONX = (1<<STALLRQ) | (1<<EPEN);
}

static inline u8 ReadWriteAllowed()
{
	return UEINTX & (1<<RWAL);
    17d8:	80 91 e8 00 	lds	r24, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
			}

			if (sendZlp) {
				ReleaseTX();
				sendZlp = false;
			} else if (!ReadWriteAllowed()) { // ...release if buffer is full...
    17dc:	85 fd       	sbrc	r24, 5
    17de:	e7 cf       	rjmp	.-50     	; 0x17ae <_ZN7Serial_5writeEPKhj+0x92>
	UEINTX = 0x6B;	// FIFOCON=0 NAKINI=1 RWAL=1 NAKOUTI=0 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=1
}

static inline void ReleaseTX()
{
	UEINTX = 0x3A;	// FIFOCON=0 NAKINI=0 RWAL=1 NAKOUTI=1 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=0
    17e0:	90 92 e8 00 	sts	0x00E8, r9	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
			if (sendZlp) {
				ReleaseTX();
				sendZlp = false;
			} else if (!ReadWriteAllowed()) { // ...release if buffer is full...
				ReleaseTX();
				if (len == 0) sendZlp = true;
    17e4:	bb 24       	eor	r11, r11
    17e6:	b3 94       	inc	r11
    17e8:	20 97       	sbiw	r28, 0x00	; 0
    17ea:	09 f3       	breq	.-62     	; 0x17ae <_ZN7Serial_5writeEPKhj+0x92>
    17ec:	f3 cf       	rjmp	.-26     	; 0x17d4 <_ZN7Serial_5writeEPKhj+0xb8>
				// XXX: TRANSFER_RELEASE is never used can be removed?
				ReleaseTX();
			}
		}
	}
	TXLED1;					// light the TX LED
    17ee:	5d 98       	cbi	0x0b, 5	; 11
	TxLEDPulse = TX_RX_LED_PULSE_MS;
    17f0:	84 e6       	ldi	r24, 0x64	; 100
    17f2:	80 93 2a 05 	sts	0x052A, r24	; 0x80052a <TxLEDPulse>
	// TODO - ZE - check behavior on different OSes and test what happens if an
	// open connection isn't broken cleanly (cable is yanked out, host dies
	// or locks up, or host virtual serial port hangs)
	if (_usbLineInfo.lineState > 0)	{
		int r = USB_Send(CDC_TX,buffer,size);
		if (r > 0) {
    17f6:	10 16       	cp	r1, r16
    17f8:	11 06       	cpc	r1, r17
    17fa:	3c f0       	brlt	.+14     	; 0x180a <_ZN7Serial_5writeEPKhj+0xee>
  private:
    int write_error;
    size_t printNumber(unsigned long, uint8_t);
    size_t printFloat(double, uint8_t);
  protected:
    void setWriteError(int err = 1) { write_error = err; }
    17fc:	81 e0       	ldi	r24, 0x01	; 1
    17fe:	90 e0       	ldi	r25, 0x00	; 0
    1800:	f6 01       	movw	r30, r12
    1802:	93 83       	std	Z+3, r25	; 0x03
    1804:	82 83       	std	Z+2, r24	; 0x02
			return r;
		} else {
			setWriteError();
			return 0;
    1806:	10 e0       	ldi	r17, 0x00	; 0
    1808:	00 e0       	ldi	r16, 0x00	; 0
		}
	}
	setWriteError();
	return 0;
}
    180a:	c8 01       	movw	r24, r16
    180c:	df 91       	pop	r29
    180e:	cf 91       	pop	r28
    1810:	1f 91       	pop	r17
    1812:	0f 91       	pop	r16
    1814:	ff 90       	pop	r15
    1816:	ef 90       	pop	r14
    1818:	df 90       	pop	r13
    181a:	cf 90       	pop	r12
    181c:	bf 90       	pop	r11
    181e:	af 90       	pop	r10
    1820:	9f 90       	pop	r9
    1822:	8f 90       	pop	r8
    1824:	08 95       	ret

00001826 <_ZN12Arduboy2Core15digitalWriteRGBEhh.part.2>:
void Arduboy2Core::digitalWriteRGB(uint8_t red, uint8_t green, uint8_t blue)
{
#ifdef ARDUBOY_10
  bitWrite(RED_LED_PORT, RED_LED_BIT, red);
  bitWrite(GREEN_LED_PORT, GREEN_LED_BIT, green);
  bitWrite(BLUE_LED_PORT, BLUE_LED_BIT, blue);
    1826:	2d 9a       	sbi	0x05, 5	; 5
  // only blue on DevKit
  (void)red;    // parameter unused
  (void)green;  // parameter unused
  bitWrite(BLUE_LED_PORT, BLUE_LED_BIT, blue);
#endif
}
    1828:	08 95       	ret

0000182a <_ZN12Arduboy2Core10delayShortEj>:
}

// delay in ms with 16 bit duration
void Arduboy2Core::delayShort(uint16_t ms)
{
  delay((unsigned long) ms);
    182a:	bc 01       	movw	r22, r24
    182c:	90 e0       	ldi	r25, 0x00	; 0
    182e:	80 e0       	ldi	r24, 0x00	; 0
    1830:	0c 94 5b 0b 	jmp	0x16b6	; 0x16b6 <delay>

00001834 <_ZN12Arduboy2Base7pressedEh>:
{
  return sBuffer;
}

bool Arduboy2Base::pressed(uint8_t buttons)
{
    1834:	28 2f       	mov	r18, r24
{
  uint8_t buttons;

#ifdef ARDUBOY_10
  // up, right, left, down
  buttons = ((~PINF) &
    1836:	9f b1       	in	r25, 0x0f	; 15
    1838:	90 95       	com	r25
    183a:	90 7f       	andi	r25, 0xF0	; 240
              (_BV(UP_BUTTON_BIT) | _BV(RIGHT_BUTTON_BIT) |
               _BV(LEFT_BUTTON_BIT) | _BV(DOWN_BUTTON_BIT)));
  // A
  if (bitRead(A_BUTTON_PORTIN, A_BUTTON_BIT) == 0) { buttons |= A_BUTTON; }
    183c:	66 9b       	sbis	0x0c, 6	; 12
    183e:	98 60       	ori	r25, 0x08	; 8
  // B
  if (bitRead(B_BUTTON_PORTIN, B_BUTTON_BIT) == 0) { buttons |= B_BUTTON; }
    1840:	1c 9b       	sbis	0x03, 4	; 3
    1842:	94 60       	ori	r25, 0x04	; 4
  return (buttonsState() & buttons) == buttons;
    1844:	92 23       	and	r25, r18
    1846:	81 e0       	ldi	r24, 0x01	; 1
    1848:	92 13       	cpse	r25, r18
    184a:	80 e0       	ldi	r24, 0x00	; 0
}
    184c:	08 95       	ret

0000184e <_ZN12Arduboy2Base9drawPixelEiih>:
  fillScreen(BLACK);
}

void Arduboy2Base::drawPixel(int16_t x, int16_t y, uint8_t color)
{
  if (x < 0 || x > (WIDTH-1) || y < 0 || y > (HEIGHT-1))
    184e:	80 38       	cpi	r24, 0x80	; 128
    1850:	91 05       	cpc	r25, r1
    1852:	bc f4       	brge	.+46     	; 0x1882 <_ZN12Arduboy2Base9drawPixelEiih+0x34>
    1854:	60 34       	cpi	r22, 0x40	; 64
    1856:	71 05       	cpc	r23, r1
    1858:	a4 f4       	brge	.+40     	; 0x1882 <_ZN12Arduboy2Base9drawPixelEiih+0x34>
      [bit]          "=&d" (bit),          // upper register (LDI)
      [y]            "+d"  (y)             // upper register (ANDI), must be writable
    : [width_offset] "r"   ((uint8_t)(WIDTH/8)),
      [x]            "r"   ((uint8_t)x)
    :
  );
    185a:	20 e1       	ldi	r18, 0x10	; 16
    185c:	91 e0       	ldi	r25, 0x01	; 1
    185e:	61 fd       	sbrc	r22, 1
    1860:	94 e0       	ldi	r25, 0x04	; 4
    1862:	60 fd       	sbrc	r22, 0
    1864:	99 0f       	add	r25, r25
    1866:	62 fd       	sbrc	r22, 2
    1868:	92 95       	swap	r25
    186a:	68 7f       	andi	r22, 0xF8	; 248
    186c:	26 9f       	mul	r18, r22
    186e:	d0 01       	movw	r26, r0
    1870:	11 24       	eor	r1, r1
    1872:	a8 0f       	add	r26, r24
  uint8_t data = sBuffer[row_offset] | bit;
    1874:	a6 57       	subi	r26, 0x76	; 118
    1876:	ba 4f       	sbci	r27, 0xFA	; 250
    1878:	8c 91       	ld	r24, X
  if (!(color & _BV(0))) data ^= bit;
    187a:	44 23       	and	r20, r20
    187c:	19 f0       	breq	.+6      	; 0x1884 <_ZN12Arduboy2Base9drawPixelEiih+0x36>
      [y]            "+d"  (y)             // upper register (ANDI), must be writable
    : [width_offset] "r"   ((uint8_t)(WIDTH/8)),
      [x]            "r"   ((uint8_t)x)
    :
  );
  uint8_t data = sBuffer[row_offset] | bit;
    187e:	89 2b       	or	r24, r25
  if (!(color & _BV(0))) data ^= bit;
  sBuffer[row_offset] = data;
    1880:	8c 93       	st	X, r24
}
    1882:	08 95       	ret
    1884:	90 95       	com	r25
    1886:	89 23       	and	r24, r25
    1888:	fb cf       	rjmp	.-10     	; 0x1880 <_ZN12Arduboy2Base9drawPixelEiih+0x32>

0000188a <_Z10DrawTileAthii.constprop.15>:
    188a:	af 92       	push	r10
    188c:	bf 92       	push	r11
    188e:	cf 92       	push	r12
    1890:	df 92       	push	r13
    1892:	ef 92       	push	r14
    1894:	ff 92       	push	r15
    1896:	0f 93       	push	r16
    1898:	1f 93       	push	r17
    189a:	cf 93       	push	r28
    189c:	df 93       	push	r29
    189e:	28 e0       	ldi	r18, 0x08	; 8
    18a0:	82 9f       	mul	r24, r18
    18a2:	c0 01       	movw	r24, r0
    18a4:	11 24       	eor	r1, r1
    18a6:	c6 2f       	mov	r28, r22
    18a8:	10 e0       	ldi	r17, 0x00	; 0
    18aa:	00 e0       	ldi	r16, 0x00	; 0
    18ac:	9c 01       	movw	r18, r24
    18ae:	25 58       	subi	r18, 0x85	; 133
    18b0:	36 4f       	sbci	r19, 0xF6	; 246
    18b2:	69 01       	movw	r12, r18
    18b4:	f6 01       	movw	r30, r12
    18b6:	e0 0f       	add	r30, r16
    18b8:	f1 1f       	adc	r31, r17
    18ba:	d4 91       	lpm	r29, Z
    18bc:	87 e3       	ldi	r24, 0x37	; 55
    18be:	e8 2e       	mov	r14, r24
    18c0:	f1 2c       	mov	r15, r1
    18c2:	ac 2e       	mov	r10, r28
    18c4:	b1 2c       	mov	r11, r1
    18c6:	4d 2f       	mov	r20, r29
    18c8:	41 70       	andi	r20, 0x01	; 1
    18ca:	d6 95       	lsr	r29
    18cc:	b7 01       	movw	r22, r14
    18ce:	c5 01       	movw	r24, r10
    18d0:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    18d4:	3f ef       	ldi	r19, 0xFF	; 255
    18d6:	e3 1a       	sub	r14, r19
    18d8:	f3 0a       	sbc	r15, r19
    18da:	8f e3       	ldi	r24, 0x3F	; 63
    18dc:	e8 16       	cp	r14, r24
    18de:	f1 04       	cpc	r15, r1
    18e0:	91 f7       	brne	.-28     	; 0x18c6 <_Z10DrawTileAthii.constprop.15+0x3c>
    18e2:	0f 5f       	subi	r16, 0xFF	; 255
    18e4:	1f 4f       	sbci	r17, 0xFF	; 255
    18e6:	cf 5f       	subi	r28, 0xFF	; 255
    18e8:	08 30       	cpi	r16, 0x08	; 8
    18ea:	11 05       	cpc	r17, r1
    18ec:	19 f7       	brne	.-58     	; 0x18b4 <_Z10DrawTileAthii.constprop.15+0x2a>
    18ee:	df 91       	pop	r29
    18f0:	cf 91       	pop	r28
    18f2:	1f 91       	pop	r17
    18f4:	0f 91       	pop	r16
    18f6:	ff 90       	pop	r15
    18f8:	ef 90       	pop	r14
    18fa:	df 90       	pop	r13
    18fc:	cf 90       	pop	r12
    18fe:	bf 90       	pop	r11
    1900:	af 90       	pop	r10
    1902:	08 95       	ret

00001904 <_Z14IsTerrainClearii>:
    1904:	9b 01       	movw	r18, r22
    1906:	43 e0       	ldi	r20, 0x03	; 3
    1908:	35 95       	asr	r19
    190a:	27 95       	ror	r18
    190c:	4a 95       	dec	r20
    190e:	e1 f7       	brne	.-8      	; 0x1908 <_Z14IsTerrainClearii+0x4>
    1910:	46 e0       	ldi	r20, 0x06	; 6
    1912:	42 9f       	mul	r20, r18
    1914:	f0 01       	movw	r30, r0
    1916:	43 9f       	mul	r20, r19
    1918:	f0 0d       	add	r31, r0
    191a:	11 24       	eor	r1, r1
    191c:	9c 01       	movw	r18, r24
    191e:	53 e0       	ldi	r21, 0x03	; 3
    1920:	35 95       	asr	r19
    1922:	27 95       	ror	r18
    1924:	5a 95       	dec	r21
    1926:	e1 f7       	brne	.-8      	; 0x1920 <_Z14IsTerrainClearii+0x1c>
    1928:	e2 0f       	add	r30, r18
    192a:	f3 1f       	adc	r31, r19
    192c:	73 e0       	ldi	r23, 0x03	; 3
    192e:	ee 0f       	add	r30, r30
    1930:	ff 1f       	adc	r31, r31
    1932:	7a 95       	dec	r23
    1934:	e1 f7       	brne	.-8      	; 0x192e <_Z14IsTerrainClearii+0x2a>
    1936:	87 70       	andi	r24, 0x07	; 7
    1938:	8e 0f       	add	r24, r30
    193a:	9f 2f       	mov	r25, r31
    193c:	91 1d       	adc	r25, r1
    193e:	67 70       	andi	r22, 0x07	; 7
    1940:	21 e0       	ldi	r18, 0x01	; 1
    1942:	30 e0       	ldi	r19, 0x00	; 0
    1944:	01 c0       	rjmp	.+2      	; 0x1948 <_Z14IsTerrainClearii+0x44>
    1946:	22 0f       	add	r18, r18
    1948:	6a 95       	dec	r22
    194a:	ea f7       	brpl	.-6      	; 0x1946 <_Z14IsTerrainClearii+0x42>
    194c:	40 91 81 03 	lds	r20, 0x0381	; 0x800381 <State+0x248>
    1950:	ec e9       	ldi	r30, 0x9C	; 156
    1952:	f5 e0       	ldi	r31, 0x05	; 5
    1954:	41 30       	cpi	r20, 0x01	; 1
    1956:	31 f0       	breq	.+12     	; 0x1964 <_Z14IsTerrainClearii+0x60>
    1958:	ec e7       	ldi	r30, 0x7C	; 124
    195a:	f4 e0       	ldi	r31, 0x04	; 4
    195c:	42 30       	cpi	r20, 0x02	; 2
    195e:	11 f0       	breq	.+4      	; 0x1964 <_Z14IsTerrainClearii+0x60>
    1960:	ec eb       	ldi	r30, 0xBC	; 188
    1962:	f6 e0       	ldi	r31, 0x06	; 6
    1964:	e8 0f       	add	r30, r24
    1966:	f9 1f       	adc	r31, r25
    1968:	e4 91       	lpm	r30, Z
    196a:	e2 23       	and	r30, r18
    196c:	81 e0       	ldi	r24, 0x01	; 1
    196e:	09 f4       	brne	.+2      	; 0x1972 <_Z14IsTerrainClearii+0x6e>
    1970:	80 e0       	ldi	r24, 0x00	; 0
    1972:	08 95       	ret

00001974 <_Z19HandleMovementInputh>:
    1974:	80 ff       	sbrs	r24, 0
    1976:	07 c0       	rjmp	.+14     	; 0x1986 <_Z19HandleMovementInputh+0x12>
    1978:	90 91 1e 05 	lds	r25, 0x051E	; 0x80051e <UIState+0x4>
    197c:	99 23       	and	r25, r25
    197e:	19 f0       	breq	.+6      	; 0x1986 <_Z19HandleMovementInputh+0x12>
    1980:	91 50       	subi	r25, 0x01	; 1
    1982:	90 93 1e 05 	sts	0x051E, r25	; 0x80051e <UIState+0x4>
    1986:	82 ff       	sbrs	r24, 2
    1988:	07 c0       	rjmp	.+14     	; 0x1998 <_Z19HandleMovementInputh+0x24>
    198a:	90 91 1f 05 	lds	r25, 0x051F	; 0x80051f <UIState+0x5>
    198e:	99 23       	and	r25, r25
    1990:	19 f0       	breq	.+6      	; 0x1998 <_Z19HandleMovementInputh+0x24>
    1992:	91 50       	subi	r25, 0x01	; 1
    1994:	90 93 1f 05 	sts	0x051F, r25	; 0x80051f <UIState+0x5>
    1998:	81 ff       	sbrs	r24, 1
    199a:	07 c0       	rjmp	.+14     	; 0x19aa <_Z19HandleMovementInputh+0x36>
    199c:	90 91 1e 05 	lds	r25, 0x051E	; 0x80051e <UIState+0x4>
    19a0:	9f 32       	cpi	r25, 0x2F	; 47
    19a2:	18 f4       	brcc	.+6      	; 0x19aa <_Z19HandleMovementInputh+0x36>
    19a4:	9f 5f       	subi	r25, 0xFF	; 255
    19a6:	90 93 1e 05 	sts	0x051E, r25	; 0x80051e <UIState+0x4>
    19aa:	83 ff       	sbrs	r24, 3
    19ac:	07 c0       	rjmp	.+14     	; 0x19bc <_Z19HandleMovementInputh+0x48>
    19ae:	80 91 1f 05 	lds	r24, 0x051F	; 0x80051f <UIState+0x5>
    19b2:	8f 32       	cpi	r24, 0x2F	; 47
    19b4:	18 f4       	brcc	.+6      	; 0x19bc <_Z19HandleMovementInputh+0x48>
    19b6:	8f 5f       	subi	r24, 0xFF	; 255
    19b8:	80 93 1f 05 	sts	0x051F, r24	; 0x80051f <UIState+0x5>
    19bc:	08 95       	ret

000019be <_Z13WrapMenuInputhh>:
    19be:	82 ff       	sbrs	r24, 2
    19c0:	07 c0       	rjmp	.+14     	; 0x19d0 <_Z13WrapMenuInputhh+0x12>
    19c2:	90 91 21 05 	lds	r25, 0x0521	; 0x800521 <UIState+0x7>
    19c6:	99 23       	and	r25, r25
    19c8:	79 f0       	breq	.+30     	; 0x19e8 <_Z13WrapMenuInputhh+0x2a>
    19ca:	91 50       	subi	r25, 0x01	; 1
    19cc:	90 93 21 05 	sts	0x0521, r25	; 0x800521 <UIState+0x7>
    19d0:	83 ff       	sbrs	r24, 3
    19d2:	10 c0       	rjmp	.+32     	; 0x19f4 <_Z13WrapMenuInputhh+0x36>
    19d4:	80 91 21 05 	lds	r24, 0x0521	; 0x800521 <UIState+0x7>
    19d8:	61 50       	subi	r22, 0x01	; 1
    19da:	77 0b       	sbc	r23, r23
    19dc:	86 17       	cp	r24, r22
    19de:	17 06       	cpc	r1, r23
    19e0:	31 f4       	brne	.+12     	; 0x19ee <_Z13WrapMenuInputhh+0x30>
    19e2:	10 92 21 05 	sts	0x0521, r1	; 0x800521 <UIState+0x7>
    19e6:	08 95       	ret
    19e8:	9f ef       	ldi	r25, 0xFF	; 255
    19ea:	96 0f       	add	r25, r22
    19ec:	ef cf       	rjmp	.-34     	; 0x19cc <_Z13WrapMenuInputhh+0xe>
    19ee:	8f 5f       	subi	r24, 0xFF	; 255
    19f0:	80 93 21 05 	sts	0x0521, r24	; 0x800521 <UIState+0x7>
    19f4:	08 95       	ret

000019f6 <_Z24GetBuildingBrushLocation12BuildingTypePhS0_>:
    19f6:	cf 93       	push	r28
    19f8:	df 93       	push	r29
    19fa:	eb 01       	movw	r28, r22
    19fc:	da 01       	movw	r26, r20
    19fe:	25 e0       	ldi	r18, 0x05	; 5
    1a00:	ac 01       	movw	r20, r24
    1a02:	24 9f       	mul	r18, r20
    1a04:	c0 01       	movw	r24, r0
    1a06:	25 9f       	mul	r18, r21
    1a08:	90 0d       	add	r25, r0
    1a0a:	11 24       	eor	r1, r1
    1a0c:	fc 01       	movw	r30, r24
    1a0e:	ec 50       	subi	r30, 0x0C	; 12
    1a10:	f8 4f       	sbci	r31, 0xF8	; 248
    1a12:	24 91       	lpm	r18, Z
    1a14:	8b 50       	subi	r24, 0x0B	; 11
    1a16:	98 4f       	sbci	r25, 0xF8	; 248
    1a18:	fc 01       	movw	r30, r24
    1a1a:	84 91       	lpm	r24, Z
    1a1c:	90 91 1e 05 	lds	r25, 0x051E	; 0x80051e <UIState+0x4>
    1a20:	99 23       	and	r25, r25
    1a22:	11 f1       	breq	.+68     	; 0x1a68 <_Z24GetBuildingBrushLocation12BuildingTypePhS0_+0x72>
    1a24:	40 e3       	ldi	r20, 0x30	; 48
    1a26:	50 e0       	ldi	r21, 0x00	; 0
    1a28:	42 1b       	sub	r20, r18
    1a2a:	51 09       	sbc	r21, r1
    1a2c:	e9 2f       	mov	r30, r25
    1a2e:	e1 50       	subi	r30, 0x01	; 1
    1a30:	ff 0b       	sbc	r31, r31
    1a32:	91 50       	subi	r25, 0x01	; 1
    1a34:	4e 17       	cp	r20, r30
    1a36:	5f 07       	cpc	r21, r31
    1a38:	14 f4       	brge	.+4      	; 0x1a3e <_Z24GetBuildingBrushLocation12BuildingTypePhS0_+0x48>
    1a3a:	90 e3       	ldi	r25, 0x30	; 48
    1a3c:	92 1b       	sub	r25, r18
    1a3e:	98 83       	st	Y, r25
    1a40:	90 91 1f 05 	lds	r25, 0x051F	; 0x80051f <UIState+0x5>
    1a44:	99 23       	and	r25, r25
    1a46:	a9 f0       	breq	.+42     	; 0x1a72 <_Z24GetBuildingBrushLocation12BuildingTypePhS0_+0x7c>
    1a48:	20 e3       	ldi	r18, 0x30	; 48
    1a4a:	30 e0       	ldi	r19, 0x00	; 0
    1a4c:	28 1b       	sub	r18, r24
    1a4e:	31 09       	sbc	r19, r1
    1a50:	69 2f       	mov	r22, r25
    1a52:	61 50       	subi	r22, 0x01	; 1
    1a54:	77 0b       	sbc	r23, r23
    1a56:	26 17       	cp	r18, r22
    1a58:	37 07       	cpc	r19, r23
    1a5a:	44 f4       	brge	.+16     	; 0x1a6c <_Z24GetBuildingBrushLocation12BuildingTypePhS0_+0x76>
    1a5c:	90 e3       	ldi	r25, 0x30	; 48
    1a5e:	98 1b       	sub	r25, r24
    1a60:	9c 93       	st	X, r25
    1a62:	df 91       	pop	r29
    1a64:	cf 91       	pop	r28
    1a66:	08 95       	ret
    1a68:	18 82       	st	Y, r1
    1a6a:	ea cf       	rjmp	.-44     	; 0x1a40 <_Z24GetBuildingBrushLocation12BuildingTypePhS0_+0x4a>
    1a6c:	91 50       	subi	r25, 0x01	; 1
    1a6e:	9c 93       	st	X, r25
    1a70:	f8 cf       	rjmp	.-16     	; 0x1a62 <_Z24GetBuildingBrushLocation12BuildingTypePhS0_+0x6c>
    1a72:	1c 92       	st	X, r1
    1a74:	f6 cf       	rjmp	.-20     	; 0x1a62 <_Z24GetBuildingBrushLocation12BuildingTypePhS0_+0x6c>

00001a76 <_Z7GetRandv>:
    1a76:	20 91 00 01 	lds	r18, 0x0100	; 0x800100 <__data_start>
    1a7a:	30 91 01 01 	lds	r19, 0x0101	; 0x800101 <__data_start+0x1>
    1a7e:	c9 01       	movw	r24, r18
    1a80:	96 95       	lsr	r25
    1a82:	87 95       	ror	r24
    1a84:	20 ff       	sbrs	r18, 0
    1a86:	02 c0       	rjmp	.+4      	; 0x1a8c <_Z7GetRandv+0x16>
    1a88:	24 eb       	ldi	r18, 0xB4	; 180
    1a8a:	92 27       	eor	r25, r18
    1a8c:	90 93 01 01 	sts	0x0101, r25	; 0x800101 <__data_start+0x1>
    1a90:	80 93 00 01 	sts	0x0100, r24	; 0x800100 <__data_start>
    1a94:	01 97       	sbiw	r24, 0x01	; 1
    1a96:	08 95       	ret

00001a98 <_Z8DrawCharc>:
    1a98:	2f 92       	push	r2
    1a9a:	3f 92       	push	r3
    1a9c:	4f 92       	push	r4
    1a9e:	5f 92       	push	r5
    1aa0:	6f 92       	push	r6
    1aa2:	7f 92       	push	r7
    1aa4:	8f 92       	push	r8
    1aa6:	9f 92       	push	r9
    1aa8:	af 92       	push	r10
    1aaa:	bf 92       	push	r11
    1aac:	cf 92       	push	r12
    1aae:	df 92       	push	r13
    1ab0:	ef 92       	push	r14
    1ab2:	ff 92       	push	r15
    1ab4:	0f 93       	push	r16
    1ab6:	1f 93       	push	r17
    1ab8:	cf 93       	push	r28
    1aba:	df 93       	push	r29
    1abc:	cd b7       	in	r28, 0x3d	; 61
    1abe:	de b7       	in	r29, 0x3e	; 62
    1ac0:	62 97       	sbiw	r28, 0x12	; 18
    1ac2:	0f b6       	in	r0, 0x3f	; 63
    1ac4:	f8 94       	cli
    1ac6:	de bf       	out	0x3e, r29	; 62
    1ac8:	0f be       	out	0x3f, r0	; 63
    1aca:	cd bf       	out	0x3d, r28	; 61
    1acc:	80 52       	subi	r24, 0x20	; 32
    1ace:	90 e0       	ldi	r25, 0x00	; 0
    1ad0:	88 0f       	add	r24, r24
    1ad2:	99 1f       	adc	r25, r25
    1ad4:	fc 01       	movw	r30, r24
    1ad6:	ea 57       	subi	r30, 0x7A	; 122
    1ad8:	fe 4f       	sbci	r31, 0xFE	; 254
    1ada:	44 91       	lpm	r20, Z
    1adc:	fc 01       	movw	r30, r24
    1ade:	e9 57       	subi	r30, 0x79	; 121
    1ae0:	fe 4f       	sbci	r31, 0xFE	; 254
    1ae2:	74 90       	lpm	r7, Z
    1ae4:	00 91 28 01 	lds	r16, 0x0128	; 0x800128 <__data_end>
    1ae8:	20 91 29 01 	lds	r18, 0x0129	; 0x800129 <_ZL6PrintX>
    1aec:	2d 83       	std	Y+5, r18	; 0x05
    1aee:	66 24       	eor	r6, r6
    1af0:	63 94       	inc	r6
    1af2:	46 fb       	bst	r20, 6
    1af4:	22 24       	eor	r2, r2
    1af6:	20 f8       	bld	r2, 0
    1af8:	26 24       	eor	r2, r6
    1afa:	2e 82       	std	Y+6, r2	; 0x06
    1afc:	45 fb       	bst	r20, 5
    1afe:	33 24       	eor	r3, r3
    1b00:	30 f8       	bld	r3, 0
    1b02:	36 24       	eor	r3, r6
    1b04:	3f 82       	std	Y+7, r3	; 0x07
    1b06:	44 fb       	bst	r20, 4
    1b08:	44 24       	eor	r4, r4
    1b0a:	40 f8       	bld	r4, 0
    1b0c:	46 24       	eor	r4, r6
    1b0e:	48 86       	std	Y+8, r4	; 0x08
    1b10:	43 fb       	bst	r20, 3
    1b12:	55 24       	eor	r5, r5
    1b14:	50 f8       	bld	r5, 0
    1b16:	56 24       	eor	r5, r6
    1b18:	59 86       	std	Y+9, r5	; 0x09
    1b1a:	42 fb       	bst	r20, 2
    1b1c:	88 27       	eor	r24, r24
    1b1e:	80 f9       	bld	r24, 0
    1b20:	86 25       	eor	r24, r6
    1b22:	8a 87       	std	Y+10, r24	; 0x0a
    1b24:	41 fb       	bst	r20, 1
    1b26:	88 27       	eor	r24, r24
    1b28:	80 f9       	bld	r24, 0
    1b2a:	86 25       	eor	r24, r6
    1b2c:	8b 87       	std	Y+11, r24	; 0x0b
    1b2e:	72 fa       	bst	r7, 2
    1b30:	88 27       	eor	r24, r24
    1b32:	80 f9       	bld	r24, 0
    1b34:	86 25       	eor	r24, r6
    1b36:	8c 87       	std	Y+12, r24	; 0x0c
    1b38:	85 e0       	ldi	r24, 0x05	; 5
    1b3a:	80 0f       	add	r24, r16
    1b3c:	48 2e       	mov	r4, r24
    1b3e:	51 2c       	mov	r5, r1
    1b40:	84 e0       	ldi	r24, 0x04	; 4
    1b42:	80 0f       	add	r24, r16
    1b44:	28 2e       	mov	r2, r24
    1b46:	31 2c       	mov	r3, r1
    1b48:	83 e0       	ldi	r24, 0x03	; 3
    1b4a:	80 0f       	add	r24, r16
    1b4c:	28 2f       	mov	r18, r24
    1b4e:	30 e0       	ldi	r19, 0x00	; 0
    1b50:	3a 83       	std	Y+2, r19	; 0x02
    1b52:	29 83       	std	Y+1, r18	; 0x01
    1b54:	82 e0       	ldi	r24, 0x02	; 2
    1b56:	80 0f       	add	r24, r16
    1b58:	28 2f       	mov	r18, r24
    1b5a:	30 e0       	ldi	r19, 0x00	; 0
    1b5c:	3c 83       	std	Y+4, r19	; 0x04
    1b5e:	2b 83       	std	Y+3, r18	; 0x03
    1b60:	88 24       	eor	r8, r8
    1b62:	83 94       	inc	r8
    1b64:	80 0e       	add	r8, r16
    1b66:	91 2c       	mov	r9, r1
    1b68:	8d 81       	ldd	r24, Y+5	; 0x05
    1b6a:	8d 5f       	subi	r24, 0xFD	; 253
    1b6c:	e8 2e       	mov	r14, r24
    1b6e:	f1 2c       	mov	r15, r1
    1b70:	cd 80       	ldd	r12, Y+5	; 0x05
    1b72:	c3 94       	inc	r12
    1b74:	c3 94       	inc	r12
    1b76:	d1 2c       	mov	r13, r1
    1b78:	ad 80       	ldd	r10, Y+5	; 0x05
    1b7a:	a3 94       	inc	r10
    1b7c:	b1 2c       	mov	r11, r1
    1b7e:	10 e0       	ldi	r17, 0x00	; 0
    1b80:	9d 81       	ldd	r25, Y+5	; 0x05
    1b82:	89 2f       	mov	r24, r25
    1b84:	90 e0       	ldi	r25, 0x00	; 0
    1b86:	9a 8b       	std	Y+18, r25	; 0x12
    1b88:	89 8b       	std	Y+17, r24	; 0x11
    1b8a:	40 95       	com	r20
    1b8c:	4d 83       	std	Y+5, r20	; 0x05
    1b8e:	27 2d       	mov	r18, r7
    1b90:	22 95       	swap	r18
    1b92:	26 95       	lsr	r18
    1b94:	26 95       	lsr	r18
    1b96:	23 70       	andi	r18, 0x03	; 3
    1b98:	2d 87       	std	Y+13, r18	; 0x0d
    1b9a:	37 2d       	mov	r19, r7
    1b9c:	32 95       	swap	r19
    1b9e:	36 95       	lsr	r19
    1ba0:	37 70       	andi	r19, 0x07	; 7
    1ba2:	3e 87       	std	Y+14, r19	; 0x0e
    1ba4:	87 2d       	mov	r24, r7
    1ba6:	82 95       	swap	r24
    1ba8:	8f 70       	andi	r24, 0x0F	; 15
    1baa:	8f 87       	std	Y+15, r24	; 0x0f
    1bac:	97 2d       	mov	r25, r7
    1bae:	96 95       	lsr	r25
    1bb0:	96 95       	lsr	r25
    1bb2:	96 95       	lsr	r25
    1bb4:	98 8b       	std	Y+16, r25	; 0x10
    1bb6:	70 fe       	sbrs	r7, 0
    1bb8:	b1 c0       	rjmp	.+354    	; 0x1d1c <_Z8DrawCharc+0x284>
    1bba:	41 e0       	ldi	r20, 0x01	; 1
    1bbc:	b8 01       	movw	r22, r16
    1bbe:	89 89       	ldd	r24, Y+17	; 0x11
    1bc0:	9a 89       	ldd	r25, Y+18	; 0x12
    1bc2:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1bc6:	41 e0       	ldi	r20, 0x01	; 1
    1bc8:	b8 01       	movw	r22, r16
    1bca:	c5 01       	movw	r24, r10
    1bcc:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1bd0:	41 e0       	ldi	r20, 0x01	; 1
    1bd2:	b8 01       	movw	r22, r16
    1bd4:	c6 01       	movw	r24, r12
    1bd6:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1bda:	41 e0       	ldi	r20, 0x01	; 1
    1bdc:	b8 01       	movw	r22, r16
    1bde:	c7 01       	movw	r24, r14
    1be0:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1be4:	4d 81       	ldd	r20, Y+5	; 0x05
    1be6:	44 1f       	adc	r20, r20
    1be8:	44 27       	eor	r20, r20
    1bea:	44 1f       	adc	r20, r20
    1bec:	b4 01       	movw	r22, r8
    1bee:	89 89       	ldd	r24, Y+17	; 0x11
    1bf0:	9a 89       	ldd	r25, Y+18	; 0x12
    1bf2:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1bf6:	4e 81       	ldd	r20, Y+6	; 0x06
    1bf8:	b4 01       	movw	r22, r8
    1bfa:	c5 01       	movw	r24, r10
    1bfc:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1c00:	4f 81       	ldd	r20, Y+7	; 0x07
    1c02:	b4 01       	movw	r22, r8
    1c04:	c6 01       	movw	r24, r12
    1c06:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1c0a:	41 e0       	ldi	r20, 0x01	; 1
    1c0c:	b4 01       	movw	r22, r8
    1c0e:	c7 01       	movw	r24, r14
    1c10:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1c14:	48 85       	ldd	r20, Y+8	; 0x08
    1c16:	6b 81       	ldd	r22, Y+3	; 0x03
    1c18:	7c 81       	ldd	r23, Y+4	; 0x04
    1c1a:	89 89       	ldd	r24, Y+17	; 0x11
    1c1c:	9a 89       	ldd	r25, Y+18	; 0x12
    1c1e:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1c22:	49 85       	ldd	r20, Y+9	; 0x09
    1c24:	6b 81       	ldd	r22, Y+3	; 0x03
    1c26:	7c 81       	ldd	r23, Y+4	; 0x04
    1c28:	c5 01       	movw	r24, r10
    1c2a:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1c2e:	4a 85       	ldd	r20, Y+10	; 0x0a
    1c30:	6b 81       	ldd	r22, Y+3	; 0x03
    1c32:	7c 81       	ldd	r23, Y+4	; 0x04
    1c34:	c6 01       	movw	r24, r12
    1c36:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1c3a:	41 e0       	ldi	r20, 0x01	; 1
    1c3c:	6b 81       	ldd	r22, Y+3	; 0x03
    1c3e:	7c 81       	ldd	r23, Y+4	; 0x04
    1c40:	c7 01       	movw	r24, r14
    1c42:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1c46:	4b 85       	ldd	r20, Y+11	; 0x0b
    1c48:	69 81       	ldd	r22, Y+1	; 0x01
    1c4a:	7a 81       	ldd	r23, Y+2	; 0x02
    1c4c:	89 89       	ldd	r24, Y+17	; 0x11
    1c4e:	9a 89       	ldd	r25, Y+18	; 0x12
    1c50:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1c54:	4d 81       	ldd	r20, Y+5	; 0x05
    1c56:	41 70       	andi	r20, 0x01	; 1
    1c58:	69 81       	ldd	r22, Y+1	; 0x01
    1c5a:	7a 81       	ldd	r23, Y+2	; 0x02
    1c5c:	c5 01       	movw	r24, r10
    1c5e:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1c62:	71 fa       	bst	r7, 1
    1c64:	44 27       	eor	r20, r20
    1c66:	40 f9       	bld	r20, 0
    1c68:	46 25       	eor	r20, r6
    1c6a:	69 81       	ldd	r22, Y+1	; 0x01
    1c6c:	7a 81       	ldd	r23, Y+2	; 0x02
    1c6e:	c6 01       	movw	r24, r12
    1c70:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1c74:	41 e0       	ldi	r20, 0x01	; 1
    1c76:	69 81       	ldd	r22, Y+1	; 0x01
    1c78:	7a 81       	ldd	r23, Y+2	; 0x02
    1c7a:	c7 01       	movw	r24, r14
    1c7c:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1c80:	47 2d       	mov	r20, r7
    1c82:	40 95       	com	r20
    1c84:	44 1f       	adc	r20, r20
    1c86:	44 27       	eor	r20, r20
    1c88:	44 1f       	adc	r20, r20
    1c8a:	b1 01       	movw	r22, r2
    1c8c:	89 89       	ldd	r24, Y+17	; 0x11
    1c8e:	9a 89       	ldd	r25, Y+18	; 0x12
    1c90:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1c94:	4d 85       	ldd	r20, Y+13	; 0x0d
    1c96:	46 25       	eor	r20, r6
    1c98:	41 70       	andi	r20, 0x01	; 1
    1c9a:	b1 01       	movw	r22, r2
    1c9c:	c5 01       	movw	r24, r10
    1c9e:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1ca2:	4e 85       	ldd	r20, Y+14	; 0x0e
    1ca4:	46 25       	eor	r20, r6
    1ca6:	41 70       	andi	r20, 0x01	; 1
    1ca8:	b1 01       	movw	r22, r2
    1caa:	c6 01       	movw	r24, r12
    1cac:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1cb0:	41 e0       	ldi	r20, 0x01	; 1
    1cb2:	b1 01       	movw	r22, r2
    1cb4:	c7 01       	movw	r24, r14
    1cb6:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1cba:	4f 85       	ldd	r20, Y+15	; 0x0f
    1cbc:	46 25       	eor	r20, r6
    1cbe:	41 70       	andi	r20, 0x01	; 1
    1cc0:	b2 01       	movw	r22, r4
    1cc2:	89 89       	ldd	r24, Y+17	; 0x11
    1cc4:	9a 89       	ldd	r25, Y+18	; 0x12
    1cc6:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1cca:	48 89       	ldd	r20, Y+16	; 0x10
    1ccc:	46 25       	eor	r20, r6
    1cce:	41 70       	andi	r20, 0x01	; 1
    1cd0:	b2 01       	movw	r22, r4
    1cd2:	c5 01       	movw	r24, r10
    1cd4:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1cd8:	4c 85       	ldd	r20, Y+12	; 0x0c
    1cda:	b2 01       	movw	r22, r4
    1cdc:	c6 01       	movw	r24, r12
    1cde:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1ce2:	41 e0       	ldi	r20, 0x01	; 1
    1ce4:	b2 01       	movw	r22, r4
    1ce6:	c7 01       	movw	r24, r14
    1ce8:	62 96       	adiw	r28, 0x12	; 18
    1cea:	0f b6       	in	r0, 0x3f	; 63
    1cec:	f8 94       	cli
    1cee:	de bf       	out	0x3e, r29	; 62
    1cf0:	0f be       	out	0x3f, r0	; 63
    1cf2:	cd bf       	out	0x3d, r28	; 61
    1cf4:	df 91       	pop	r29
    1cf6:	cf 91       	pop	r28
    1cf8:	1f 91       	pop	r17
    1cfa:	0f 91       	pop	r16
    1cfc:	ff 90       	pop	r15
    1cfe:	ef 90       	pop	r14
    1d00:	df 90       	pop	r13
    1d02:	cf 90       	pop	r12
    1d04:	bf 90       	pop	r11
    1d06:	af 90       	pop	r10
    1d08:	9f 90       	pop	r9
    1d0a:	8f 90       	pop	r8
    1d0c:	7f 90       	pop	r7
    1d0e:	6f 90       	pop	r6
    1d10:	5f 90       	pop	r5
    1d12:	4f 90       	pop	r4
    1d14:	3f 90       	pop	r3
    1d16:	2f 90       	pop	r2
    1d18:	0c 94 27 0c 	jmp	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1d1c:	4d 81       	ldd	r20, Y+5	; 0x05
    1d1e:	44 1f       	adc	r20, r20
    1d20:	44 27       	eor	r20, r20
    1d22:	44 1f       	adc	r20, r20
    1d24:	b8 01       	movw	r22, r16
    1d26:	89 89       	ldd	r24, Y+17	; 0x11
    1d28:	9a 89       	ldd	r25, Y+18	; 0x12
    1d2a:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1d2e:	4e 81       	ldd	r20, Y+6	; 0x06
    1d30:	b8 01       	movw	r22, r16
    1d32:	c5 01       	movw	r24, r10
    1d34:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1d38:	4f 81       	ldd	r20, Y+7	; 0x07
    1d3a:	b8 01       	movw	r22, r16
    1d3c:	c6 01       	movw	r24, r12
    1d3e:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1d42:	41 e0       	ldi	r20, 0x01	; 1
    1d44:	b8 01       	movw	r22, r16
    1d46:	c7 01       	movw	r24, r14
    1d48:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1d4c:	48 85       	ldd	r20, Y+8	; 0x08
    1d4e:	b4 01       	movw	r22, r8
    1d50:	89 89       	ldd	r24, Y+17	; 0x11
    1d52:	9a 89       	ldd	r25, Y+18	; 0x12
    1d54:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1d58:	49 85       	ldd	r20, Y+9	; 0x09
    1d5a:	b4 01       	movw	r22, r8
    1d5c:	c5 01       	movw	r24, r10
    1d5e:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1d62:	4a 85       	ldd	r20, Y+10	; 0x0a
    1d64:	b4 01       	movw	r22, r8
    1d66:	c6 01       	movw	r24, r12
    1d68:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1d6c:	41 e0       	ldi	r20, 0x01	; 1
    1d6e:	b4 01       	movw	r22, r8
    1d70:	c7 01       	movw	r24, r14
    1d72:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1d76:	4b 85       	ldd	r20, Y+11	; 0x0b
    1d78:	6b 81       	ldd	r22, Y+3	; 0x03
    1d7a:	7c 81       	ldd	r23, Y+4	; 0x04
    1d7c:	89 89       	ldd	r24, Y+17	; 0x11
    1d7e:	9a 89       	ldd	r25, Y+18	; 0x12
    1d80:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1d84:	4d 81       	ldd	r20, Y+5	; 0x05
    1d86:	41 70       	andi	r20, 0x01	; 1
    1d88:	6b 81       	ldd	r22, Y+3	; 0x03
    1d8a:	7c 81       	ldd	r23, Y+4	; 0x04
    1d8c:	c5 01       	movw	r24, r10
    1d8e:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1d92:	71 fa       	bst	r7, 1
    1d94:	44 27       	eor	r20, r20
    1d96:	40 f9       	bld	r20, 0
    1d98:	46 25       	eor	r20, r6
    1d9a:	6b 81       	ldd	r22, Y+3	; 0x03
    1d9c:	7c 81       	ldd	r23, Y+4	; 0x04
    1d9e:	c6 01       	movw	r24, r12
    1da0:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1da4:	41 e0       	ldi	r20, 0x01	; 1
    1da6:	6b 81       	ldd	r22, Y+3	; 0x03
    1da8:	7c 81       	ldd	r23, Y+4	; 0x04
    1daa:	c7 01       	movw	r24, r14
    1dac:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1db0:	47 2d       	mov	r20, r7
    1db2:	40 95       	com	r20
    1db4:	44 1f       	adc	r20, r20
    1db6:	44 27       	eor	r20, r20
    1db8:	44 1f       	adc	r20, r20
    1dba:	69 81       	ldd	r22, Y+1	; 0x01
    1dbc:	7a 81       	ldd	r23, Y+2	; 0x02
    1dbe:	89 89       	ldd	r24, Y+17	; 0x11
    1dc0:	9a 89       	ldd	r25, Y+18	; 0x12
    1dc2:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1dc6:	4d 85       	ldd	r20, Y+13	; 0x0d
    1dc8:	46 25       	eor	r20, r6
    1dca:	41 70       	andi	r20, 0x01	; 1
    1dcc:	69 81       	ldd	r22, Y+1	; 0x01
    1dce:	7a 81       	ldd	r23, Y+2	; 0x02
    1dd0:	c5 01       	movw	r24, r10
    1dd2:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1dd6:	4e 85       	ldd	r20, Y+14	; 0x0e
    1dd8:	46 25       	eor	r20, r6
    1dda:	41 70       	andi	r20, 0x01	; 1
    1ddc:	69 81       	ldd	r22, Y+1	; 0x01
    1dde:	7a 81       	ldd	r23, Y+2	; 0x02
    1de0:	c6 01       	movw	r24, r12
    1de2:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1de6:	41 e0       	ldi	r20, 0x01	; 1
    1de8:	69 81       	ldd	r22, Y+1	; 0x01
    1dea:	7a 81       	ldd	r23, Y+2	; 0x02
    1dec:	c7 01       	movw	r24, r14
    1dee:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1df2:	4f 85       	ldd	r20, Y+15	; 0x0f
    1df4:	46 25       	eor	r20, r6
    1df6:	41 70       	andi	r20, 0x01	; 1
    1df8:	b1 01       	movw	r22, r2
    1dfa:	89 89       	ldd	r24, Y+17	; 0x11
    1dfc:	9a 89       	ldd	r25, Y+18	; 0x12
    1dfe:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1e02:	48 89       	ldd	r20, Y+16	; 0x10
    1e04:	46 25       	eor	r20, r6
    1e06:	41 70       	andi	r20, 0x01	; 1
    1e08:	b1 01       	movw	r22, r2
    1e0a:	c5 01       	movw	r24, r10
    1e0c:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1e10:	4c 85       	ldd	r20, Y+12	; 0x0c
    1e12:	b1 01       	movw	r22, r2
    1e14:	c6 01       	movw	r24, r12
    1e16:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1e1a:	41 e0       	ldi	r20, 0x01	; 1
    1e1c:	b1 01       	movw	r22, r2
    1e1e:	c7 01       	movw	r24, r14
    1e20:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1e24:	41 e0       	ldi	r20, 0x01	; 1
    1e26:	b2 01       	movw	r22, r4
    1e28:	89 89       	ldd	r24, Y+17	; 0x11
    1e2a:	9a 89       	ldd	r25, Y+18	; 0x12
    1e2c:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1e30:	41 e0       	ldi	r20, 0x01	; 1
    1e32:	b2 01       	movw	r22, r4
    1e34:	c5 01       	movw	r24, r10
    1e36:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    1e3a:	41 e0       	ldi	r20, 0x01	; 1
    1e3c:	4e cf       	rjmp	.-356    	; 0x1cda <_Z8DrawCharc+0x242>

00001e3e <_Z12DrawCurrencylhh>:
    1e3e:	2f 92       	push	r2
    1e40:	3f 92       	push	r3
    1e42:	4f 92       	push	r4
    1e44:	5f 92       	push	r5
    1e46:	6f 92       	push	r6
    1e48:	7f 92       	push	r7
    1e4a:	8f 92       	push	r8
    1e4c:	9f 92       	push	r9
    1e4e:	af 92       	push	r10
    1e50:	bf 92       	push	r11
    1e52:	cf 92       	push	r12
    1e54:	df 92       	push	r13
    1e56:	ef 92       	push	r14
    1e58:	ff 92       	push	r15
    1e5a:	0f 93       	push	r16
    1e5c:	1f 93       	push	r17
    1e5e:	cf 93       	push	r28
    1e60:	df 93       	push	r29
    1e62:	00 d0       	rcall	.+0      	; 0x1e64 <_Z12DrawCurrencylhh+0x26>
    1e64:	00 d0       	rcall	.+0      	; 0x1e66 <_Z12DrawCurrencylhh+0x28>
    1e66:	1f 92       	push	r1
    1e68:	cd b7       	in	r28, 0x3d	; 61
    1e6a:	de b7       	in	r29, 0x3e	; 62
    1e6c:	4b 01       	movw	r8, r22
    1e6e:	5c 01       	movw	r10, r24
    1e70:	49 83       	std	Y+1, r20	; 0x01
    1e72:	40 93 29 01 	sts	0x0129, r20	; 0x800129 <_ZL6PrintX>
    1e76:	20 93 28 01 	sts	0x0128, r18	; 0x800128 <__data_end>
    1e7a:	81 14       	cp	r8, r1
    1e7c:	91 04       	cpc	r9, r1
    1e7e:	a1 04       	cpc	r10, r1
    1e80:	b1 04       	cpc	r11, r1
    1e82:	31 f5       	brne	.+76     	; 0x1ed0 <_Z12DrawCurrencylhh+0x92>
    1e84:	80 e3       	ldi	r24, 0x30	; 48
    1e86:	0e 94 4c 0d 	call	0x1a98	; 0x1a98 <_Z8DrawCharc>
    1e8a:	89 81       	ldd	r24, Y+1	; 0x01
    1e8c:	84 50       	subi	r24, 0x04	; 4
    1e8e:	80 93 29 01 	sts	0x0129, r24	; 0x800129 <_ZL6PrintX>
    1e92:	81 e0       	ldi	r24, 0x01	; 1
    1e94:	8d 83       	std	Y+5, r24	; 0x05
    1e96:	84 e2       	ldi	r24, 0x24	; 36
    1e98:	0e 94 4c 0d 	call	0x1a98	; 0x1a98 <_Z8DrawCharc>
    1e9c:	8d 81       	ldd	r24, Y+5	; 0x05
    1e9e:	8f 5f       	subi	r24, 0xFF	; 255
    1ea0:	0f 90       	pop	r0
    1ea2:	0f 90       	pop	r0
    1ea4:	0f 90       	pop	r0
    1ea6:	0f 90       	pop	r0
    1ea8:	0f 90       	pop	r0
    1eaa:	df 91       	pop	r29
    1eac:	cf 91       	pop	r28
    1eae:	1f 91       	pop	r17
    1eb0:	0f 91       	pop	r16
    1eb2:	ff 90       	pop	r15
    1eb4:	ef 90       	pop	r14
    1eb6:	df 90       	pop	r13
    1eb8:	cf 90       	pop	r12
    1eba:	bf 90       	pop	r11
    1ebc:	af 90       	pop	r10
    1ebe:	9f 90       	pop	r9
    1ec0:	8f 90       	pop	r8
    1ec2:	7f 90       	pop	r7
    1ec4:	6f 90       	pop	r6
    1ec6:	5f 90       	pop	r5
    1ec8:	4f 90       	pop	r4
    1eca:	3f 90       	pop	r3
    1ecc:	2f 90       	pop	r2
    1ece:	08 95       	ret
    1ed0:	7c 01       	movw	r14, r24
    1ed2:	6b 01       	movw	r12, r22
    1ed4:	b7 fe       	sbrs	r11, 7
    1ed6:	07 c0       	rjmp	.+14     	; 0x1ee6 <_Z12DrawCurrencylhh+0xa8>
    1ed8:	cc 24       	eor	r12, r12
    1eda:	dd 24       	eor	r13, r13
    1edc:	76 01       	movw	r14, r12
    1ede:	c8 18       	sub	r12, r8
    1ee0:	d9 08       	sbc	r13, r9
    1ee2:	ea 08       	sbc	r14, r10
    1ee4:	fb 08       	sbc	r15, r11
    1ee6:	03 e0       	ldi	r16, 0x03	; 3
    1ee8:	10 e0       	ldi	r17, 0x00	; 0
    1eea:	31 2c       	mov	r3, r1
    1eec:	8a e0       	ldi	r24, 0x0A	; 10
    1eee:	48 2e       	mov	r4, r24
    1ef0:	51 2c       	mov	r5, r1
    1ef2:	61 2c       	mov	r6, r1
    1ef4:	71 2c       	mov	r7, r1
    1ef6:	c7 01       	movw	r24, r14
    1ef8:	b6 01       	movw	r22, r12
    1efa:	a3 01       	movw	r20, r6
    1efc:	92 01       	movw	r18, r4
    1efe:	0e 94 db 2d 	call	0x5bb6	; 0x5bb6 <__divmodsi4>
    1f02:	22 2e       	mov	r2, r18
    1f04:	39 83       	std	Y+1, r19	; 0x01
    1f06:	4a 83       	std	Y+2, r20	; 0x02
    1f08:	5b 83       	std	Y+3, r21	; 0x03
    1f0a:	80 e3       	ldi	r24, 0x30	; 48
    1f0c:	86 0f       	add	r24, r22
    1f0e:	0e 94 4c 0d 	call	0x1a98	; 0x1a98 <_Z8DrawCharc>
    1f12:	80 91 29 01 	lds	r24, 0x0129	; 0x800129 <_ZL6PrintX>
    1f16:	8c 83       	std	Y+4, r24	; 0x04
    1f18:	84 50       	subi	r24, 0x04	; 4
    1f1a:	80 93 29 01 	sts	0x0129, r24	; 0x800129 <_ZL6PrintX>
    1f1e:	81 e0       	ldi	r24, 0x01	; 1
    1f20:	83 0d       	add	r24, r3
    1f22:	8d 83       	std	Y+5, r24	; 0x05
    1f24:	c2 2c       	mov	r12, r2
    1f26:	d9 80       	ldd	r13, Y+1	; 0x01
    1f28:	ea 80       	ldd	r14, Y+2	; 0x02
    1f2a:	fb 80       	ldd	r15, Y+3	; 0x03
    1f2c:	01 50       	subi	r16, 0x01	; 1
    1f2e:	11 09       	sbc	r17, r1
    1f30:	c1 14       	cp	r12, r1
    1f32:	d1 04       	cpc	r13, r1
    1f34:	e1 04       	cpc	r14, r1
    1f36:	f1 04       	cpc	r15, r1
    1f38:	69 f4       	brne	.+26     	; 0x1f54 <_Z12DrawCurrencylhh+0x116>
    1f3a:	b7 fe       	sbrs	r11, 7
    1f3c:	ac cf       	rjmp	.-168    	; 0x1e96 <_Z12DrawCurrencylhh+0x58>
    1f3e:	8d e2       	ldi	r24, 0x2D	; 45
    1f40:	0e 94 4c 0d 	call	0x1a98	; 0x1a98 <_Z8DrawCharc>
    1f44:	8c 81       	ldd	r24, Y+4	; 0x04
    1f46:	88 50       	subi	r24, 0x08	; 8
    1f48:	80 93 29 01 	sts	0x0129, r24	; 0x800129 <_ZL6PrintX>
    1f4c:	33 94       	inc	r3
    1f4e:	33 94       	inc	r3
    1f50:	3d 82       	std	Y+5, r3	; 0x05
    1f52:	a1 cf       	rjmp	.-190    	; 0x1e96 <_Z12DrawCurrencylhh+0x58>
    1f54:	01 15       	cp	r16, r1
    1f56:	11 05       	cpc	r17, r1
    1f58:	61 f4       	brne	.+24     	; 0x1f72 <_Z12DrawCurrencylhh+0x134>
    1f5a:	8c e2       	ldi	r24, 0x2C	; 44
    1f5c:	0e 94 4c 0d 	call	0x1a98	; 0x1a98 <_Z8DrawCharc>
    1f60:	8c 81       	ldd	r24, Y+4	; 0x04
    1f62:	88 50       	subi	r24, 0x08	; 8
    1f64:	80 93 29 01 	sts	0x0129, r24	; 0x800129 <_ZL6PrintX>
    1f68:	33 94       	inc	r3
    1f6a:	33 94       	inc	r3
    1f6c:	3d 82       	std	Y+5, r3	; 0x05
    1f6e:	03 e0       	ldi	r16, 0x03	; 3
    1f70:	10 e0       	ldi	r17, 0x00	; 0
    1f72:	3d 80       	ldd	r3, Y+5	; 0x05
    1f74:	c0 cf       	rjmp	.-128    	; 0x1ef6 <_Z12DrawCurrencylhh+0xb8>

00001f76 <_Z7DrawIntihh>:
    1f76:	cf 92       	push	r12
    1f78:	df 92       	push	r13
    1f7a:	ef 92       	push	r14
    1f7c:	ff 92       	push	r15
    1f7e:	0f 93       	push	r16
    1f80:	1f 93       	push	r17
    1f82:	cf 93       	push	r28
    1f84:	df 93       	push	r29
    1f86:	00 d0       	rcall	.+0      	; 0x1f88 <_Z7DrawIntihh+0x12>
    1f88:	00 d0       	rcall	.+0      	; 0x1f8a <_Z7DrawIntihh+0x14>
    1f8a:	1f 92       	push	r1
    1f8c:	cd b7       	in	r28, 0x3d	; 61
    1f8e:	de b7       	in	r29, 0x3e	; 62
    1f90:	8c 01       	movw	r16, r24
    1f92:	f6 2e       	mov	r15, r22
    1f94:	60 93 29 01 	sts	0x0129, r22	; 0x800129 <_ZL6PrintX>
    1f98:	40 93 28 01 	sts	0x0128, r20	; 0x800128 <__data_end>
    1f9c:	00 97       	sbiw	r24, 0x00	; 0
    1f9e:	81 f4       	brne	.+32     	; 0x1fc0 <_Z7DrawIntihh+0x4a>
    1fa0:	80 e3       	ldi	r24, 0x30	; 48
    1fa2:	0f 90       	pop	r0
    1fa4:	0f 90       	pop	r0
    1fa6:	0f 90       	pop	r0
    1fa8:	0f 90       	pop	r0
    1faa:	0f 90       	pop	r0
    1fac:	df 91       	pop	r29
    1fae:	cf 91       	pop	r28
    1fb0:	1f 91       	pop	r17
    1fb2:	0f 91       	pop	r16
    1fb4:	ff 90       	pop	r15
    1fb6:	ef 90       	pop	r14
    1fb8:	df 90       	pop	r13
    1fba:	cf 90       	pop	r12
    1fbc:	0c 94 4c 0d 	jmp	0x1a98	; 0x1a98 <_Z8DrawCharc>
    1fc0:	97 ff       	sbrs	r25, 7
    1fc2:	07 c0       	rjmp	.+14     	; 0x1fd2 <_Z7DrawIntihh+0x5c>
    1fc4:	8d e2       	ldi	r24, 0x2D	; 45
    1fc6:	0e 94 4c 0d 	call	0x1a98	; 0x1a98 <_Z8DrawCharc>
    1fca:	84 e0       	ldi	r24, 0x04	; 4
    1fcc:	8f 0d       	add	r24, r15
    1fce:	80 93 29 01 	sts	0x0129, r24	; 0x800129 <_ZL6PrintX>
    1fd2:	ce 01       	movw	r24, r28
    1fd4:	01 96       	adiw	r24, 0x01	; 1
    1fd6:	7c 01       	movw	r14, r24
    1fd8:	fc 01       	movw	r30, r24
    1fda:	30 e0       	ldi	r19, 0x00	; 0
    1fdc:	20 e0       	ldi	r18, 0x00	; 0
    1fde:	8a e0       	ldi	r24, 0x0A	; 10
    1fe0:	c8 2e       	mov	r12, r24
    1fe2:	d1 2c       	mov	r13, r1
    1fe4:	2f 5f       	subi	r18, 0xFF	; 255
    1fe6:	3f 4f       	sbci	r19, 0xFF	; 255
    1fe8:	c8 01       	movw	r24, r16
    1fea:	b6 01       	movw	r22, r12
    1fec:	0e 94 3f 2e 	call	0x5c7e	; 0x5c7e <__divmodhi4>
    1ff0:	80 5d       	subi	r24, 0xD0	; 208
    1ff2:	81 93       	st	Z+, r24
    1ff4:	8b 01       	movw	r16, r22
    1ff6:	25 30       	cpi	r18, 0x05	; 5
    1ff8:	31 05       	cpc	r19, r1
    1ffa:	19 f0       	breq	.+6      	; 0x2002 <_Z7DrawIntihh+0x8c>
    1ffc:	01 15       	cp	r16, r1
    1ffe:	11 05       	cpc	r17, r1
    2000:	89 f7       	brne	.-30     	; 0x1fe4 <_Z7DrawIntihh+0x6e>
    2002:	87 01       	movw	r16, r14
    2004:	02 0f       	add	r16, r18
    2006:	13 1f       	adc	r17, r19
    2008:	e0 16       	cp	r14, r16
    200a:	f1 06       	cpc	r15, r17
    200c:	59 f0       	breq	.+22     	; 0x2024 <_Z7DrawIntihh+0xae>
    200e:	f8 01       	movw	r30, r16
    2010:	82 91       	ld	r24, -Z
    2012:	8f 01       	movw	r16, r30
    2014:	0e 94 4c 0d 	call	0x1a98	; 0x1a98 <_Z8DrawCharc>
    2018:	80 91 29 01 	lds	r24, 0x0129	; 0x800129 <_ZL6PrintX>
    201c:	8c 5f       	subi	r24, 0xFC	; 252
    201e:	80 93 29 01 	sts	0x0129, r24	; 0x800129 <_ZL6PrintX>
    2022:	f2 cf       	rjmp	.-28     	; 0x2008 <_Z7DrawIntihh+0x92>
    2024:	0f 90       	pop	r0
    2026:	0f 90       	pop	r0
    2028:	0f 90       	pop	r0
    202a:	0f 90       	pop	r0
    202c:	0f 90       	pop	r0
    202e:	df 91       	pop	r29
    2030:	cf 91       	pop	r28
    2032:	1f 91       	pop	r17
    2034:	0f 91       	pop	r16
    2036:	ff 90       	pop	r15
    2038:	ef 90       	pop	r14
    203a:	df 90       	pop	r13
    203c:	cf 90       	pop	r12
    203e:	08 95       	ret

00002040 <_Z10DrawStringPKchh>:
    2040:	cf 93       	push	r28
    2042:	df 93       	push	r29
    2044:	60 93 29 01 	sts	0x0129, r22	; 0x800129 <_ZL6PrintX>
    2048:	40 93 28 01 	sts	0x0128, r20	; 0x800128 <__data_end>
    204c:	ec 01       	movw	r28, r24
    204e:	fe 01       	movw	r30, r28
    2050:	84 91       	lpm	r24, Z
    2052:	21 96       	adiw	r28, 0x01	; 1
    2054:	88 23       	and	r24, r24
    2056:	41 f0       	breq	.+16     	; 0x2068 <_Z10DrawStringPKchh+0x28>
    2058:	0e 94 4c 0d 	call	0x1a98	; 0x1a98 <_Z8DrawCharc>
    205c:	80 91 29 01 	lds	r24, 0x0129	; 0x800129 <_ZL6PrintX>
    2060:	8c 5f       	subi	r24, 0xFC	; 252
    2062:	80 93 29 01 	sts	0x0129, r24	; 0x800129 <_ZL6PrintX>
    2066:	f3 cf       	rjmp	.-26     	; 0x204e <_Z10DrawStringPKchh+0xe>
    2068:	df 91       	pop	r29
    206a:	cf 91       	pop	r28
    206c:	08 95       	ret

0000206e <_Z8DrawRecthhhhh>:
    206e:	4f 92       	push	r4
    2070:	5f 92       	push	r5
    2072:	6f 92       	push	r6
    2074:	7f 92       	push	r7
    2076:	8f 92       	push	r8
    2078:	9f 92       	push	r9
    207a:	af 92       	push	r10
    207c:	bf 92       	push	r11
    207e:	cf 92       	push	r12
    2080:	df 92       	push	r13
    2082:	ef 92       	push	r14
    2084:	ff 92       	push	r15
    2086:	0f 93       	push	r16
    2088:	1f 93       	push	r17
    208a:	cf 93       	push	r28
    208c:	df 93       	push	r29
    208e:	c8 2f       	mov	r28, r24
    2090:	e6 2e       	mov	r14, r22
    2092:	d4 2f       	mov	r29, r20
    2094:	12 2f       	mov	r17, r18
    2096:	b1 2c       	mov	r11, r1
    2098:	a1 2c       	mov	r10, r1
    209a:	64 2e       	mov	r6, r20
    209c:	71 2c       	mov	r7, r1
    209e:	86 2e       	mov	r8, r22
    20a0:	91 2c       	mov	r9, r1
    20a2:	cc 24       	eor	r12, r12
    20a4:	ca 94       	dec	r12
    20a6:	c2 0e       	add	r12, r18
    20a8:	c6 0e       	add	r12, r22
    20aa:	d1 2c       	mov	r13, r1
    20ac:	a6 14       	cp	r10, r6
    20ae:	b7 04       	cpc	r11, r7
    20b0:	8c f4       	brge	.+34     	; 0x20d4 <_Z8DrawRecthhhhh+0x66>
    20b2:	4c 2e       	mov	r4, r28
    20b4:	4a 0c       	add	r4, r10
    20b6:	51 2c       	mov	r5, r1
    20b8:	40 2f       	mov	r20, r16
    20ba:	b4 01       	movw	r22, r8
    20bc:	c2 01       	movw	r24, r4
    20be:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    20c2:	40 2f       	mov	r20, r16
    20c4:	b6 01       	movw	r22, r12
    20c6:	c2 01       	movw	r24, r4
    20c8:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    20cc:	8f ef       	ldi	r24, 0xFF	; 255
    20ce:	a8 1a       	sub	r10, r24
    20d0:	b8 0a       	sbc	r11, r24
    20d2:	ec cf       	rjmp	.-40     	; 0x20ac <_Z8DrawRecthhhhh+0x3e>
    20d4:	cc 24       	eor	r12, r12
    20d6:	c3 94       	inc	r12
    20d8:	d1 2c       	mov	r13, r1
    20da:	81 2f       	mov	r24, r17
    20dc:	81 50       	subi	r24, 0x01	; 1
    20de:	99 0b       	sbc	r25, r25
    20e0:	5c 01       	movw	r10, r24
    20e2:	e3 94       	inc	r14
    20e4:	8e 2d       	mov	r24, r14
    20e6:	81 50       	subi	r24, 0x01	; 1
    20e8:	99 0b       	sbc	r25, r25
    20ea:	7c 01       	movw	r14, r24
    20ec:	6c 2e       	mov	r6, r28
    20ee:	71 2c       	mov	r7, r1
    20f0:	c1 50       	subi	r28, 0x01	; 1
    20f2:	dc 0f       	add	r29, r28
    20f4:	cd 2f       	mov	r28, r29
    20f6:	d0 e0       	ldi	r29, 0x00	; 0
    20f8:	ca 14       	cp	r12, r10
    20fa:	db 04       	cpc	r13, r11
    20fc:	8c f4       	brge	.+34     	; 0x2120 <_Z8DrawRecthhhhh+0xb2>
    20fe:	47 01       	movw	r8, r14
    2100:	8c 0c       	add	r8, r12
    2102:	9d 1c       	adc	r9, r13
    2104:	40 2f       	mov	r20, r16
    2106:	b4 01       	movw	r22, r8
    2108:	c3 01       	movw	r24, r6
    210a:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    210e:	40 2f       	mov	r20, r16
    2110:	b4 01       	movw	r22, r8
    2112:	ce 01       	movw	r24, r28
    2114:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    2118:	9f ef       	ldi	r25, 0xFF	; 255
    211a:	c9 1a       	sub	r12, r25
    211c:	d9 0a       	sbc	r13, r25
    211e:	ec cf       	rjmp	.-40     	; 0x20f8 <_Z8DrawRecthhhhh+0x8a>
    2120:	df 91       	pop	r29
    2122:	cf 91       	pop	r28
    2124:	1f 91       	pop	r17
    2126:	0f 91       	pop	r16
    2128:	ff 90       	pop	r15
    212a:	ef 90       	pop	r14
    212c:	df 90       	pop	r13
    212e:	cf 90       	pop	r12
    2130:	bf 90       	pop	r11
    2132:	af 90       	pop	r10
    2134:	9f 90       	pop	r9
    2136:	8f 90       	pop	r8
    2138:	7f 90       	pop	r7
    213a:	6f 90       	pop	r6
    213c:	5f 90       	pop	r5
    213e:	4f 90       	pop	r4
    2140:	08 95       	ret

00002142 <_Z14DrawFilledRecthhhhh>:
    2142:	7f 92       	push	r7
    2144:	8f 92       	push	r8
    2146:	9f 92       	push	r9
    2148:	af 92       	push	r10
    214a:	bf 92       	push	r11
    214c:	cf 92       	push	r12
    214e:	df 92       	push	r13
    2150:	ef 92       	push	r14
    2152:	ff 92       	push	r15
    2154:	0f 93       	push	r16
    2156:	1f 93       	push	r17
    2158:	cf 93       	push	r28
    215a:	df 93       	push	r29
    215c:	78 2e       	mov	r7, r24
    215e:	16 2f       	mov	r17, r22
    2160:	f1 2c       	mov	r15, r1
    2162:	e1 2c       	mov	r14, r1
    2164:	c2 2e       	mov	r12, r18
    2166:	d1 2c       	mov	r13, r1
    2168:	a4 2e       	mov	r10, r20
    216a:	b1 2c       	mov	r11, r1
    216c:	ec 14       	cp	r14, r12
    216e:	fd 04       	cpc	r15, r13
    2170:	ac f4       	brge	.+42     	; 0x219c <_Z14DrawFilledRecthhhhh+0x5a>
    2172:	d0 e0       	ldi	r29, 0x00	; 0
    2174:	c0 e0       	ldi	r28, 0x00	; 0
    2176:	81 2e       	mov	r8, r17
    2178:	91 2c       	mov	r9, r1
    217a:	ca 15       	cp	r28, r10
    217c:	db 05       	cpc	r29, r11
    217e:	4c f4       	brge	.+18     	; 0x2192 <_Z14DrawFilledRecthhhhh+0x50>
    2180:	8c 2f       	mov	r24, r28
    2182:	87 0d       	add	r24, r7
    2184:	40 2f       	mov	r20, r16
    2186:	b4 01       	movw	r22, r8
    2188:	90 e0       	ldi	r25, 0x00	; 0
    218a:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    218e:	21 96       	adiw	r28, 0x01	; 1
    2190:	f4 cf       	rjmp	.-24     	; 0x217a <_Z14DrawFilledRecthhhhh+0x38>
    2192:	8f ef       	ldi	r24, 0xFF	; 255
    2194:	e8 1a       	sub	r14, r24
    2196:	f8 0a       	sbc	r15, r24
    2198:	1f 5f       	subi	r17, 0xFF	; 255
    219a:	e8 cf       	rjmp	.-48     	; 0x216c <_Z14DrawFilledRecthhhhh+0x2a>
    219c:	df 91       	pop	r29
    219e:	cf 91       	pop	r28
    21a0:	1f 91       	pop	r17
    21a2:	0f 91       	pop	r16
    21a4:	ff 90       	pop	r15
    21a6:	ef 90       	pop	r14
    21a8:	df 90       	pop	r13
    21aa:	cf 90       	pop	r12
    21ac:	bf 90       	pop	r11
    21ae:	af 90       	pop	r10
    21b0:	9f 90       	pop	r9
    21b2:	8f 90       	pop	r8
    21b4:	7f 90       	pop	r7
    21b6:	08 95       	ret

000021b8 <_Z14DrawCursorRecthhhh>:
    21b8:	6f 92       	push	r6
    21ba:	7f 92       	push	r7
    21bc:	8f 92       	push	r8
    21be:	9f 92       	push	r9
    21c0:	af 92       	push	r10
    21c2:	bf 92       	push	r11
    21c4:	cf 92       	push	r12
    21c6:	df 92       	push	r13
    21c8:	ef 92       	push	r14
    21ca:	ff 92       	push	r15
    21cc:	0f 93       	push	r16
    21ce:	1f 93       	push	r17
    21d0:	cf 93       	push	r28
    21d2:	df 93       	push	r29
    21d4:	c8 2f       	mov	r28, r24
    21d6:	a6 2e       	mov	r10, r22
    21d8:	d4 2f       	mov	r29, r20
    21da:	02 2f       	mov	r16, r18
    21dc:	b4 2e       	mov	r11, r20
    21de:	b8 0e       	add	r11, r24
    21e0:	f1 2c       	mov	r15, r1
    21e2:	e1 2c       	mov	r14, r1
    21e4:	64 2e       	mov	r6, r20
    21e6:	71 2c       	mov	r7, r1
    21e8:	cc 24       	eor	r12, r12
    21ea:	ca 94       	dec	r12
    21ec:	c2 0e       	add	r12, r18
    21ee:	c6 0e       	add	r12, r22
    21f0:	d1 2c       	mov	r13, r1
    21f2:	86 2e       	mov	r8, r22
    21f4:	91 2c       	mov	r9, r1
    21f6:	ba 94       	dec	r11
    21f8:	e6 14       	cp	r14, r6
    21fa:	f7 04       	cpc	r15, r7
    21fc:	64 f1       	brlt	.+88     	; 0x2256 <_Z14DrawCursorRecthhhh+0x9e>
    21fe:	9a 2c       	mov	r9, r10
    2200:	90 0e       	add	r9, r16
    2202:	d1 2c       	mov	r13, r1
    2204:	c1 2c       	mov	r12, r1
    2206:	10 e0       	ldi	r17, 0x00	; 0
    2208:	ec 2e       	mov	r14, r28
    220a:	f1 2c       	mov	r15, r1
    220c:	c1 50       	subi	r28, 0x01	; 1
    220e:	dc 0f       	add	r29, r28
    2210:	cd 2f       	mov	r28, r29
    2212:	d0 e0       	ldi	r29, 0x00	; 0
    2214:	9a 94       	dec	r9
    2216:	c0 16       	cp	r12, r16
    2218:	d1 06       	cpc	r13, r17
    221a:	cc f5       	brge	.+114    	; 0x228e <_Z14DrawCursorRecthhhh+0xd6>
    221c:	40 91 19 05 	lds	r20, 0x0519	; 0x800519 <AnimationFrame>
    2220:	4c 0d       	add	r20, r12
    2222:	5d 2d       	mov	r21, r13
    2224:	51 1d       	adc	r21, r1
    2226:	55 95       	asr	r21
    2228:	47 95       	ror	r20
    222a:	55 95       	asr	r21
    222c:	47 95       	ror	r20
    222e:	84 2f       	mov	r24, r20
    2230:	81 70       	andi	r24, 0x01	; 1
    2232:	b8 2e       	mov	r11, r24
    2234:	6a 2d       	mov	r22, r10
    2236:	6c 0d       	add	r22, r12
    2238:	70 e0       	ldi	r23, 0x00	; 0
    223a:	48 2f       	mov	r20, r24
    223c:	c7 01       	movw	r24, r14
    223e:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    2242:	69 2d       	mov	r22, r9
    2244:	70 e0       	ldi	r23, 0x00	; 0
    2246:	4b 2d       	mov	r20, r11
    2248:	ce 01       	movw	r24, r28
    224a:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    224e:	8f ef       	ldi	r24, 0xFF	; 255
    2250:	c8 1a       	sub	r12, r24
    2252:	d8 0a       	sbc	r13, r24
    2254:	df cf       	rjmp	.-66     	; 0x2214 <_Z14DrawCursorRecthhhh+0x5c>
    2256:	40 91 19 05 	lds	r20, 0x0519	; 0x800519 <AnimationFrame>
    225a:	4e 0d       	add	r20, r14
    225c:	5f 2d       	mov	r21, r15
    225e:	51 1d       	adc	r21, r1
    2260:	55 95       	asr	r21
    2262:	47 95       	ror	r20
    2264:	55 95       	asr	r21
    2266:	47 95       	ror	r20
    2268:	14 2f       	mov	r17, r20
    226a:	11 70       	andi	r17, 0x01	; 1
    226c:	8c 2f       	mov	r24, r28
    226e:	8e 0d       	add	r24, r14
    2270:	41 2f       	mov	r20, r17
    2272:	b6 01       	movw	r22, r12
    2274:	90 e0       	ldi	r25, 0x00	; 0
    2276:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    227a:	41 2f       	mov	r20, r17
    227c:	b4 01       	movw	r22, r8
    227e:	8b 2d       	mov	r24, r11
    2280:	90 e0       	ldi	r25, 0x00	; 0
    2282:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    2286:	8f ef       	ldi	r24, 0xFF	; 255
    2288:	e8 1a       	sub	r14, r24
    228a:	f8 0a       	sbc	r15, r24
    228c:	b4 cf       	rjmp	.-152    	; 0x21f6 <_Z14DrawCursorRecthhhh+0x3e>
    228e:	df 91       	pop	r29
    2290:	cf 91       	pop	r28
    2292:	1f 91       	pop	r17
    2294:	0f 91       	pop	r16
    2296:	ff 90       	pop	r15
    2298:	ef 90       	pop	r14
    229a:	df 90       	pop	r13
    229c:	cf 90       	pop	r12
    229e:	bf 90       	pop	r11
    22a0:	af 90       	pop	r10
    22a2:	9f 90       	pop	r9
    22a4:	8f 90       	pop	r8
    22a6:	7f 90       	pop	r7
    22a8:	6f 90       	pop	r6
    22aa:	08 95       	ret

000022ac <_Z13GetCachedTileii>:
    22ac:	41 e1       	ldi	r20, 0x11	; 17
    22ae:	46 9f       	mul	r20, r22
    22b0:	90 01       	movw	r18, r0
    22b2:	47 9f       	mul	r20, r23
    22b4:	30 0d       	add	r19, r0
    22b6:	11 24       	eor	r1, r1
    22b8:	26 57       	subi	r18, 0x76	; 118
    22ba:	36 4f       	sbci	r19, 0xF6	; 246
    22bc:	82 0f       	add	r24, r18
    22be:	93 1f       	adc	r25, r19
    22c0:	fc 01       	movw	r30, r24
    22c2:	80 81       	ld	r24, Z
    22c4:	20 91 19 05 	lds	r18, 0x0519	; 0x800519 <AnimationFrame>
    22c8:	9f ee       	ldi	r25, 0xEF	; 239
    22ca:	98 0f       	add	r25, r24
    22cc:	94 30       	cpi	r25, 0x04	; 4
    22ce:	30 f4       	brcc	.+12     	; 0x22dc <_Z13GetCachedTileii+0x30>
    22d0:	92 2f       	mov	r25, r18
    22d2:	96 95       	lsr	r25
    22d4:	91 51       	subi	r25, 0x11	; 17
    22d6:	89 0f       	add	r24, r25
    22d8:	83 70       	andi	r24, 0x03	; 3
    22da:	8f 5e       	subi	r24, 0xEF	; 239
    22dc:	98 e1       	ldi	r25, 0x18	; 24
    22de:	98 0f       	add	r25, r24
    22e0:	94 30       	cpi	r25, 0x04	; 4
    22e2:	28 f4       	brcc	.+10     	; 0x22ee <_Z13GetCachedTileii+0x42>
    22e4:	92 2f       	mov	r25, r18
    22e6:	96 95       	lsr	r25
    22e8:	89 0f       	add	r24, r25
    22ea:	83 70       	andi	r24, 0x03	; 3
    22ec:	88 51       	subi	r24, 0x18	; 24
    22ee:	22 ff       	sbrs	r18, 2
    22f0:	05 c0       	rjmp	.+10     	; 0x22fc <_Z13GetCachedTileii+0x50>
    22f2:	9b ee       	ldi	r25, 0xEB	; 235
    22f4:	98 0f       	add	r25, r24
    22f6:	9b 30       	cpi	r25, 0x0B	; 11
    22f8:	08 f4       	brcc	.+2      	; 0x22fc <_Z13GetCachedTileii+0x50>
    22fa:	80 5f       	subi	r24, 0xF0	; 240
    22fc:	08 95       	ret

000022fe <_Z21CalculateBuildingTileP8Buildinghh>:
    22fe:	ff 92       	push	r15
    2300:	0f 93       	push	r16
    2302:	1f 93       	push	r17
    2304:	cf 93       	push	r28
    2306:	df 93       	push	r29
    2308:	dc 01       	movw	r26, r24
    230a:	11 96       	adiw	r26, 0x01	; 1
    230c:	9c 91       	ld	r25, X
    230e:	11 97       	sbiw	r26, 0x01	; 1
    2310:	19 2f       	mov	r17, r25
    2312:	12 95       	swap	r17
    2314:	1f 70       	andi	r17, 0x0F	; 15
    2316:	85 e0       	ldi	r24, 0x05	; 5
    2318:	18 9f       	mul	r17, r24
    231a:	90 01       	movw	r18, r0
    231c:	11 24       	eor	r1, r1
    231e:	f9 01       	movw	r30, r18
    2320:	ec 50       	subi	r30, 0x0C	; 12
    2322:	f8 4f       	sbci	r31, 0xF8	; 248
    2324:	e4 91       	lpm	r30, Z
    2326:	f9 01       	movw	r30, r18
    2328:	eb 50       	subi	r30, 0x0B	; 11
    232a:	f8 4f       	sbci	r31, 0xF8	; 248
    232c:	c4 91       	lpm	r28, Z
    232e:	f9 01       	movw	r30, r18
    2330:	ea 50       	subi	r30, 0x0A	; 10
    2332:	f8 4f       	sbci	r31, 0xF8	; 248
    2334:	54 91       	lpm	r21, Z
    2336:	12 96       	adiw	r26, 0x02	; 2
    2338:	dc 91       	ld	r29, X
    233a:	12 97       	sbiw	r26, 0x02	; 2
    233c:	8d 2f       	mov	r24, r29
    233e:	80 73       	andi	r24, 0x30	; 48
    2340:	09 f4       	brne	.+2      	; 0x2344 <_Z21CalculateBuildingTileP8Buildinghh+0x46>
    2342:	49 c0       	rjmp	.+146    	; 0x23d6 <_Z21CalculateBuildingTileP8Buildinghh+0xd8>
    2344:	89 2f       	mov	r24, r25
    2346:	80 7f       	andi	r24, 0xF0	; 240
    2348:	80 32       	cpi	r24, 0x20	; 32
    234a:	21 f0       	breq	.+8      	; 0x2354 <_Z21CalculateBuildingTileP8Buildinghh+0x56>
    234c:	89 2f       	mov	r24, r25
    234e:	80 7d       	andi	r24, 0xD0	; 208
    2350:	80 31       	cpi	r24, 0x10	; 16
    2352:	29 f4       	brne	.+10     	; 0x235e <_Z21CalculateBuildingTileP8Buildinghh+0x60>
    2354:	61 30       	cpi	r22, 0x01	; 1
    2356:	19 f4       	brne	.+6      	; 0x235e <_Z21CalculateBuildingTileP8Buildinghh+0x60>
    2358:	41 30       	cpi	r20, 0x01	; 1
    235a:	09 f4       	brne	.+2      	; 0x235e <_Z21CalculateBuildingTileP8Buildinghh+0x60>
    235c:	3c c0       	rjmp	.+120    	; 0x23d6 <_Z21CalculateBuildingTileP8Buildinghh+0xd8>
    235e:	7c 91       	ld	r23, X
    2360:	27 2f       	mov	r18, r23
    2362:	22 95       	swap	r18
    2364:	26 95       	lsr	r18
    2366:	26 95       	lsr	r18
    2368:	23 70       	andi	r18, 0x03	; 3
    236a:	89 2f       	mov	r24, r25
    236c:	8f 70       	andi	r24, 0x0F	; 15
    236e:	88 0f       	add	r24, r24
    2370:	88 0f       	add	r24, r24
    2372:	82 2b       	or	r24, r18
    2374:	7f 73       	andi	r23, 0x3F	; 63
    2376:	0f ea       	ldi	r16, 0xAF	; 175
    2378:	70 9f       	mul	r23, r16
    237a:	e0 2d       	mov	r30, r0
    237c:	11 24       	eor	r1, r1
    237e:	27 e6       	ldi	r18, 0x67	; 103
    2380:	f2 2e       	mov	r15, r18
    2382:	8f 9d       	mul	r24, r15
    2384:	20 2d       	mov	r18, r0
    2386:	11 24       	eor	r1, r1
    2388:	e2 27       	eor	r30, r18
    238a:	26 2f       	mov	r18, r22
    238c:	30 e0       	ldi	r19, 0x00	; 0
    238e:	4c 9f       	mul	r20, r28
    2390:	20 0d       	add	r18, r0
    2392:	31 1d       	adc	r19, r1
    2394:	11 24       	eor	r1, r1
    2396:	e2 0f       	add	r30, r18
    2398:	f3 2f       	mov	r31, r19
    239a:	f1 1d       	adc	r31, r1
    239c:	ef 70       	andi	r30, 0x0F	; 15
    239e:	ff 27       	eor	r31, r31
    23a0:	ea 59       	subi	r30, 0x9A	; 154
    23a2:	fe 4f       	sbci	r31, 0xFE	; 254
    23a4:	24 91       	lpm	r18, Z
    23a6:	ed 2f       	mov	r30, r29
    23a8:	e2 95       	swap	r30
    23aa:	e3 70       	andi	r30, 0x03	; 3
    23ac:	30 e0       	ldi	r19, 0x00	; 0
    23ae:	e2 17       	cp	r30, r18
    23b0:	13 06       	cpc	r1, r19
    23b2:	8c f0       	brlt	.+34     	; 0x23d6 <_Z21CalculateBuildingTileP8Buildinghh+0xd8>
    23b4:	84 0f       	add	r24, r20
    23b6:	8f 9d       	mul	r24, r15
    23b8:	80 2d       	mov	r24, r0
    23ba:	11 24       	eor	r1, r1
    23bc:	67 0f       	add	r22, r23
    23be:	60 9f       	mul	r22, r16
    23c0:	40 2d       	mov	r20, r0
    23c2:	11 24       	eor	r1, r1
    23c4:	84 27       	eor	r24, r20
    23c6:	83 70       	andi	r24, 0x03	; 3
    23c8:	88 51       	subi	r24, 0x18	; 24
    23ca:	df 91       	pop	r29
    23cc:	cf 91       	pop	r28
    23ce:	1f 91       	pop	r17
    23d0:	0f 91       	pop	r16
    23d2:	ff 90       	pop	r15
    23d4:	08 95       	ret
    23d6:	83 e3       	ldi	r24, 0x33	; 51
    23d8:	19 30       	cpi	r17, 0x09	; 9
    23da:	b8 f7       	brcc	.-18     	; 0x23ca <_Z21CalculateBuildingTileP8Buildinghh+0xcc>
    23dc:	89 2f       	mov	r24, r25
    23de:	80 7f       	andi	r24, 0xF0	; 240
    23e0:	80 32       	cpi	r24, 0x20	; 32
    23e2:	21 f0       	breq	.+8      	; 0x23ec <_Z21CalculateBuildingTileP8Buildinghh+0xee>
    23e4:	89 2f       	mov	r24, r25
    23e6:	80 7d       	andi	r24, 0xD0	; 208
    23e8:	80 31       	cpi	r24, 0x10	; 16
    23ea:	21 f4       	brne	.+8      	; 0x23f4 <_Z21CalculateBuildingTileP8Buildinghh+0xf6>
    23ec:	df 70       	andi	r29, 0x0F	; 15
    23ee:	de 30       	cpi	r29, 0x0E	; 14
    23f0:	38 f0       	brcs	.+14     	; 0x2400 <_Z21CalculateBuildingTileP8Buildinghh+0x102>
    23f2:	50 5d       	subi	r21, 0xD0	; 208
    23f4:	84 2f       	mov	r24, r20
    23f6:	82 95       	swap	r24
    23f8:	80 7f       	andi	r24, 0xF0	; 240
    23fa:	86 0f       	add	r24, r22
    23fc:	85 0f       	add	r24, r21
    23fe:	e5 cf       	rjmp	.-54     	; 0x23ca <_Z21CalculateBuildingTileP8Buildinghh+0xcc>
    2400:	61 30       	cpi	r22, 0x01	; 1
    2402:	11 f4       	brne	.+4      	; 0x2408 <_Z21CalculateBuildingTileP8Buildinghh+0x10a>
    2404:	41 30       	cpi	r20, 0x01	; 1
    2406:	b1 f3       	breq	.-20     	; 0x23f4 <_Z21CalculateBuildingTileP8Buildinghh+0xf6>
    2408:	2c 91       	ld	r18, X
    240a:	82 2f       	mov	r24, r18
    240c:	82 95       	swap	r24
    240e:	86 95       	lsr	r24
    2410:	86 95       	lsr	r24
    2412:	83 70       	andi	r24, 0x03	; 3
    2414:	e9 2f       	mov	r30, r25
    2416:	ef 70       	andi	r30, 0x0F	; 15
    2418:	ee 0f       	add	r30, r30
    241a:	ee 0f       	add	r30, r30
    241c:	e8 2b       	or	r30, r24
    241e:	87 e6       	ldi	r24, 0x67	; 103
    2420:	e8 9f       	mul	r30, r24
    2422:	e0 2d       	mov	r30, r0
    2424:	11 24       	eor	r1, r1
    2426:	2f 73       	andi	r18, 0x3F	; 63
    2428:	9f ea       	ldi	r25, 0xAF	; 175
    242a:	29 9f       	mul	r18, r25
    242c:	20 2d       	mov	r18, r0
    242e:	11 24       	eor	r1, r1
    2430:	e2 27       	eor	r30, r18
    2432:	26 2f       	mov	r18, r22
    2434:	30 e0       	ldi	r19, 0x00	; 0
    2436:	4c 9f       	mul	r20, r28
    2438:	20 0d       	add	r18, r0
    243a:	31 1d       	adc	r19, r1
    243c:	11 24       	eor	r1, r1
    243e:	e2 0f       	add	r30, r18
    2440:	f3 2f       	mov	r31, r19
    2442:	f1 1d       	adc	r31, r1
    2444:	ef 70       	andi	r30, 0x0F	; 15
    2446:	ff 27       	eor	r31, r31
    2448:	ea 5a       	subi	r30, 0xAA	; 170
    244a:	fe 4f       	sbci	r31, 0xFE	; 254
    244c:	24 91       	lpm	r18, Z
    244e:	30 e0       	ldi	r19, 0x00	; 0
    2450:	d2 17       	cp	r29, r18
    2452:	13 06       	cpc	r1, r19
    2454:	7c f2       	brlt	.-98     	; 0x23f4 <_Z21CalculateBuildingTileP8Buildinghh+0xf6>
    2456:	48 9f       	mul	r20, r24
    2458:	80 2d       	mov	r24, r0
    245a:	11 24       	eor	r1, r1
    245c:	69 9f       	mul	r22, r25
    245e:	40 2d       	mov	r20, r0
    2460:	11 24       	eor	r1, r1
    2462:	84 27       	eor	r24, r20
    2464:	87 70       	andi	r24, 0x07	; 7
    2466:	80 52       	subi	r24, 0x20	; 32
    2468:	b0 cf       	rjmp	.-160    	; 0x23ca <_Z21CalculateBuildingTileP8Buildinghh+0xcc>

0000246a <_Z13IsTilePoweredhh>:
    246a:	90 e0       	ldi	r25, 0x00	; 0
    246c:	20 e3       	ldi	r18, 0x30	; 48
    246e:	62 9f       	mul	r22, r18
    2470:	80 0d       	add	r24, r0
    2472:	91 1d       	adc	r25, r1
    2474:	11 24       	eor	r1, r1
    2476:	fc 01       	movw	r30, r24
    2478:	23 e0       	ldi	r18, 0x03	; 3
    247a:	f5 95       	asr	r31
    247c:	e7 95       	ror	r30
    247e:	2a 95       	dec	r18
    2480:	e1 f7       	brne	.-8      	; 0x247a <_Z13IsTilePoweredhh+0x10>
    2482:	e6 57       	subi	r30, 0x76	; 118
    2484:	fa 4f       	sbci	r31, 0xFA	; 250
    2486:	20 81       	ld	r18, Z
    2488:	30 e0       	ldi	r19, 0x00	; 0
    248a:	87 70       	andi	r24, 0x07	; 7
    248c:	99 27       	eor	r25, r25
    248e:	41 e0       	ldi	r20, 0x01	; 1
    2490:	50 e0       	ldi	r21, 0x00	; 0
    2492:	02 c0       	rjmp	.+4      	; 0x2498 <_Z13IsTilePoweredhh+0x2e>
    2494:	44 0f       	add	r20, r20
    2496:	55 1f       	adc	r21, r21
    2498:	8a 95       	dec	r24
    249a:	e2 f7       	brpl	.-8      	; 0x2494 <_Z13IsTilePoweredhh+0x2a>
    249c:	24 23       	and	r18, r20
    249e:	35 23       	and	r19, r21
    24a0:	81 e0       	ldi	r24, 0x01	; 1
    24a2:	23 2b       	or	r18, r19
    24a4:	09 f4       	brne	.+2      	; 0x24a8 <_Z13IsTilePoweredhh+0x3e>
    24a6:	80 e0       	ldi	r24, 0x00	; 0
    24a8:	08 95       	ret

000024aa <_Z14SetConnectionsiih>:
    24aa:	80 33       	cpi	r24, 0x30	; 48
    24ac:	91 05       	cpc	r25, r1
    24ae:	38 f5       	brcc	.+78     	; 0x24fe <_Z14SetConnectionsiih+0x54>
    24b0:	60 33       	cpi	r22, 0x30	; 48
    24b2:	71 05       	cpc	r23, r1
    24b4:	20 f5       	brcc	.+72     	; 0x24fe <_Z14SetConnectionsiih+0x54>
    24b6:	20 e3       	ldi	r18, 0x30	; 48
    24b8:	26 9f       	mul	r18, r22
    24ba:	f0 01       	movw	r30, r0
    24bc:	27 9f       	mul	r18, r23
    24be:	f0 0d       	add	r31, r0
    24c0:	11 24       	eor	r1, r1
    24c2:	8e 0f       	add	r24, r30
    24c4:	9f 1f       	adc	r25, r31
    24c6:	9c 01       	movw	r18, r24
    24c8:	23 70       	andi	r18, 0x03	; 3
    24ca:	33 27       	eor	r19, r19
    24cc:	22 0f       	add	r18, r18
    24ce:	33 1f       	adc	r19, r19
    24d0:	95 95       	asr	r25
    24d2:	87 95       	ror	r24
    24d4:	95 95       	asr	r25
    24d6:	87 95       	ror	r24
    24d8:	fc 01       	movw	r30, r24
    24da:	e7 5c       	subi	r30, 0xC7	; 199
    24dc:	fe 4f       	sbci	r31, 0xFE	; 254
    24de:	83 e0       	ldi	r24, 0x03	; 3
    24e0:	90 e0       	ldi	r25, 0x00	; 0
    24e2:	02 2e       	mov	r0, r18
    24e4:	01 c0       	rjmp	.+2      	; 0x24e8 <_Z14SetConnectionsiih+0x3e>
    24e6:	88 0f       	add	r24, r24
    24e8:	0a 94       	dec	r0
    24ea:	ea f7       	brpl	.-6      	; 0x24e6 <_Z14SetConnectionsiih+0x3c>
    24ec:	80 95       	com	r24
    24ee:	90 85       	ldd	r25, Z+8	; 0x08
    24f0:	89 23       	and	r24, r25
    24f2:	01 c0       	rjmp	.+2      	; 0x24f6 <_Z14SetConnectionsiih+0x4c>
    24f4:	44 0f       	add	r20, r20
    24f6:	2a 95       	dec	r18
    24f8:	ea f7       	brpl	.-6      	; 0x24f4 <_Z14SetConnectionsiih+0x4a>
    24fa:	84 2b       	or	r24, r20
    24fc:	80 87       	std	Z+8, r24	; 0x08
    24fe:	08 95       	ret

00002500 <_Z14GetConnectionsii>:
    2500:	80 33       	cpi	r24, 0x30	; 48
    2502:	91 05       	cpc	r25, r1
    2504:	f8 f4       	brcc	.+62     	; 0x2544 <_Z14GetConnectionsii+0x44>
    2506:	60 33       	cpi	r22, 0x30	; 48
    2508:	71 05       	cpc	r23, r1
    250a:	e0 f4       	brcc	.+56     	; 0x2544 <_Z14GetConnectionsii+0x44>
    250c:	40 e3       	ldi	r20, 0x30	; 48
    250e:	46 9f       	mul	r20, r22
    2510:	90 01       	movw	r18, r0
    2512:	47 9f       	mul	r20, r23
    2514:	30 0d       	add	r19, r0
    2516:	11 24       	eor	r1, r1
    2518:	28 0f       	add	r18, r24
    251a:	39 1f       	adc	r19, r25
    251c:	f9 01       	movw	r30, r18
    251e:	f5 95       	asr	r31
    2520:	e7 95       	ror	r30
    2522:	f5 95       	asr	r31
    2524:	e7 95       	ror	r30
    2526:	e7 5c       	subi	r30, 0xC7	; 199
    2528:	fe 4f       	sbci	r31, 0xFE	; 254
    252a:	80 85       	ldd	r24, Z+8	; 0x08
    252c:	90 e0       	ldi	r25, 0x00	; 0
    252e:	23 70       	andi	r18, 0x03	; 3
    2530:	33 27       	eor	r19, r19
    2532:	22 0f       	add	r18, r18
    2534:	33 1f       	adc	r19, r19
    2536:	02 c0       	rjmp	.+4      	; 0x253c <_Z14GetConnectionsii+0x3c>
    2538:	95 95       	asr	r25
    253a:	87 95       	ror	r24
    253c:	2a 95       	dec	r18
    253e:	e2 f7       	brpl	.-8      	; 0x2538 <_Z14GetConnectionsii+0x38>
    2540:	83 70       	andi	r24, 0x03	; 3
    2542:	08 95       	ret
    2544:	80 e0       	ldi	r24, 0x00	; 0
    2546:	08 95       	ret

00002548 <_Z21GetNumRoadConnectionsP8Building>:
    2548:	8f 92       	push	r8
    254a:	9f 92       	push	r9
    254c:	af 92       	push	r10
    254e:	bf 92       	push	r11
    2550:	cf 92       	push	r12
    2552:	df 92       	push	r13
    2554:	ef 92       	push	r14
    2556:	ff 92       	push	r15
    2558:	0f 93       	push	r16
    255a:	1f 93       	push	r17
    255c:	cf 93       	push	r28
    255e:	df 93       	push	r29
    2560:	dc 01       	movw	r26, r24
    2562:	11 96       	adiw	r26, 0x01	; 1
    2564:	9c 91       	ld	r25, X
    2566:	11 97       	sbiw	r26, 0x01	; 1
    2568:	29 2f       	mov	r18, r25
    256a:	22 95       	swap	r18
    256c:	2f 70       	andi	r18, 0x0F	; 15
    256e:	85 e0       	ldi	r24, 0x05	; 5
    2570:	28 9f       	mul	r18, r24
    2572:	90 01       	movw	r18, r0
    2574:	11 24       	eor	r1, r1
    2576:	f9 01       	movw	r30, r18
    2578:	ec 50       	subi	r30, 0x0C	; 12
    257a:	f8 4f       	sbci	r31, 0xF8	; 248
    257c:	14 91       	lpm	r17, Z
    257e:	f9 01       	movw	r30, r18
    2580:	eb 50       	subi	r30, 0x0B	; 11
    2582:	f8 4f       	sbci	r31, 0xF8	; 248
    2584:	d4 91       	lpm	r29, Z
    2586:	0c 91       	ld	r16, X
    2588:	80 2f       	mov	r24, r16
    258a:	82 95       	swap	r24
    258c:	86 95       	lsr	r24
    258e:	86 95       	lsr	r24
    2590:	83 70       	andi	r24, 0x03	; 3
    2592:	9f 70       	andi	r25, 0x0F	; 15
    2594:	99 0f       	add	r25, r25
    2596:	99 0f       	add	r25, r25
    2598:	98 2b       	or	r25, r24
    259a:	e9 2e       	mov	r14, r25
    259c:	f1 2c       	mov	r15, r1
    259e:	c0 e0       	ldi	r28, 0x00	; 0
    25a0:	c9 f0       	breq	.+50     	; 0x25d4 <_Z21GetNumRoadConnectionsP8Building+0x8c>
    25a2:	80 2f       	mov	r24, r16
    25a4:	8f 73       	andi	r24, 0x3F	; 63
    25a6:	c8 2e       	mov	r12, r24
    25a8:	d1 2c       	mov	r13, r1
    25aa:	91 2c       	mov	r9, r1
    25ac:	81 2c       	mov	r8, r1
    25ae:	c0 e0       	ldi	r28, 0x00	; 0
    25b0:	57 01       	movw	r10, r14
    25b2:	21 e0       	ldi	r18, 0x01	; 1
    25b4:	a2 1a       	sub	r10, r18
    25b6:	b1 08       	sbc	r11, r1
    25b8:	81 16       	cp	r8, r17
    25ba:	60 f4       	brcc	.+24     	; 0x25d4 <_Z21GetNumRoadConnectionsP8Building+0x8c>
    25bc:	b5 01       	movw	r22, r10
    25be:	c4 01       	movw	r24, r8
    25c0:	8c 0d       	add	r24, r12
    25c2:	9d 1d       	adc	r25, r13
    25c4:	0e 94 80 12 	call	0x2500	; 0x2500 <_Z14GetConnectionsii>
    25c8:	80 fd       	sbrc	r24, 0
    25ca:	cf 5f       	subi	r28, 0xFF	; 255
    25cc:	3f ef       	ldi	r19, 0xFF	; 255
    25ce:	83 1a       	sub	r8, r19
    25d0:	93 0a       	sbc	r9, r19
    25d2:	f2 cf       	rjmp	.-28     	; 0x25b8 <_Z21GetNumRoadConnectionsP8Building+0x70>
    25d4:	47 01       	movw	r8, r14
    25d6:	8d 0e       	add	r8, r29
    25d8:	91 1c       	adc	r9, r1
    25da:	80 e3       	ldi	r24, 0x30	; 48
    25dc:	88 16       	cp	r8, r24
    25de:	91 04       	cpc	r9, r1
    25e0:	a4 f4       	brge	.+40     	; 0x260a <_Z21GetNumRoadConnectionsP8Building+0xc2>
    25e2:	80 2f       	mov	r24, r16
    25e4:	8f 73       	andi	r24, 0x3F	; 63
    25e6:	a8 2e       	mov	r10, r24
    25e8:	b1 2c       	mov	r11, r1
    25ea:	d1 2c       	mov	r13, r1
    25ec:	c1 2c       	mov	r12, r1
    25ee:	c1 16       	cp	r12, r17
    25f0:	60 f4       	brcc	.+24     	; 0x260a <_Z21GetNumRoadConnectionsP8Building+0xc2>
    25f2:	b4 01       	movw	r22, r8
    25f4:	c6 01       	movw	r24, r12
    25f6:	8a 0d       	add	r24, r10
    25f8:	9b 1d       	adc	r25, r11
    25fa:	0e 94 80 12 	call	0x2500	; 0x2500 <_Z14GetConnectionsii>
    25fe:	80 fd       	sbrc	r24, 0
    2600:	cf 5f       	subi	r28, 0xFF	; 255
    2602:	2f ef       	ldi	r18, 0xFF	; 255
    2604:	c2 1a       	sub	r12, r18
    2606:	d2 0a       	sbc	r13, r18
    2608:	f2 cf       	rjmp	.-28     	; 0x25ee <_Z21GetNumRoadConnectionsP8Building+0xa6>
    260a:	80 2f       	mov	r24, r16
    260c:	8f 73       	andi	r24, 0x3F	; 63
    260e:	a1 f0       	breq	.+40     	; 0x2638 <_Z21GetNumRoadConnectionsP8Building+0xf0>
    2610:	28 2f       	mov	r18, r24
    2612:	21 50       	subi	r18, 0x01	; 1
    2614:	33 0b       	sbc	r19, r19
    2616:	59 01       	movw	r10, r18
    2618:	d1 2c       	mov	r13, r1
    261a:	c1 2c       	mov	r12, r1
    261c:	cd 16       	cp	r12, r29
    261e:	60 f4       	brcc	.+24     	; 0x2638 <_Z21GetNumRoadConnectionsP8Building+0xf0>
    2620:	b7 01       	movw	r22, r14
    2622:	6c 0d       	add	r22, r12
    2624:	7d 1d       	adc	r23, r13
    2626:	c5 01       	movw	r24, r10
    2628:	0e 94 80 12 	call	0x2500	; 0x2500 <_Z14GetConnectionsii>
    262c:	80 fd       	sbrc	r24, 0
    262e:	cf 5f       	subi	r28, 0xFF	; 255
    2630:	3f ef       	ldi	r19, 0xFF	; 255
    2632:	c3 1a       	sub	r12, r19
    2634:	d3 0a       	sbc	r13, r19
    2636:	f2 cf       	rjmp	.-28     	; 0x261c <_Z21GetNumRoadConnectionsP8Building+0xd4>
    2638:	0f 73       	andi	r16, 0x3F	; 63
    263a:	01 0f       	add	r16, r17
    263c:	11 27       	eor	r17, r17
    263e:	11 1f       	adc	r17, r17
    2640:	00 33       	cpi	r16, 0x30	; 48
    2642:	11 05       	cpc	r17, r1
    2644:	84 f4       	brge	.+32     	; 0x2666 <_Z21GetNumRoadConnectionsP8Building+0x11e>
    2646:	d1 2c       	mov	r13, r1
    2648:	c1 2c       	mov	r12, r1
    264a:	cd 16       	cp	r12, r29
    264c:	60 f4       	brcc	.+24     	; 0x2666 <_Z21GetNumRoadConnectionsP8Building+0x11e>
    264e:	b7 01       	movw	r22, r14
    2650:	6c 0d       	add	r22, r12
    2652:	7d 1d       	adc	r23, r13
    2654:	c8 01       	movw	r24, r16
    2656:	0e 94 80 12 	call	0x2500	; 0x2500 <_Z14GetConnectionsii>
    265a:	80 fd       	sbrc	r24, 0
    265c:	cf 5f       	subi	r28, 0xFF	; 255
    265e:	8f ef       	ldi	r24, 0xFF	; 255
    2660:	c8 1a       	sub	r12, r24
    2662:	d8 0a       	sbc	r13, r24
    2664:	f2 cf       	rjmp	.-28     	; 0x264a <_Z21GetNumRoadConnectionsP8Building+0x102>
    2666:	8c 2f       	mov	r24, r28
    2668:	df 91       	pop	r29
    266a:	cf 91       	pop	r28
    266c:	1f 91       	pop	r17
    266e:	0f 91       	pop	r16
    2670:	ff 90       	pop	r15
    2672:	ef 90       	pop	r14
    2674:	df 90       	pop	r13
    2676:	cf 90       	pop	r12
    2678:	bf 90       	pop	r11
    267a:	af 90       	pop	r10
    267c:	9f 90       	pop	r9
    267e:	8f 90       	pop	r8
    2680:	08 95       	ret

00002682 <_Z27GetNeighbouringConnectivityiih>:
    2682:	ef 92       	push	r14
    2684:	ff 92       	push	r15
    2686:	0f 93       	push	r16
    2688:	1f 93       	push	r17
    268a:	cf 93       	push	r28
    268c:	df 93       	push	r29
    268e:	8c 01       	movw	r16, r24
    2690:	7b 01       	movw	r14, r22
    2692:	d4 2f       	mov	r29, r20
    2694:	16 16       	cp	r1, r22
    2696:	17 06       	cpc	r1, r23
    2698:	3c f4       	brge	.+14     	; 0x26a8 <_Z27GetNeighbouringConnectivityiih+0x26>
    269a:	61 50       	subi	r22, 0x01	; 1
    269c:	71 09       	sbc	r23, r1
    269e:	0e 94 80 12 	call	0x2500	; 0x2500 <_Z14GetConnectionsii>
    26a2:	8d 23       	and	r24, r29
    26a4:	c1 e0       	ldi	r28, 0x01	; 1
    26a6:	09 f4       	brne	.+2      	; 0x26aa <_Z27GetNeighbouringConnectivityiih+0x28>
    26a8:	c0 e0       	ldi	r28, 0x00	; 0
    26aa:	0f 32       	cpi	r16, 0x2F	; 47
    26ac:	11 05       	cpc	r17, r1
    26ae:	44 f4       	brge	.+16     	; 0x26c0 <_Z27GetNeighbouringConnectivityiih+0x3e>
    26b0:	b7 01       	movw	r22, r14
    26b2:	c8 01       	movw	r24, r16
    26b4:	01 96       	adiw	r24, 0x01	; 1
    26b6:	0e 94 80 12 	call	0x2500	; 0x2500 <_Z14GetConnectionsii>
    26ba:	8d 23       	and	r24, r29
    26bc:	09 f0       	breq	.+2      	; 0x26c0 <_Z27GetNeighbouringConnectivityiih+0x3e>
    26be:	c2 60       	ori	r28, 0x02	; 2
    26c0:	8f e2       	ldi	r24, 0x2F	; 47
    26c2:	e8 16       	cp	r14, r24
    26c4:	f1 04       	cpc	r15, r1
    26c6:	4c f4       	brge	.+18     	; 0x26da <_Z27GetNeighbouringConnectivityiih+0x58>
    26c8:	b7 01       	movw	r22, r14
    26ca:	6f 5f       	subi	r22, 0xFF	; 255
    26cc:	7f 4f       	sbci	r23, 0xFF	; 255
    26ce:	c8 01       	movw	r24, r16
    26d0:	0e 94 80 12 	call	0x2500	; 0x2500 <_Z14GetConnectionsii>
    26d4:	8d 23       	and	r24, r29
    26d6:	09 f0       	breq	.+2      	; 0x26da <_Z27GetNeighbouringConnectivityiih+0x58>
    26d8:	c4 60       	ori	r28, 0x04	; 4
    26da:	10 16       	cp	r1, r16
    26dc:	11 06       	cpc	r1, r17
    26de:	44 f4       	brge	.+16     	; 0x26f0 <_Z27GetNeighbouringConnectivityiih+0x6e>
    26e0:	b7 01       	movw	r22, r14
    26e2:	c8 01       	movw	r24, r16
    26e4:	01 97       	sbiw	r24, 0x01	; 1
    26e6:	0e 94 80 12 	call	0x2500	; 0x2500 <_Z14GetConnectionsii>
    26ea:	8d 23       	and	r24, r29
    26ec:	09 f0       	breq	.+2      	; 0x26f0 <_Z27GetNeighbouringConnectivityiih+0x6e>
    26ee:	c8 60       	ori	r28, 0x08	; 8
    26f0:	8c 2f       	mov	r24, r28
    26f2:	df 91       	pop	r29
    26f4:	cf 91       	pop	r28
    26f6:	1f 91       	pop	r17
    26f8:	0f 91       	pop	r16
    26fa:	ff 90       	pop	r15
    26fc:	ef 90       	pop	r14
    26fe:	08 95       	ret

00002700 <_Z13CalculateTileii>:
    2700:	bf 92       	push	r11
    2702:	cf 92       	push	r12
    2704:	df 92       	push	r13
    2706:	ef 92       	push	r14
    2708:	ff 92       	push	r15
    270a:	0f 93       	push	r16
    270c:	1f 93       	push	r17
    270e:	cf 93       	push	r28
    2710:	df 93       	push	r29
    2712:	8c 01       	movw	r16, r24
    2714:	c0 97       	sbiw	r24, 0x30	; 48
    2716:	08 f0       	brcs	.+2      	; 0x271a <_Z13CalculateTileii+0x1a>
    2718:	68 c1       	rjmp	.+720    	; 0x29ea <_Z13CalculateTileii+0x2ea>
    271a:	60 33       	cpi	r22, 0x30	; 48
    271c:	71 05       	cpc	r23, r1
    271e:	08 f0       	brcs	.+2      	; 0x2722 <_Z13CalculateTileii+0x22>
    2720:	64 c1       	rjmp	.+712    	; 0x29ea <_Z13CalculateTileii+0x2ea>
    2722:	50 e0       	ldi	r21, 0x00	; 0
    2724:	40 e0       	ldi	r20, 0x00	; 0
    2726:	25 e0       	ldi	r18, 0x05	; 5
    2728:	c2 2e       	mov	r12, r18
    272a:	da 01       	movw	r26, r20
    272c:	aa 0f       	add	r26, r26
    272e:	bb 1f       	adc	r27, r27
    2730:	a4 0f       	add	r26, r20
    2732:	b5 1f       	adc	r27, r21
    2734:	fd 01       	movw	r30, r26
    2736:	ed 56       	subi	r30, 0x6D	; 109
    2738:	fc 4f       	sbci	r31, 0xFC	; 252
    273a:	21 81       	ldd	r18, Z+1	; 0x01
    273c:	82 2f       	mov	r24, r18
    273e:	80 7f       	andi	r24, 0xF0	; 240
    2740:	09 f4       	brne	.+2      	; 0x2744 <_Z13CalculateTileii+0x44>
    2742:	49 c0       	rjmp	.+146    	; 0x27d6 <_Z13CalculateTileii+0xd6>
    2744:	80 81       	ld	r24, Z
    2746:	98 2f       	mov	r25, r24
    2748:	9f 73       	andi	r25, 0x3F	; 63
    274a:	d9 2e       	mov	r13, r25
    274c:	e9 2e       	mov	r14, r25
    274e:	f1 2c       	mov	r15, r1
    2750:	0e 15       	cp	r16, r14
    2752:	1f 05       	cpc	r17, r15
    2754:	0c f4       	brge	.+2      	; 0x2758 <_Z13CalculateTileii+0x58>
    2756:	3f c0       	rjmp	.+126    	; 0x27d6 <_Z13CalculateTileii+0xd6>
    2758:	82 95       	swap	r24
    275a:	86 95       	lsr	r24
    275c:	86 95       	lsr	r24
    275e:	83 70       	andi	r24, 0x03	; 3
    2760:	92 2f       	mov	r25, r18
    2762:	9f 70       	andi	r25, 0x0F	; 15
    2764:	99 0f       	add	r25, r25
    2766:	99 0f       	add	r25, r25
    2768:	98 2b       	or	r25, r24
    276a:	c9 2f       	mov	r28, r25
    276c:	d0 e0       	ldi	r29, 0x00	; 0
    276e:	6c 17       	cp	r22, r28
    2770:	7d 07       	cpc	r23, r29
    2772:	8c f1       	brlt	.+98     	; 0x27d6 <_Z13CalculateTileii+0xd6>
    2774:	fd 01       	movw	r30, r26
    2776:	ec 56       	subi	r30, 0x6C	; 108
    2778:	fc 4f       	sbci	r31, 0xFC	; 252
    277a:	20 81       	ld	r18, Z
    277c:	22 95       	swap	r18
    277e:	2f 70       	andi	r18, 0x0F	; 15
    2780:	2c 9d       	mul	r18, r12
    2782:	90 01       	movw	r18, r0
    2784:	11 24       	eor	r1, r1
    2786:	f9 01       	movw	r30, r18
    2788:	ec 50       	subi	r30, 0x0C	; 12
    278a:	f8 4f       	sbci	r31, 0xF8	; 248
    278c:	b4 90       	lpm	r11, Z
    278e:	f9 01       	movw	r30, r18
    2790:	eb 50       	subi	r30, 0x0B	; 11
    2792:	f8 4f       	sbci	r31, 0xF8	; 248
    2794:	84 91       	lpm	r24, Z
    2796:	2a 50       	subi	r18, 0x0A	; 10
    2798:	38 4f       	sbci	r19, 0xF8	; 248
    279a:	f9 01       	movw	r30, r18
    279c:	24 91       	lpm	r18, Z
    279e:	eb 0c       	add	r14, r11
    27a0:	f1 1c       	adc	r15, r1
    27a2:	0e 15       	cp	r16, r14
    27a4:	1f 05       	cpc	r17, r15
    27a6:	bc f4       	brge	.+46     	; 0x27d6 <_Z13CalculateTileii+0xd6>
    27a8:	c8 0f       	add	r28, r24
    27aa:	d1 1d       	adc	r29, r1
    27ac:	6c 17       	cp	r22, r28
    27ae:	7d 07       	cpc	r23, r29
    27b0:	94 f4       	brge	.+36     	; 0x27d6 <_Z13CalculateTileii+0xd6>
    27b2:	46 2f       	mov	r20, r22
    27b4:	49 1b       	sub	r20, r25
    27b6:	60 2f       	mov	r22, r16
    27b8:	6d 19       	sub	r22, r13
    27ba:	cd 01       	movw	r24, r26
    27bc:	8d 56       	subi	r24, 0x6D	; 109
    27be:	9c 4f       	sbci	r25, 0xFC	; 252
    27c0:	df 91       	pop	r29
    27c2:	cf 91       	pop	r28
    27c4:	1f 91       	pop	r17
    27c6:	0f 91       	pop	r16
    27c8:	ff 90       	pop	r15
    27ca:	ef 90       	pop	r14
    27cc:	df 90       	pop	r13
    27ce:	cf 90       	pop	r12
    27d0:	bf 90       	pop	r11
    27d2:	0c 94 7f 11 	jmp	0x22fe	; 0x22fe <_Z21CalculateBuildingTileP8Buildinghh>
    27d6:	4f 5f       	subi	r20, 0xFF	; 255
    27d8:	5f 4f       	sbci	r21, 0xFF	; 255
    27da:	42 38       	cpi	r20, 0x82	; 130
    27dc:	51 05       	cpc	r21, r1
    27de:	09 f0       	breq	.+2      	; 0x27e2 <_Z13CalculateTileii+0xe2>
    27e0:	a4 cf       	rjmp	.-184    	; 0x272a <_Z13CalculateTileii+0x2a>
    27e2:	7b 01       	movw	r14, r22
    27e4:	c8 01       	movw	r24, r16
    27e6:	0e 94 80 12 	call	0x2500	; 0x2500 <_Z14GetConnectionsii>
    27ea:	81 30       	cpi	r24, 0x01	; 1
    27ec:	09 f0       	breq	.+2      	; 0x27f0 <_Z13CalculateTileii+0xf0>
    27ee:	75 c0       	rjmp	.+234    	; 0x28da <_Z13CalculateTileii+0x1da>
    27f0:	41 e0       	ldi	r20, 0x01	; 1
    27f2:	b7 01       	movw	r22, r14
    27f4:	c8 01       	movw	r24, r16
    27f6:	0e 94 41 13 	call	0x2682	; 0x2682 <_Z27GetNeighbouringConnectivityiih>
    27fa:	e8 2f       	mov	r30, r24
    27fc:	f0 e0       	ldi	r31, 0x00	; 0
    27fe:	ea 58       	subi	r30, 0x8A	; 138
    2800:	fe 4f       	sbci	r31, 0xFE	; 254
    2802:	c4 91       	lpm	r28, Z
    2804:	b7 01       	movw	r22, r14
    2806:	c8 01       	movw	r24, r16
    2808:	0e 94 82 0c 	call	0x1904	; 0x1904 <_Z14IsTerrainClearii>
    280c:	81 11       	cpse	r24, r1
    280e:	0d c0       	rjmp	.+26     	; 0x282a <_Z13CalculateTileii+0x12a>
    2810:	8c 2f       	mov	r24, r28
    2812:	81 70       	andi	r24, 0x01	; 1
    2814:	80 5e       	subi	r24, 0xE0	; 224
    2816:	df 91       	pop	r29
    2818:	cf 91       	pop	r28
    281a:	1f 91       	pop	r17
    281c:	0f 91       	pop	r16
    281e:	ff 90       	pop	r15
    2820:	ef 90       	pop	r14
    2822:	df 90       	pop	r13
    2824:	cf 90       	pop	r12
    2826:	bf 90       	pop	r11
    2828:	08 95       	ret
    282a:	50 e0       	ldi	r21, 0x00	; 0
    282c:	40 e0       	ldi	r20, 0x00	; 0
    282e:	d5 e0       	ldi	r29, 0x05	; 5
    2830:	da 01       	movw	r26, r20
    2832:	aa 0f       	add	r26, r26
    2834:	bb 1f       	adc	r27, r27
    2836:	a4 0f       	add	r26, r20
    2838:	b5 1f       	adc	r27, r21
    283a:	bd 01       	movw	r22, r26
    283c:	6d 56       	subi	r22, 0x6D	; 109
    283e:	7c 4f       	sbci	r23, 0xFC	; 252
    2840:	fb 01       	movw	r30, r22
    2842:	91 81       	ldd	r25, Z+1	; 0x01
    2844:	89 2f       	mov	r24, r25
    2846:	80 7f       	andi	r24, 0xF0	; 240
    2848:	09 f4       	brne	.+2      	; 0x284c <_Z13CalculateTileii+0x14c>
    284a:	3f c0       	rjmp	.+126    	; 0x28ca <_Z13CalculateTileii+0x1ca>
    284c:	9d 01       	movw	r18, r26
    284e:	2b 56       	subi	r18, 0x6B	; 107
    2850:	3c 4f       	sbci	r19, 0xFC	; 252
    2852:	f9 01       	movw	r30, r18
    2854:	80 81       	ld	r24, Z
    2856:	86 ff       	sbrs	r24, 6
    2858:	38 c0       	rjmp	.+112    	; 0x28ca <_Z13CalculateTileii+0x1ca>
    285a:	fb 01       	movw	r30, r22
    285c:	80 81       	ld	r24, Z
    285e:	68 2f       	mov	r22, r24
    2860:	6f 73       	andi	r22, 0x3F	; 63
    2862:	70 e0       	ldi	r23, 0x00	; 0
    2864:	9b 01       	movw	r18, r22
    2866:	21 50       	subi	r18, 0x01	; 1
    2868:	31 09       	sbc	r19, r1
    286a:	02 17       	cp	r16, r18
    286c:	13 07       	cpc	r17, r19
    286e:	6c f1       	brlt	.+90     	; 0x28ca <_Z13CalculateTileii+0x1ca>
    2870:	28 2f       	mov	r18, r24
    2872:	22 95       	swap	r18
    2874:	26 95       	lsr	r18
    2876:	26 95       	lsr	r18
    2878:	23 70       	andi	r18, 0x03	; 3
    287a:	e9 2f       	mov	r30, r25
    287c:	ef 70       	andi	r30, 0x0F	; 15
    287e:	ee 0f       	add	r30, r30
    2880:	ee 0f       	add	r30, r30
    2882:	e2 2b       	or	r30, r18
    2884:	2e 2f       	mov	r18, r30
    2886:	30 e0       	ldi	r19, 0x00	; 0
    2888:	c9 01       	movw	r24, r18
    288a:	01 97       	sbiw	r24, 0x01	; 1
    288c:	e8 16       	cp	r14, r24
    288e:	f9 06       	cpc	r15, r25
    2890:	e4 f0       	brlt	.+56     	; 0x28ca <_Z13CalculateTileii+0x1ca>
    2892:	ac 56       	subi	r26, 0x6C	; 108
    2894:	bc 4f       	sbci	r27, 0xFC	; 252
    2896:	8c 91       	ld	r24, X
    2898:	82 95       	swap	r24
    289a:	8f 70       	andi	r24, 0x0F	; 15
    289c:	8d 9f       	mul	r24, r29
    289e:	c0 01       	movw	r24, r0
    28a0:	11 24       	eor	r1, r1
    28a2:	fc 01       	movw	r30, r24
    28a4:	ec 50       	subi	r30, 0x0C	; 12
    28a6:	f8 4f       	sbci	r31, 0xF8	; 248
    28a8:	a4 91       	lpm	r26, Z
    28aa:	fc 01       	movw	r30, r24
    28ac:	eb 50       	subi	r30, 0x0B	; 11
    28ae:	f8 4f       	sbci	r31, 0xF8	; 248
    28b0:	e4 91       	lpm	r30, Z
    28b2:	6a 0f       	add	r22, r26
    28b4:	71 1d       	adc	r23, r1
    28b6:	60 17       	cp	r22, r16
    28b8:	71 07       	cpc	r23, r17
    28ba:	3c f0       	brlt	.+14     	; 0x28ca <_Z13CalculateTileii+0x1ca>
    28bc:	e2 0f       	add	r30, r18
    28be:	f3 2f       	mov	r31, r19
    28c0:	f1 1d       	adc	r31, r1
    28c2:	ee 15       	cp	r30, r14
    28c4:	ff 05       	cpc	r31, r15
    28c6:	0c f0       	brlt	.+2      	; 0x28ca <_Z13CalculateTileii+0x1ca>
    28c8:	92 c0       	rjmp	.+292    	; 0x29ee <_Z13CalculateTileii+0x2ee>
    28ca:	4f 5f       	subi	r20, 0xFF	; 255
    28cc:	5f 4f       	sbci	r21, 0xFF	; 255
    28ce:	42 38       	cpi	r20, 0x82	; 130
    28d0:	51 05       	cpc	r21, r1
    28d2:	09 f0       	breq	.+2      	; 0x28d6 <_Z13CalculateTileii+0x1d6>
    28d4:	ad cf       	rjmp	.-166    	; 0x2830 <_Z13CalculateTileii+0x130>
    28d6:	85 e0       	ldi	r24, 0x05	; 5
    28d8:	17 c0       	rjmp	.+46     	; 0x2908 <_Z13CalculateTileii+0x208>
    28da:	82 30       	cpi	r24, 0x02	; 2
    28dc:	b9 f4       	brne	.+46     	; 0x290c <_Z13CalculateTileii+0x20c>
    28de:	42 e0       	ldi	r20, 0x02	; 2
    28e0:	b7 01       	movw	r22, r14
    28e2:	c8 01       	movw	r24, r16
    28e4:	0e 94 41 13 	call	0x2682	; 0x2682 <_Z27GetNeighbouringConnectivityiih>
    28e8:	e8 2f       	mov	r30, r24
    28ea:	f0 e0       	ldi	r31, 0x00	; 0
    28ec:	ea 58       	subi	r30, 0x8A	; 138
    28ee:	fe 4f       	sbci	r31, 0xFE	; 254
    28f0:	c4 91       	lpm	r28, Z
    28f2:	b7 01       	movw	r22, r14
    28f4:	c8 01       	movw	r24, r16
    28f6:	0e 94 82 0c 	call	0x1904	; 0x1904 <_Z14IsTerrainClearii>
    28fa:	81 11       	cpse	r24, r1
    28fc:	04 c0       	rjmp	.+8      	; 0x2906 <_Z13CalculateTileii+0x206>
    28fe:	8c 2f       	mov	r24, r28
    2900:	81 70       	andi	r24, 0x01	; 1
    2902:	8e 5d       	subi	r24, 0xDE	; 222
    2904:	88 cf       	rjmp	.-240    	; 0x2816 <_Z13CalculateTileii+0x116>
    2906:	85 e3       	ldi	r24, 0x35	; 53
    2908:	8c 0f       	add	r24, r28
    290a:	85 cf       	rjmp	.-246    	; 0x2816 <_Z13CalculateTileii+0x116>
    290c:	83 30       	cpi	r24, 0x03	; 3
    290e:	69 f4       	brne	.+26     	; 0x292a <_Z13CalculateTileii+0x22a>
    2910:	41 e0       	ldi	r20, 0x01	; 1
    2912:	b7 01       	movw	r22, r14
    2914:	c8 01       	movw	r24, r16
    2916:	0e 94 41 13 	call	0x2682	; 0x2682 <_Z27GetNeighbouringConnectivityiih>
    291a:	e8 2f       	mov	r30, r24
    291c:	f0 e0       	ldi	r31, 0x00	; 0
    291e:	ea 58       	subi	r30, 0x8A	; 138
    2920:	fe 4f       	sbci	r31, 0xFE	; 254
    2922:	84 91       	lpm	r24, Z
    2924:	81 70       	andi	r24, 0x01	; 1
    2926:	8f 5c       	subi	r24, 0xCF	; 207
    2928:	76 cf       	rjmp	.-276    	; 0x2816 <_Z13CalculateTileii+0x116>
    292a:	e1 14       	cp	r14, r1
    292c:	f1 04       	cpc	r15, r1
    292e:	09 f4       	brne	.+2      	; 0x2932 <_Z13CalculateTileii+0x232>
    2930:	6a c0       	rjmp	.+212    	; 0x2a06 <_Z13CalculateTileii+0x306>
    2932:	b7 01       	movw	r22, r14
    2934:	61 50       	subi	r22, 0x01	; 1
    2936:	71 09       	sbc	r23, r1
    2938:	c8 01       	movw	r24, r16
    293a:	0e 94 82 0c 	call	0x1904	; 0x1904 <_Z14IsTerrainClearii>
    293e:	d8 2f       	mov	r29, r24
    2940:	0f 32       	cpi	r16, 0x2F	; 47
    2942:	11 05       	cpc	r17, r1
    2944:	09 f4       	brne	.+2      	; 0x2948 <_Z13CalculateTileii+0x248>
    2946:	55 c0       	rjmp	.+170    	; 0x29f2 <_Z13CalculateTileii+0x2f2>
    2948:	b7 01       	movw	r22, r14
    294a:	c8 01       	movw	r24, r16
    294c:	01 96       	adiw	r24, 0x01	; 1
    294e:	0e 94 82 0c 	call	0x1904	; 0x1904 <_Z14IsTerrainClearii>
    2952:	c8 2f       	mov	r28, r24
    2954:	cc 24       	eor	r12, r12
    2956:	c3 94       	inc	r12
    2958:	ff e2       	ldi	r31, 0x2F	; 47
    295a:	ef 16       	cp	r14, r31
    295c:	f1 04       	cpc	r15, r1
    295e:	39 f0       	breq	.+14     	; 0x296e <_Z13CalculateTileii+0x26e>
    2960:	b7 01       	movw	r22, r14
    2962:	6f 5f       	subi	r22, 0xFF	; 255
    2964:	7f 4f       	sbci	r23, 0xFF	; 255
    2966:	c8 01       	movw	r24, r16
    2968:	0e 94 82 0c 	call	0x1904	; 0x1904 <_Z14IsTerrainClearii>
    296c:	c8 2e       	mov	r12, r24
    296e:	dd 24       	eor	r13, r13
    2970:	d3 94       	inc	r13
    2972:	01 15       	cp	r16, r1
    2974:	11 05       	cpc	r17, r1
    2976:	31 f0       	breq	.+12     	; 0x2984 <_Z13CalculateTileii+0x284>
    2978:	b7 01       	movw	r22, r14
    297a:	c8 01       	movw	r24, r16
    297c:	01 97       	sbiw	r24, 0x01	; 1
    297e:	0e 94 82 0c 	call	0x1904	; 0x1904 <_Z14IsTerrainClearii>
    2982:	d8 2e       	mov	r13, r24
    2984:	b7 01       	movw	r22, r14
    2986:	c8 01       	movw	r24, r16
    2988:	0e 94 82 0c 	call	0x1904	; 0x1904 <_Z14IsTerrainClearii>
    298c:	88 23       	and	r24, r24
    298e:	09 f1       	breq	.+66     	; 0x29d2 <_Z13CalculateTileii+0x2d2>
    2990:	d1 11       	cpse	r29, r1
    2992:	14 c0       	rjmp	.+40     	; 0x29bc <_Z13CalculateTileii+0x2bc>
    2994:	8f e4       	ldi	r24, 0x4F	; 79
    2996:	dd 20       	and	r13, r13
    2998:	09 f4       	brne	.+2      	; 0x299c <_Z13CalculateTileii+0x29c>
    299a:	3d cf       	rjmp	.-390    	; 0x2816 <_Z13CalculateTileii+0x116>
    299c:	8f e5       	ldi	r24, 0x5F	; 95
    299e:	cc 23       	and	r28, r28
    29a0:	09 f4       	brne	.+2      	; 0x29a4 <_Z13CalculateTileii+0x2a4>
    29a2:	39 cf       	rjmp	.-398    	; 0x2816 <_Z13CalculateTileii+0x116>
    29a4:	87 e6       	ldi	r24, 0x67	; 103
    29a6:	e8 9e       	mul	r14, r24
    29a8:	80 2d       	mov	r24, r0
    29aa:	11 24       	eor	r1, r1
    29ac:	6f ea       	ldi	r22, 0xAF	; 175
    29ae:	06 9f       	mul	r16, r22
    29b0:	00 2d       	mov	r16, r0
    29b2:	11 24       	eor	r1, r1
    29b4:	80 27       	eor	r24, r16
    29b6:	83 70       	andi	r24, 0x03	; 3
    29b8:	8f 5f       	subi	r24, 0xFF	; 255
    29ba:	2d cf       	rjmp	.-422    	; 0x2816 <_Z13CalculateTileii+0x116>
    29bc:	c1 10       	cpse	r12, r1
    29be:	f2 cf       	rjmp	.-28     	; 0x29a4 <_Z13CalculateTileii+0x2a4>
    29c0:	8f e6       	ldi	r24, 0x6F	; 111
    29c2:	dd 20       	and	r13, r13
    29c4:	09 f4       	brne	.+2      	; 0x29c8 <_Z13CalculateTileii+0x2c8>
    29c6:	27 cf       	rjmp	.-434    	; 0x2816 <_Z13CalculateTileii+0x116>
    29c8:	8f e7       	ldi	r24, 0x7F	; 127
    29ca:	cc 23       	and	r28, r28
    29cc:	09 f4       	brne	.+2      	; 0x29d0 <_Z13CalculateTileii+0x2d0>
    29ce:	23 cf       	rjmp	.-442    	; 0x2816 <_Z13CalculateTileii+0x116>
    29d0:	e9 cf       	rjmp	.-46     	; 0x29a4 <_Z13CalculateTileii+0x2a4>
    29d2:	87 e6       	ldi	r24, 0x67	; 103
    29d4:	e8 9e       	mul	r14, r24
    29d6:	80 2d       	mov	r24, r0
    29d8:	11 24       	eor	r1, r1
    29da:	6f ea       	ldi	r22, 0xAF	; 175
    29dc:	06 9f       	mul	r16, r22
    29de:	00 2d       	mov	r16, r0
    29e0:	11 24       	eor	r1, r1
    29e2:	80 27       	eor	r24, r16
    29e4:	83 70       	andi	r24, 0x03	; 3
    29e6:	8f 5e       	subi	r24, 0xEF	; 239
    29e8:	16 cf       	rjmp	.-468    	; 0x2816 <_Z13CalculateTileii+0x116>
    29ea:	80 e0       	ldi	r24, 0x00	; 0
    29ec:	14 cf       	rjmp	.-472    	; 0x2816 <_Z13CalculateTileii+0x116>
    29ee:	85 e1       	ldi	r24, 0x15	; 21
    29f0:	8b cf       	rjmp	.-234    	; 0x2908 <_Z13CalculateTileii+0x208>
    29f2:	cc 24       	eor	r12, r12
    29f4:	c3 94       	inc	r12
    29f6:	c1 e0       	ldi	r28, 0x01	; 1
    29f8:	8f e2       	ldi	r24, 0x2F	; 47
    29fa:	e8 16       	cp	r14, r24
    29fc:	f1 04       	cpc	r15, r1
    29fe:	09 f4       	brne	.+2      	; 0x2a02 <_Z13CalculateTileii+0x302>
    2a00:	bb cf       	rjmp	.-138    	; 0x2978 <_Z13CalculateTileii+0x278>
    2a02:	c1 e0       	ldi	r28, 0x01	; 1
    2a04:	ad cf       	rjmp	.-166    	; 0x2960 <_Z13CalculateTileii+0x260>
    2a06:	d1 e0       	ldi	r29, 0x01	; 1
    2a08:	0f 32       	cpi	r16, 0x2F	; 47
    2a0a:	11 05       	cpc	r17, r1
    2a0c:	09 f0       	breq	.+2      	; 0x2a10 <_Z13CalculateTileii+0x310>
    2a0e:	9c cf       	rjmp	.-200    	; 0x2948 <_Z13CalculateTileii+0x248>
    2a10:	f8 cf       	rjmp	.-16     	; 0x2a02 <_Z13CalculateTileii+0x302>

00002a12 <_Z11RefreshTilehh>:
    2a12:	cf 93       	push	r28
    2a14:	df 93       	push	r29
    2a16:	90 e0       	ldi	r25, 0x00	; 0
    2a18:	20 91 24 0a 	lds	r18, 0x0A24	; 0x800a24 <CachedScrollX>
    2a1c:	ac 01       	movw	r20, r24
    2a1e:	42 1b       	sub	r20, r18
    2a20:	51 09       	sbc	r21, r1
    2a22:	27 fd       	sbrc	r18, 7
    2a24:	53 95       	inc	r21
    2a26:	9a 01       	movw	r18, r20
    2a28:	41 31       	cpi	r20, 0x11	; 17
    2a2a:	51 05       	cpc	r21, r1
    2a2c:	c0 f4       	brcc	.+48     	; 0x2a5e <_Z11RefreshTilehh+0x4c>
    2a2e:	70 e0       	ldi	r23, 0x00	; 0
    2a30:	40 91 23 0a 	lds	r20, 0x0A23	; 0x800a23 <CachedScrollY>
    2a34:	fb 01       	movw	r30, r22
    2a36:	e4 1b       	sub	r30, r20
    2a38:	f1 09       	sbc	r31, r1
    2a3a:	47 fd       	sbrc	r20, 7
    2a3c:	f3 95       	inc	r31
    2a3e:	af 01       	movw	r20, r30
    2a40:	39 97       	sbiw	r30, 0x09	; 9
    2a42:	68 f4       	brcc	.+26     	; 0x2a5e <_Z11RefreshTilehh+0x4c>
    2a44:	e1 e1       	ldi	r30, 0x11	; 17
    2a46:	e4 9f       	mul	r30, r20
    2a48:	e0 01       	movw	r28, r0
    2a4a:	e5 9f       	mul	r30, r21
    2a4c:	d0 0d       	add	r29, r0
    2a4e:	11 24       	eor	r1, r1
    2a50:	c2 0f       	add	r28, r18
    2a52:	d3 1f       	adc	r29, r19
    2a54:	0e 94 80 13 	call	0x2700	; 0x2700 <_Z13CalculateTileii>
    2a58:	c6 57       	subi	r28, 0x76	; 118
    2a5a:	d6 4f       	sbci	r29, 0xF6	; 246
    2a5c:	88 83       	st	Y, r24
    2a5e:	df 91       	pop	r29
    2a60:	cf 91       	pop	r28
    2a62:	08 95       	ret

00002a64 <_Z20RefreshBuildingTilesP8Building>:
    2a64:	4f 92       	push	r4
    2a66:	5f 92       	push	r5
    2a68:	6f 92       	push	r6
    2a6a:	7f 92       	push	r7
    2a6c:	8f 92       	push	r8
    2a6e:	9f 92       	push	r9
    2a70:	af 92       	push	r10
    2a72:	bf 92       	push	r11
    2a74:	cf 92       	push	r12
    2a76:	df 92       	push	r13
    2a78:	ef 92       	push	r14
    2a7a:	ff 92       	push	r15
    2a7c:	0f 93       	push	r16
    2a7e:	1f 93       	push	r17
    2a80:	cf 93       	push	r28
    2a82:	df 93       	push	r29
    2a84:	6c 01       	movw	r12, r24
    2a86:	dc 01       	movw	r26, r24
    2a88:	11 96       	adiw	r26, 0x01	; 1
    2a8a:	cc 91       	ld	r28, X
    2a8c:	c2 95       	swap	r28
    2a8e:	cf 70       	andi	r28, 0x0F	; 15
    2a90:	b5 e0       	ldi	r27, 0x05	; 5
    2a92:	cb 9f       	mul	r28, r27
    2a94:	e0 01       	movw	r28, r0
    2a96:	11 24       	eor	r1, r1
    2a98:	fe 01       	movw	r30, r28
    2a9a:	ec 50       	subi	r30, 0x0C	; 12
    2a9c:	f8 4f       	sbci	r31, 0xF8	; 248
    2a9e:	04 91       	lpm	r16, Z
    2aa0:	cb 50       	subi	r28, 0x0B	; 11
    2aa2:	d8 4f       	sbci	r29, 0xF8	; 248
    2aa4:	fe 01       	movw	r30, r28
    2aa6:	c4 91       	lpm	r28, Z
    2aa8:	f1 2c       	mov	r15, r1
    2aaa:	e1 2c       	mov	r14, r1
    2aac:	d0 e0       	ldi	r29, 0x00	; 0
    2aae:	10 e0       	ldi	r17, 0x00	; 0
    2ab0:	81 e1       	ldi	r24, 0x11	; 17
    2ab2:	58 2e       	mov	r5, r24
    2ab4:	d6 01       	movw	r26, r12
    2ab6:	ec 91       	ld	r30, X
    2ab8:	8e 2f       	mov	r24, r30
    2aba:	82 95       	swap	r24
    2abc:	86 95       	lsr	r24
    2abe:	86 95       	lsr	r24
    2ac0:	83 70       	andi	r24, 0x03	; 3
    2ac2:	11 96       	adiw	r26, 0x01	; 1
    2ac4:	6c 90       	ld	r6, X
    2ac6:	b6 2d       	mov	r27, r6
    2ac8:	bf 70       	andi	r27, 0x0F	; 15
    2aca:	6b 2e       	mov	r6, r27
    2acc:	66 0c       	add	r6, r6
    2ace:	66 0c       	add	r6, r6
    2ad0:	68 2a       	or	r6, r24
    2ad2:	ec 16       	cp	r14, r28
    2ad4:	fd 06       	cpc	r15, r29
    2ad6:	dc f5       	brge	.+118    	; 0x2b4e <_Z20RefreshBuildingTilesP8Building+0xea>
    2ad8:	4e 2c       	mov	r4, r14
    2ada:	6e 0c       	add	r6, r14
    2adc:	91 2c       	mov	r9, r1
    2ade:	81 2c       	mov	r8, r1
    2ae0:	71 2c       	mov	r7, r1
    2ae2:	f6 01       	movw	r30, r12
    2ae4:	a0 80       	ld	r10, Z
    2ae6:	fa 2d       	mov	r31, r10
    2ae8:	ff 73       	andi	r31, 0x3F	; 63
    2aea:	af 2e       	mov	r10, r31
    2aec:	80 16       	cp	r8, r16
    2aee:	91 06       	cpc	r9, r17
    2af0:	54 f5       	brge	.+84     	; 0x2b46 <_Z20RefreshBuildingTilesP8Building+0xe2>
    2af2:	a8 0c       	add	r10, r8
    2af4:	b1 2c       	mov	r11, r1
    2af6:	80 91 24 0a 	lds	r24, 0x0A24	; 0x800a24 <CachedScrollX>
    2afa:	a8 1a       	sub	r10, r24
    2afc:	b1 08       	sbc	r11, r1
    2afe:	87 fd       	sbrc	r24, 7
    2b00:	b3 94       	inc	r11
    2b02:	21 e1       	ldi	r18, 0x11	; 17
    2b04:	a2 16       	cp	r10, r18
    2b06:	b1 04       	cpc	r11, r1
    2b08:	d0 f4       	brcc	.+52     	; 0x2b3e <_Z20RefreshBuildingTilesP8Building+0xda>
    2b0a:	80 91 23 0a 	lds	r24, 0x0A23	; 0x800a23 <CachedScrollY>
    2b0e:	d3 01       	movw	r26, r6
    2b10:	a8 1b       	sub	r26, r24
    2b12:	b1 09       	sbc	r27, r1
    2b14:	87 fd       	sbrc	r24, 7
    2b16:	b3 95       	inc	r27
    2b18:	a9 30       	cpi	r26, 0x09	; 9
    2b1a:	b1 05       	cpc	r27, r1
    2b1c:	80 f4       	brcc	.+32     	; 0x2b3e <_Z20RefreshBuildingTilesP8Building+0xda>
    2b1e:	5a 9e       	mul	r5, r26
    2b20:	90 01       	movw	r18, r0
    2b22:	5b 9e       	mul	r5, r27
    2b24:	30 0d       	add	r19, r0
    2b26:	11 24       	eor	r1, r1
    2b28:	a2 0e       	add	r10, r18
    2b2a:	b3 1e       	adc	r11, r19
    2b2c:	44 2d       	mov	r20, r4
    2b2e:	68 2d       	mov	r22, r8
    2b30:	c6 01       	movw	r24, r12
    2b32:	0e 94 7f 11 	call	0x22fe	; 0x22fe <_Z21CalculateBuildingTileP8Buildinghh>
    2b36:	f5 01       	movw	r30, r10
    2b38:	e6 57       	subi	r30, 0x76	; 118
    2b3a:	f6 4f       	sbci	r31, 0xF6	; 246
    2b3c:	80 83       	st	Z, r24
    2b3e:	bf ef       	ldi	r27, 0xFF	; 255
    2b40:	8b 1a       	sub	r8, r27
    2b42:	9b 0a       	sbc	r9, r27
    2b44:	ce cf       	rjmp	.-100    	; 0x2ae2 <_Z20RefreshBuildingTilesP8Building+0x7e>
    2b46:	ef ef       	ldi	r30, 0xFF	; 255
    2b48:	ee 1a       	sub	r14, r30
    2b4a:	fe 0a       	sbc	r15, r30
    2b4c:	b3 cf       	rjmp	.-154    	; 0x2ab4 <_Z20RefreshBuildingTilesP8Building+0x50>
    2b4e:	ef 73       	andi	r30, 0x3F	; 63
    2b50:	bb 24       	eor	r11, r11
    2b52:	ba 94       	dec	r11
    2b54:	be 0e       	add	r11, r30
    2b56:	e1 11       	cpse	r30, r1
    2b58:	01 c0       	rjmp	.+2      	; 0x2b5c <_Z20RefreshBuildingTilesP8Building+0xf8>
    2b5a:	b1 2c       	mov	r11, r1
    2b5c:	0e 0f       	add	r16, r30
    2b5e:	11 1d       	adc	r17, r1
    2b60:	00 33       	cpi	r16, 0x30	; 48
    2b62:	11 05       	cpc	r17, r1
    2b64:	14 f0       	brlt	.+4      	; 0x2b6a <_Z20RefreshBuildingTilesP8Building+0x106>
    2b66:	0f e2       	ldi	r16, 0x2F	; 47
    2b68:	10 e0       	ldi	r17, 0x00	; 0
    2b6a:	70 2e       	mov	r7, r16
    2b6c:	aa 24       	eor	r10, r10
    2b6e:	aa 94       	dec	r10
    2b70:	a6 0c       	add	r10, r6
    2b72:	61 10       	cpse	r6, r1
    2b74:	01 c0       	rjmp	.+2      	; 0x2b78 <_Z20RefreshBuildingTilesP8Building+0x114>
    2b76:	a1 2c       	mov	r10, r1
    2b78:	c6 0d       	add	r28, r6
    2b7a:	d1 1d       	adc	r29, r1
    2b7c:	c0 33       	cpi	r28, 0x30	; 48
    2b7e:	d1 05       	cpc	r29, r1
    2b80:	14 f0       	brlt	.+4      	; 0x2b86 <_Z20RefreshBuildingTilesP8Building+0x122>
    2b82:	cf e2       	ldi	r28, 0x2F	; 47
    2b84:	d0 e0       	ldi	r29, 0x00	; 0
    2b86:	6c 2e       	mov	r6, r28
    2b88:	8b 2c       	mov	r8, r11
    2b8a:	91 2c       	mov	r9, r1
    2b8c:	64 01       	movw	r12, r8
    2b8e:	ea 2c       	mov	r14, r10
    2b90:	f1 2c       	mov	r15, r1
    2b92:	0c 15       	cp	r16, r12
    2b94:	1d 05       	cpc	r17, r13
    2b96:	c4 f0       	brlt	.+48     	; 0x2bc8 <_Z20RefreshBuildingTilesP8Building+0x164>
    2b98:	b7 01       	movw	r22, r14
    2b9a:	c6 01       	movw	r24, r12
    2b9c:	0e 94 80 12 	call	0x2500	; 0x2500 <_Z14GetConnectionsii>
    2ba0:	80 ff       	sbrs	r24, 0
    2ba2:	04 c0       	rjmp	.+8      	; 0x2bac <_Z20RefreshBuildingTilesP8Building+0x148>
    2ba4:	6a 2d       	mov	r22, r10
    2ba6:	8c 2d       	mov	r24, r12
    2ba8:	0e 94 09 15 	call	0x2a12	; 0x2a12 <_Z11RefreshTilehh>
    2bac:	be 01       	movw	r22, r28
    2bae:	c6 01       	movw	r24, r12
    2bb0:	0e 94 80 12 	call	0x2500	; 0x2500 <_Z14GetConnectionsii>
    2bb4:	80 ff       	sbrs	r24, 0
    2bb6:	04 c0       	rjmp	.+8      	; 0x2bc0 <_Z20RefreshBuildingTilesP8Building+0x15c>
    2bb8:	66 2d       	mov	r22, r6
    2bba:	8c 2d       	mov	r24, r12
    2bbc:	0e 94 09 15 	call	0x2a12	; 0x2a12 <_Z11RefreshTilehh>
    2bc0:	ff ef       	ldi	r31, 0xFF	; 255
    2bc2:	cf 1a       	sub	r12, r31
    2bc4:	df 0a       	sbc	r13, r31
    2bc6:	e3 cf       	rjmp	.-58     	; 0x2b8e <_Z20RefreshBuildingTilesP8Building+0x12a>
    2bc8:	ce 15       	cp	r28, r14
    2bca:	df 05       	cpc	r29, r15
    2bcc:	c4 f0       	brlt	.+48     	; 0x2bfe <_Z20RefreshBuildingTilesP8Building+0x19a>
    2bce:	b7 01       	movw	r22, r14
    2bd0:	c4 01       	movw	r24, r8
    2bd2:	0e 94 80 12 	call	0x2500	; 0x2500 <_Z14GetConnectionsii>
    2bd6:	80 ff       	sbrs	r24, 0
    2bd8:	04 c0       	rjmp	.+8      	; 0x2be2 <_Z20RefreshBuildingTilesP8Building+0x17e>
    2bda:	6e 2d       	mov	r22, r14
    2bdc:	8b 2d       	mov	r24, r11
    2bde:	0e 94 09 15 	call	0x2a12	; 0x2a12 <_Z11RefreshTilehh>
    2be2:	b7 01       	movw	r22, r14
    2be4:	c8 01       	movw	r24, r16
    2be6:	0e 94 80 12 	call	0x2500	; 0x2500 <_Z14GetConnectionsii>
    2bea:	80 ff       	sbrs	r24, 0
    2bec:	04 c0       	rjmp	.+8      	; 0x2bf6 <_Z20RefreshBuildingTilesP8Building+0x192>
    2bee:	6e 2d       	mov	r22, r14
    2bf0:	87 2d       	mov	r24, r7
    2bf2:	0e 94 09 15 	call	0x2a12	; 0x2a12 <_Z11RefreshTilehh>
    2bf6:	2f ef       	ldi	r18, 0xFF	; 255
    2bf8:	e2 1a       	sub	r14, r18
    2bfa:	f2 0a       	sbc	r15, r18
    2bfc:	e5 cf       	rjmp	.-54     	; 0x2bc8 <_Z20RefreshBuildingTilesP8Building+0x164>
    2bfe:	df 91       	pop	r29
    2c00:	cf 91       	pop	r28
    2c02:	1f 91       	pop	r17
    2c04:	0f 91       	pop	r16
    2c06:	ff 90       	pop	r15
    2c08:	ef 90       	pop	r14
    2c0a:	df 90       	pop	r13
    2c0c:	cf 90       	pop	r12
    2c0e:	bf 90       	pop	r11
    2c10:	af 90       	pop	r10
    2c12:	9f 90       	pop	r9
    2c14:	8f 90       	pop	r8
    2c16:	7f 90       	pop	r7
    2c18:	6f 90       	pop	r6
    2c1a:	5f 90       	pop	r5
    2c1c:	4f 90       	pop	r4
    2c1e:	08 95       	ret

00002c20 <_Z33RefreshTileAndConnectedNeighbourshh>:
    2c20:	ef 92       	push	r14
    2c22:	ff 92       	push	r15
    2c24:	0f 93       	push	r16
    2c26:	1f 93       	push	r17
    2c28:	cf 93       	push	r28
    2c2a:	df 93       	push	r29
    2c2c:	d8 2f       	mov	r29, r24
    2c2e:	c6 2f       	mov	r28, r22
    2c30:	0e 94 09 15 	call	0x2a12	; 0x2a12 <_Z11RefreshTilehh>
    2c34:	0c 2f       	mov	r16, r28
    2c36:	10 e0       	ldi	r17, 0x00	; 0
    2c38:	ed 2e       	mov	r14, r29
    2c3a:	f1 2c       	mov	r15, r1
    2c3c:	d1 11       	cpse	r29, r1
    2c3e:	0d c0       	rjmp	.+26     	; 0x2c5a <_Z33RefreshTileAndConnectedNeighbourshh+0x3a>
    2c40:	b8 01       	movw	r22, r16
    2c42:	c7 01       	movw	r24, r14
    2c44:	01 96       	adiw	r24, 0x01	; 1
    2c46:	0e 94 80 12 	call	0x2500	; 0x2500 <_Z14GetConnectionsii>
    2c4a:	88 23       	and	r24, r24
    2c4c:	a1 f0       	breq	.+40     	; 0x2c76 <_Z33RefreshTileAndConnectedNeighbourshh+0x56>
    2c4e:	6c 2f       	mov	r22, r28
    2c50:	81 e0       	ldi	r24, 0x01	; 1
    2c52:	8d 0f       	add	r24, r29
    2c54:	0e 94 09 15 	call	0x2a12	; 0x2a12 <_Z11RefreshTilehh>
    2c58:	0e c0       	rjmp	.+28     	; 0x2c76 <_Z33RefreshTileAndConnectedNeighbourshh+0x56>
    2c5a:	b8 01       	movw	r22, r16
    2c5c:	c7 01       	movw	r24, r14
    2c5e:	01 97       	sbiw	r24, 0x01	; 1
    2c60:	0e 94 80 12 	call	0x2500	; 0x2500 <_Z14GetConnectionsii>
    2c64:	88 23       	and	r24, r24
    2c66:	29 f0       	breq	.+10     	; 0x2c72 <_Z33RefreshTileAndConnectedNeighbourshh+0x52>
    2c68:	6c 2f       	mov	r22, r28
    2c6a:	8f ef       	ldi	r24, 0xFF	; 255
    2c6c:	8d 0f       	add	r24, r29
    2c6e:	0e 94 09 15 	call	0x2a12	; 0x2a12 <_Z11RefreshTilehh>
    2c72:	df 32       	cpi	r29, 0x2F	; 47
    2c74:	28 f3       	brcs	.-54     	; 0x2c40 <_Z33RefreshTileAndConnectedNeighbourshh+0x20>
    2c76:	c1 11       	cpse	r28, r1
    2c78:	13 c0       	rjmp	.+38     	; 0x2ca0 <_Z33RefreshTileAndConnectedNeighbourshh+0x80>
    2c7a:	b8 01       	movw	r22, r16
    2c7c:	6f 5f       	subi	r22, 0xFF	; 255
    2c7e:	7f 4f       	sbci	r23, 0xFF	; 255
    2c80:	c7 01       	movw	r24, r14
    2c82:	0e 94 80 12 	call	0x2500	; 0x2500 <_Z14GetConnectionsii>
    2c86:	88 23       	and	r24, r24
    2c88:	d1 f0       	breq	.+52     	; 0x2cbe <_Z33RefreshTileAndConnectedNeighbourshh+0x9e>
    2c8a:	61 e0       	ldi	r22, 0x01	; 1
    2c8c:	6c 0f       	add	r22, r28
    2c8e:	8d 2f       	mov	r24, r29
    2c90:	df 91       	pop	r29
    2c92:	cf 91       	pop	r28
    2c94:	1f 91       	pop	r17
    2c96:	0f 91       	pop	r16
    2c98:	ff 90       	pop	r15
    2c9a:	ef 90       	pop	r14
    2c9c:	0c 94 09 15 	jmp	0x2a12	; 0x2a12 <_Z11RefreshTilehh>
    2ca0:	b8 01       	movw	r22, r16
    2ca2:	61 50       	subi	r22, 0x01	; 1
    2ca4:	71 09       	sbc	r23, r1
    2ca6:	c7 01       	movw	r24, r14
    2ca8:	0e 94 80 12 	call	0x2500	; 0x2500 <_Z14GetConnectionsii>
    2cac:	88 23       	and	r24, r24
    2cae:	29 f0       	breq	.+10     	; 0x2cba <_Z33RefreshTileAndConnectedNeighbourshh+0x9a>
    2cb0:	6f ef       	ldi	r22, 0xFF	; 255
    2cb2:	6c 0f       	add	r22, r28
    2cb4:	8d 2f       	mov	r24, r29
    2cb6:	0e 94 09 15 	call	0x2a12	; 0x2a12 <_Z11RefreshTilehh>
    2cba:	cf 32       	cpi	r28, 0x2F	; 47
    2cbc:	f0 f2       	brcs	.-68     	; 0x2c7a <_Z33RefreshTileAndConnectedNeighbourshh+0x5a>
    2cbe:	df 91       	pop	r29
    2cc0:	cf 91       	pop	r28
    2cc2:	1f 91       	pop	r17
    2cc4:	0f 91       	pop	r16
    2cc6:	ff 90       	pop	r15
    2cc8:	ef 90       	pop	r14
    2cca:	08 95       	ret

00002ccc <_Z21ResetVisibleTileCachev>:
    2ccc:	6f 92       	push	r6
    2cce:	7f 92       	push	r7
    2cd0:	8f 92       	push	r8
    2cd2:	9f 92       	push	r9
    2cd4:	af 92       	push	r10
    2cd6:	bf 92       	push	r11
    2cd8:	cf 92       	push	r12
    2cda:	df 92       	push	r13
    2cdc:	ef 92       	push	r14
    2cde:	ff 92       	push	r15
    2ce0:	0f 93       	push	r16
    2ce2:	1f 93       	push	r17
    2ce4:	cf 93       	push	r28
    2ce6:	df 93       	push	r29
    2ce8:	c0 91 1a 05 	lds	r28, 0x051A	; 0x80051a <UIState>
    2cec:	d0 91 1b 05 	lds	r29, 0x051B	; 0x80051b <UIState+0x1>
    2cf0:	83 e0       	ldi	r24, 0x03	; 3
    2cf2:	d5 95       	asr	r29
    2cf4:	c7 95       	ror	r28
    2cf6:	8a 95       	dec	r24
    2cf8:	e1 f7       	brne	.-8      	; 0x2cf2 <_Z21ResetVisibleTileCachev+0x26>
    2cfa:	c0 93 24 0a 	sts	0x0A24, r28	; 0x800a24 <CachedScrollX>
    2cfe:	60 90 1c 05 	lds	r6, 0x051C	; 0x80051c <UIState+0x2>
    2d02:	70 90 1d 05 	lds	r7, 0x051D	; 0x80051d <UIState+0x3>
    2d06:	93 e0       	ldi	r25, 0x03	; 3
    2d08:	75 94       	asr	r7
    2d0a:	67 94       	ror	r6
    2d0c:	9a 95       	dec	r25
    2d0e:	e1 f7       	brne	.-8      	; 0x2d08 <_Z21ResetVisibleTileCachev+0x3c>
    2d10:	60 92 23 0a 	sts	0x0A23, r6	; 0x800a23 <CachedScrollY>
    2d14:	2a e8       	ldi	r18, 0x8A	; 138
    2d16:	c2 2e       	mov	r12, r18
    2d18:	29 e0       	ldi	r18, 0x09	; 9
    2d1a:	d2 2e       	mov	r13, r18
    2d1c:	10 e0       	ldi	r17, 0x00	; 0
    2d1e:	00 e0       	ldi	r16, 0x00	; 0
    2d20:	06 2c       	mov	r0, r6
    2d22:	00 0c       	add	r0, r0
    2d24:	77 08       	sbc	r7, r7
    2d26:	0c 2e       	mov	r0, r28
    2d28:	00 0c       	add	r0, r0
    2d2a:	dd 0b       	sbc	r29, r29
    2d2c:	46 01       	movw	r8, r12
    2d2e:	f1 2c       	mov	r15, r1
    2d30:	e1 2c       	mov	r14, r1
    2d32:	53 01       	movw	r10, r6
    2d34:	a0 0e       	add	r10, r16
    2d36:	b1 1e       	adc	r11, r17
    2d38:	b5 01       	movw	r22, r10
    2d3a:	ce 01       	movw	r24, r28
    2d3c:	8e 0d       	add	r24, r14
    2d3e:	9f 1d       	adc	r25, r15
    2d40:	0e 94 80 13 	call	0x2700	; 0x2700 <_Z13CalculateTileii>
    2d44:	f4 01       	movw	r30, r8
    2d46:	81 93       	st	Z+, r24
    2d48:	4f 01       	movw	r8, r30
    2d4a:	ff ef       	ldi	r31, 0xFF	; 255
    2d4c:	ef 1a       	sub	r14, r31
    2d4e:	ff 0a       	sbc	r15, r31
    2d50:	81 e1       	ldi	r24, 0x11	; 17
    2d52:	e8 16       	cp	r14, r24
    2d54:	f1 04       	cpc	r15, r1
    2d56:	81 f7       	brne	.-32     	; 0x2d38 <_Z21ResetVisibleTileCachev+0x6c>
    2d58:	0f 5f       	subi	r16, 0xFF	; 255
    2d5a:	1f 4f       	sbci	r17, 0xFF	; 255
    2d5c:	e1 e1       	ldi	r30, 0x11	; 17
    2d5e:	ce 0e       	add	r12, r30
    2d60:	d1 1c       	adc	r13, r1
    2d62:	09 30       	cpi	r16, 0x09	; 9
    2d64:	11 05       	cpc	r17, r1
    2d66:	11 f7       	brne	.-60     	; 0x2d2c <_Z21ResetVisibleTileCachev+0x60>
    2d68:	df 91       	pop	r29
    2d6a:	cf 91       	pop	r28
    2d6c:	1f 91       	pop	r17
    2d6e:	0f 91       	pop	r16
    2d70:	ff 90       	pop	r15
    2d72:	ef 90       	pop	r14
    2d74:	df 90       	pop	r13
    2d76:	cf 90       	pop	r12
    2d78:	bf 90       	pop	r11
    2d7a:	af 90       	pop	r10
    2d7c:	9f 90       	pop	r9
    2d7e:	8f 90       	pop	r8
    2d80:	7f 90       	pop	r7
    2d82:	6f 90       	pop	r6
    2d84:	08 95       	ret

00002d86 <_Z8InitGamev>:
    2d86:	e9 e3       	ldi	r30, 0x39	; 57
    2d88:	f1 e0       	ldi	r31, 0x01	; 1
    2d8a:	11 92       	st	Z+, r1
    2d8c:	85 e0       	ldi	r24, 0x05	; 5
    2d8e:	e9 31       	cpi	r30, 0x19	; 25
    2d90:	f8 07       	cpc	r31, r24
    2d92:	d9 f7       	brne	.-10     	; 0x2d8a <_Z8InitGamev+0x4>
    2d94:	87 e0       	ldi	r24, 0x07	; 7
    2d96:	80 93 82 03 	sts	0x0382, r24	; 0x800382 <State+0x249>
    2d9a:	80 e9       	ldi	r24, 0x90	; 144
    2d9c:	94 e2       	ldi	r25, 0x24	; 36
    2d9e:	90 93 92 03 	sts	0x0392, r25	; 0x800392 <State+0x259>
    2da2:	80 93 91 03 	sts	0x0391, r24	; 0x800391 <State+0x258>
    2da6:	0e 94 66 16 	call	0x2ccc	; 0x2ccc <_Z21ResetVisibleTileCachev>
    2daa:	81 e0       	ldi	r24, 0x01	; 1
    2dac:	80 93 20 05 	sts	0x0520, r24	; 0x800520 <UIState+0x6>
    2db0:	88 e1       	ldi	r24, 0x18	; 24
    2db2:	80 93 1e 05 	sts	0x051E, r24	; 0x80051e <UIState+0x4>
    2db6:	80 93 1f 05 	sts	0x051F, r24	; 0x80051f <UIState+0x5>
    2dba:	84 e8       	ldi	r24, 0x84	; 132
    2dbc:	90 e0       	ldi	r25, 0x00	; 0
    2dbe:	90 93 1b 05 	sts	0x051B, r25	; 0x80051b <UIState+0x1>
    2dc2:	80 93 1a 05 	sts	0x051A, r24	; 0x80051a <UIState>
    2dc6:	84 ea       	ldi	r24, 0xA4	; 164
    2dc8:	90 e0       	ldi	r25, 0x00	; 0
    2dca:	90 93 1d 05 	sts	0x051D, r25	; 0x80051d <UIState+0x3>
    2dce:	80 93 1c 05 	sts	0x051C, r24	; 0x80051c <UIState+0x2>
    2dd2:	80 e1       	ldi	r24, 0x10	; 16
    2dd4:	97 e2       	ldi	r25, 0x27	; 39
    2dd6:	a0 e0       	ldi	r26, 0x00	; 0
    2dd8:	b0 e0       	ldi	r27, 0x00	; 0
    2dda:	80 93 3d 01 	sts	0x013D, r24	; 0x80013d <State+0x4>
    2dde:	90 93 3e 01 	sts	0x013E, r25	; 0x80013e <State+0x5>
    2de2:	a0 93 3f 01 	sts	0x013F, r26	; 0x80013f <State+0x6>
    2de6:	b0 93 40 01 	sts	0x0140, r27	; 0x800140 <State+0x7>
    2dea:	80 91 23 05 	lds	r24, 0x0523	; 0x800523 <UIState+0x9>
    2dee:	81 60       	ori	r24, 0x01	; 1
    2df0:	80 93 23 05 	sts	0x0523, r24	; 0x800523 <UIState+0x9>
    2df4:	08 95       	ret

00002df6 <_Z15DestroyBuildingP8Building>:
    2df6:	8f 92       	push	r8
    2df8:	9f 92       	push	r9
    2dfa:	af 92       	push	r10
    2dfc:	bf 92       	push	r11
    2dfe:	cf 92       	push	r12
    2e00:	df 92       	push	r13
    2e02:	ef 92       	push	r14
    2e04:	ff 92       	push	r15
    2e06:	0f 93       	push	r16
    2e08:	1f 93       	push	r17
    2e0a:	cf 93       	push	r28
    2e0c:	df 93       	push	r29
    2e0e:	8c 01       	movw	r16, r24
    2e10:	dc 01       	movw	r26, r24
    2e12:	11 96       	adiw	r26, 0x01	; 1
    2e14:	2c 91       	ld	r18, X
    2e16:	82 2f       	mov	r24, r18
    2e18:	82 95       	swap	r24
    2e1a:	8f 70       	andi	r24, 0x0F	; 15
    2e1c:	b5 e0       	ldi	r27, 0x05	; 5
    2e1e:	8b 9f       	mul	r24, r27
    2e20:	c0 01       	movw	r24, r0
    2e22:	11 24       	eor	r1, r1
    2e24:	fc 01       	movw	r30, r24
    2e26:	ec 50       	subi	r30, 0x0C	; 12
    2e28:	f8 4f       	sbci	r31, 0xF8	; 248
    2e2a:	c4 90       	lpm	r12, Z
    2e2c:	fc 01       	movw	r30, r24
    2e2e:	eb 50       	subi	r30, 0x0B	; 11
    2e30:	f8 4f       	sbci	r31, 0xF8	; 248
    2e32:	e4 91       	lpm	r30, Z
    2e34:	d8 01       	movw	r26, r16
    2e36:	8c 90       	ld	r8, X
    2e38:	88 2d       	mov	r24, r8
    2e3a:	82 95       	swap	r24
    2e3c:	86 95       	lsr	r24
    2e3e:	86 95       	lsr	r24
    2e40:	83 70       	andi	r24, 0x03	; 3
    2e42:	2f 70       	andi	r18, 0x0F	; 15
    2e44:	82 2e       	mov	r8, r18
    2e46:	88 0c       	add	r8, r8
    2e48:	88 0c       	add	r8, r8
    2e4a:	88 2a       	or	r8, r24
    2e4c:	91 2c       	mov	r9, r1
    2e4e:	ee 2e       	mov	r14, r30
    2e50:	f1 2c       	mov	r15, r1
    2e52:	ac 2c       	mov	r10, r12
    2e54:	b1 2c       	mov	r11, r1
    2e56:	f8 01       	movw	r30, r16
    2e58:	80 81       	ld	r24, Z
    2e5a:	98 2f       	mov	r25, r24
    2e5c:	92 95       	swap	r25
    2e5e:	96 95       	lsr	r25
    2e60:	96 95       	lsr	r25
    2e62:	93 70       	andi	r25, 0x03	; 3
    2e64:	c1 81       	ldd	r28, Z+1	; 0x01
    2e66:	cf 70       	andi	r28, 0x0F	; 15
    2e68:	cc 0f       	add	r28, r28
    2e6a:	cc 0f       	add	r28, r28
    2e6c:	c9 2b       	or	r28, r25
    2e6e:	97 01       	movw	r18, r14
    2e70:	2c 0f       	add	r18, r28
    2e72:	31 1d       	adc	r19, r1
    2e74:	82 16       	cp	r8, r18
    2e76:	93 06       	cpc	r9, r19
    2e78:	bc f4       	brge	.+46     	; 0x2ea8 <_Z15DestroyBuildingP8Building+0xb2>
    2e7a:	8f 73       	andi	r24, 0x3F	; 63
    2e7c:	c8 2f       	mov	r28, r24
    2e7e:	d0 e0       	ldi	r29, 0x00	; 0
    2e80:	d8 01       	movw	r26, r16
    2e82:	8c 91       	ld	r24, X
    2e84:	8f 73       	andi	r24, 0x3F	; 63
    2e86:	8a 0d       	add	r24, r10
    2e88:	9b 2d       	mov	r25, r11
    2e8a:	91 1d       	adc	r25, r1
    2e8c:	c8 17       	cp	r28, r24
    2e8e:	d9 07       	cpc	r29, r25
    2e90:	3c f4       	brge	.+14     	; 0x2ea0 <_Z15DestroyBuildingP8Building+0xaa>
    2e92:	40 e0       	ldi	r20, 0x00	; 0
    2e94:	b4 01       	movw	r22, r8
    2e96:	ce 01       	movw	r24, r28
    2e98:	0e 94 55 12 	call	0x24aa	; 0x24aa <_Z14SetConnectionsiih>
    2e9c:	21 96       	adiw	r28, 0x01	; 1
    2e9e:	f0 cf       	rjmp	.-32     	; 0x2e80 <_Z15DestroyBuildingP8Building+0x8a>
    2ea0:	bf ef       	ldi	r27, 0xFF	; 255
    2ea2:	8b 1a       	sub	r8, r27
    2ea4:	9b 0a       	sbc	r9, r27
    2ea6:	d7 cf       	rjmp	.-82     	; 0x2e56 <_Z15DestroyBuildingP8Building+0x60>
    2ea8:	82 81       	ldd	r24, Z+2	; 0x02
    2eaa:	8f 7c       	andi	r24, 0xCF	; 207
    2eac:	82 83       	std	Z+2, r24	; 0x02
    2eae:	f3 e0       	ldi	r31, 0x03	; 3
    2eb0:	99 e0       	ldi	r25, 0x09	; 9
    2eb2:	cf 12       	cpse	r12, r31
    2eb4:	9a e0       	ldi	r25, 0x0A	; 10
    2eb6:	92 95       	swap	r25
    2eb8:	90 7f       	andi	r25, 0xF0	; 240
    2eba:	d8 01       	movw	r26, r16
    2ebc:	11 96       	adiw	r26, 0x01	; 1
    2ebe:	8c 91       	ld	r24, X
    2ec0:	11 97       	sbiw	r26, 0x01	; 1
    2ec2:	8f 70       	andi	r24, 0x0F	; 15
    2ec4:	89 2b       	or	r24, r25
    2ec6:	11 96       	adiw	r26, 0x01	; 1
    2ec8:	8c 93       	st	X, r24
    2eca:	d1 2c       	mov	r13, r1
    2ecc:	f8 01       	movw	r30, r16
    2ece:	d0 81       	ld	r29, Z
    2ed0:	8d 2f       	mov	r24, r29
    2ed2:	82 95       	swap	r24
    2ed4:	86 95       	lsr	r24
    2ed6:	86 95       	lsr	r24
    2ed8:	83 70       	andi	r24, 0x03	; 3
    2eda:	21 81       	ldd	r18, Z+1	; 0x01
    2edc:	2f 70       	andi	r18, 0x0F	; 15
    2ede:	22 0f       	add	r18, r18
    2ee0:	22 0f       	add	r18, r18
    2ee2:	28 2b       	or	r18, r24
    2ee4:	2e 0d       	add	r18, r14
    2ee6:	3f 2d       	mov	r19, r15
    2ee8:	31 1d       	adc	r19, r1
    2eea:	c2 17       	cp	r28, r18
    2eec:	13 06       	cpc	r1, r19
    2eee:	94 f4       	brge	.+36     	; 0x2f14 <_Z15DestroyBuildingP8Building+0x11e>
    2ef0:	df 73       	andi	r29, 0x3F	; 63
    2ef2:	d8 01       	movw	r26, r16
    2ef4:	8c 91       	ld	r24, X
    2ef6:	8f 73       	andi	r24, 0x3F	; 63
    2ef8:	8c 0d       	add	r24, r12
    2efa:	9d 2d       	mov	r25, r13
    2efc:	91 1d       	adc	r25, r1
    2efe:	d8 17       	cp	r29, r24
    2f00:	19 06       	cpc	r1, r25
    2f02:	34 f4       	brge	.+12     	; 0x2f10 <_Z15DestroyBuildingP8Building+0x11a>
    2f04:	6c 2f       	mov	r22, r28
    2f06:	8d 2f       	mov	r24, r29
    2f08:	0e 94 e9 08 	call	0x11d2	; 0x11d2 <_Z7SetTilehhh.constprop.16>
    2f0c:	df 5f       	subi	r29, 0xFF	; 255
    2f0e:	f1 cf       	rjmp	.-30     	; 0x2ef2 <_Z15DestroyBuildingP8Building+0xfc>
    2f10:	cf 5f       	subi	r28, 0xFF	; 255
    2f12:	dc cf       	rjmp	.-72     	; 0x2ecc <_Z15DestroyBuildingP8Building+0xd6>
    2f14:	df 91       	pop	r29
    2f16:	cf 91       	pop	r28
    2f18:	1f 91       	pop	r17
    2f1a:	0f 91       	pop	r16
    2f1c:	ff 90       	pop	r15
    2f1e:	ef 90       	pop	r14
    2f20:	df 90       	pop	r13
    2f22:	cf 90       	pop	r12
    2f24:	bf 90       	pop	r11
    2f26:	af 90       	pop	r10
    2f28:	9f 90       	pop	r9
    2f2a:	8f 90       	pop	r8
    2f2c:	08 95       	ret

00002f2e <_Z11GetBuildinghh>:
    2f2e:	cf 92       	push	r12
    2f30:	df 92       	push	r13
    2f32:	ef 92       	push	r14
    2f34:	ff 92       	push	r15
    2f36:	0f 93       	push	r16
    2f38:	1f 93       	push	r17
    2f3a:	cf 93       	push	r28
    2f3c:	df 93       	push	r29
    2f3e:	b0 e0       	ldi	r27, 0x00	; 0
    2f40:	a0 e0       	ldi	r26, 0x00	; 0
    2f42:	75 e0       	ldi	r23, 0x05	; 5
    2f44:	c8 2f       	mov	r28, r24
    2f46:	d0 e0       	ldi	r29, 0x00	; 0
    2f48:	06 2f       	mov	r16, r22
    2f4a:	10 e0       	ldi	r17, 0x00	; 0
    2f4c:	ad 01       	movw	r20, r26
    2f4e:	44 0f       	add	r20, r20
    2f50:	55 1f       	adc	r21, r21
    2f52:	4a 0f       	add	r20, r26
    2f54:	5b 1f       	adc	r21, r27
    2f56:	9a 01       	movw	r18, r20
    2f58:	2d 56       	subi	r18, 0x6D	; 109
    2f5a:	3c 4f       	sbci	r19, 0xFC	; 252
    2f5c:	79 01       	movw	r14, r18
    2f5e:	f9 01       	movw	r30, r18
    2f60:	91 81       	ldd	r25, Z+1	; 0x01
    2f62:	29 2f       	mov	r18, r25
    2f64:	20 7f       	andi	r18, 0xF0	; 240
    2f66:	81 f1       	breq	.+96     	; 0x2fc8 <_Z11GetBuildinghh+0x9a>
    2f68:	fa 01       	movw	r30, r20
    2f6a:	ec 56       	subi	r30, 0x6C	; 108
    2f6c:	fc 4f       	sbci	r31, 0xFC	; 252
    2f6e:	20 81       	ld	r18, Z
    2f70:	22 95       	swap	r18
    2f72:	2f 70       	andi	r18, 0x0F	; 15
    2f74:	27 9f       	mul	r18, r23
    2f76:	90 01       	movw	r18, r0
    2f78:	11 24       	eor	r1, r1
    2f7a:	f9 01       	movw	r30, r18
    2f7c:	ec 50       	subi	r30, 0x0C	; 12
    2f7e:	f8 4f       	sbci	r31, 0xF8	; 248
    2f80:	d4 90       	lpm	r13, Z
    2f82:	f9 01       	movw	r30, r18
    2f84:	eb 50       	subi	r30, 0x0B	; 11
    2f86:	f8 4f       	sbci	r31, 0xF8	; 248
    2f88:	c4 90       	lpm	r12, Z
    2f8a:	f7 01       	movw	r30, r14
    2f8c:	20 81       	ld	r18, Z
    2f8e:	32 2f       	mov	r19, r18
    2f90:	3f 73       	andi	r19, 0x3F	; 63
    2f92:	83 17       	cp	r24, r19
    2f94:	c8 f0       	brcs	.+50     	; 0x2fc8 <_Z11GetBuildinghh+0x9a>
    2f96:	e3 2f       	mov	r30, r19
    2f98:	ed 0d       	add	r30, r13
    2f9a:	ff 27       	eor	r31, r31
    2f9c:	ff 1f       	adc	r31, r31
    2f9e:	ce 17       	cp	r28, r30
    2fa0:	df 07       	cpc	r29, r31
    2fa2:	94 f4       	brge	.+36     	; 0x2fc8 <_Z11GetBuildinghh+0x9a>
    2fa4:	32 2f       	mov	r19, r18
    2fa6:	32 95       	swap	r19
    2fa8:	36 95       	lsr	r19
    2faa:	36 95       	lsr	r19
    2fac:	33 70       	andi	r19, 0x03	; 3
    2fae:	29 2f       	mov	r18, r25
    2fb0:	2f 70       	andi	r18, 0x0F	; 15
    2fb2:	22 0f       	add	r18, r18
    2fb4:	22 0f       	add	r18, r18
    2fb6:	23 2b       	or	r18, r19
    2fb8:	62 17       	cp	r22, r18
    2fba:	30 f0       	brcs	.+12     	; 0x2fc8 <_Z11GetBuildinghh+0x9a>
    2fbc:	2c 0d       	add	r18, r12
    2fbe:	33 27       	eor	r19, r19
    2fc0:	33 1f       	adc	r19, r19
    2fc2:	02 17       	cp	r16, r18
    2fc4:	13 07       	cpc	r17, r19
    2fc6:	44 f0       	brlt	.+16     	; 0x2fd8 <_Z11GetBuildinghh+0xaa>
    2fc8:	11 96       	adiw	r26, 0x01	; 1
    2fca:	a2 38       	cpi	r26, 0x82	; 130
    2fcc:	b1 05       	cpc	r27, r1
    2fce:	09 f0       	breq	.+2      	; 0x2fd2 <_Z11GetBuildinghh+0xa4>
    2fd0:	bd cf       	rjmp	.-134    	; 0x2f4c <_Z11GetBuildinghh+0x1e>
    2fd2:	90 e0       	ldi	r25, 0x00	; 0
    2fd4:	80 e0       	ldi	r24, 0x00	; 0
    2fd6:	03 c0       	rjmp	.+6      	; 0x2fde <_Z11GetBuildinghh+0xb0>
    2fd8:	ca 01       	movw	r24, r20
    2fda:	8d 56       	subi	r24, 0x6D	; 109
    2fdc:	9c 4f       	sbci	r25, 0xFC	; 252
    2fde:	df 91       	pop	r29
    2fe0:	cf 91       	pop	r28
    2fe2:	1f 91       	pop	r17
    2fe4:	0f 91       	pop	r16
    2fe6:	ff 90       	pop	r15
    2fe8:	ef 90       	pop	r14
    2fea:	df 90       	pop	r13
    2fec:	cf 90       	pop	r12
    2fee:	08 95       	ret

00002ff0 <_Z10SpreadFireP8Building>:
    2ff0:	bf 92       	push	r11
    2ff2:	cf 92       	push	r12
    2ff4:	df 92       	push	r13
    2ff6:	ef 92       	push	r14
    2ff8:	ff 92       	push	r15
    2ffa:	0f 93       	push	r16
    2ffc:	1f 93       	push	r17
    2ffe:	cf 93       	push	r28
    3000:	df 93       	push	r29
    3002:	8c 01       	movw	r16, r24
    3004:	dc 01       	movw	r26, r24
    3006:	11 96       	adiw	r26, 0x01	; 1
    3008:	9c 91       	ld	r25, X
    300a:	c9 2f       	mov	r28, r25
    300c:	c2 95       	swap	r28
    300e:	cf 70       	andi	r28, 0x0F	; 15
    3010:	b5 e0       	ldi	r27, 0x05	; 5
    3012:	cb 9f       	mul	r28, r27
    3014:	e0 01       	movw	r28, r0
    3016:	11 24       	eor	r1, r1
    3018:	fe 01       	movw	r30, r28
    301a:	ec 50       	subi	r30, 0x0C	; 12
    301c:	f8 4f       	sbci	r31, 0xF8	; 248
    301e:	d4 90       	lpm	r13, Z
    3020:	fe 01       	movw	r30, r28
    3022:	eb 50       	subi	r30, 0x0B	; 11
    3024:	f8 4f       	sbci	r31, 0xF8	; 248
    3026:	c4 90       	lpm	r12, Z
    3028:	d8 01       	movw	r26, r16
    302a:	ec 91       	ld	r30, X
    302c:	be 2f       	mov	r27, r30
    302e:	bf 73       	andi	r27, 0x3F	; 63
    3030:	eb 2e       	mov	r14, r27
    3032:	f1 e0       	ldi	r31, 0x01	; 1
    3034:	2e ef       	ldi	r18, 0xFE	; 254
    3036:	b2 2e       	mov	r11, r18
    3038:	bb 0e       	add	r11, r27
    303a:	fb 17       	cp	r31, r27
    303c:	08 f0       	brcs	.+2      	; 0x3040 <_Z10SpreadFireP8Building+0x50>
    303e:	bb 2e       	mov	r11, r27
    3040:	e2 95       	swap	r30
    3042:	e6 95       	lsr	r30
    3044:	e6 95       	lsr	r30
    3046:	e3 70       	andi	r30, 0x03	; 3
    3048:	c9 2f       	mov	r28, r25
    304a:	cf 70       	andi	r28, 0x0F	; 15
    304c:	cc 0f       	add	r28, r28
    304e:	cc 0f       	add	r28, r28
    3050:	ce 2b       	or	r28, r30
    3052:	8e ef       	ldi	r24, 0xFE	; 254
    3054:	f8 2e       	mov	r15, r24
    3056:	fc 0e       	add	r15, r28
    3058:	c2 30       	cpi	r28, 0x02	; 2
    305a:	08 f4       	brcc	.+2      	; 0x305e <_Z10SpreadFireP8Building+0x6e>
    305c:	fc 2e       	mov	r15, r28
    305e:	0e 94 3b 0d 	call	0x1a76	; 0x1a76 <_Z7GetRandv>
    3062:	d8 01       	movw	r26, r16
    3064:	dc 91       	ld	r29, X
    3066:	98 2f       	mov	r25, r24
    3068:	92 70       	andi	r25, 0x02	; 2
    306a:	80 ff       	sbrs	r24, 0
    306c:	4b c0       	rjmp	.+150    	; 0x3104 <_Z10SpreadFireP8Building+0x114>
    306e:	d2 95       	swap	r29
    3070:	d6 95       	lsr	r29
    3072:	d6 95       	lsr	r29
    3074:	d3 70       	andi	r29, 0x03	; 3
    3076:	11 96       	adiw	r26, 0x01	; 1
    3078:	fc 90       	ld	r15, X
    307a:	bf 2d       	mov	r27, r15
    307c:	bf 70       	andi	r27, 0x0F	; 15
    307e:	fb 2e       	mov	r15, r27
    3080:	ff 0c       	add	r15, r15
    3082:	ff 0c       	add	r15, r15
    3084:	fd 2a       	or	r15, r29
    3086:	e3 94       	inc	r14
    3088:	e3 94       	inc	r14
    308a:	ed 0c       	add	r14, r13
    308c:	91 11       	cpse	r25, r1
    308e:	eb 2c       	mov	r14, r11
    3090:	d1 2c       	mov	r13, r1
    3092:	f8 01       	movw	r30, r16
    3094:	80 81       	ld	r24, Z
    3096:	98 2f       	mov	r25, r24
    3098:	92 95       	swap	r25
    309a:	96 95       	lsr	r25
    309c:	96 95       	lsr	r25
    309e:	93 70       	andi	r25, 0x03	; 3
    30a0:	81 81       	ldd	r24, Z+1	; 0x01
    30a2:	8f 70       	andi	r24, 0x0F	; 15
    30a4:	88 0f       	add	r24, r24
    30a6:	88 0f       	add	r24, r24
    30a8:	89 2b       	or	r24, r25
    30aa:	8c 0d       	add	r24, r12
    30ac:	9d 2d       	mov	r25, r13
    30ae:	91 1d       	adc	r25, r1
    30b0:	f8 16       	cp	r15, r24
    30b2:	19 06       	cpc	r1, r25
    30b4:	5c f0       	brlt	.+22     	; 0x30cc <_Z10SpreadFireP8Building+0xdc>
    30b6:	80 e0       	ldi	r24, 0x00	; 0
    30b8:	df 91       	pop	r29
    30ba:	cf 91       	pop	r28
    30bc:	1f 91       	pop	r17
    30be:	0f 91       	pop	r16
    30c0:	ff 90       	pop	r15
    30c2:	ef 90       	pop	r14
    30c4:	df 90       	pop	r13
    30c6:	cf 90       	pop	r12
    30c8:	bf 90       	pop	r11
    30ca:	08 95       	ret
    30cc:	6f 2d       	mov	r22, r15
    30ce:	8e 2d       	mov	r24, r14
    30d0:	0e 94 97 17 	call	0x2f2e	; 0x2f2e <_Z11GetBuildinghh>
    30d4:	fc 01       	movw	r30, r24
    30d6:	89 2b       	or	r24, r25
    30d8:	99 f0       	breq	.+38     	; 0x3100 <_Z10SpreadFireP8Building+0x110>
    30da:	92 81       	ldd	r25, Z+2	; 0x02
    30dc:	89 2f       	mov	r24, r25
    30de:	80 73       	andi	r24, 0x30	; 48
    30e0:	79 f4       	brne	.+30     	; 0x3100 <_Z10SpreadFireP8Building+0x110>
    30e2:	81 81       	ldd	r24, Z+1	; 0x01
    30e4:	28 2f       	mov	r18, r24
    30e6:	20 7f       	andi	r18, 0xF0	; 240
    30e8:	20 35       	cpi	r18, 0x50	; 80
    30ea:	51 f0       	breq	.+20     	; 0x3100 <_Z10SpreadFireP8Building+0x110>
    30ec:	80 39       	cpi	r24, 0x90	; 144
    30ee:	40 f4       	brcc	.+16     	; 0x3100 <_Z10SpreadFireP8Building+0x110>
    30f0:	9f 7c       	andi	r25, 0xCF	; 207
    30f2:	90 61       	ori	r25, 0x10	; 16
    30f4:	92 83       	std	Z+2, r25	; 0x02
    30f6:	cf 01       	movw	r24, r30
    30f8:	0e 94 32 15 	call	0x2a64	; 0x2a64 <_Z20RefreshBuildingTilesP8Building>
    30fc:	81 e0       	ldi	r24, 0x01	; 1
    30fe:	dc cf       	rjmp	.-72     	; 0x30b8 <_Z10SpreadFireP8Building+0xc8>
    3100:	f3 94       	inc	r15
    3102:	c7 cf       	rjmp	.-114    	; 0x3092 <_Z10SpreadFireP8Building+0xa2>
    3104:	df 73       	andi	r29, 0x3F	; 63
    3106:	ce 5f       	subi	r28, 0xFE	; 254
    3108:	cc 0d       	add	r28, r12
    310a:	91 11       	cpse	r25, r1
    310c:	cf 2d       	mov	r28, r15
    310e:	ed 2c       	mov	r14, r13
    3110:	f1 2c       	mov	r15, r1
    3112:	d8 01       	movw	r26, r16
    3114:	8c 91       	ld	r24, X
    3116:	8f 73       	andi	r24, 0x3F	; 63
    3118:	8e 0d       	add	r24, r14
    311a:	9f 2d       	mov	r25, r15
    311c:	91 1d       	adc	r25, r1
    311e:	d8 17       	cp	r29, r24
    3120:	19 06       	cpc	r1, r25
    3122:	4c f6       	brge	.-110    	; 0x30b6 <_Z10SpreadFireP8Building+0xc6>
    3124:	6c 2f       	mov	r22, r28
    3126:	8d 2f       	mov	r24, r29
    3128:	0e 94 97 17 	call	0x2f2e	; 0x2f2e <_Z11GetBuildinghh>
    312c:	fc 01       	movw	r30, r24
    312e:	89 2b       	or	r24, r25
    3130:	59 f0       	breq	.+22     	; 0x3148 <_Z10SpreadFireP8Building+0x158>
    3132:	92 81       	ldd	r25, Z+2	; 0x02
    3134:	89 2f       	mov	r24, r25
    3136:	80 73       	andi	r24, 0x30	; 48
    3138:	39 f4       	brne	.+14     	; 0x3148 <_Z10SpreadFireP8Building+0x158>
    313a:	81 81       	ldd	r24, Z+1	; 0x01
    313c:	28 2f       	mov	r18, r24
    313e:	20 7f       	andi	r18, 0xF0	; 240
    3140:	20 35       	cpi	r18, 0x50	; 80
    3142:	11 f0       	breq	.+4      	; 0x3148 <_Z10SpreadFireP8Building+0x158>
    3144:	80 39       	cpi	r24, 0x90	; 144
    3146:	a0 f2       	brcs	.-88     	; 0x30f0 <_Z10SpreadFireP8Building+0x100>
    3148:	df 5f       	subi	r29, 0xFF	; 255
    314a:	e3 cf       	rjmp	.-58     	; 0x3112 <_Z10SpreadFireP8Building+0x122>

0000314c <_ZN11EEPROMClass4readEi.isra.0.lto_priv.17>:

    EERef( const int index )
        : index( index )                 {}
    
    //Access/read members.
    uint8_t operator*() const            { return eeprom_read_byte( (uint8_t*) index ); }
    314c:	0c 94 c5 2d 	jmp	0x5b8a	; 0x5b8a <eeprom_read_byte>

00003150 <_Z8LoadCityv>:
    3150:	0f 93       	push	r16
    3152:	1f 93       	push	r17
    3154:	cf 93       	push	r28
    3156:	df 93       	push	r29
    3158:	80 e1       	ldi	r24, 0x10	; 16
    315a:	90 e0       	ldi	r25, 0x00	; 0
    315c:	0e 94 a6 18 	call	0x314c	; 0x314c <_ZN11EEPROMClass4readEi.isra.0.lto_priv.17>
    3160:	83 34       	cpi	r24, 0x43	; 67
    3162:	39 f5       	brne	.+78     	; 0x31b2 <_Z8LoadCityv+0x62>
    3164:	81 e1       	ldi	r24, 0x11	; 17
    3166:	90 e0       	ldi	r25, 0x00	; 0
    3168:	0e 94 a6 18 	call	0x314c	; 0x314c <_ZN11EEPROMClass4readEi.isra.0.lto_priv.17>
    316c:	84 35       	cpi	r24, 0x54	; 84
    316e:	09 f5       	brne	.+66     	; 0x31b2 <_Z8LoadCityv+0x62>
    3170:	82 e1       	ldi	r24, 0x12	; 18
    3172:	90 e0       	ldi	r25, 0x00	; 0
    3174:	0e 94 a6 18 	call	0x314c	; 0x314c <_ZN11EEPROMClass4readEi.isra.0.lto_priv.17>
    3178:	89 35       	cpi	r24, 0x59	; 89
    317a:	d9 f4       	brne	.+54     	; 0x31b2 <_Z8LoadCityv+0x62>
    317c:	83 e1       	ldi	r24, 0x13	; 19
    317e:	90 e0       	ldi	r25, 0x00	; 0
    3180:	0e 94 a6 18 	call	0x314c	; 0x314c <_ZN11EEPROMClass4readEi.isra.0.lto_priv.17>
    3184:	81 33       	cpi	r24, 0x31	; 49
    3186:	a9 f4       	brne	.+42     	; 0x31b2 <_Z8LoadCityv+0x62>
    3188:	c4 e1       	ldi	r28, 0x14	; 20
    318a:	d0 e0       	ldi	r29, 0x00	; 0
    318c:	09 e3       	ldi	r16, 0x39	; 57
    318e:	11 e0       	ldi	r17, 0x01	; 1
    3190:	ce 01       	movw	r24, r28
    3192:	0e 94 c5 2d 	call	0x5b8a	; 0x5b8a <eeprom_read_byte>
    3196:	f8 01       	movw	r30, r16
    3198:	81 93       	st	Z+, r24
    319a:	8f 01       	movw	r16, r30
    319c:	21 96       	adiw	r28, 0x01	; 1
    319e:	c4 3f       	cpi	r28, 0xF4	; 244
    31a0:	f3 e0       	ldi	r31, 0x03	; 3
    31a2:	df 07       	cpc	r29, r31
    31a4:	a9 f7       	brne	.-22     	; 0x3190 <_Z8LoadCityv+0x40>
    31a6:	81 e0       	ldi	r24, 0x01	; 1
    31a8:	df 91       	pop	r29
    31aa:	cf 91       	pop	r28
    31ac:	1f 91       	pop	r17
    31ae:	0f 91       	pop	r16
    31b0:	08 95       	ret
    31b2:	80 e0       	ldi	r24, 0x00	; 0
    31b4:	f9 cf       	rjmp	.-14     	; 0x31a8 <_Z8LoadCityv+0x58>

000031b6 <_ZN5EERef6updateEh>:
    EERef &operator &=( uint8_t in )     { return *this = **this & in; }
    EERef &operator |=( uint8_t in )     { return *this = **this | in; }
    EERef &operator <<=( uint8_t in )    { return *this = **this << in; }
    EERef &operator >>=( uint8_t in )    { return *this = **this >> in; }
    
    EERef &update( uint8_t in )          { return  in != *this ? *this = in : *this; }
    31b6:	ff 92       	push	r15
    31b8:	0f 93       	push	r16
    31ba:	1f 93       	push	r17
    31bc:	cf 93       	push	r28
    31be:	df 93       	push	r29
    31c0:	ec 01       	movw	r28, r24
    31c2:	f6 2e       	mov	r15, r22

    EERef( const int index )
        : index( index )                 {}
    
    //Access/read members.
    uint8_t operator*() const            { return eeprom_read_byte( (uint8_t*) index ); }
    31c4:	08 81       	ld	r16, Y
    31c6:	19 81       	ldd	r17, Y+1	; 0x01
    31c8:	c8 01       	movw	r24, r16
    31ca:	0e 94 c5 2d 	call	0x5b8a	; 0x5b8a <eeprom_read_byte>
    EERef &operator &=( uint8_t in )     { return *this = **this & in; }
    EERef &operator |=( uint8_t in )     { return *this = **this | in; }
    EERef &operator <<=( uint8_t in )    { return *this = **this << in; }
    EERef &operator >>=( uint8_t in )    { return *this = **this >> in; }
    
    EERef &update( uint8_t in )          { return  in != *this ? *this = in : *this; }
    31ce:	f8 16       	cp	r15, r24
    31d0:	21 f0       	breq	.+8      	; 0x31da <_ZN5EERef6updateEh+0x24>
    uint8_t operator*() const            { return eeprom_read_byte( (uint8_t*) index ); }
    operator uint8_t() const             { return **this; }
    
    //Assignment/write members.
    EERef &operator=( const EERef &ref ) { return *this = *ref; }
    EERef &operator=( uint8_t in )       { return eeprom_write_byte( (uint8_t*) index, in ), *this;  }
    31d2:	6f 2d       	mov	r22, r15
    31d4:	c8 01       	movw	r24, r16
    31d6:	0e 94 cd 2d 	call	0x5b9a	; 0x5b9a <eeprom_write_byte>
    EERef &operator &=( uint8_t in )     { return *this = **this & in; }
    EERef &operator |=( uint8_t in )     { return *this = **this | in; }
    EERef &operator <<=( uint8_t in )    { return *this = **this << in; }
    EERef &operator >>=( uint8_t in )    { return *this = **this >> in; }
    
    EERef &update( uint8_t in )          { return  in != *this ? *this = in : *this; }
    31da:	ce 01       	movw	r24, r28
    31dc:	df 91       	pop	r29
    31de:	cf 91       	pop	r28
    31e0:	1f 91       	pop	r17
    31e2:	0f 91       	pop	r16
    31e4:	ff 90       	pop	r15
    31e6:	08 95       	ret

000031e8 <_Z11HandleInputh>:
    31e8:	2f 92       	push	r2
    31ea:	3f 92       	push	r3
    31ec:	4f 92       	push	r4
    31ee:	5f 92       	push	r5
    31f0:	6f 92       	push	r6
    31f2:	7f 92       	push	r7
    31f4:	8f 92       	push	r8
    31f6:	9f 92       	push	r9
    31f8:	af 92       	push	r10
    31fa:	bf 92       	push	r11
    31fc:	cf 92       	push	r12
    31fe:	df 92       	push	r13
    3200:	ef 92       	push	r14
    3202:	ff 92       	push	r15
    3204:	0f 93       	push	r16
    3206:	1f 93       	push	r17
    3208:	cf 93       	push	r28
    320a:	df 93       	push	r29
    320c:	cd b7       	in	r28, 0x3d	; 61
    320e:	de b7       	in	r29, 0x3e	; 62
    3210:	2a 97       	sbiw	r28, 0x0a	; 10
    3212:	0f b6       	in	r0, 0x3f	; 63
    3214:	f8 94       	cli
    3216:	de bf       	out	0x3e, r29	; 62
    3218:	0f be       	out	0x3f, r0	; 63
    321a:	cd bf       	out	0x3d, r28	; 61
    321c:	50 90 22 05 	lds	r5, 0x0522	; 0x800522 <UIState+0x8>
    3220:	24 e0       	ldi	r18, 0x04	; 4
    3222:	52 12       	cpse	r5, r18
    3224:	4a c0       	rjmp	.+148    	; 0x32ba <_Z11HandleInputh+0xd2>
    3226:	80 ff       	sbrs	r24, 0
    3228:	07 c0       	rjmp	.+14     	; 0x3238 <_Z11HandleInputh+0x50>
    322a:	90 91 21 05 	lds	r25, 0x0521	; 0x800521 <UIState+0x7>
    322e:	91 11       	cpse	r25, r1
    3230:	15 c0       	rjmp	.+42     	; 0x325c <_Z11HandleInputh+0x74>
    3232:	9c e0       	ldi	r25, 0x0C	; 12
    3234:	90 93 21 05 	sts	0x0521, r25	; 0x800521 <UIState+0x7>
    3238:	81 ff       	sbrs	r24, 1
    323a:	06 c0       	rjmp	.+12     	; 0x3248 <_Z11HandleInputh+0x60>
    323c:	90 91 21 05 	lds	r25, 0x0521	; 0x800521 <UIState+0x7>
    3240:	9c 30       	cpi	r25, 0x0C	; 12
    3242:	71 f4       	brne	.+28     	; 0x3260 <_Z11HandleInputh+0x78>
    3244:	10 92 21 05 	sts	0x0521, r1	; 0x800521 <UIState+0x7>
    3248:	80 73       	andi	r24, 0x30	; 48
    324a:	a9 f0       	breq	.+42     	; 0x3276 <_Z11HandleInputh+0x8e>
    324c:	80 91 21 05 	lds	r24, 0x0521	; 0x800521 <UIState+0x7>
    3250:	8b 30       	cpi	r24, 0x0B	; 11
    3252:	50 f4       	brcc	.+20     	; 0x3268 <_Z11HandleInputh+0x80>
    3254:	80 93 20 05 	sts	0x0520, r24	; 0x800520 <UIState+0x6>
    3258:	82 e0       	ldi	r24, 0x02	; 2
    325a:	4e c0       	rjmp	.+156    	; 0x32f8 <_Z11HandleInputh+0x110>
    325c:	91 50       	subi	r25, 0x01	; 1
    325e:	ea cf       	rjmp	.-44     	; 0x3234 <_Z11HandleInputh+0x4c>
    3260:	9f 5f       	subi	r25, 0xFF	; 255
    3262:	90 93 21 05 	sts	0x0521, r25	; 0x800521 <UIState+0x7>
    3266:	f0 cf       	rjmp	.-32     	; 0x3248 <_Z11HandleInputh+0x60>
    3268:	8b 30       	cpi	r24, 0x0B	; 11
    326a:	f1 f4       	brne	.+60     	; 0x32a8 <_Z11HandleInputh+0xc0>
    326c:	85 e0       	ldi	r24, 0x05	; 5
    326e:	80 93 22 05 	sts	0x0522, r24	; 0x800522 <UIState+0x8>
    3272:	10 92 21 05 	sts	0x0521, r1	; 0x800521 <UIState+0x7>
    3276:	2a 96       	adiw	r28, 0x0a	; 10
    3278:	0f b6       	in	r0, 0x3f	; 63
    327a:	f8 94       	cli
    327c:	de bf       	out	0x3e, r29	; 62
    327e:	0f be       	out	0x3f, r0	; 63
    3280:	cd bf       	out	0x3d, r28	; 61
    3282:	df 91       	pop	r29
    3284:	cf 91       	pop	r28
    3286:	1f 91       	pop	r17
    3288:	0f 91       	pop	r16
    328a:	ff 90       	pop	r15
    328c:	ef 90       	pop	r14
    328e:	df 90       	pop	r13
    3290:	cf 90       	pop	r12
    3292:	bf 90       	pop	r11
    3294:	af 90       	pop	r10
    3296:	9f 90       	pop	r9
    3298:	8f 90       	pop	r8
    329a:	7f 90       	pop	r7
    329c:	6f 90       	pop	r6
    329e:	5f 90       	pop	r5
    32a0:	4f 90       	pop	r4
    32a2:	3f 90       	pop	r3
    32a4:	2f 90       	pop	r2
    32a6:	08 95       	ret
    32a8:	8c 30       	cpi	r24, 0x0C	; 12
    32aa:	29 f7       	brne	.-54     	; 0x3276 <_Z11HandleInputh+0x8e>
    32ac:	86 e0       	ldi	r24, 0x06	; 6
    32ae:	80 93 22 05 	sts	0x0522, r24	; 0x800522 <UIState+0x8>
    32b2:	80 e1       	ldi	r24, 0x10	; 16
    32b4:	80 93 21 05 	sts	0x0521, r24	; 0x800521 <UIState+0x7>
    32b8:	de cf       	rjmp	.-68     	; 0x3276 <_Z11HandleInputh+0x8e>
    32ba:	18 2f       	mov	r17, r24
    32bc:	33 e0       	ldi	r19, 0x03	; 3
    32be:	53 12       	cpse	r5, r19
    32c0:	03 c0       	rjmp	.+6      	; 0x32c8 <_Z11HandleInputh+0xe0>
    32c2:	0e 94 ba 0c 	call	0x1974	; 0x1974 <_Z19HandleMovementInputh>
    32c6:	d7 cf       	rjmp	.-82     	; 0x3276 <_Z11HandleInputh+0x8e>
    32c8:	51 10       	cpse	r5, r1
    32ca:	19 c0       	rjmp	.+50     	; 0x32fe <_Z11HandleInputh+0x116>
    32cc:	62 e0       	ldi	r22, 0x02	; 2
    32ce:	0e 94 df 0c 	call	0x19be	; 0x19be <_Z13WrapMenuInputhh>
    32d2:	15 ff       	sbrs	r17, 5
    32d4:	d0 cf       	rjmp	.-96     	; 0x3276 <_Z11HandleInputh+0x8e>
    32d6:	80 91 21 05 	lds	r24, 0x0521	; 0x800521 <UIState+0x7>
    32da:	88 23       	and	r24, r24
    32dc:	61 f0       	breq	.+24     	; 0x32f6 <_Z11HandleInputh+0x10e>
    32de:	81 30       	cpi	r24, 0x01	; 1
    32e0:	51 f6       	brne	.-108    	; 0x3276 <_Z11HandleInputh+0x8e>
    32e2:	0e 94 a8 18 	call	0x3150	; 0x3150 <_Z8LoadCityv>
    32e6:	88 23       	and	r24, r24
    32e8:	31 f2       	breq	.-116    	; 0x3276 <_Z11HandleInputh+0x8e>
    32ea:	82 e0       	ldi	r24, 0x02	; 2
    32ec:	80 93 22 05 	sts	0x0522, r24	; 0x800522 <UIState+0x8>
    32f0:	0e 94 66 16 	call	0x2ccc	; 0x2ccc <_Z21ResetVisibleTileCachev>
    32f4:	c0 cf       	rjmp	.-128    	; 0x3276 <_Z11HandleInputh+0x8e>
    32f6:	81 e0       	ldi	r24, 0x01	; 1
    32f8:	80 93 22 05 	sts	0x0522, r24	; 0x800522 <UIState+0x8>
    32fc:	bc cf       	rjmp	.-136    	; 0x3276 <_Z11HandleInputh+0x8e>
    32fe:	41 e0       	ldi	r20, 0x01	; 1
    3300:	54 12       	cpse	r5, r20
    3302:	22 c0       	rjmp	.+68     	; 0x3348 <_Z11HandleInputh+0x160>
    3304:	80 ff       	sbrs	r24, 0
    3306:	07 c0       	rjmp	.+14     	; 0x3316 <_Z11HandleInputh+0x12e>
    3308:	80 91 81 03 	lds	r24, 0x0381	; 0x800381 <State+0x248>
    330c:	81 11       	cpse	r24, r1
    330e:	16 c0       	rjmp	.+44     	; 0x333c <_Z11HandleInputh+0x154>
    3310:	82 e0       	ldi	r24, 0x02	; 2
    3312:	80 93 81 03 	sts	0x0381, r24	; 0x800381 <State+0x248>
    3316:	11 ff       	sbrs	r17, 1
    3318:	06 c0       	rjmp	.+12     	; 0x3326 <_Z11HandleInputh+0x13e>
    331a:	80 91 81 03 	lds	r24, 0x0381	; 0x800381 <State+0x248>
    331e:	82 30       	cpi	r24, 0x02	; 2
    3320:	79 f4       	brne	.+30     	; 0x3340 <_Z11HandleInputh+0x158>
    3322:	10 92 81 03 	sts	0x0381, r1	; 0x800381 <State+0x248>
    3326:	15 ff       	sbrs	r17, 5
    3328:	a6 cf       	rjmp	.-180    	; 0x3276 <_Z11HandleInputh+0x8e>
    332a:	10 91 81 03 	lds	r17, 0x0381	; 0x800381 <State+0x248>
    332e:	0e 94 c3 16 	call	0x2d86	; 0x2d86 <_Z8InitGamev>
    3332:	10 93 81 03 	sts	0x0381, r17	; 0x800381 <State+0x248>
    3336:	0e 94 66 16 	call	0x2ccc	; 0x2ccc <_Z21ResetVisibleTileCachev>
    333a:	8e cf       	rjmp	.-228    	; 0x3258 <_Z11HandleInputh+0x70>
    333c:	81 50       	subi	r24, 0x01	; 1
    333e:	e9 cf       	rjmp	.-46     	; 0x3312 <_Z11HandleInputh+0x12a>
    3340:	8f 5f       	subi	r24, 0xFF	; 255
    3342:	80 93 81 03 	sts	0x0381, r24	; 0x800381 <State+0x248>
    3346:	ef cf       	rjmp	.-34     	; 0x3326 <_Z11HandleInputh+0x13e>
    3348:	85 e0       	ldi	r24, 0x05	; 5
    334a:	58 12       	cpse	r5, r24
    334c:	5d c0       	rjmp	.+186    	; 0x3408 <_Z11HandleInputh+0x220>
    334e:	64 e0       	ldi	r22, 0x04	; 4
    3350:	81 2f       	mov	r24, r17
    3352:	0e 94 df 0c 	call	0x19be	; 0x19be <_Z13WrapMenuInputhh>
    3356:	14 ff       	sbrs	r17, 4
    3358:	03 c0       	rjmp	.+6      	; 0x3360 <_Z11HandleInputh+0x178>
    335a:	82 e0       	ldi	r24, 0x02	; 2
    335c:	80 93 22 05 	sts	0x0522, r24	; 0x800522 <UIState+0x8>
    3360:	15 ff       	sbrs	r17, 5
    3362:	89 cf       	rjmp	.-238    	; 0x3276 <_Z11HandleInputh+0x8e>
    3364:	80 91 21 05 	lds	r24, 0x0521	; 0x800521 <UIState+0x7>
    3368:	81 30       	cpi	r24, 0x01	; 1
    336a:	09 f4       	brne	.+2      	; 0x336e <_Z11HandleInputh+0x186>
    336c:	ba cf       	rjmp	.-140    	; 0x32e2 <_Z11HandleInputh+0xfa>
    336e:	78 f0       	brcs	.+30     	; 0x338e <_Z11HandleInputh+0x1a6>
    3370:	82 30       	cpi	r24, 0x02	; 2
    3372:	09 f4       	brne	.+2      	; 0x3376 <_Z11HandleInputh+0x18e>
    3374:	c0 cf       	rjmp	.-128    	; 0x32f6 <_Z11HandleInputh+0x10e>
    3376:	83 30       	cpi	r24, 0x03	; 3
    3378:	09 f0       	breq	.+2      	; 0x337c <_Z11HandleInputh+0x194>
    337a:	7d cf       	rjmp	.-262    	; 0x3276 <_Z11HandleInputh+0x8e>
    337c:	90 91 23 05 	lds	r25, 0x0523	; 0x800523 <UIState+0x9>
    3380:	89 2f       	mov	r24, r25
    3382:	8e 7f       	andi	r24, 0xFE	; 254
    3384:	90 ff       	sbrs	r25, 0
    3386:	81 60       	ori	r24, 0x01	; 1
    3388:	80 93 23 05 	sts	0x0523, r24	; 0x800523 <UIState+0x9>
    338c:	74 cf       	rjmp	.-280    	; 0x3276 <_Z11HandleInputh+0x8e>
***/

struct EERef{

    EERef( const int index )
        : index( index )                 {}
    338e:	80 e1       	ldi	r24, 0x10	; 16
    3390:	90 e0       	ldi	r25, 0x00	; 0
    3392:	9a 83       	std	Y+2, r25	; 0x02
    3394:	89 83       	std	Y+1, r24	; 0x01

    //Basic user access methods.
    EERef operator[]( const int idx )    { return idx; }
    uint8_t read( int idx )              { return EERef( idx ); }
    void write( int idx, uint8_t val )   { (EERef( idx )) = val; }
    void update( int idx, uint8_t val )  { EERef( idx ).update( val ); }
    3396:	63 e4       	ldi	r22, 0x43	; 67
    3398:	ce 01       	movw	r24, r28
    339a:	01 96       	adiw	r24, 0x01	; 1
    339c:	0e 94 db 18 	call	0x31b6	; 0x31b6 <_ZN5EERef6updateEh>
***/

struct EERef{

    EERef( const int index )
        : index( index )                 {}
    33a0:	81 e1       	ldi	r24, 0x11	; 17
    33a2:	90 e0       	ldi	r25, 0x00	; 0
    33a4:	9a 83       	std	Y+2, r25	; 0x02
    33a6:	89 83       	std	Y+1, r24	; 0x01

    //Basic user access methods.
    EERef operator[]( const int idx )    { return idx; }
    uint8_t read( int idx )              { return EERef( idx ); }
    void write( int idx, uint8_t val )   { (EERef( idx )) = val; }
    void update( int idx, uint8_t val )  { EERef( idx ).update( val ); }
    33a8:	64 e5       	ldi	r22, 0x54	; 84
    33aa:	ce 01       	movw	r24, r28
    33ac:	01 96       	adiw	r24, 0x01	; 1
    33ae:	0e 94 db 18 	call	0x31b6	; 0x31b6 <_ZN5EERef6updateEh>
***/

struct EERef{

    EERef( const int index )
        : index( index )                 {}
    33b2:	82 e1       	ldi	r24, 0x12	; 18
    33b4:	90 e0       	ldi	r25, 0x00	; 0
    33b6:	9a 83       	std	Y+2, r25	; 0x02
    33b8:	89 83       	std	Y+1, r24	; 0x01

    //Basic user access methods.
    EERef operator[]( const int idx )    { return idx; }
    uint8_t read( int idx )              { return EERef( idx ); }
    void write( int idx, uint8_t val )   { (EERef( idx )) = val; }
    void update( int idx, uint8_t val )  { EERef( idx ).update( val ); }
    33ba:	69 e5       	ldi	r22, 0x59	; 89
    33bc:	ce 01       	movw	r24, r28
    33be:	01 96       	adiw	r24, 0x01	; 1
    33c0:	0e 94 db 18 	call	0x31b6	; 0x31b6 <_ZN5EERef6updateEh>
***/

struct EERef{

    EERef( const int index )
        : index( index )                 {}
    33c4:	83 e1       	ldi	r24, 0x13	; 19
    33c6:	90 e0       	ldi	r25, 0x00	; 0
    33c8:	9a 83       	std	Y+2, r25	; 0x02
    33ca:	89 83       	std	Y+1, r24	; 0x01

    //Basic user access methods.
    EERef operator[]( const int idx )    { return idx; }
    uint8_t read( int idx )              { return EERef( idx ); }
    void write( int idx, uint8_t val )   { (EERef( idx )) = val; }
    void update( int idx, uint8_t val )  { EERef( idx ).update( val ); }
    33cc:	61 e3       	ldi	r22, 0x31	; 49
    33ce:	ce 01       	movw	r24, r28
    33d0:	01 96       	adiw	r24, 0x01	; 1
    33d2:	0e 94 db 18 	call	0x31b6	; 0x31b6 <_ZN5EERef6updateEh>
    33d6:	a9 e3       	ldi	r26, 0x39	; 57
    33d8:	ea 2e       	mov	r14, r26
    33da:	a1 e0       	ldi	r26, 0x01	; 1
    33dc:	fa 2e       	mov	r15, r26
    33de:	04 e1       	ldi	r16, 0x14	; 20
    33e0:	10 e0       	ldi	r17, 0x00	; 0
    33e2:	f7 01       	movw	r30, r14
    33e4:	d1 90       	ld	r13, Z+
    33e6:	7f 01       	movw	r14, r30

    EERef( const int index )
        : index( index )                 {}
    
    //Access/read members.
    uint8_t operator*() const            { return eeprom_read_byte( (uint8_t*) index ); }
    33e8:	c8 01       	movw	r24, r16
    33ea:	0e 94 c5 2d 	call	0x5b8a	; 0x5b8a <eeprom_read_byte>
    EERef &operator &=( uint8_t in )     { return *this = **this & in; }
    EERef &operator |=( uint8_t in )     { return *this = **this | in; }
    EERef &operator <<=( uint8_t in )    { return *this = **this << in; }
    EERef &operator >>=( uint8_t in )    { return *this = **this >> in; }
    
    EERef &update( uint8_t in )          { return  in != *this ? *this = in : *this; }
    33ee:	d8 16       	cp	r13, r24
    33f0:	21 f0       	breq	.+8      	; 0x33fa <_Z11HandleInputh+0x212>
    uint8_t operator*() const            { return eeprom_read_byte( (uint8_t*) index ); }
    operator uint8_t() const             { return **this; }
    
    //Assignment/write members.
    EERef &operator=( const EERef &ref ) { return *this = *ref; }
    EERef &operator=( uint8_t in )       { return eeprom_write_byte( (uint8_t*) index, in ), *this;  }
    33f2:	6d 2d       	mov	r22, r13
    33f4:	c8 01       	movw	r24, r16
    33f6:	0e 94 cd 2d 	call	0x5b9a	; 0x5b9a <eeprom_write_byte>
    33fa:	0f 5f       	subi	r16, 0xFF	; 255
    33fc:	1f 4f       	sbci	r17, 0xFF	; 255
    33fe:	04 3f       	cpi	r16, 0xF4	; 244
    3400:	f3 e0       	ldi	r31, 0x03	; 3
    3402:	1f 07       	cpc	r17, r31
    3404:	71 f7       	brne	.-36     	; 0x33e2 <_Z11HandleInputh+0x1fa>
    3406:	28 cf       	rjmp	.-432    	; 0x3258 <_Z11HandleInputh+0x70>
    3408:	22 e0       	ldi	r18, 0x02	; 2
    340a:	52 12       	cpse	r5, r18
    340c:	dc c2       	rjmp	.+1464   	; 0x39c6 <_Z11HandleInputh+0x7de>
    340e:	81 2f       	mov	r24, r17
    3410:	0e 94 ba 0c 	call	0x1974	; 0x1974 <_Z19HandleMovementInputh>
    3414:	14 ff       	sbrs	r17, 4
    3416:	07 c0       	rjmp	.+14     	; 0x3426 <_Z11HandleInputh+0x23e>
    3418:	84 e0       	ldi	r24, 0x04	; 4
    341a:	80 93 22 05 	sts	0x0522, r24	; 0x800522 <UIState+0x8>
    341e:	80 91 20 05 	lds	r24, 0x0520	; 0x800520 <UIState+0x6>
    3422:	80 93 21 05 	sts	0x0521, r24	; 0x800521 <UIState+0x7>
    3426:	15 ff       	sbrs	r17, 5
    3428:	26 cf       	rjmp	.-436    	; 0x3276 <_Z11HandleInputh+0x8e>
    342a:	30 91 20 05 	lds	r19, 0x0520	; 0x800520 <UIState+0x6>
    342e:	3c 83       	std	Y+4, r19	; 0x04
    3430:	31 11       	cpse	r19, r1
    3432:	72 c0       	rjmp	.+228    	; 0x3518 <_Z11HandleInputh+0x330>
    3434:	00 91 1f 05 	lds	r16, 0x051F	; 0x80051f <UIState+0x5>
    3438:	10 91 1e 05 	lds	r17, 0x051E	; 0x80051e <UIState+0x4>
    343c:	60 2f       	mov	r22, r16
    343e:	81 2f       	mov	r24, r17
    3440:	0e 94 97 17 	call	0x2f2e	; 0x2f2e <_Z11GetBuildinghh>
    3444:	00 97       	sbiw	r24, 0x00	; 0
    3446:	b1 f1       	breq	.+108    	; 0x34b4 <_Z11HandleInputh+0x2cc>
    3448:	fc 01       	movw	r30, r24
    344a:	21 81       	ldd	r18, Z+1	; 0x01
    344c:	22 95       	swap	r18
    344e:	2f 70       	andi	r18, 0x0F	; 15
    3450:	29 30       	cpi	r18, 0x09	; 9
    3452:	80 f5       	brcc	.+96     	; 0x34b4 <_Z11HandleInputh+0x2cc>
    3454:	f5 e0       	ldi	r31, 0x05	; 5
    3456:	2f 9f       	mul	r18, r31
    3458:	90 01       	movw	r18, r0
    345a:	11 24       	eor	r1, r1
    345c:	f9 01       	movw	r30, r18
    345e:	ec 50       	subi	r30, 0x0C	; 12
    3460:	f8 4f       	sbci	r31, 0xF8	; 248
    3462:	44 91       	lpm	r20, Z
    3464:	2b 50       	subi	r18, 0x0B	; 11
    3466:	38 4f       	sbci	r19, 0xF8	; 248
    3468:	f9 01       	movw	r30, r18
    346a:	24 91       	lpm	r18, Z
    346c:	c0 90 3d 01 	lds	r12, 0x013D	; 0x80013d <State+0x4>
    3470:	d0 90 3e 01 	lds	r13, 0x013E	; 0x80013e <State+0x5>
    3474:	e0 90 3f 01 	lds	r14, 0x013F	; 0x80013f <State+0x6>
    3478:	f0 90 40 01 	lds	r15, 0x0140	; 0x800140 <State+0x7>
    347c:	42 9f       	mul	r20, r18
    347e:	a0 01       	movw	r20, r0
    3480:	11 24       	eor	r1, r1
    3482:	05 2e       	mov	r0, r21
    3484:	00 0c       	add	r0, r0
    3486:	66 0b       	sbc	r22, r22
    3488:	77 0b       	sbc	r23, r23
    348a:	c4 16       	cp	r12, r20
    348c:	d5 06       	cpc	r13, r21
    348e:	e6 06       	cpc	r14, r22
    3490:	f7 06       	cpc	r15, r23
    3492:	0c f4       	brge	.+2      	; 0x3496 <_Z11HandleInputh+0x2ae>
    3494:	f0 ce       	rjmp	.-544    	; 0x3276 <_Z11HandleInputh+0x8e>
    3496:	c4 1a       	sub	r12, r20
    3498:	d5 0a       	sbc	r13, r21
    349a:	e6 0a       	sbc	r14, r22
    349c:	f7 0a       	sbc	r15, r23
    349e:	c0 92 3d 01 	sts	0x013D, r12	; 0x80013d <State+0x4>
    34a2:	d0 92 3e 01 	sts	0x013E, r13	; 0x80013e <State+0x5>
    34a6:	e0 92 3f 01 	sts	0x013F, r14	; 0x80013f <State+0x6>
    34aa:	f0 92 40 01 	sts	0x0140, r15	; 0x800140 <State+0x7>
    34ae:	0e 94 fb 16 	call	0x2df6	; 0x2df6 <_Z15DestroyBuildingP8Building>
    34b2:	e1 ce       	rjmp	.-574    	; 0x3276 <_Z11HandleInputh+0x8e>
    34b4:	c0 2e       	mov	r12, r16
    34b6:	d1 2c       	mov	r13, r1
    34b8:	e1 2e       	mov	r14, r17
    34ba:	f1 2c       	mov	r15, r1
    34bc:	b6 01       	movw	r22, r12
    34be:	c7 01       	movw	r24, r14
    34c0:	0e 94 80 12 	call	0x2500	; 0x2500 <_Z14GetConnectionsii>
    34c4:	88 23       	and	r24, r24
    34c6:	09 f4       	brne	.+2      	; 0x34ca <_Z11HandleInputh+0x2e2>
    34c8:	d6 ce       	rjmp	.-596    	; 0x3276 <_Z11HandleInputh+0x8e>
    34ca:	80 91 3d 01 	lds	r24, 0x013D	; 0x80013d <State+0x4>
    34ce:	90 91 3e 01 	lds	r25, 0x013E	; 0x80013e <State+0x5>
    34d2:	a0 91 3f 01 	lds	r26, 0x013F	; 0x80013f <State+0x6>
    34d6:	b0 91 40 01 	lds	r27, 0x0140	; 0x800140 <State+0x7>
    34da:	18 16       	cp	r1, r24
    34dc:	19 06       	cpc	r1, r25
    34de:	1a 06       	cpc	r1, r26
    34e0:	1b 06       	cpc	r1, r27
    34e2:	0c f0       	brlt	.+2      	; 0x34e6 <_Z11HandleInputh+0x2fe>
    34e4:	c8 ce       	rjmp	.-624    	; 0x3276 <_Z11HandleInputh+0x8e>
    34e6:	01 97       	sbiw	r24, 0x01	; 1
    34e8:	a1 09       	sbc	r26, r1
    34ea:	b1 09       	sbc	r27, r1
    34ec:	80 93 3d 01 	sts	0x013D, r24	; 0x80013d <State+0x4>
    34f0:	90 93 3e 01 	sts	0x013E, r25	; 0x80013e <State+0x5>
    34f4:	a0 93 3f 01 	sts	0x013F, r26	; 0x80013f <State+0x6>
    34f8:	b0 93 40 01 	sts	0x0140, r27	; 0x800140 <State+0x7>
    34fc:	40 e0       	ldi	r20, 0x00	; 0
    34fe:	b6 01       	movw	r22, r12
    3500:	c7 01       	movw	r24, r14
    3502:	0e 94 55 12 	call	0x24aa	; 0x24aa <_Z14SetConnectionsiih>
    3506:	60 2f       	mov	r22, r16
    3508:	81 2f       	mov	r24, r17
    350a:	0e 94 10 16 	call	0x2c20	; 0x2c20 <_Z33RefreshTileAndConnectedNeighbourshh>
    350e:	60 2f       	mov	r22, r16
    3510:	81 2f       	mov	r24, r17
    3512:	0e 94 e9 08 	call	0x11d2	; 0x11d2 <_Z7SetTilehhh.constprop.16>
    3516:	af ce       	rjmp	.-674    	; 0x3276 <_Z11HandleInputh+0x8e>
    3518:	fc 81       	ldd	r31, Y+4	; 0x04
    351a:	f3 30       	cpi	r31, 0x03	; 3
    351c:	08 f0       	brcs	.+2      	; 0x3520 <_Z11HandleInputh+0x338>
    351e:	c5 c0       	rjmp	.+394    	; 0x36aa <_Z11HandleInputh+0x4c2>
    3520:	b0 90 1f 05 	lds	r11, 0x051F	; 0x80051f <UIState+0x5>
    3524:	a0 90 1e 05 	lds	r10, 0x051E	; 0x80051e <UIState+0x4>
    3528:	6b 2d       	mov	r22, r11
    352a:	8a 2d       	mov	r24, r10
    352c:	0e 94 97 17 	call	0x2f2e	; 0x2f2e <_Z11GetBuildinghh>
    3530:	6c 01       	movw	r12, r24
    3532:	00 97       	sbiw	r24, 0x00	; 0
    3534:	29 f0       	breq	.+10     	; 0x3540 <_Z11HandleInputh+0x358>
    3536:	fc 01       	movw	r30, r24
    3538:	81 81       	ldd	r24, Z+1	; 0x01
    353a:	80 39       	cpi	r24, 0x90	; 144
    353c:	08 f4       	brcc	.+2      	; 0x3540 <_Z11HandleInputh+0x358>
    353e:	9b ce       	rjmp	.-714    	; 0x3276 <_Z11HandleInputh+0x8e>
    3540:	fc 81       	ldd	r31, Y+4	; 0x04
    3542:	e5 e0       	ldi	r30, 0x05	; 5
    3544:	2e 2e       	mov	r2, r30
    3546:	31 2c       	mov	r3, r1
    3548:	f1 30       	cpi	r31, 0x01	; 1
    354a:	29 f4       	brne	.+10     	; 0x3556 <_Z11HandleInputh+0x36e>
    354c:	55 24       	eor	r5, r5
    354e:	53 94       	inc	r5
    3550:	fa e0       	ldi	r31, 0x0A	; 10
    3552:	2f 2e       	mov	r2, r31
    3554:	31 2c       	mov	r3, r1
    3556:	eb 2c       	mov	r14, r11
    3558:	f1 2c       	mov	r15, r1
    355a:	0a 2d       	mov	r16, r10
    355c:	10 e0       	ldi	r17, 0x00	; 0
    355e:	b7 01       	movw	r22, r14
    3560:	c8 01       	movw	r24, r16
    3562:	0e 94 80 12 	call	0x2500	; 0x2500 <_Z14GetConnectionsii>
    3566:	68 2e       	mov	r6, r24
    3568:	b7 01       	movw	r22, r14
    356a:	c8 01       	movw	r24, r16
    356c:	0e 94 82 0c 	call	0x1904	; 0x1904 <_Z14IsTerrainClearii>
    3570:	88 23       	and	r24, r24
    3572:	a1 f1       	breq	.+104    	; 0x35dc <_Z11HandleInputh+0x3f4>
    3574:	85 2d       	mov	r24, r5
    3576:	86 21       	and	r24, r6
    3578:	09 f0       	breq	.+2      	; 0x357c <_Z11HandleInputh+0x394>
    357a:	7d ce       	rjmp	.-774    	; 0x3276 <_Z11HandleInputh+0x8e>
    357c:	40 91 3d 01 	lds	r20, 0x013D	; 0x80013d <State+0x4>
    3580:	50 91 3e 01 	lds	r21, 0x013E	; 0x80013e <State+0x5>
    3584:	60 91 3f 01 	lds	r22, 0x013F	; 0x80013f <State+0x6>
    3588:	70 91 40 01 	lds	r23, 0x0140	; 0x800140 <State+0x7>
    358c:	c1 01       	movw	r24, r2
    358e:	33 0c       	add	r3, r3
    3590:	aa 0b       	sbc	r26, r26
    3592:	bb 0b       	sbc	r27, r27
    3594:	48 17       	cp	r20, r24
    3596:	59 07       	cpc	r21, r25
    3598:	6a 07       	cpc	r22, r26
    359a:	7b 07       	cpc	r23, r27
    359c:	0c f4       	brge	.+2      	; 0x35a0 <_Z11HandleInputh+0x3b8>
    359e:	6b ce       	rjmp	.-810    	; 0x3276 <_Z11HandleInputh+0x8e>
    35a0:	48 1b       	sub	r20, r24
    35a2:	59 0b       	sbc	r21, r25
    35a4:	6a 0b       	sbc	r22, r26
    35a6:	7b 0b       	sbc	r23, r27
    35a8:	40 93 3d 01 	sts	0x013D, r20	; 0x80013d <State+0x4>
    35ac:	50 93 3e 01 	sts	0x013E, r21	; 0x80013e <State+0x5>
    35b0:	60 93 3f 01 	sts	0x013F, r22	; 0x80013f <State+0x6>
    35b4:	70 93 40 01 	sts	0x0140, r23	; 0x800140 <State+0x7>
    35b8:	45 2d       	mov	r20, r5
    35ba:	46 29       	or	r20, r6
    35bc:	b7 01       	movw	r22, r14
    35be:	c8 01       	movw	r24, r16
    35c0:	0e 94 55 12 	call	0x24aa	; 0x24aa <_Z14SetConnectionsiih>
    35c4:	c1 14       	cp	r12, r1
    35c6:	d1 04       	cpc	r13, r1
    35c8:	21 f0       	breq	.+8      	; 0x35d2 <_Z11HandleInputh+0x3ea>
    35ca:	f6 01       	movw	r30, r12
    35cc:	81 81       	ldd	r24, Z+1	; 0x01
    35ce:	8f 70       	andi	r24, 0x0F	; 15
    35d0:	81 83       	std	Z+1, r24	; 0x01
    35d2:	6b 2d       	mov	r22, r11
    35d4:	8a 2d       	mov	r24, r10
    35d6:	0e 94 10 16 	call	0x2c20	; 0x2c20 <_Z33RefreshTileAndConnectedNeighbourshh>
    35da:	4d ce       	rjmp	.-870    	; 0x3276 <_Z11HandleInputh+0x8e>
    35dc:	61 10       	cpse	r6, r1
    35de:	4b ce       	rjmp	.-874    	; 0x3276 <_Z11HandleInputh+0x8e>
    35e0:	45 2d       	mov	r20, r5
    35e2:	b7 01       	movw	r22, r14
    35e4:	c8 01       	movw	r24, r16
    35e6:	0e 94 41 13 	call	0x2682	; 0x2682 <_Z27GetNeighbouringConnectivityiih>
    35ea:	78 2e       	mov	r7, r24
    35ec:	8f ef       	ldi	r24, 0xFF	; 255
    35ee:	87 0d       	add	r24, r7
    35f0:	82 30       	cpi	r24, 0x02	; 2
    35f2:	48 f0       	brcs	.+18     	; 0x3606 <_Z11HandleInputh+0x41e>
    35f4:	8c ef       	ldi	r24, 0xFC	; 252
    35f6:	87 0d       	add	r24, r7
    35f8:	82 30       	cpi	r24, 0x02	; 2
    35fa:	28 f0       	brcs	.+10     	; 0x3606 <_Z11HandleInputh+0x41e>
    35fc:	87 2d       	mov	r24, r7
    35fe:	8d 7f       	andi	r24, 0xFD	; 253
    3600:	88 30       	cpi	r24, 0x08	; 8
    3602:	09 f0       	breq	.+2      	; 0x3606 <_Z11HandleInputh+0x41e>
    3604:	38 ce       	rjmp	.-912    	; 0x3276 <_Z11HandleInputh+0x8e>
    3606:	70 fc       	sbrc	r7, 0
    3608:	3d c0       	rjmp	.+122    	; 0x3684 <_Z11HandleInputh+0x49c>
    360a:	71 fe       	sbrs	r7, 1
    360c:	12 c0       	rjmp	.+36     	; 0x3632 <_Z11HandleInputh+0x44a>
    360e:	48 01       	movw	r8, r16
    3610:	3f ef       	ldi	r19, 0xFF	; 255
    3612:	83 1a       	sub	r8, r19
    3614:	93 0a       	sbc	r9, r19
    3616:	b7 01       	movw	r22, r14
    3618:	c4 01       	movw	r24, r8
    361a:	0e 94 82 0c 	call	0x1904	; 0x1904 <_Z14IsTerrainClearii>
    361e:	81 11       	cpse	r24, r1
    3620:	08 c0       	rjmp	.+16     	; 0x3632 <_Z11HandleInputh+0x44a>
    3622:	45 2d       	mov	r20, r5
    3624:	b7 01       	movw	r22, r14
    3626:	c4 01       	movw	r24, r8
    3628:	0e 94 41 13 	call	0x2682	; 0x2682 <_Z27GetNeighbouringConnectivityiih>
    362c:	85 70       	andi	r24, 0x05	; 5
    362e:	09 f0       	breq	.+2      	; 0x3632 <_Z11HandleInputh+0x44a>
    3630:	22 ce       	rjmp	.-956    	; 0x3276 <_Z11HandleInputh+0x8e>
    3632:	72 fe       	sbrs	r7, 2
    3634:	12 c0       	rjmp	.+36     	; 0x365a <_Z11HandleInputh+0x472>
    3636:	47 01       	movw	r8, r14
    3638:	4f ef       	ldi	r20, 0xFF	; 255
    363a:	84 1a       	sub	r8, r20
    363c:	94 0a       	sbc	r9, r20
    363e:	b4 01       	movw	r22, r8
    3640:	c8 01       	movw	r24, r16
    3642:	0e 94 82 0c 	call	0x1904	; 0x1904 <_Z14IsTerrainClearii>
    3646:	81 11       	cpse	r24, r1
    3648:	08 c0       	rjmp	.+16     	; 0x365a <_Z11HandleInputh+0x472>
    364a:	45 2d       	mov	r20, r5
    364c:	b4 01       	movw	r22, r8
    364e:	c8 01       	movw	r24, r16
    3650:	0e 94 41 13 	call	0x2682	; 0x2682 <_Z27GetNeighbouringConnectivityiih>
    3654:	8a 70       	andi	r24, 0x0A	; 10
    3656:	09 f0       	breq	.+2      	; 0x365a <_Z11HandleInputh+0x472>
    3658:	0e ce       	rjmp	.-996    	; 0x3276 <_Z11HandleInputh+0x8e>
    365a:	73 fe       	sbrs	r7, 3
    365c:	8b cf       	rjmp	.-234    	; 0x3574 <_Z11HandleInputh+0x38c>
    365e:	48 01       	movw	r8, r16
    3660:	81 e0       	ldi	r24, 0x01	; 1
    3662:	88 1a       	sub	r8, r24
    3664:	91 08       	sbc	r9, r1
    3666:	b7 01       	movw	r22, r14
    3668:	c4 01       	movw	r24, r8
    366a:	0e 94 82 0c 	call	0x1904	; 0x1904 <_Z14IsTerrainClearii>
    366e:	81 11       	cpse	r24, r1
    3670:	81 cf       	rjmp	.-254    	; 0x3574 <_Z11HandleInputh+0x38c>
    3672:	45 2d       	mov	r20, r5
    3674:	b7 01       	movw	r22, r14
    3676:	c4 01       	movw	r24, r8
    3678:	0e 94 41 13 	call	0x2682	; 0x2682 <_Z27GetNeighbouringConnectivityiih>
    367c:	85 70       	andi	r24, 0x05	; 5
    367e:	09 f4       	brne	.+2      	; 0x3682 <_Z11HandleInputh+0x49a>
    3680:	79 cf       	rjmp	.-270    	; 0x3574 <_Z11HandleInputh+0x38c>
    3682:	f9 cd       	rjmp	.-1038   	; 0x3276 <_Z11HandleInputh+0x8e>
    3684:	47 01       	movw	r8, r14
    3686:	21 e0       	ldi	r18, 0x01	; 1
    3688:	82 1a       	sub	r8, r18
    368a:	91 08       	sbc	r9, r1
    368c:	b4 01       	movw	r22, r8
    368e:	c8 01       	movw	r24, r16
    3690:	0e 94 82 0c 	call	0x1904	; 0x1904 <_Z14IsTerrainClearii>
    3694:	81 11       	cpse	r24, r1
    3696:	b9 cf       	rjmp	.-142    	; 0x360a <_Z11HandleInputh+0x422>
    3698:	45 2d       	mov	r20, r5
    369a:	b4 01       	movw	r22, r8
    369c:	c8 01       	movw	r24, r16
    369e:	0e 94 41 13 	call	0x2682	; 0x2682 <_Z27GetNeighbouringConnectivityiih>
    36a2:	8a 70       	andi	r24, 0x0A	; 10
    36a4:	09 f4       	brne	.+2      	; 0x36a8 <_Z11HandleInputh+0x4c0>
    36a6:	b1 cf       	rjmp	.-158    	; 0x360a <_Z11HandleInputh+0x422>
    36a8:	e6 cd       	rjmp	.-1076   	; 0x3276 <_Z11HandleInputh+0x8e>
    36aa:	2c 81       	ldd	r18, Y+4	; 0x04
    36ac:	22 50       	subi	r18, 0x02	; 2
    36ae:	33 0b       	sbc	r19, r19
    36b0:	89 01       	movw	r16, r18
    36b2:	ae 01       	movw	r20, r28
    36b4:	4f 5f       	subi	r20, 0xFF	; 255
    36b6:	5f 4f       	sbci	r21, 0xFF	; 255
    36b8:	be 01       	movw	r22, r28
    36ba:	6d 5f       	subi	r22, 0xFD	; 253
    36bc:	7f 4f       	sbci	r23, 0xFF	; 255
    36be:	c9 01       	movw	r24, r18
    36c0:	0e 94 fb 0c 	call	0x19f6	; 0x19f6 <_Z24GetBuildingBrushLocation12BuildingTypePhS0_>
    36c4:	25 e0       	ldi	r18, 0x05	; 5
    36c6:	20 9f       	mul	r18, r16
    36c8:	c0 01       	movw	r24, r0
    36ca:	21 9f       	mul	r18, r17
    36cc:	90 0d       	add	r25, r0
    36ce:	11 24       	eor	r1, r1
    36d0:	fc 01       	movw	r30, r24
    36d2:	ee 50       	subi	r30, 0x0E	; 14
    36d4:	f8 4f       	sbci	r31, 0xF8	; 248
    36d6:	25 90       	lpm	r2, Z+
    36d8:	34 90       	lpm	r3, Z
    36da:	fc 01       	movw	r30, r24
    36dc:	ec 50       	subi	r30, 0x0C	; 12
    36de:	f8 4f       	sbci	r31, 0xF8	; 248
    36e0:	fe 83       	std	Y+6, r31	; 0x06
    36e2:	ed 83       	std	Y+5, r30	; 0x05
    36e4:	04 91       	lpm	r16, Z
    36e6:	9c 01       	movw	r18, r24
    36e8:	2b 50       	subi	r18, 0x0B	; 11
    36ea:	38 4f       	sbci	r19, 0xF8	; 248
    36ec:	38 87       	std	Y+8, r19	; 0x08
    36ee:	2f 83       	std	Y+7, r18	; 0x07
    36f0:	f9 01       	movw	r30, r18
    36f2:	c4 90       	lpm	r12, Z
    36f4:	6b 80       	ldd	r6, Y+3	; 0x03
    36f6:	71 2c       	mov	r7, r1
    36f8:	06 0d       	add	r16, r6
    36fa:	17 2d       	mov	r17, r7
    36fc:	11 1d       	adc	r17, r1
    36fe:	01 33       	cpi	r16, 0x31	; 49
    3700:	11 05       	cpc	r17, r1
    3702:	0c f0       	brlt	.+2      	; 0x3706 <_Z11HandleInputh+0x51e>
    3704:	b8 cd       	rjmp	.-1168   	; 0x3276 <_Z11HandleInputh+0x8e>
    3706:	e9 80       	ldd	r14, Y+1	; 0x01
    3708:	f1 2c       	mov	r15, r1
    370a:	ce 0c       	add	r12, r14
    370c:	df 2c       	mov	r13, r15
    370e:	d1 1c       	adc	r13, r1
    3710:	f1 e3       	ldi	r31, 0x31	; 49
    3712:	cf 16       	cp	r12, r31
    3714:	d1 04       	cpc	r13, r1
    3716:	0c f0       	brlt	.+2      	; 0x371a <_Z11HandleInputh+0x532>
    3718:	ae cd       	rjmp	.-1188   	; 0x3276 <_Z11HandleInputh+0x8e>
    371a:	53 01       	movw	r10, r6
    371c:	a0 16       	cp	r10, r16
    371e:	b1 06       	cpc	r11, r17
    3720:	cc f4       	brge	.+50     	; 0x3754 <_Z11HandleInputh+0x56c>
    3722:	47 01       	movw	r8, r14
    3724:	8c 14       	cp	r8, r12
    3726:	9d 04       	cpc	r9, r13
    3728:	8c f4       	brge	.+34     	; 0x374c <_Z11HandleInputh+0x564>
    372a:	b4 01       	movw	r22, r8
    372c:	c5 01       	movw	r24, r10
    372e:	0e 94 82 0c 	call	0x1904	; 0x1904 <_Z14IsTerrainClearii>
    3732:	88 23       	and	r24, r24
    3734:	09 f4       	brne	.+2      	; 0x3738 <_Z11HandleInputh+0x550>
    3736:	9f cd       	rjmp	.-1218   	; 0x3276 <_Z11HandleInputh+0x8e>
    3738:	b4 01       	movw	r22, r8
    373a:	c5 01       	movw	r24, r10
    373c:	0e 94 80 12 	call	0x2500	; 0x2500 <_Z14GetConnectionsii>
    3740:	80 fd       	sbrc	r24, 0
    3742:	99 cd       	rjmp	.-1230   	; 0x3276 <_Z11HandleInputh+0x8e>
    3744:	2f ef       	ldi	r18, 0xFF	; 255
    3746:	82 1a       	sub	r8, r18
    3748:	92 0a       	sbc	r9, r18
    374a:	ec cf       	rjmp	.-40     	; 0x3724 <_Z11HandleInputh+0x53c>
    374c:	3f ef       	ldi	r19, 0xFF	; 255
    374e:	a3 1a       	sub	r10, r19
    3750:	b3 0a       	sbc	r11, r19
    3752:	e4 cf       	rjmp	.-56     	; 0x371c <_Z11HandleInputh+0x534>
    3754:	50 e0       	ldi	r21, 0x00	; 0
    3756:	40 e0       	ldi	r20, 0x00	; 0
    3758:	65 e0       	ldi	r22, 0x05	; 5
    375a:	ca 01       	movw	r24, r20
    375c:	88 0f       	add	r24, r24
    375e:	99 1f       	adc	r25, r25
    3760:	84 0f       	add	r24, r20
    3762:	95 1f       	adc	r25, r21
    3764:	dc 01       	movw	r26, r24
    3766:	ad 56       	subi	r26, 0x6D	; 109
    3768:	bc 4f       	sbci	r27, 0xFC	; 252
    376a:	11 96       	adiw	r26, 0x01	; 1
    376c:	3c 91       	ld	r19, X
    376e:	11 97       	sbiw	r26, 0x01	; 1
    3770:	23 2f       	mov	r18, r19
    3772:	20 7f       	andi	r18, 0xF0	; 240
    3774:	99 f1       	breq	.+102    	; 0x37dc <_Z11HandleInputh+0x5f4>
    3776:	8c 56       	subi	r24, 0x6C	; 108
    3778:	9c 4f       	sbci	r25, 0xFC	; 252
    377a:	fc 01       	movw	r30, r24
    377c:	80 81       	ld	r24, Z
    377e:	82 95       	swap	r24
    3780:	8f 70       	andi	r24, 0x0F	; 15
    3782:	89 30       	cpi	r24, 0x09	; 9
    3784:	58 f5       	brcc	.+86     	; 0x37dc <_Z11HandleInputh+0x5f4>
    3786:	86 9f       	mul	r24, r22
    3788:	c0 01       	movw	r24, r0
    378a:	11 24       	eor	r1, r1
    378c:	fc 01       	movw	r30, r24
    378e:	ec 50       	subi	r30, 0x0C	; 12
    3790:	f8 4f       	sbci	r31, 0xF8	; 248
    3792:	74 91       	lpm	r23, Z
    3794:	8b 50       	subi	r24, 0x0B	; 11
    3796:	98 4f       	sbci	r25, 0xF8	; 248
    3798:	fc 01       	movw	r30, r24
    379a:	84 91       	lpm	r24, Z
    379c:	9c 91       	ld	r25, X
    379e:	e9 2f       	mov	r30, r25
    37a0:	ef 73       	andi	r30, 0x3F	; 63
    37a2:	f0 e0       	ldi	r31, 0x00	; 0
    37a4:	e0 17       	cp	r30, r16
    37a6:	f1 07       	cpc	r31, r17
    37a8:	cc f4       	brge	.+50     	; 0x37dc <_Z11HandleInputh+0x5f4>
    37aa:	e7 0f       	add	r30, r23
    37ac:	f1 1d       	adc	r31, r1
    37ae:	6e 16       	cp	r6, r30
    37b0:	7f 06       	cpc	r7, r31
    37b2:	a4 f4       	brge	.+40     	; 0x37dc <_Z11HandleInputh+0x5f4>
    37b4:	92 95       	swap	r25
    37b6:	96 95       	lsr	r25
    37b8:	96 95       	lsr	r25
    37ba:	93 70       	andi	r25, 0x03	; 3
    37bc:	23 2f       	mov	r18, r19
    37be:	2f 70       	andi	r18, 0x0F	; 15
    37c0:	22 0f       	add	r18, r18
    37c2:	22 0f       	add	r18, r18
    37c4:	29 2b       	or	r18, r25
    37c6:	30 e0       	ldi	r19, 0x00	; 0
    37c8:	2c 15       	cp	r18, r12
    37ca:	3d 05       	cpc	r19, r13
    37cc:	3c f4       	brge	.+14     	; 0x37dc <_Z11HandleInputh+0x5f4>
    37ce:	82 0f       	add	r24, r18
    37d0:	93 2f       	mov	r25, r19
    37d2:	91 1d       	adc	r25, r1
    37d4:	e8 16       	cp	r14, r24
    37d6:	f9 06       	cpc	r15, r25
    37d8:	0c f4       	brge	.+2      	; 0x37dc <_Z11HandleInputh+0x5f4>
    37da:	4d cd       	rjmp	.-1382   	; 0x3276 <_Z11HandleInputh+0x8e>
    37dc:	4f 5f       	subi	r20, 0xFF	; 255
    37de:	5f 4f       	sbci	r21, 0xFF	; 255
    37e0:	42 38       	cpi	r20, 0x82	; 130
    37e2:	51 05       	cpc	r21, r1
    37e4:	09 f0       	breq	.+2      	; 0x37e8 <_Z11HandleInputh+0x600>
    37e6:	b9 cf       	rjmp	.-142    	; 0x375a <_Z11HandleInputh+0x572>
    37e8:	31 01       	movw	r6, r2
    37ea:	91 2c       	mov	r9, r1
    37ec:	81 2c       	mov	r8, r1
    37ee:	80 91 3d 01 	lds	r24, 0x013D	; 0x80013d <State+0x4>
    37f2:	90 91 3e 01 	lds	r25, 0x013E	; 0x80013e <State+0x5>
    37f6:	a0 91 3f 01 	lds	r26, 0x013F	; 0x80013f <State+0x6>
    37fa:	b0 91 40 01 	lds	r27, 0x0140	; 0x800140 <State+0x7>
    37fe:	86 15       	cp	r24, r6
    3800:	97 05       	cpc	r25, r7
    3802:	a8 05       	cpc	r26, r8
    3804:	b9 05       	cpc	r27, r9
    3806:	0c f4       	brge	.+2      	; 0x380a <_Z11HandleInputh+0x622>
    3808:	36 cd       	rjmp	.-1428   	; 0x3276 <_Z11HandleInputh+0x8e>
    380a:	49 80       	ldd	r4, Y+1	; 0x01
    380c:	3b 81       	ldd	r19, Y+3	; 0x03
    380e:	90 e0       	ldi	r25, 0x00	; 0
    3810:	80 e0       	ldi	r24, 0x00	; 0
    3812:	fc 01       	movw	r30, r24
    3814:	ee 0f       	add	r30, r30
    3816:	ff 1f       	adc	r31, r31
    3818:	e8 0f       	add	r30, r24
    381a:	f9 1f       	adc	r31, r25
    381c:	ec 56       	subi	r30, 0x6C	; 108
    381e:	fc 4f       	sbci	r31, 0xFC	; 252
    3820:	20 81       	ld	r18, Z
    3822:	22 95       	swap	r18
    3824:	2f 70       	andi	r18, 0x0F	; 15
    3826:	c9 f0       	breq	.+50     	; 0x385a <_Z11HandleInputh+0x672>
    3828:	01 96       	adiw	r24, 0x01	; 1
    382a:	82 38       	cpi	r24, 0x82	; 130
    382c:	91 05       	cpc	r25, r1
    382e:	89 f7       	brne	.-30     	; 0x3812 <_Z11HandleInputh+0x62a>
    3830:	90 e0       	ldi	r25, 0x00	; 0
    3832:	80 e0       	ldi	r24, 0x00	; 0
    3834:	fc 01       	movw	r30, r24
    3836:	ee 0f       	add	r30, r30
    3838:	ff 1f       	adc	r31, r31
    383a:	e8 0f       	add	r30, r24
    383c:	f9 1f       	adc	r31, r25
    383e:	ec 56       	subi	r30, 0x6C	; 108
    3840:	fc 4f       	sbci	r31, 0xFC	; 252
    3842:	20 81       	ld	r18, Z
    3844:	22 95       	swap	r18
    3846:	2f 70       	andi	r18, 0x0F	; 15
    3848:	29 5f       	subi	r18, 0xF9	; 249
    384a:	2f 70       	andi	r18, 0x0F	; 15
    384c:	22 30       	cpi	r18, 0x02	; 2
    384e:	28 f0       	brcs	.+10     	; 0x385a <_Z11HandleInputh+0x672>
    3850:	01 96       	adiw	r24, 0x01	; 1
    3852:	82 38       	cpi	r24, 0x82	; 130
    3854:	91 05       	cpc	r25, r1
    3856:	71 f7       	brne	.-36     	; 0x3834 <_Z11HandleInputh+0x64c>
    3858:	0e cd       	rjmp	.-1508   	; 0x3276 <_Z11HandleInputh+0x8e>
    385a:	2c 81       	ldd	r18, Y+4	; 0x04
    385c:	22 50       	subi	r18, 0x02	; 2
    385e:	fc 01       	movw	r30, r24
    3860:	ee 0f       	add	r30, r30
    3862:	ff 1f       	adc	r31, r31
    3864:	e8 0f       	add	r30, r24
    3866:	f9 1f       	adc	r31, r25
    3868:	cf 01       	movw	r24, r30
    386a:	8d 56       	subi	r24, 0x6D	; 109
    386c:	9c 4f       	sbci	r25, 0xFC	; 252
    386e:	9a 87       	std	Y+10, r25	; 0x0a
    3870:	89 87       	std	Y+9, r24	; 0x09
    3872:	fc 01       	movw	r30, r24
    3874:	83 2f       	mov	r24, r19
    3876:	8f 73       	andi	r24, 0x3F	; 63
    3878:	94 2d       	mov	r25, r4
    387a:	92 95       	swap	r25
    387c:	99 0f       	add	r25, r25
    387e:	99 0f       	add	r25, r25
    3880:	90 7c       	andi	r25, 0xC0	; 192
    3882:	89 2b       	or	r24, r25
    3884:	80 83       	st	Z, r24
    3886:	94 2d       	mov	r25, r4
    3888:	96 95       	lsr	r25
    388a:	96 95       	lsr	r25
    388c:	9f 70       	andi	r25, 0x0F	; 15
    388e:	82 2f       	mov	r24, r18
    3890:	82 95       	swap	r24
    3892:	80 7f       	andi	r24, 0xF0	; 240
    3894:	89 2b       	or	r24, r25
    3896:	81 83       	std	Z+1, r24	; 0x01
    3898:	82 81       	ldd	r24, Z+2	; 0x02
    389a:	80 74       	andi	r24, 0x40	; 64
    389c:	82 83       	std	Z+2, r24	; 0x02
    389e:	ed 81       	ldd	r30, Y+5	; 0x05
    38a0:	fe 81       	ldd	r31, Y+6	; 0x06
    38a2:	84 91       	lpm	r24, Z
    38a4:	ef 81       	ldd	r30, Y+7	; 0x07
    38a6:	f8 85       	ldd	r31, Y+8	; 0x08
    38a8:	f4 91       	lpm	r31, Z
    38aa:	fc 83       	std	Y+4, r31	; 0x04
    38ac:	25 30       	cpi	r18, 0x05	; 5
    38ae:	09 f4       	brne	.+2      	; 0x38b2 <_Z11HandleInputh+0x6ca>
    38b0:	51 2c       	mov	r5, r1
    38b2:	23 2e       	mov	r2, r19
    38b4:	31 2c       	mov	r3, r1
    38b6:	81 01       	movw	r16, r2
    38b8:	51 01       	movw	r10, r2
    38ba:	a8 0e       	add	r10, r24
    38bc:	b1 1c       	adc	r11, r1
    38be:	c4 2c       	mov	r12, r4
    38c0:	d1 2c       	mov	r13, r1
    38c2:	2c 81       	ldd	r18, Y+4	; 0x04
    38c4:	2c 0d       	add	r18, r12
    38c6:	3d 2d       	mov	r19, r13
    38c8:	31 1d       	adc	r19, r1
    38ca:	3e 83       	std	Y+6, r19	; 0x06
    38cc:	2d 83       	std	Y+5, r18	; 0x05
    38ce:	0a 15       	cp	r16, r10
    38d0:	1b 05       	cpc	r17, r11
    38d2:	94 f4       	brge	.+36     	; 0x38f8 <_Z11HandleInputh+0x710>
    38d4:	76 01       	movw	r14, r12
    38d6:	8d 81       	ldd	r24, Y+5	; 0x05
    38d8:	9e 81       	ldd	r25, Y+6	; 0x06
    38da:	e8 16       	cp	r14, r24
    38dc:	f9 06       	cpc	r15, r25
    38de:	4c f4       	brge	.+18     	; 0x38f2 <_Z11HandleInputh+0x70a>
    38e0:	45 2d       	mov	r20, r5
    38e2:	b7 01       	movw	r22, r14
    38e4:	c8 01       	movw	r24, r16
    38e6:	0e 94 55 12 	call	0x24aa	; 0x24aa <_Z14SetConnectionsiih>
    38ea:	9f ef       	ldi	r25, 0xFF	; 255
    38ec:	e9 1a       	sub	r14, r25
    38ee:	f9 0a       	sbc	r15, r25
    38f0:	f2 cf       	rjmp	.-28     	; 0x38d6 <_Z11HandleInputh+0x6ee>
    38f2:	0f 5f       	subi	r16, 0xFF	; 255
    38f4:	1f 4f       	sbci	r17, 0xFF	; 255
    38f6:	eb cf       	rjmp	.-42     	; 0x38ce <_Z11HandleInputh+0x6e6>
    38f8:	70 e0       	ldi	r23, 0x00	; 0
    38fa:	60 e0       	ldi	r22, 0x00	; 0
    38fc:	95 e0       	ldi	r25, 0x05	; 5
    38fe:	c9 2e       	mov	r12, r25
    3900:	51 2c       	mov	r5, r1
    3902:	72 01       	movw	r14, r4
    3904:	ec 81       	ldd	r30, Y+4	; 0x04
    3906:	ee 0e       	add	r14, r30
    3908:	f1 1c       	adc	r15, r1
    390a:	9b 01       	movw	r18, r22
    390c:	22 0f       	add	r18, r18
    390e:	33 1f       	adc	r19, r19
    3910:	26 0f       	add	r18, r22
    3912:	37 1f       	adc	r19, r23
    3914:	f9 01       	movw	r30, r18
    3916:	ec 56       	subi	r30, 0x6C	; 108
    3918:	fc 4f       	sbci	r31, 0xFC	; 252
    391a:	80 81       	ld	r24, Z
    391c:	82 95       	swap	r24
    391e:	8f 70       	andi	r24, 0x0F	; 15
    3920:	89 30       	cpi	r24, 0x09	; 9
    3922:	90 f1       	brcs	.+100    	; 0x3988 <_Z11HandleInputh+0x7a0>
    3924:	8c 9d       	mul	r24, r12
    3926:	c0 01       	movw	r24, r0
    3928:	11 24       	eor	r1, r1
    392a:	fc 01       	movw	r30, r24
    392c:	ec 50       	subi	r30, 0x0C	; 12
    392e:	f8 4f       	sbci	r31, 0xF8	; 248
    3930:	d4 90       	lpm	r13, Z
    3932:	fc 01       	movw	r30, r24
    3934:	eb 50       	subi	r30, 0x0B	; 11
    3936:	f8 4f       	sbci	r31, 0xF8	; 248
    3938:	e4 91       	lpm	r30, Z
    393a:	d9 01       	movw	r26, r18
    393c:	ad 56       	subi	r26, 0x6D	; 109
    393e:	bc 4f       	sbci	r27, 0xFC	; 252
    3940:	2c 91       	ld	r18, X
    3942:	02 2f       	mov	r16, r18
    3944:	0f 73       	andi	r16, 0x3F	; 63
    3946:	10 e0       	ldi	r17, 0x00	; 0
    3948:	0a 15       	cp	r16, r10
    394a:	1b 05       	cpc	r17, r11
    394c:	ec f4       	brge	.+58     	; 0x3988 <_Z11HandleInputh+0x7a0>
    394e:	0d 0d       	add	r16, r13
    3950:	11 1d       	adc	r17, r1
    3952:	20 16       	cp	r2, r16
    3954:	31 06       	cpc	r3, r17
    3956:	c4 f4       	brge	.+48     	; 0x3988 <_Z11HandleInputh+0x7a0>
    3958:	22 95       	swap	r18
    395a:	26 95       	lsr	r18
    395c:	26 95       	lsr	r18
    395e:	23 70       	andi	r18, 0x03	; 3
    3960:	11 96       	adiw	r26, 0x01	; 1
    3962:	9c 91       	ld	r25, X
    3964:	11 97       	sbiw	r26, 0x01	; 1
    3966:	9f 70       	andi	r25, 0x0F	; 15
    3968:	89 2f       	mov	r24, r25
    396a:	88 0f       	add	r24, r24
    396c:	88 0f       	add	r24, r24
    396e:	28 2b       	or	r18, r24
    3970:	30 e0       	ldi	r19, 0x00	; 0
    3972:	2e 15       	cp	r18, r14
    3974:	3f 05       	cpc	r19, r15
    3976:	44 f4       	brge	.+16     	; 0x3988 <_Z11HandleInputh+0x7a0>
    3978:	e2 0f       	add	r30, r18
    397a:	f3 2f       	mov	r31, r19
    397c:	f1 1d       	adc	r31, r1
    397e:	4e 16       	cp	r4, r30
    3980:	5f 06       	cpc	r5, r31
    3982:	14 f4       	brge	.+4      	; 0x3988 <_Z11HandleInputh+0x7a0>
    3984:	11 96       	adiw	r26, 0x01	; 1
    3986:	9c 93       	st	X, r25
    3988:	6f 5f       	subi	r22, 0xFF	; 255
    398a:	7f 4f       	sbci	r23, 0xFF	; 255
    398c:	62 38       	cpi	r22, 0x82	; 130
    398e:	71 05       	cpc	r23, r1
    3990:	09 f0       	breq	.+2      	; 0x3994 <_Z11HandleInputh+0x7ac>
    3992:	bb cf       	rjmp	.-138    	; 0x390a <_Z11HandleInputh+0x722>
    3994:	89 85       	ldd	r24, Y+9	; 0x09
    3996:	9a 85       	ldd	r25, Y+10	; 0x0a
    3998:	0e 94 32 15 	call	0x2a64	; 0x2a64 <_Z20RefreshBuildingTilesP8Building>
    399c:	80 91 3d 01 	lds	r24, 0x013D	; 0x80013d <State+0x4>
    39a0:	90 91 3e 01 	lds	r25, 0x013E	; 0x80013e <State+0x5>
    39a4:	a0 91 3f 01 	lds	r26, 0x013F	; 0x80013f <State+0x6>
    39a8:	b0 91 40 01 	lds	r27, 0x0140	; 0x800140 <State+0x7>
    39ac:	86 19       	sub	r24, r6
    39ae:	97 09       	sbc	r25, r7
    39b0:	a8 09       	sbc	r26, r8
    39b2:	b9 09       	sbc	r27, r9
    39b4:	80 93 3d 01 	sts	0x013D, r24	; 0x80013d <State+0x4>
    39b8:	90 93 3e 01 	sts	0x013E, r25	; 0x80013e <State+0x5>
    39bc:	a0 93 3f 01 	sts	0x013F, r26	; 0x80013f <State+0x6>
    39c0:	b0 93 40 01 	sts	0x0140, r27	; 0x800140 <State+0x7>
    39c4:	58 cc       	rjmp	.-1872   	; 0x3276 <_Z11HandleInputh+0x8e>
    39c6:	f6 e0       	ldi	r31, 0x06	; 6
    39c8:	5f 12       	cpse	r5, r31
    39ca:	55 cc       	rjmp	.-1878   	; 0x3276 <_Z11HandleInputh+0x8e>
    39cc:	80 91 21 05 	lds	r24, 0x0521	; 0x800521 <UIState+0x7>
    39d0:	80 31       	cpi	r24, 0x10	; 16
    39d2:	08 f4       	brcc	.+2      	; 0x39d6 <_Z11HandleInputh+0x7ee>
    39d4:	50 cc       	rjmp	.-1888   	; 0x3276 <_Z11HandleInputh+0x8e>
    39d6:	10 ff       	sbrs	r17, 0
    39d8:	07 c0       	rjmp	.+14     	; 0x39e8 <_Z11HandleInputh+0x800>
    39da:	80 91 82 03 	lds	r24, 0x0382	; 0x800382 <State+0x249>
    39de:	88 23       	and	r24, r24
    39e0:	19 f0       	breq	.+6      	; 0x39e8 <_Z11HandleInputh+0x800>
    39e2:	81 50       	subi	r24, 0x01	; 1
    39e4:	80 93 82 03 	sts	0x0382, r24	; 0x800382 <State+0x249>
    39e8:	11 ff       	sbrs	r17, 1
    39ea:	07 c0       	rjmp	.+14     	; 0x39fa <_Z11HandleInputh+0x812>
    39ec:	80 91 82 03 	lds	r24, 0x0382	; 0x800382 <State+0x249>
    39f0:	83 36       	cpi	r24, 0x63	; 99
    39f2:	18 f4       	brcc	.+6      	; 0x39fa <_Z11HandleInputh+0x812>
    39f4:	8f 5f       	subi	r24, 0xFF	; 255
    39f6:	80 93 82 03 	sts	0x0382, r24	; 0x800382 <State+0x249>
    39fa:	10 73       	andi	r17, 0x30	; 48
    39fc:	09 f0       	breq	.+2      	; 0x3a00 <_Z11HandleInputh+0x818>
    39fe:	2c cc       	rjmp	.-1960   	; 0x3258 <_Z11HandleInputh+0x70>
    3a00:	3a cc       	rjmp	.-1932   	; 0x3276 <_Z11HandleInputh+0x8e>

00003a02 <__vector_10>:
#endif
}

//	General interrupt
ISR(USB_GEN_vect)
{
    3a02:	1f 92       	push	r1
    3a04:	0f 92       	push	r0
    3a06:	0f b6       	in	r0, 0x3f	; 63
    3a08:	0f 92       	push	r0
    3a0a:	11 24       	eor	r1, r1
    3a0c:	8f 93       	push	r24
    3a0e:	9f 93       	push	r25
	u8 udint = UDINT;
    3a10:	80 91 e1 00 	lds	r24, 0x00E1	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
	UDINT &= ~((1<<EORSTI) | (1<<SOFI)); // clear the IRQ flags for the IRQs which are handled here, except WAKEUPI and SUSPI (see below)
    3a14:	90 91 e1 00 	lds	r25, 0x00E1	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
    3a18:	93 7f       	andi	r25, 0xF3	; 243
    3a1a:	90 93 e1 00 	sts	0x00E1, r25	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>

	//	End of Reset
	if (udint & (1<<EORSTI))
    3a1e:	83 ff       	sbrs	r24, 3
    3a20:	0f c0       	rjmp	.+30     	; 0x3a40 <__vector_10+0x3e>
#define EP_SINGLE_16 0x12

static
void InitEP(u8 index, u8 type, u8 size)
{
	UENUM = index;
    3a22:	10 92 e9 00 	sts	0x00E9, r1	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
	UECONX = (1<<EPEN);
    3a26:	91 e0       	ldi	r25, 0x01	; 1
    3a28:	90 93 eb 00 	sts	0x00EB, r25	; 0x8000eb <__DATA_REGION_ORIGIN__+0x8b>
	UECFG0X = type;
    3a2c:	10 92 ec 00 	sts	0x00EC, r1	; 0x8000ec <__DATA_REGION_ORIGIN__+0x8c>
	UECFG1X = size;
    3a30:	92 e3       	ldi	r25, 0x32	; 50
    3a32:	90 93 ed 00 	sts	0x00ED, r25	; 0x8000ed <__DATA_REGION_ORIGIN__+0x8d>

	//	End of Reset
	if (udint & (1<<EORSTI))
	{
		InitEP(0,EP_TYPE_CONTROL,EP_SINGLE_64);	// init ep0
		_usbConfiguration = 0;			// not configured yet
    3a36:	10 92 89 05 	sts	0x0589, r1	; 0x800589 <_usbConfiguration>
		UEIENX = 1 << RXSTPE;			// Enable interrupts for ep0
    3a3a:	98 e0       	ldi	r25, 0x08	; 8
    3a3c:	90 93 f0 00 	sts	0x00F0, r25	; 0x8000f0 <__DATA_REGION_ORIGIN__+0x90>
	}

	//	Start of Frame - happens every millisecond so we use it for TX and RX LED one-shot timing, too
	if (udint & (1<<SOFI))
    3a40:	82 ff       	sbrs	r24, 2
    3a42:	22 c0       	rjmp	.+68     	; 0x3a88 <__vector_10+0x86>
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    3a44:	93 e0       	ldi	r25, 0x03	; 3
    3a46:	90 93 e9 00 	sts	0x00E9, r25	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
}

static inline u8 FifoByteCount()
{
	return UEBCLX;
    3a4a:	90 91 f2 00 	lds	r25, 0x00F2	; 0x8000f2 <__DATA_REGION_ORIGIN__+0x92>
}

void USB_Flush(u8 ep)
{
	SetEP(ep);
	if (FifoByteCount())
    3a4e:	99 23       	and	r25, r25
    3a50:	19 f0       	breq	.+6      	; 0x3a58 <__vector_10+0x56>
	UEINTX = 0x6B;	// FIFOCON=0 NAKINI=1 RWAL=1 NAKOUTI=0 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=1
}

static inline void ReleaseTX()
{
	UEINTX = 0x3A;	// FIFOCON=0 NAKINI=0 RWAL=1 NAKOUTI=1 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=0
    3a52:	9a e3       	ldi	r25, 0x3A	; 58
    3a54:	90 93 e8 00 	sts	0x00E8, r25	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
	if (udint & (1<<SOFI))
	{
		USB_Flush(CDC_TX);				// Send a tx frame if found
		
		// check whether the one-shot period has elapsed.  if so, turn off the LED
		if (TxLEDPulse && !(--TxLEDPulse))
    3a58:	90 91 2a 05 	lds	r25, 0x052A	; 0x80052a <TxLEDPulse>
    3a5c:	99 23       	and	r25, r25
    3a5e:	41 f0       	breq	.+16     	; 0x3a70 <__vector_10+0x6e>
    3a60:	90 91 2a 05 	lds	r25, 0x052A	; 0x80052a <TxLEDPulse>
    3a64:	91 50       	subi	r25, 0x01	; 1
    3a66:	90 93 2a 05 	sts	0x052A, r25	; 0x80052a <TxLEDPulse>
    3a6a:	91 11       	cpse	r25, r1
    3a6c:	01 c0       	rjmp	.+2      	; 0x3a70 <__vector_10+0x6e>
			TXLED0;
    3a6e:	5d 9a       	sbi	0x0b, 5	; 11
		if (RxLEDPulse && !(--RxLEDPulse))
    3a70:	90 91 88 05 	lds	r25, 0x0588	; 0x800588 <RxLEDPulse>
    3a74:	99 23       	and	r25, r25
    3a76:	41 f0       	breq	.+16     	; 0x3a88 <__vector_10+0x86>
    3a78:	90 91 88 05 	lds	r25, 0x0588	; 0x800588 <RxLEDPulse>
    3a7c:	91 50       	subi	r25, 0x01	; 1
    3a7e:	90 93 88 05 	sts	0x0588, r25	; 0x800588 <RxLEDPulse>
    3a82:	91 11       	cpse	r25, r1
    3a84:	01 c0       	rjmp	.+2      	; 0x3a88 <__vector_10+0x86>
			RXLED0;
    3a86:	28 9a       	sbi	0x05, 0	; 5
	}

	// the WAKEUPI interrupt is triggered as soon as there are non-idle patterns on the data
	// lines. Thus, the WAKEUPI interrupt can occur even if the controller is not in the "suspend" mode.
	// Therefore the we enable it only when USB is suspended
	if (udint & (1<<WAKEUPI))
    3a88:	84 ff       	sbrs	r24, 4
    3a8a:	18 c0       	rjmp	.+48     	; 0x3abc <__vector_10+0xba>
	{
		UDIEN = (UDIEN & ~(1<<WAKEUPE)) | (1<<SUSPE); // Disable interrupts for WAKEUP and enable interrupts for SUSPEND
    3a8c:	80 91 e2 00 	lds	r24, 0x00E2	; 0x8000e2 <__DATA_REGION_ORIGIN__+0x82>
    3a90:	8e 7e       	andi	r24, 0xEE	; 238
    3a92:	81 60       	ori	r24, 0x01	; 1
    3a94:	80 93 e2 00 	sts	0x00E2, r24	; 0x8000e2 <__DATA_REGION_ORIGIN__+0x82>

		//TODO
		// WAKEUPI shall be cleared by software (USB clock inputs must be enabled before).
		//USB_ClockEnable();
		UDINT &= ~(1<<WAKEUPI);
    3a98:	80 91 e1 00 	lds	r24, 0x00E1	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
    3a9c:	8f 7e       	andi	r24, 0xEF	; 239
    3a9e:	80 93 e1 00 	sts	0x00E1, r24	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
		_usbSuspendState = (_usbSuspendState & ~(1<<SUSPI)) | (1<<WAKEUPI);
    3aa2:	80 91 2b 05 	lds	r24, 0x052B	; 0x80052b <_usbSuspendState>
    3aa6:	8e 7e       	andi	r24, 0xEE	; 238
    3aa8:	80 61       	ori	r24, 0x10	; 16

		//TODO
		//USB_ClockDisable();

		UDINT &= ~((1<<WAKEUPI) | (1<<SUSPI)); // clear any already pending WAKEUP IRQs and the SUSPI request
		_usbSuspendState = (_usbSuspendState & ~(1<<WAKEUPI)) | (1<<SUSPI);
    3aaa:	80 93 2b 05 	sts	0x052B, r24	; 0x80052b <_usbSuspendState>
	}
}
    3aae:	9f 91       	pop	r25
    3ab0:	8f 91       	pop	r24
    3ab2:	0f 90       	pop	r0
    3ab4:	0f be       	out	0x3f, r0	; 63
    3ab6:	0f 90       	pop	r0
    3ab8:	1f 90       	pop	r1
    3aba:	18 95       	reti
		// WAKEUPI shall be cleared by software (USB clock inputs must be enabled before).
		//USB_ClockEnable();
		UDINT &= ~(1<<WAKEUPI);
		_usbSuspendState = (_usbSuspendState & ~(1<<SUSPI)) | (1<<WAKEUPI);
	}
	else if (udint & (1<<SUSPI)) // only one of the WAKEUPI / SUSPI bits can be active at time
    3abc:	80 ff       	sbrs	r24, 0
    3abe:	f7 cf       	rjmp	.-18     	; 0x3aae <__vector_10+0xac>
	{
		UDIEN = (UDIEN & ~(1<<SUSPE)) | (1<<WAKEUPE); // Disable interrupts for SUSPEND and enable interrupts for WAKEUP
    3ac0:	80 91 e2 00 	lds	r24, 0x00E2	; 0x8000e2 <__DATA_REGION_ORIGIN__+0x82>
    3ac4:	8e 7e       	andi	r24, 0xEE	; 238
    3ac6:	80 61       	ori	r24, 0x10	; 16
    3ac8:	80 93 e2 00 	sts	0x00E2, r24	; 0x8000e2 <__DATA_REGION_ORIGIN__+0x82>

		//TODO
		//USB_ClockDisable();

		UDINT &= ~((1<<WAKEUPI) | (1<<SUSPI)); // clear any already pending WAKEUP IRQs and the SUSPI request
    3acc:	80 91 e1 00 	lds	r24, 0x00E1	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
    3ad0:	8e 7e       	andi	r24, 0xEE	; 238
    3ad2:	80 93 e1 00 	sts	0x00E1, r24	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
		_usbSuspendState = (_usbSuspendState & ~(1<<WAKEUPI)) | (1<<SUSPI);
    3ad6:	80 91 2b 05 	lds	r24, 0x052B	; 0x80052b <_usbSuspendState>
    3ada:	8e 7e       	andi	r24, 0xEE	; 238
    3adc:	81 60       	ori	r24, 0x01	; 1
    3ade:	e5 cf       	rjmp	.-54     	; 0x3aaa <__vector_10+0xa8>

00003ae0 <__vector_11>:
	return true;
}

//	Endpoint 0 interrupt
ISR(USB_COM_vect)
{
    3ae0:	1f 92       	push	r1
    3ae2:	0f 92       	push	r0
    3ae4:	0f b6       	in	r0, 0x3f	; 63
    3ae6:	0f 92       	push	r0
    3ae8:	11 24       	eor	r1, r1
    3aea:	cf 92       	push	r12
    3aec:	df 92       	push	r13
    3aee:	ef 92       	push	r14
    3af0:	ff 92       	push	r15
    3af2:	0f 93       	push	r16
    3af4:	1f 93       	push	r17
    3af6:	2f 93       	push	r18
    3af8:	3f 93       	push	r19
    3afa:	4f 93       	push	r20
    3afc:	5f 93       	push	r21
    3afe:	6f 93       	push	r22
    3b00:	7f 93       	push	r23
    3b02:	8f 93       	push	r24
    3b04:	9f 93       	push	r25
    3b06:	af 93       	push	r26
    3b08:	bf 93       	push	r27
    3b0a:	ef 93       	push	r30
    3b0c:	ff 93       	push	r31
    3b0e:	cf 93       	push	r28
    3b10:	df 93       	push	r29
    3b12:	cd b7       	in	r28, 0x3d	; 61
    3b14:	de b7       	in	r29, 0x3e	; 62
    3b16:	6c 97       	sbiw	r28, 0x1c	; 28
    3b18:	de bf       	out	0x3e, r29	; 62
    3b1a:	cd bf       	out	0x3d, r28	; 61
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    3b1c:	10 92 e9 00 	sts	0x00E9, r1	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
	return UEBCLX;
}

static inline u8 ReceivedSetupInt()
{
	return UEINTX & (1<<RXSTPI);
    3b20:	80 91 e8 00 	lds	r24, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>

//	Endpoint 0 interrupt
ISR(USB_COM_vect)
{
    SetEP(0);
	if (!ReceivedSetupInt())
    3b24:	83 ff       	sbrs	r24, 3
    3b26:	25 c0       	rjmp	.+74     	; 0x3b72 <__vector_11+0x92>
		return;

	USBSetup setup;
	Recv((u8*)&setup,8);
    3b28:	68 e0       	ldi	r22, 0x08	; 8
    3b2a:	ce 01       	movw	r24, r28
    3b2c:	45 96       	adiw	r24, 0x15	; 21
    3b2e:	0e 94 29 0b 	call	0x1652	; 0x1652 <_ZL4RecvPVhh>
	return UEINTX & (1<<RXSTPI);
}

static inline void ClearSetupInt()
{
	UEINTX = ~((1<<RXSTPI) | (1<<RXOUTI) | (1<<TXINI));
    3b32:	82 ef       	ldi	r24, 0xF2	; 242
    3b34:	80 93 e8 00 	sts	0x00E8, r24	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>

	USBSetup setup;
	Recv((u8*)&setup,8);
	ClearSetupInt();

	u8 requestType = setup.bmRequestType;
    3b38:	8d 89       	ldd	r24, Y+21	; 0x15
	if (requestType & REQUEST_DEVICETOHOST)
    3b3a:	87 ff       	sbrs	r24, 7
    3b3c:	39 c0       	rjmp	.+114    	; 0x3bb0 <__vector_11+0xd0>
volatile u8 _usbCurrentStatus = 0; // meaning of bits see usb_20.pdf, Figure 9-4. Information Returned by a GetStatus() Request to a Device
volatile u8 _usbSuspendState = 0; // copy of UDINT to check SUSPI and WAKEUPI bits

static inline void WaitIN(void)
{
	while (!(UEINTX & (1<<TXINI)))
    3b3e:	90 91 e8 00 	lds	r25, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
    3b42:	90 ff       	sbrs	r25, 0
    3b44:	fc cf       	rjmp	.-8      	; 0x3b3e <__vector_11+0x5e>
		WaitIN();
	else
		ClearIN();

    bool ok = true;
	if (REQUEST_STANDARD == (requestType & REQUEST_TYPE))
    3b46:	98 2f       	mov	r25, r24
    3b48:	90 76       	andi	r25, 0x60	; 96
    3b4a:	09 f0       	breq	.+2      	; 0x3b4e <__vector_11+0x6e>
    3b4c:	34 c1       	rjmp	.+616    	; 0x3db6 <__vector_11+0x2d6>
	{
		//	Standard Requests
		u8 r = setup.bRequest;
    3b4e:	9e 89       	ldd	r25, Y+22	; 0x16
    3b50:	4f 89       	ldd	r20, Y+23	; 0x17
    3b52:	58 8d       	ldd	r21, Y+24	; 0x18
		u16 wValue = setup.wValueL | (setup.wValueH << 8);
    3b54:	2f 89       	ldd	r18, Y+23	; 0x17
    3b56:	f8 8c       	ldd	r15, Y+24	; 0x18
		if (GET_STATUS == r)
    3b58:	91 11       	cpse	r25, r1
    3b5a:	31 c0       	rjmp	.+98     	; 0x3bbe <__vector_11+0xde>
		{
			if (requestType == (REQUEST_DEVICETOHOST | REQUEST_STANDARD | REQUEST_DEVICE))
    3b5c:	80 38       	cpi	r24, 0x80	; 128
    3b5e:	61 f5       	brne	.+88     	; 0x3bb8 <__vector_11+0xd8>
			{
				Send8(_usbCurrentStatus);
    3b60:	80 91 29 05 	lds	r24, 0x0529	; 0x800529 <_usbCurrentStatus>
	return UEDATX;	
}

static inline void Send8(u8 d)
{
	UEDATX = d;
    3b64:	80 93 f1 00 	sts	0x00F1, r24	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
    3b68:	10 92 f1 00 	sts	0x00F1, r1	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
		;
}

static inline void ClearIN(void)
{
	UEINTX = ~(1<<TXINI);
    3b6c:	8e ef       	ldi	r24, 0xFE	; 254
    3b6e:	80 93 e8 00 	sts	0x00E8, r24	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
		ClearIN();
	else
	{
		Stall();
	}
}
    3b72:	6c 96       	adiw	r28, 0x1c	; 28
    3b74:	0f b6       	in	r0, 0x3f	; 63
    3b76:	f8 94       	cli
    3b78:	de bf       	out	0x3e, r29	; 62
    3b7a:	0f be       	out	0x3f, r0	; 63
    3b7c:	cd bf       	out	0x3d, r28	; 61
    3b7e:	df 91       	pop	r29
    3b80:	cf 91       	pop	r28
    3b82:	ff 91       	pop	r31
    3b84:	ef 91       	pop	r30
    3b86:	bf 91       	pop	r27
    3b88:	af 91       	pop	r26
    3b8a:	9f 91       	pop	r25
    3b8c:	8f 91       	pop	r24
    3b8e:	7f 91       	pop	r23
    3b90:	6f 91       	pop	r22
    3b92:	5f 91       	pop	r21
    3b94:	4f 91       	pop	r20
    3b96:	3f 91       	pop	r19
    3b98:	2f 91       	pop	r18
    3b9a:	1f 91       	pop	r17
    3b9c:	0f 91       	pop	r16
    3b9e:	ff 90       	pop	r15
    3ba0:	ef 90       	pop	r14
    3ba2:	df 90       	pop	r13
    3ba4:	cf 90       	pop	r12
    3ba6:	0f 90       	pop	r0
    3ba8:	0f be       	out	0x3f, r0	; 63
    3baa:	0f 90       	pop	r0
    3bac:	1f 90       	pop	r1
    3bae:	18 95       	reti
		;
}

static inline void ClearIN(void)
{
	UEINTX = ~(1<<TXINI);
    3bb0:	9e ef       	ldi	r25, 0xFE	; 254
    3bb2:	90 93 e8 00 	sts	0x00E8, r25	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
    3bb6:	c7 cf       	rjmp	.-114    	; 0x3b46 <__vector_11+0x66>
	return UEDATX;	
}

static inline void Send8(u8 d)
{
	UEDATX = d;
    3bb8:	10 92 f1 00 	sts	0x00F1, r1	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
    3bbc:	d5 cf       	rjmp	.-86     	; 0x3b68 <__vector_11+0x88>
				// see "Figure 9-6. Information Returned by a GetStatus() Request to an Endpoint" in usb_20.pdf for more information
				Send8(0);
				Send8(0);
			}
		}
		else if (CLEAR_FEATURE == r)
    3bbe:	91 30       	cpi	r25, 0x01	; 1
    3bc0:	59 f4       	brne	.+22     	; 0x3bd8 <__vector_11+0xf8>
		{
			if((requestType == (REQUEST_HOSTTODEVICE | REQUEST_STANDARD | REQUEST_DEVICE))
    3bc2:	81 11       	cpse	r24, r1
    3bc4:	d3 cf       	rjmp	.-90     	; 0x3b6c <__vector_11+0x8c>
				&& (wValue == DEVICE_REMOTE_WAKEUP))
    3bc6:	41 30       	cpi	r20, 0x01	; 1
    3bc8:	51 05       	cpc	r21, r1
    3bca:	81 f6       	brne	.-96     	; 0x3b6c <__vector_11+0x8c>
			{
				_usbCurrentStatus &= ~FEATURE_REMOTE_WAKEUP_ENABLED;
    3bcc:	80 91 29 05 	lds	r24, 0x0529	; 0x800529 <_usbCurrentStatus>
    3bd0:	8d 7f       	andi	r24, 0xFD	; 253
		else if (SET_FEATURE == r)
		{
			if((requestType == (REQUEST_HOSTTODEVICE | REQUEST_STANDARD | REQUEST_DEVICE))
				&& (wValue == DEVICE_REMOTE_WAKEUP))
			{
				_usbCurrentStatus |= FEATURE_REMOTE_WAKEUP_ENABLED;
    3bd2:	80 93 29 05 	sts	0x0529, r24	; 0x800529 <_usbCurrentStatus>
    3bd6:	ca cf       	rjmp	.-108    	; 0x3b6c <__vector_11+0x8c>
				&& (wValue == DEVICE_REMOTE_WAKEUP))
			{
				_usbCurrentStatus &= ~FEATURE_REMOTE_WAKEUP_ENABLED;
			}
		}
		else if (SET_FEATURE == r)
    3bd8:	93 30       	cpi	r25, 0x03	; 3
    3bda:	49 f4       	brne	.+18     	; 0x3bee <__vector_11+0x10e>
		{
			if((requestType == (REQUEST_HOSTTODEVICE | REQUEST_STANDARD | REQUEST_DEVICE))
    3bdc:	81 11       	cpse	r24, r1
    3bde:	c6 cf       	rjmp	.-116    	; 0x3b6c <__vector_11+0x8c>
				&& (wValue == DEVICE_REMOTE_WAKEUP))
    3be0:	41 30       	cpi	r20, 0x01	; 1
    3be2:	51 05       	cpc	r21, r1
    3be4:	19 f6       	brne	.-122    	; 0x3b6c <__vector_11+0x8c>
			{
				_usbCurrentStatus |= FEATURE_REMOTE_WAKEUP_ENABLED;
    3be6:	80 91 29 05 	lds	r24, 0x0529	; 0x800529 <_usbCurrentStatus>
    3bea:	82 60       	ori	r24, 0x02	; 2
    3bec:	f2 cf       	rjmp	.-28     	; 0x3bd2 <__vector_11+0xf2>
			}
		}
		else if (SET_ADDRESS == r)
    3bee:	95 30       	cpi	r25, 0x05	; 5
    3bf0:	41 f4       	brne	.+16     	; 0x3c02 <__vector_11+0x122>
volatile u8 _usbCurrentStatus = 0; // meaning of bits see usb_20.pdf, Figure 9-4. Information Returned by a GetStatus() Request to a Device
volatile u8 _usbSuspendState = 0; // copy of UDINT to check SUSPI and WAKEUPI bits

static inline void WaitIN(void)
{
	while (!(UEINTX & (1<<TXINI)))
    3bf2:	80 91 e8 00 	lds	r24, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
    3bf6:	80 ff       	sbrs	r24, 0
    3bf8:	fc cf       	rjmp	.-8      	; 0x3bf2 <__vector_11+0x112>
			}
		}
		else if (SET_ADDRESS == r)
		{
			WaitIN();
			UDADDR = setup.wValueL | (1<<ADDEN);
    3bfa:	20 68       	ori	r18, 0x80	; 128
    3bfc:	20 93 e3 00 	sts	0x00E3, r18	; 0x8000e3 <__DATA_REGION_ORIGIN__+0x83>
    3c00:	b5 cf       	rjmp	.-150    	; 0x3b6c <__vector_11+0x8c>
		}
		else if (GET_DESCRIPTOR == r)
    3c02:	96 30       	cpi	r25, 0x06	; 6
    3c04:	09 f0       	breq	.+2      	; 0x3c08 <__vector_11+0x128>
    3c06:	a9 c0       	rjmp	.+338    	; 0x3d5a <__vector_11+0x27a>
    3c08:	0b 8d       	ldd	r16, Y+27	; 0x1b
    3c0a:	1c 8d       	ldd	r17, Y+28	; 0x1c

static
bool SendDescriptor(USBSetup& setup)
{
	u8 t = setup.wValueH;
	if (USB_CONFIGURATION_DESCRIPTOR_TYPE == t)
    3c0c:	22 e0       	ldi	r18, 0x02	; 2
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    3c0e:	10 92 e9 00 	sts	0x00E9, r1	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
static int _cmark;
static int _cend;
void InitControl(int end)
{
	SetEP(0);
	_cmark = 0;
    3c12:	10 92 27 05 	sts	0x0527, r1	; 0x800527 <_ZL6_cmark+0x1>
    3c16:	10 92 26 05 	sts	0x0526, r1	; 0x800526 <_ZL6_cmark>

static
bool SendDescriptor(USBSetup& setup)
{
	u8 t = setup.wValueH;
	if (USB_CONFIGURATION_DESCRIPTOR_TYPE == t)
    3c1a:	f2 12       	cpse	r15, r18
    3c1c:	2e c0       	rjmp	.+92     	; 0x3c7a <__vector_11+0x19a>
static int _cend;
void InitControl(int end)
{
	SetEP(0);
	_cmark = 0;
	_cend = end;
    3c1e:	10 92 25 05 	sts	0x0525, r1	; 0x800525 <_ZL5_cend+0x1>
    3c22:	10 92 24 05 	sts	0x0524, r1	; 0x800524 <_ZL5_cend>
static
bool SendConfiguration(int maxlen)
{
	//	Count and measure interfaces
	InitControl(0);
	u8 interfaces = SendInterfaces();
    3c26:	0e 94 f8 0a 	call	0x15f0	; 0x15f0 <_ZL14SendInterfacesv>
	ConfigDescriptor config = D_CONFIG(_cmark + sizeof(ConfigDescriptor),interfaces);
    3c2a:	1f 82       	std	Y+7, r1	; 0x07
    3c2c:	99 e0       	ldi	r25, 0x09	; 9
    3c2e:	99 83       	std	Y+1, r25	; 0x01
    3c30:	fa 82       	std	Y+2, r15	; 0x02
    3c32:	91 e0       	ldi	r25, 0x01	; 1
    3c34:	9e 83       	std	Y+6, r25	; 0x06
    3c36:	90 ea       	ldi	r25, 0xA0	; 160
    3c38:	98 87       	std	Y+8, r25	; 0x08
    3c3a:	9a ef       	ldi	r25, 0xFA	; 250
    3c3c:	99 87       	std	Y+9, r25	; 0x09
    3c3e:	20 91 26 05 	lds	r18, 0x0526	; 0x800526 <_ZL6_cmark>
    3c42:	30 91 27 05 	lds	r19, 0x0527	; 0x800527 <_ZL6_cmark+0x1>
    3c46:	27 5f       	subi	r18, 0xF7	; 247
    3c48:	3f 4f       	sbci	r19, 0xFF	; 255
    3c4a:	3c 83       	std	Y+4, r19	; 0x04
    3c4c:	2b 83       	std	Y+3, r18	; 0x03
    3c4e:	8d 83       	std	Y+5, r24	; 0x05
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    3c50:	10 92 e9 00 	sts	0x00E9, r1	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
static int _cmark;
static int _cend;
void InitControl(int end)
{
	SetEP(0);
	_cmark = 0;
    3c54:	10 92 27 05 	sts	0x0527, r1	; 0x800527 <_ZL6_cmark+0x1>
    3c58:	10 92 26 05 	sts	0x0526, r1	; 0x800526 <_ZL6_cmark>
	_cend = end;
    3c5c:	10 93 25 05 	sts	0x0525, r17	; 0x800525 <_ZL5_cend+0x1>
    3c60:	00 93 24 05 	sts	0x0524, r16	; 0x800524 <_ZL5_cend>
	u8 interfaces = SendInterfaces();
	ConfigDescriptor config = D_CONFIG(_cmark + sizeof(ConfigDescriptor),interfaces);

	//	Now send them
	InitControl(maxlen);
	USB_SendControl(0,&config,sizeof(ConfigDescriptor));
    3c64:	49 e0       	ldi	r20, 0x09	; 9
    3c66:	50 e0       	ldi	r21, 0x00	; 0
    3c68:	be 01       	movw	r22, r28
    3c6a:	6f 5f       	subi	r22, 0xFF	; 255
    3c6c:	7f 4f       	sbci	r23, 0xFF	; 255
    3c6e:	80 e0       	ldi	r24, 0x00	; 0
    3c70:	0e 94 d2 0a 	call	0x15a4	; 0x15a4 <_Z15USB_SendControlhPKvi>
	SendInterfaces();
    3c74:	0e 94 f8 0a 	call	0x15f0	; 0x15f0 <_ZL14SendInterfacesv>
    3c78:	79 cf       	rjmp	.-270    	; 0x3b6c <__vector_11+0x8c>
static int _cend;
void InitControl(int end)
{
	SetEP(0);
	_cmark = 0;
	_cend = end;
    3c7a:	10 93 25 05 	sts	0x0525, r17	; 0x800525 <_ZL5_cend+0x1>
    3c7e:	00 93 24 05 	sts	0x0524, r16	; 0x800524 <_ZL5_cend>
	if (USB_CONFIGURATION_DESCRIPTOR_TYPE == t)
		return SendConfiguration(setup.wLength);

	InitControl(setup.wLength);
#ifdef PLUGGABLE_USB_ENABLED
	int ret = PluggableUSB().getDescriptor(setup);
    3c82:	0e 94 0f 0a 	call	0x141e	; 0x141e <_Z12PluggableUSBv>
}

int PluggableUSB_::getDescriptor(USBSetup& setup)
{
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
    3c86:	dc 01       	movw	r26, r24
    3c88:	12 96       	adiw	r26, 0x02	; 2
    3c8a:	0d 91       	ld	r16, X+
    3c8c:	1c 91       	ld	r17, X
    3c8e:	01 15       	cp	r16, r1
    3c90:	11 05       	cpc	r17, r1
    3c92:	09 f4       	brne	.+2      	; 0x3c96 <__vector_11+0x1b6>
    3c94:	51 c1       	rjmp	.+674    	; 0x3f38 <__vector_11+0x458>
		int ret = node->getDescriptor(setup);
    3c96:	d8 01       	movw	r26, r16
    3c98:	ed 91       	ld	r30, X+
    3c9a:	fc 91       	ld	r31, X
    3c9c:	04 80       	ldd	r0, Z+4	; 0x04
    3c9e:	f5 81       	ldd	r31, Z+5	; 0x05
    3ca0:	e0 2d       	mov	r30, r0
    3ca2:	be 01       	movw	r22, r28
    3ca4:	6b 5e       	subi	r22, 0xEB	; 235
    3ca6:	7f 4f       	sbci	r23, 0xFF	; 255
    3ca8:	c8 01       	movw	r24, r16
    3caa:	09 95       	icall
		// ret!=0 -> request has been processed
		if (ret)
    3cac:	00 97       	sbiw	r24, 0x00	; 0
    3cae:	09 f0       	breq	.+2      	; 0x3cb2 <__vector_11+0x1d2>
    3cb0:	3e c1       	rjmp	.+636    	; 0x3f2e <__vector_11+0x44e>
}

int PluggableUSB_::getDescriptor(USBSetup& setup)
{
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
    3cb2:	f8 01       	movw	r30, r16
    3cb4:	00 85       	ldd	r16, Z+8	; 0x08
    3cb6:	11 85       	ldd	r17, Z+9	; 0x09
    3cb8:	ea cf       	rjmp	.-44     	; 0x3c8e <__vector_11+0x1ae>
	const u8* desc_addr = 0;
	if (USB_DEVICE_DESCRIPTOR_TYPE == t)
	{
		desc_addr = (const u8*)&USB_DeviceDescriptorIAD;
	}
	else if (USB_STRING_DESCRIPTOR_TYPE == t)
    3cba:	f3 e0       	ldi	r31, 0x03	; 3
    3cbc:	ff 12       	cpse	r15, r31
    3cbe:	0e c0       	rjmp	.+28     	; 0x3cdc <__vector_11+0x1fc>
	{
		if (setup.wValueL == 0) {
    3cc0:	8f 89       	ldd	r24, Y+23	; 0x17
    3cc2:	88 23       	and	r24, r24
    3cc4:	09 f4       	brne	.+2      	; 0x3cc8 <__vector_11+0x1e8>
    3cc6:	40 c0       	rjmp	.+128    	; 0x3d48 <__vector_11+0x268>
			desc_addr = (const u8*)&STRING_LANGUAGE;
		}
		else if (setup.wValueL == IPRODUCT) {
    3cc8:	82 30       	cpi	r24, 0x02	; 2
    3cca:	61 f4       	brne	.+24     	; 0x3ce4 <__vector_11+0x204>
			return USB_SendStringDescriptor(STRING_PRODUCT, strlen(USB_PRODUCT), TRANSFER_PGM);
    3ccc:	40 e8       	ldi	r20, 0x80	; 128
    3cce:	60 e1       	ldi	r22, 0x10	; 16
    3cd0:	8a e6       	ldi	r24, 0x6A	; 106
    3cd2:	99 e0       	ldi	r25, 0x09	; 9
		}
		else if (setup.wValueL == ISERIAL) {
#ifdef PLUGGABLE_USB_ENABLED
			char name[ISERIAL_MAX_LEN];
			PluggableUSB().getShortName(name);
			return USB_SendStringDescriptor((uint8_t*)name, strlen(name), 0);
    3cd4:	0e 94 ec 1f 	call	0x3fd8	; 0x3fd8 <_ZL24USB_SendStringDescriptorPKhhh>
	{
		InitControl(setup.wLength);		//	Max length of transfer
		ok = ClassInterfaceRequest(setup);
	}

	if (ok)
    3cd8:	81 11       	cpse	r24, r1
    3cda:	48 cf       	rjmp	.-368    	; 0x3b6c <__vector_11+0x8c>
	UEINTX = ~((1<<RXSTPI) | (1<<RXOUTI) | (1<<TXINI));
}

static inline void Stall()
{
	UECONX = (1<<STALLRQ) | (1<<EPEN);
    3cdc:	81 e2       	ldi	r24, 0x21	; 33
    3cde:	80 93 eb 00 	sts	0x00EB, r24	; 0x8000eb <__DATA_REGION_ORIGIN__+0x8b>
    3ce2:	47 cf       	rjmp	.-370    	; 0x3b72 <__vector_11+0x92>
			desc_addr = (const u8*)&STRING_LANGUAGE;
		}
		else if (setup.wValueL == IPRODUCT) {
			return USB_SendStringDescriptor(STRING_PRODUCT, strlen(USB_PRODUCT), TRANSFER_PGM);
		}
		else if (setup.wValueL == IMANUFACTURER) {
    3ce4:	81 30       	cpi	r24, 0x01	; 1
    3ce6:	29 f4       	brne	.+10     	; 0x3cf2 <__vector_11+0x212>
			return USB_SendStringDescriptor(STRING_MANUFACTURER, strlen(USB_MANUFACTURER), TRANSFER_PGM);
    3ce8:	40 e8       	ldi	r20, 0x80	; 128
    3cea:	6b e0       	ldi	r22, 0x0B	; 11
    3cec:	8e e5       	ldi	r24, 0x5E	; 94
    3cee:	99 e0       	ldi	r25, 0x09	; 9
    3cf0:	f1 cf       	rjmp	.-30     	; 0x3cd4 <__vector_11+0x1f4>
		}
		else if (setup.wValueL == ISERIAL) {
    3cf2:	83 30       	cpi	r24, 0x03	; 3
    3cf4:	99 f7       	brne	.-26     	; 0x3cdc <__vector_11+0x1fc>
#ifdef PLUGGABLE_USB_ENABLED
			char name[ISERIAL_MAX_LEN];
			PluggableUSB().getShortName(name);
    3cf6:	0e 94 0f 0a 	call	0x141e	; 0x141e <_Z12PluggableUSBv>
}

void PluggableUSB_::getShortName(char *iSerialNum)
{
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
    3cfa:	dc 01       	movw	r26, r24
    3cfc:	12 96       	adiw	r26, 0x02	; 2
    3cfe:	ed 90       	ld	r14, X+
    3d00:	fc 90       	ld	r15, X
    3d02:	8e 01       	movw	r16, r28
    3d04:	0f 5f       	subi	r16, 0xFF	; 255
    3d06:	1f 4f       	sbci	r17, 0xFF	; 255
    3d08:	68 01       	movw	r12, r16
    3d0a:	e1 14       	cp	r14, r1
    3d0c:	f1 04       	cpc	r15, r1
    3d0e:	79 f0       	breq	.+30     	; 0x3d2e <__vector_11+0x24e>
		iSerialNum += node->getShortName(iSerialNum);
    3d10:	d7 01       	movw	r26, r14
    3d12:	ed 91       	ld	r30, X+
    3d14:	fc 91       	ld	r31, X
    3d16:	06 80       	ldd	r0, Z+6	; 0x06
    3d18:	f7 81       	ldd	r31, Z+7	; 0x07
    3d1a:	e0 2d       	mov	r30, r0
    3d1c:	b8 01       	movw	r22, r16
    3d1e:	c7 01       	movw	r24, r14
    3d20:	09 95       	icall
    3d22:	08 0f       	add	r16, r24
    3d24:	11 1d       	adc	r17, r1
}

void PluggableUSB_::getShortName(char *iSerialNum)
{
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
    3d26:	f7 01       	movw	r30, r14
    3d28:	e0 84       	ldd	r14, Z+8	; 0x08
    3d2a:	f1 84       	ldd	r15, Z+9	; 0x09
    3d2c:	ee cf       	rjmp	.-36     	; 0x3d0a <__vector_11+0x22a>
		iSerialNum += node->getShortName(iSerialNum);
	}
	*iSerialNum = 0;
    3d2e:	d8 01       	movw	r26, r16
    3d30:	1c 92       	st	X, r1
			return USB_SendStringDescriptor((uint8_t*)name, strlen(name), 0);
    3d32:	f6 01       	movw	r30, r12
    3d34:	01 90       	ld	r0, Z+
    3d36:	00 20       	and	r0, r0
    3d38:	e9 f7       	brne	.-6      	; 0x3d34 <__vector_11+0x254>
    3d3a:	31 97       	sbiw	r30, 0x01	; 1
    3d3c:	bf 01       	movw	r22, r30
    3d3e:	6c 19       	sub	r22, r12
    3d40:	7d 09       	sbc	r23, r13
    3d42:	40 e0       	ldi	r20, 0x00	; 0
    3d44:	c6 01       	movw	r24, r12
    3d46:	c6 cf       	rjmp	.-116    	; 0x3cd4 <__vector_11+0x1f4>
		desc_addr = (const u8*)&USB_DeviceDescriptorIAD;
	}
	else if (USB_STRING_DESCRIPTOR_TYPE == t)
	{
		if (setup.wValueL == 0) {
			desc_addr = (const u8*)&STRING_LANGUAGE;
    3d48:	68 e4       	ldi	r22, 0x48	; 72
    3d4a:	79 e0       	ldi	r23, 0x09	; 9
			return false;
	}

	if (desc_addr == 0)
		return false;
	u8 desc_length = pgm_read_byte(desc_addr);
    3d4c:	fb 01       	movw	r30, r22
    3d4e:	44 91       	lpm	r20, Z

	USB_SendControl(TRANSFER_PGM,desc_addr,desc_length);
    3d50:	50 e0       	ldi	r21, 0x00	; 0
    3d52:	80 e8       	ldi	r24, 0x80	; 128

	if (REQUEST_DEVICETOHOST_CLASS_INTERFACE == requestType)
	{
		if (CDC_GET_LINE_CODING == r)
		{
			USB_SendControl(0,(void*)&_usbLineInfo,7);
    3d54:	0e 94 d2 0a 	call	0x15a4	; 0x15a4 <_Z15USB_SendControlhPKvi>
    3d58:	09 cf       	rjmp	.-494    	; 0x3b6c <__vector_11+0x8c>
		}
		else if (GET_DESCRIPTOR == r)
		{
			ok = SendDescriptor(setup);
		}
		else if (SET_DESCRIPTOR == r)
    3d5a:	97 30       	cpi	r25, 0x07	; 7
    3d5c:	09 f4       	brne	.+2      	; 0x3d60 <__vector_11+0x280>
    3d5e:	be cf       	rjmp	.-132    	; 0x3cdc <__vector_11+0x1fc>
		{
			ok = false;
		}
		else if (GET_CONFIGURATION == r)
    3d60:	98 30       	cpi	r25, 0x08	; 8
    3d62:	21 f4       	brne	.+8      	; 0x3d6c <__vector_11+0x28c>
	return UEDATX;	
}

static inline void Send8(u8 d)
{
	UEDATX = d;
    3d64:	81 e0       	ldi	r24, 0x01	; 1
    3d66:	80 93 f1 00 	sts	0x00F1, r24	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
    3d6a:	00 cf       	rjmp	.-512    	; 0x3b6c <__vector_11+0x8c>
		}
		else if (GET_CONFIGURATION == r)
		{
			Send8(1);
		}
		else if (SET_CONFIGURATION == r)
    3d6c:	99 30       	cpi	r25, 0x09	; 9
    3d6e:	09 f0       	breq	.+2      	; 0x3d72 <__vector_11+0x292>
    3d70:	fd ce       	rjmp	.-518    	; 0x3b6c <__vector_11+0x8c>
		{
			if (REQUEST_DEVICE == (requestType & REQUEST_RECIPIENT))
    3d72:	83 70       	andi	r24, 0x03	; 3
    3d74:	09 f0       	breq	.+2      	; 0x3d78 <__vector_11+0x298>
    3d76:	b2 cf       	rjmp	.-156    	; 0x3cdc <__vector_11+0x1fc>
    3d78:	e0 e1       	ldi	r30, 0x10	; 16
    3d7a:	f1 e0       	ldi	r31, 0x01	; 1
}

static
void InitEndpoints()
{
	for (u8 i = 1; i < sizeof(_initEndpoints) && _initEndpoints[i] != 0; i++)
    3d7c:	81 e0       	ldi	r24, 0x01	; 1
	{
		UENUM = i;
		UECONX = (1<<EPEN);
    3d7e:	31 e0       	ldi	r19, 0x01	; 1
		UECFG0X = _initEndpoints[i];
#if USB_EP_SIZE == 16
		UECFG1X = EP_SINGLE_16;
#elif USB_EP_SIZE == 64
		UECFG1X = EP_DOUBLE_64;
    3d80:	96 e3       	ldi	r25, 0x36	; 54
}

static
void InitEndpoints()
{
	for (u8 i = 1; i < sizeof(_initEndpoints) && _initEndpoints[i] != 0; i++)
    3d82:	21 91       	ld	r18, Z+
    3d84:	22 23       	and	r18, r18
    3d86:	71 f0       	breq	.+28     	; 0x3da4 <__vector_11+0x2c4>
	{
		UENUM = i;
    3d88:	80 93 e9 00 	sts	0x00E9, r24	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
		UECONX = (1<<EPEN);
    3d8c:	30 93 eb 00 	sts	0x00EB, r19	; 0x8000eb <__DATA_REGION_ORIGIN__+0x8b>
		UECFG0X = _initEndpoints[i];
    3d90:	df 01       	movw	r26, r30
    3d92:	11 97       	sbiw	r26, 0x01	; 1
    3d94:	2c 91       	ld	r18, X
    3d96:	20 93 ec 00 	sts	0x00EC, r18	; 0x8000ec <__DATA_REGION_ORIGIN__+0x8c>
#if USB_EP_SIZE == 16
		UECFG1X = EP_SINGLE_16;
#elif USB_EP_SIZE == 64
		UECFG1X = EP_DOUBLE_64;
    3d9a:	90 93 ed 00 	sts	0x00ED, r25	; 0x8000ed <__DATA_REGION_ORIGIN__+0x8d>
}

static
void InitEndpoints()
{
	for (u8 i = 1; i < sizeof(_initEndpoints) && _initEndpoints[i] != 0; i++)
    3d9e:	8f 5f       	subi	r24, 0xFF	; 255
    3da0:	87 30       	cpi	r24, 0x07	; 7
    3da2:	79 f7       	brne	.-34     	; 0x3d82 <__vector_11+0x2a2>
		UECFG1X = EP_DOUBLE_64;
#else
#error Unsupported value for USB_EP_SIZE
#endif
	}
	UERST = 0x7E;	// And reset them
    3da4:	8e e7       	ldi	r24, 0x7E	; 126
    3da6:	80 93 ea 00 	sts	0x00EA, r24	; 0x8000ea <__DATA_REGION_ORIGIN__+0x8a>
	UERST = 0;
    3daa:	10 92 ea 00 	sts	0x00EA, r1	; 0x8000ea <__DATA_REGION_ORIGIN__+0x8a>
		else if (SET_CONFIGURATION == r)
		{
			if (REQUEST_DEVICE == (requestType & REQUEST_RECIPIENT))
			{
				InitEndpoints();
				_usbConfiguration = setup.wValueL;
    3dae:	8f 89       	ldd	r24, Y+23	; 0x17
    3db0:	80 93 89 05 	sts	0x0589, r24	; 0x800589 <_usbConfiguration>
    3db4:	db ce       	rjmp	.-586    	; 0x3b6c <__vector_11+0x8c>
		{
		}
	}
	else
	{
		InitControl(setup.wLength);		//	Max length of transfer
    3db6:	8b 8d       	ldd	r24, Y+27	; 0x1b
    3db8:	9c 8d       	ldd	r25, Y+28	; 0x1c
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
    3dba:	10 92 e9 00 	sts	0x00E9, r1	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
static int _cmark;
static int _cend;
void InitControl(int end)
{
	SetEP(0);
	_cmark = 0;
    3dbe:	10 92 27 05 	sts	0x0527, r1	; 0x800527 <_ZL6_cmark+0x1>
    3dc2:	10 92 26 05 	sts	0x0526, r1	; 0x800526 <_ZL6_cmark>
	_cend = end;
    3dc6:	90 93 25 05 	sts	0x0525, r25	; 0x800525 <_ZL5_cend+0x1>
    3dca:	80 93 24 05 	sts	0x0524, r24	; 0x800524 <_ZL5_cend>
static
bool ClassInterfaceRequest(USBSetup& setup)
{
	u8 i = setup.wIndex;

	if (CDC_ACM_INTERFACE == i)
    3dce:	89 8d       	ldd	r24, Y+25	; 0x19
    3dd0:	81 11       	cpse	r24, r1
    3dd2:	92 c0       	rjmp	.+292    	; 0x3ef8 <__vector_11+0x418>
	return USB_SendControl(TRANSFER_PGM,&_cdcInterface,sizeof(_cdcInterface));
}

bool CDC_Setup(USBSetup& setup)
{
	u8 r = setup.bRequest;
    3dd4:	8e 89       	ldd	r24, Y+22	; 0x16
	u8 requestType = setup.bmRequestType;
    3dd6:	9d 89       	ldd	r25, Y+21	; 0x15

	if (REQUEST_DEVICETOHOST_CLASS_INTERFACE == requestType)
    3dd8:	91 3a       	cpi	r25, 0xA1	; 161
    3dda:	49 f4       	brne	.+18     	; 0x3dee <__vector_11+0x30e>
	{
		if (CDC_GET_LINE_CODING == r)
    3ddc:	81 32       	cpi	r24, 0x21	; 33
    3dde:	09 f0       	breq	.+2      	; 0x3de2 <__vector_11+0x302>
    3de0:	7d cf       	rjmp	.-262    	; 0x3cdc <__vector_11+0x1fc>
		{
			USB_SendControl(0,(void*)&_usbLineInfo,7);
    3de2:	47 e0       	ldi	r20, 0x07	; 7
    3de4:	50 e0       	ldi	r21, 0x00	; 0
    3de6:	67 e0       	ldi	r22, 0x07	; 7
    3de8:	71 e0       	ldi	r23, 0x01	; 1
    3dea:	80 e0       	ldi	r24, 0x00	; 0
    3dec:	b3 cf       	rjmp	.-154    	; 0x3d54 <__vector_11+0x274>
			return true;
		}
	}

	if (REQUEST_HOSTTODEVICE_CLASS_INTERFACE == requestType)
    3dee:	91 32       	cpi	r25, 0x21	; 33
    3df0:	09 f0       	breq	.+2      	; 0x3df4 <__vector_11+0x314>
    3df2:	74 cf       	rjmp	.-280    	; 0x3cdc <__vector_11+0x1fc>
	{
		if (CDC_SEND_BREAK == r)
    3df4:	83 32       	cpi	r24, 0x23	; 35
    3df6:	69 f4       	brne	.+26     	; 0x3e12 <__vector_11+0x332>
		{
			breakValue = ((uint16_t)setup.wValueH << 8) | setup.wValueL;
    3df8:	8f 89       	ldd	r24, Y+23	; 0x17
    3dfa:	98 8d       	ldd	r25, Y+24	; 0x18
    3dfc:	b0 e0       	ldi	r27, 0x00	; 0
    3dfe:	a0 e0       	ldi	r26, 0x00	; 0
    3e00:	80 93 03 01 	sts	0x0103, r24	; 0x800103 <_ZL10breakValue>
    3e04:	90 93 04 01 	sts	0x0104, r25	; 0x800104 <_ZL10breakValue+0x1>
    3e08:	a0 93 05 01 	sts	0x0105, r26	; 0x800105 <_ZL10breakValue+0x2>
    3e0c:	b0 93 06 01 	sts	0x0106, r27	; 0x800106 <_ZL10breakValue+0x3>
    3e10:	ad ce       	rjmp	.-678    	; 0x3b6c <__vector_11+0x8c>
		}

		if (CDC_SET_LINE_CODING == r)
    3e12:	80 32       	cpi	r24, 0x20	; 32
    3e14:	69 f4       	brne	.+26     	; 0x3e30 <__vector_11+0x350>
	UEINTX = ~(1<<TXINI);
}

static inline void WaitOUT(void)
{
	while (!(UEINTX & (1<<RXOUTI)))
    3e16:	80 91 e8 00 	lds	r24, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
    3e1a:	82 ff       	sbrs	r24, 2
    3e1c:	fc cf       	rjmp	.-8      	; 0x3e16 <__vector_11+0x336>
			recvLength = 64;
		}

		// Write data to fit to the end (not the beginning) of the array
		WaitOUT();
		Recv((u8*)d + len - length, recvLength);
    3e1e:	67 e0       	ldi	r22, 0x07	; 7
    3e20:	87 e0       	ldi	r24, 0x07	; 7
    3e22:	91 e0       	ldi	r25, 0x01	; 1
    3e24:	0e 94 29 0b 	call	0x1652	; 0x1652 <_ZL4RecvPVhh>
	return (UEINTX & (1<<RXOUTI)) == 0;
}

static inline void ClearOUT(void)
{
	UEINTX = ~(1<<RXOUTI);
    3e28:	8b ef       	ldi	r24, 0xFB	; 251
    3e2a:	80 93 e8 00 	sts	0x00E8, r24	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
    3e2e:	9e ce       	rjmp	.-708    	; 0x3b6c <__vector_11+0x8c>
		{
			USB_RecvControl((void*)&_usbLineInfo,7);
		}

		if (CDC_SET_CONTROL_LINE_STATE == r)
    3e30:	82 32       	cpi	r24, 0x22	; 34
    3e32:	09 f0       	breq	.+2      	; 0x3e36 <__vector_11+0x356>
    3e34:	9b ce       	rjmp	.-714    	; 0x3b6c <__vector_11+0x8c>
		{
			_usbLineInfo.lineState = setup.wValueL;
    3e36:	8f 89       	ldd	r24, Y+23	; 0x17
    3e38:	80 93 0e 01 	sts	0x010E, r24	; 0x80010e <_ZL12_usbLineInfo+0x7>
	D_ENDPOINT(USB_ENDPOINT_IN (CDC_ENDPOINT_IN ),USB_ENDPOINT_TYPE_BULK,USB_EP_SIZE,0)
};

bool isLUFAbootloader()
{
	return pgm_read_word(FLASHEND - 1) == NEW_LUFA_SIGNATURE;
    3e3c:	ee ef       	ldi	r30, 0xFE	; 254
    3e3e:	ff e7       	ldi	r31, 0x7F	; 127
    3e40:	85 91       	lpm	r24, Z+
    3e42:	94 91       	lpm	r25, Z
// This is used to keep compatible with the old leonardo bootloaders.
// You are still able to set the magic key position manually to RAMEND-1 to save a few bytes for this check.
#if MAGIC_KEY_POS != (RAMEND-1)
			// For future boards save the key in the inproblematic RAMEND
			// Which is reserved for the main() return value (which will never return)
			if (isLUFAbootloader()) {
    3e44:	8b 3f       	cpi	r24, 0xFB	; 251
    3e46:	9c 4d       	sbci	r25, 0xDC	; 220
    3e48:	51 f1       	breq	.+84     	; 0x3e9e <__vector_11+0x3be>
			// auto-reset into the bootloader is triggered when the port, already 
			// open at 1200 bps, is closed.  this is the signal to start the watchdog
			// with a relatively long period so it can finish housekeeping tasks
			// like servicing endpoints before the sketch ends

			uint16_t magic_key_pos = MAGIC_KEY_POS;
    3e4a:	e0 e0       	ldi	r30, 0x00	; 0
    3e4c:	f8 e0       	ldi	r31, 0x08	; 8
				magic_key_pos = (RAMEND-1);
			}
#endif

			// We check DTR state to determine if host port is open (bit 0 of lineState).
			if (1200 == _usbLineInfo.dwDTERate && (_usbLineInfo.lineState & 0x01) == 0)
    3e4e:	80 91 07 01 	lds	r24, 0x0107	; 0x800107 <_ZL12_usbLineInfo>
    3e52:	90 91 08 01 	lds	r25, 0x0108	; 0x800108 <_ZL12_usbLineInfo+0x1>
    3e56:	a0 91 09 01 	lds	r26, 0x0109	; 0x800109 <_ZL12_usbLineInfo+0x2>
    3e5a:	b0 91 0a 01 	lds	r27, 0x010A	; 0x80010a <_ZL12_usbLineInfo+0x3>
    3e5e:	80 3b       	cpi	r24, 0xB0	; 176
    3e60:	94 40       	sbci	r25, 0x04	; 4
    3e62:	a1 05       	cpc	r26, r1
    3e64:	b1 05       	cpc	r27, r1
    3e66:	f1 f4       	brne	.+60     	; 0x3ea4 <__vector_11+0x3c4>
    3e68:	80 91 0e 01 	lds	r24, 0x010E	; 0x80010e <_ZL12_usbLineInfo+0x7>
    3e6c:	80 fd       	sbrc	r24, 0
    3e6e:	1a c0       	rjmp	.+52     	; 0x3ea4 <__vector_11+0x3c4>
			{
#if MAGIC_KEY_POS != (RAMEND-1)
				// Backup ram value if its not a newer bootloader and it hasn't already been saved.
				// This should avoid memory corruption at least a bit, not fully
				if (magic_key_pos != (RAMEND-1) && *(uint16_t *)magic_key_pos != MAGIC_KEY) {
    3e70:	ee 3f       	cpi	r30, 0xFE	; 254
    3e72:	8a e0       	ldi	r24, 0x0A	; 10
    3e74:	f8 07       	cpc	r31, r24
    3e76:	89 f5       	brne	.+98     	; 0x3eda <__vector_11+0x3fa>
					*(uint16_t *)(RAMEND-1) = *(uint16_t *)magic_key_pos;
				}
#endif
				// Store boot key
				*(uint16_t *)magic_key_pos = MAGIC_KEY;
    3e78:	87 e7       	ldi	r24, 0x77	; 119
    3e7a:	97 e7       	ldi	r25, 0x77	; 119
    3e7c:	91 83       	std	Z+1, r25	; 0x01
    3e7e:	80 83       	st	Z, r24
				// Save the watchdog state in case the reset is aborted.
				wdtcsr_save = WDTCSR;
    3e80:	80 91 60 00 	lds	r24, 0x0060	; 0x800060 <__DATA_REGION_ORIGIN__>
    3e84:	80 93 28 05 	sts	0x0528, r24	; 0x800528 <_ZL11wdtcsr_save>
				: "n" (_SFR_MEM_ADDR(_WD_CONTROL_REG)),
				"r" ((uint8_t)(_BV(_WD_CHANGE_BIT) | _BV(WDE))),
				"r" ((uint8_t) ((value & 0x08 ? _WD_PS3_MASK : 0x00) |
						_BV(WDE) | (value & 0x07)) )
				: "r0"
		);
    3e88:	88 e1       	ldi	r24, 0x18	; 24
    3e8a:	9b e0       	ldi	r25, 0x0B	; 11
    3e8c:	0f b6       	in	r0, 0x3f	; 63
    3e8e:	f8 94       	cli
    3e90:	a8 95       	wdr
    3e92:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
    3e96:	0f be       	out	0x3f, r0	; 63
    3e98:	90 93 60 00 	sts	0x0060, r25	; 0x800060 <__DATA_REGION_ORIGIN__>
    3e9c:	67 ce       	rjmp	.-818    	; 0x3b6c <__vector_11+0x8c>
#if MAGIC_KEY_POS != (RAMEND-1)
			// For future boards save the key in the inproblematic RAMEND
			// Which is reserved for the main() return value (which will never return)
			if (isLUFAbootloader()) {
				// horray, we got a new bootloader!
				magic_key_pos = (RAMEND-1);
    3e9e:	ee ef       	ldi	r30, 0xFE	; 254
    3ea0:	fa e0       	ldi	r31, 0x0A	; 10
    3ea2:	d5 cf       	rjmp	.-86     	; 0x3e4e <__vector_11+0x36e>
				*(uint16_t *)magic_key_pos = MAGIC_KEY;
				// Save the watchdog state in case the reset is aborted.
				wdtcsr_save = WDTCSR;
				wdt_enable(WDTO_120MS);
			}
			else if (*(uint16_t *)magic_key_pos == MAGIC_KEY)
    3ea4:	80 81       	ld	r24, Z
    3ea6:	91 81       	ldd	r25, Z+1	; 0x01
    3ea8:	87 37       	cpi	r24, 0x77	; 119
    3eaa:	97 47       	sbci	r25, 0x77	; 119
    3eac:	09 f0       	breq	.+2      	; 0x3eb0 <__vector_11+0x3d0>
    3eae:	5e ce       	rjmp	.-836    	; 0x3b6c <__vector_11+0x8c>
				// To avoid spurious resets we set the watchdog to 120ms and eventually
				// cancel if DTR goes back high.
				// Cancellation is only done if an auto-reset was started, which is
				// indicated by the magic key having been set.

				wdt_reset();
    3eb0:	a8 95       	wdr
				// Restore the watchdog state in case the sketch was using it.
				WDTCSR |= (1<<WDCE) | (1<<WDE);
    3eb2:	80 91 60 00 	lds	r24, 0x0060	; 0x800060 <__DATA_REGION_ORIGIN__>
    3eb6:	88 61       	ori	r24, 0x18	; 24
    3eb8:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
				WDTCSR = wdtcsr_save;
    3ebc:	80 91 28 05 	lds	r24, 0x0528	; 0x800528 <_ZL11wdtcsr_save>
    3ec0:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
#if MAGIC_KEY_POS != (RAMEND-1)
				// Restore backed up (old bootloader) magic key data
				if (magic_key_pos != (RAMEND-1)) {
    3ec4:	ee 3f       	cpi	r30, 0xFE	; 254
    3ec6:	2a e0       	ldi	r18, 0x0A	; 10
    3ec8:	f2 07       	cpc	r31, r18
    3eca:	89 f0       	breq	.+34     	; 0x3eee <__vector_11+0x40e>
					*(uint16_t *)magic_key_pos = *(uint16_t *)(RAMEND-1);
    3ecc:	80 91 fe 0a 	lds	r24, 0x0AFE	; 0x800afe <__bss_end+0xd9>
    3ed0:	90 91 ff 0a 	lds	r25, 0x0AFF	; 0x800aff <__bss_end+0xda>
    3ed4:	91 83       	std	Z+1, r25	; 0x01
    3ed6:	80 83       	st	Z, r24
    3ed8:	49 ce       	rjmp	.-878    	; 0x3b6c <__vector_11+0x8c>
			if (1200 == _usbLineInfo.dwDTERate && (_usbLineInfo.lineState & 0x01) == 0)
			{
#if MAGIC_KEY_POS != (RAMEND-1)
				// Backup ram value if its not a newer bootloader and it hasn't already been saved.
				// This should avoid memory corruption at least a bit, not fully
				if (magic_key_pos != (RAMEND-1) && *(uint16_t *)magic_key_pos != MAGIC_KEY) {
    3eda:	80 81       	ld	r24, Z
    3edc:	91 81       	ldd	r25, Z+1	; 0x01
    3ede:	87 37       	cpi	r24, 0x77	; 119
    3ee0:	98 07       	cpc	r25, r24
    3ee2:	51 f2       	breq	.-108    	; 0x3e78 <__vector_11+0x398>
					*(uint16_t *)(RAMEND-1) = *(uint16_t *)magic_key_pos;
    3ee4:	90 93 ff 0a 	sts	0x0AFF, r25	; 0x800aff <__bss_end+0xda>
    3ee8:	80 93 fe 0a 	sts	0x0AFE, r24	; 0x800afe <__bss_end+0xd9>
    3eec:	c5 cf       	rjmp	.-118    	; 0x3e78 <__vector_11+0x398>
					*(uint16_t *)magic_key_pos = *(uint16_t *)(RAMEND-1);
				} else
#endif
				{
				// Clean up RAMEND key
					*(uint16_t *)magic_key_pos = 0x0000;
    3eee:	10 92 ff 0a 	sts	0x0AFF, r1	; 0x800aff <__bss_end+0xda>
    3ef2:	10 92 fe 0a 	sts	0x0AFE, r1	; 0x800afe <__bss_end+0xd9>
    3ef6:	3a ce       	rjmp	.-908    	; 0x3b6c <__vector_11+0x8c>

	if (CDC_ACM_INTERFACE == i)
		return CDC_Setup(setup);

#ifdef PLUGGABLE_USB_ENABLED
	return PluggableUSB().setup(setup);
    3ef8:	0e 94 0f 0a 	call	0x141e	; 0x141e <_Z12PluggableUSBv>
}

bool PluggableUSB_::setup(USBSetup& setup)
{
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
    3efc:	dc 01       	movw	r26, r24
    3efe:	12 96       	adiw	r26, 0x02	; 2
    3f00:	0d 91       	ld	r16, X+
    3f02:	1c 91       	ld	r17, X
    3f04:	01 15       	cp	r16, r1
    3f06:	11 05       	cpc	r17, r1
    3f08:	09 f4       	brne	.+2      	; 0x3f0c <__vector_11+0x42c>
    3f0a:	e8 ce       	rjmp	.-560    	; 0x3cdc <__vector_11+0x1fc>
		if (node->setup(setup)) {
    3f0c:	d8 01       	movw	r26, r16
    3f0e:	ed 91       	ld	r30, X+
    3f10:	fc 91       	ld	r31, X
    3f12:	01 90       	ld	r0, Z+
    3f14:	f0 81       	ld	r31, Z
    3f16:	e0 2d       	mov	r30, r0
    3f18:	be 01       	movw	r22, r28
    3f1a:	6b 5e       	subi	r22, 0xEB	; 235
    3f1c:	7f 4f       	sbci	r23, 0xFF	; 255
    3f1e:	c8 01       	movw	r24, r16
    3f20:	09 95       	icall
    3f22:	81 11       	cpse	r24, r1
    3f24:	23 ce       	rjmp	.-954    	; 0x3b6c <__vector_11+0x8c>
}

bool PluggableUSB_::setup(USBSetup& setup)
{
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
    3f26:	f8 01       	movw	r30, r16
    3f28:	00 85       	ldd	r16, Z+8	; 0x08
    3f2a:	11 85       	ldd	r17, Z+9	; 0x09
    3f2c:	eb cf       	rjmp	.-42     	; 0x3f04 <__vector_11+0x424>

	InitControl(setup.wLength);
#ifdef PLUGGABLE_USB_ENABLED
	int ret = PluggableUSB().getDescriptor(setup);
	if (ret != 0) {
		return (ret > 0 ? true : false);
    3f2e:	18 16       	cp	r1, r24
    3f30:	19 06       	cpc	r1, r25
    3f32:	0c f4       	brge	.+2      	; 0x3f36 <__vector_11+0x456>
    3f34:	1b ce       	rjmp	.-970    	; 0x3b6c <__vector_11+0x8c>
    3f36:	d2 ce       	rjmp	.-604    	; 0x3cdc <__vector_11+0x1fc>
	}
#endif

	const u8* desc_addr = 0;
	if (USB_DEVICE_DESCRIPTOR_TYPE == t)
    3f38:	f1 e0       	ldi	r31, 0x01	; 1
    3f3a:	ff 12       	cpse	r15, r31
    3f3c:	be ce       	rjmp	.-644    	; 0x3cba <__vector_11+0x1da>
	{
		desc_addr = (const u8*)&USB_DeviceDescriptorIAD;
    3f3e:	6c e4       	ldi	r22, 0x4C	; 76
    3f40:	79 e0       	ldi	r23, 0x09	; 9
    3f42:	04 cf       	rjmp	.-504    	; 0x3d4c <__vector_11+0x26c>

00003f44 <__vector_23>:
#if defined(TIM0_OVF_vect)
ISR(TIM0_OVF_vect)
#else
ISR(TIMER0_OVF_vect)
#endif
{
    3f44:	1f 92       	push	r1
    3f46:	0f 92       	push	r0
    3f48:	0f b6       	in	r0, 0x3f	; 63
    3f4a:	0f 92       	push	r0
    3f4c:	11 24       	eor	r1, r1
    3f4e:	2f 93       	push	r18
    3f50:	3f 93       	push	r19
    3f52:	8f 93       	push	r24
    3f54:	9f 93       	push	r25
    3f56:	af 93       	push	r26
    3f58:	bf 93       	push	r27
	// copy these to local variables so they can be stored in registers
	// (volatile variables must be read from memory on every access)
	unsigned long m = timer0_millis;
    3f5a:	80 91 2f 01 	lds	r24, 0x012F	; 0x80012f <timer0_millis>
    3f5e:	90 91 30 01 	lds	r25, 0x0130	; 0x800130 <timer0_millis+0x1>
    3f62:	a0 91 31 01 	lds	r26, 0x0131	; 0x800131 <timer0_millis+0x2>
    3f66:	b0 91 32 01 	lds	r27, 0x0132	; 0x800132 <timer0_millis+0x3>
	unsigned char f = timer0_fract;
    3f6a:	30 91 2a 01 	lds	r19, 0x012A	; 0x80012a <timer0_fract>

	m += MILLIS_INC;
	f += FRACT_INC;
    3f6e:	23 e0       	ldi	r18, 0x03	; 3
    3f70:	23 0f       	add	r18, r19
	if (f >= FRACT_MAX) {
    3f72:	2d 37       	cpi	r18, 0x7D	; 125
    3f74:	58 f5       	brcc	.+86     	; 0x3fcc <__vector_23+0x88>
	// copy these to local variables so they can be stored in registers
	// (volatile variables must be read from memory on every access)
	unsigned long m = timer0_millis;
	unsigned char f = timer0_fract;

	m += MILLIS_INC;
    3f76:	01 96       	adiw	r24, 0x01	; 1
    3f78:	a1 1d       	adc	r26, r1
    3f7a:	b1 1d       	adc	r27, r1
	if (f >= FRACT_MAX) {
		f -= FRACT_MAX;
		m += 1;
	}

	timer0_fract = f;
    3f7c:	20 93 2a 01 	sts	0x012A, r18	; 0x80012a <timer0_fract>
	timer0_millis = m;
    3f80:	80 93 2f 01 	sts	0x012F, r24	; 0x80012f <timer0_millis>
    3f84:	90 93 30 01 	sts	0x0130, r25	; 0x800130 <timer0_millis+0x1>
    3f88:	a0 93 31 01 	sts	0x0131, r26	; 0x800131 <timer0_millis+0x2>
    3f8c:	b0 93 32 01 	sts	0x0132, r27	; 0x800132 <timer0_millis+0x3>
	timer0_overflow_count++;
    3f90:	80 91 2b 01 	lds	r24, 0x012B	; 0x80012b <timer0_overflow_count>
    3f94:	90 91 2c 01 	lds	r25, 0x012C	; 0x80012c <timer0_overflow_count+0x1>
    3f98:	a0 91 2d 01 	lds	r26, 0x012D	; 0x80012d <timer0_overflow_count+0x2>
    3f9c:	b0 91 2e 01 	lds	r27, 0x012E	; 0x80012e <timer0_overflow_count+0x3>
    3fa0:	01 96       	adiw	r24, 0x01	; 1
    3fa2:	a1 1d       	adc	r26, r1
    3fa4:	b1 1d       	adc	r27, r1
    3fa6:	80 93 2b 01 	sts	0x012B, r24	; 0x80012b <timer0_overflow_count>
    3faa:	90 93 2c 01 	sts	0x012C, r25	; 0x80012c <timer0_overflow_count+0x1>
    3fae:	a0 93 2d 01 	sts	0x012D, r26	; 0x80012d <timer0_overflow_count+0x2>
    3fb2:	b0 93 2e 01 	sts	0x012E, r27	; 0x80012e <timer0_overflow_count+0x3>
}
    3fb6:	bf 91       	pop	r27
    3fb8:	af 91       	pop	r26
    3fba:	9f 91       	pop	r25
    3fbc:	8f 91       	pop	r24
    3fbe:	3f 91       	pop	r19
    3fc0:	2f 91       	pop	r18
    3fc2:	0f 90       	pop	r0
    3fc4:	0f be       	out	0x3f, r0	; 63
    3fc6:	0f 90       	pop	r0
    3fc8:	1f 90       	pop	r1
    3fca:	18 95       	reti
	unsigned char f = timer0_fract;

	m += MILLIS_INC;
	f += FRACT_INC;
	if (f >= FRACT_MAX) {
		f -= FRACT_MAX;
    3fcc:	26 e8       	ldi	r18, 0x86	; 134
    3fce:	23 0f       	add	r18, r19
		m += 1;
    3fd0:	02 96       	adiw	r24, 0x02	; 2
    3fd2:	a1 1d       	adc	r26, r1
    3fd4:	b1 1d       	adc	r27, r1
    3fd6:	d2 cf       	rjmp	.-92     	; 0x3f7c <__vector_23+0x38>

00003fd8 <_ZL24USB_SendStringDescriptorPKhhh>:
}

// Send a USB descriptor string. The string is stored in PROGMEM as a
// plain ASCII string but is sent out as UTF-16 with the correct 2-byte
// prefix
static bool USB_SendStringDescriptor(const u8*string_P, u8 string_len, uint8_t flags) {
    3fd8:	ef 92       	push	r14
    3fda:	ff 92       	push	r15
    3fdc:	0f 93       	push	r16
    3fde:	1f 93       	push	r17
    3fe0:	cf 93       	push	r28
    3fe2:	df 93       	push	r29
    3fe4:	f8 2e       	mov	r15, r24
    3fe6:	19 2f       	mov	r17, r25
    3fe8:	e6 2e       	mov	r14, r22
    3fea:	04 2f       	mov	r16, r20
        SendControl(2 + string_len * 2);
    3fec:	81 e0       	ldi	r24, 0x01	; 1
    3fee:	86 0f       	add	r24, r22
    3ff0:	88 0f       	add	r24, r24
    3ff2:	0e 94 a4 0a 	call	0x1548	; 0x1548 <_ZL11SendControlh>
        SendControl(3);
    3ff6:	83 e0       	ldi	r24, 0x03	; 3
    3ff8:	0e 94 a4 0a 	call	0x1548	; 0x1548 <_ZL11SendControlh>
    3ffc:	cf 2d       	mov	r28, r15
    3ffe:	d1 2f       	mov	r29, r17
    4000:	ec 0e       	add	r14, r28
    4002:	fd 2e       	mov	r15, r29
    4004:	f1 1c       	adc	r15, r1
        bool pgm = flags & TRANSFER_PGM;
        for(u8 i = 0; i < string_len; i++) {
    4006:	ce 15       	cp	r28, r14
    4008:	df 05       	cpc	r29, r15
    400a:	b9 f0       	breq	.+46     	; 0x403a <_ZL24USB_SendStringDescriptorPKhhh+0x62>
                bool r = SendControl(pgm ? pgm_read_byte(&string_P[i]) : string_P[i]);
    400c:	07 ff       	sbrs	r16, 7
    400e:	13 c0       	rjmp	.+38     	; 0x4036 <_ZL24USB_SendStringDescriptorPKhhh+0x5e>
    4010:	fe 01       	movw	r30, r28
    4012:	84 91       	lpm	r24, Z
    4014:	0e 94 a4 0a 	call	0x1548	; 0x1548 <_ZL11SendControlh>
    4018:	18 2f       	mov	r17, r24
                r &= SendControl(0); // high byte
    401a:	80 e0       	ldi	r24, 0x00	; 0
    401c:	0e 94 a4 0a 	call	0x1548	; 0x1548 <_ZL11SendControlh>
    4020:	81 23       	and	r24, r17
    4022:	21 96       	adiw	r28, 0x01	; 1
                if(!r) {
    4024:	81 11       	cpse	r24, r1
    4026:	ef cf       	rjmp	.-34     	; 0x4006 <_ZL24USB_SendStringDescriptorPKhhh+0x2e>
                        return false;
                }
        }
        return true;
}
    4028:	df 91       	pop	r29
    402a:	cf 91       	pop	r28
    402c:	1f 91       	pop	r17
    402e:	0f 91       	pop	r16
    4030:	ff 90       	pop	r15
    4032:	ef 90       	pop	r14
    4034:	08 95       	ret
static bool USB_SendStringDescriptor(const u8*string_P, u8 string_len, uint8_t flags) {
        SendControl(2 + string_len * 2);
        SendControl(3);
        bool pgm = flags & TRANSFER_PGM;
        for(u8 i = 0; i < string_len; i++) {
                bool r = SendControl(pgm ? pgm_read_byte(&string_P[i]) : string_P[i]);
    4036:	88 81       	ld	r24, Y
    4038:	ed cf       	rjmp	.-38     	; 0x4014 <_ZL24USB_SendStringDescriptorPKhhh+0x3c>
                r &= SendControl(0); // high byte
                if(!r) {
                        return false;
                }
        }
        return true;
    403a:	81 e0       	ldi	r24, 0x01	; 1
    403c:	f5 cf       	rjmp	.-22     	; 0x4028 <_ZL24USB_SendStringDescriptorPKhhh+0x50>

0000403e <_GLOBAL__sub_I__cdcInterface>:
  public:
    Print() : write_error(0) {}
    403e:	ec e2       	ldi	r30, 0x2C	; 44
    4040:	f5 e0       	ldi	r31, 0x05	; 5
    4042:	13 82       	std	Z+3, r1	; 0x03
    4044:	12 82       	std	Z+2, r1	; 0x02
  public:
    virtual int available() = 0;
    virtual int read() = 0;
    virtual int peek() = 0;

    Stream() {_timeout=1000;}
    4046:	88 ee       	ldi	r24, 0xE8	; 232
    4048:	93 e0       	ldi	r25, 0x03	; 3
    404a:	a0 e0       	ldi	r26, 0x00	; 0
    404c:	b0 e0       	ldi	r27, 0x00	; 0
    404e:	84 83       	std	Z+4, r24	; 0x04
    4050:	95 83       	std	Z+5, r25	; 0x05
    4052:	a6 83       	std	Z+6, r26	; 0x06
    4054:	b7 83       	std	Z+7, r27	; 0x07
class Serial_ : public Stream
{
private:
	int peek_buffer;
public:
	Serial_() { peek_buffer = -1; };
    4056:	8a e1       	ldi	r24, 0x1A	; 26
    4058:	91 e0       	ldi	r25, 0x01	; 1
    405a:	91 83       	std	Z+1, r25	; 0x01
    405c:	80 83       	st	Z, r24
    405e:	8f ef       	ldi	r24, 0xFF	; 255
    4060:	9f ef       	ldi	r25, 0xFF	; 255
    4062:	95 87       	std	Z+13, r25	; 0x0d
    4064:	84 87       	std	Z+12, r24	; 0x0c
		breakValue = -1;
	}
	return ret;
}

Serial_ Serial;
    4066:	08 95       	ret

00004068 <main>:

void setupUSB() __attribute__((weak));
void setupUSB() { }

int main(void)
{
    4068:	cf 93       	push	r28
    406a:	df 93       	push	r29
    406c:	cd b7       	in	r28, 0x3d	; 61
    406e:	de b7       	in	r29, 0x3e	; 62
    4070:	63 97       	sbiw	r28, 0x13	; 19
    4072:	0f b6       	in	r0, 0x3f	; 63
    4074:	f8 94       	cli
    4076:	de bf       	out	0x3e, r29	; 62
    4078:	0f be       	out	0x3f, r0	; 63
    407a:	cd bf       	out	0x3d, r28	; 61

void init()
{
	// this needs to be called before setup() or some functions won't
	// work there
	sei();
    407c:	78 94       	sei
	
	// on the ATmega168, timer 0 is also used for fast hardware pwm
	// (using phase-correct PWM would mean that timer 0 overflowed half as often
	// resulting in different millis() behavior on the ATmega8 and ATmega168)
#if defined(TCCR0A) && defined(WGM01)
	sbi(TCCR0A, WGM01);
    407e:	84 b5       	in	r24, 0x24	; 36
    4080:	82 60       	ori	r24, 0x02	; 2
    4082:	84 bd       	out	0x24, r24	; 36
	sbi(TCCR0A, WGM00);
    4084:	84 b5       	in	r24, 0x24	; 36
    4086:	81 60       	ori	r24, 0x01	; 1
    4088:	84 bd       	out	0x24, r24	; 36
	// this combination is for the standard atmega8
	sbi(TCCR0, CS01);
	sbi(TCCR0, CS00);
#elif defined(TCCR0B) && defined(CS01) && defined(CS00)
	// this combination is for the standard 168/328/1280/2560
	sbi(TCCR0B, CS01);
    408a:	85 b5       	in	r24, 0x25	; 37
    408c:	82 60       	ori	r24, 0x02	; 2
    408e:	85 bd       	out	0x25, r24	; 37
	sbi(TCCR0B, CS00);
    4090:	85 b5       	in	r24, 0x25	; 37
    4092:	81 60       	ori	r24, 0x01	; 1
    4094:	85 bd       	out	0x25, r24	; 37

	// enable timer 0 overflow interrupt
#if defined(TIMSK) && defined(TOIE0)
	sbi(TIMSK, TOIE0);
#elif defined(TIMSK0) && defined(TOIE0)
	sbi(TIMSK0, TOIE0);
    4096:	80 91 6e 00 	lds	r24, 0x006E	; 0x80006e <__DATA_REGION_ORIGIN__+0xe>
    409a:	81 60       	ori	r24, 0x01	; 1
    409c:	80 93 6e 00 	sts	0x006E, r24	; 0x80006e <__DATA_REGION_ORIGIN__+0xe>
	// this is better for motors as it ensures an even waveform
	// note, however, that fast pwm mode can achieve a frequency of up
	// 8 MHz (with a 16 MHz clock) at 50% duty cycle

#if defined(TCCR1B) && defined(CS11) && defined(CS10)
	TCCR1B = 0;
    40a0:	10 92 81 00 	sts	0x0081, r1	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>

	// set timer 1 prescale factor to 64
	sbi(TCCR1B, CS11);
    40a4:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
    40a8:	82 60       	ori	r24, 0x02	; 2
    40aa:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
#if F_CPU >= 8000000L
	sbi(TCCR1B, CS10);
    40ae:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
    40b2:	81 60       	ori	r24, 0x01	; 1
    40b4:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
	sbi(TCCR1, CS10);
#endif
#endif
	// put timer 1 in 8-bit phase correct pwm mode
#if defined(TCCR1A) && defined(WGM10)
	sbi(TCCR1A, WGM10);
    40b8:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
    40bc:	81 60       	ori	r24, 0x01	; 1
    40be:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
//#else
	// Timer 2 not finished (may not be present on this CPU)
#endif

#if defined(TCCR3B) && defined(CS31) && defined(WGM30)
	sbi(TCCR3B, CS31);		// set timer 3 prescale factor to 64
    40c2:	80 91 91 00 	lds	r24, 0x0091	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
    40c6:	82 60       	ori	r24, 0x02	; 2
    40c8:	80 93 91 00 	sts	0x0091, r24	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
	sbi(TCCR3B, CS30);
    40cc:	80 91 91 00 	lds	r24, 0x0091	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
    40d0:	81 60       	ori	r24, 0x01	; 1
    40d2:	80 93 91 00 	sts	0x0091, r24	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
	sbi(TCCR3A, WGM30);		// put timer 3 in 8-bit phase correct pwm mode
    40d6:	80 91 90 00 	lds	r24, 0x0090	; 0x800090 <__DATA_REGION_ORIGIN__+0x30>
    40da:	81 60       	ori	r24, 0x01	; 1
    40dc:	80 93 90 00 	sts	0x0090, r24	; 0x800090 <__DATA_REGION_ORIGIN__+0x30>
#endif

#if defined(TCCR4A) && defined(TCCR4B) && defined(TCCR4D) /* beginning of timer4 block for 32U4 and similar */
	sbi(TCCR4B, CS42);		// set timer4 prescale factor to 64
    40e0:	80 91 c1 00 	lds	r24, 0x00C1	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
    40e4:	84 60       	ori	r24, 0x04	; 4
    40e6:	80 93 c1 00 	sts	0x00C1, r24	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
	sbi(TCCR4B, CS41);
    40ea:	80 91 c1 00 	lds	r24, 0x00C1	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
    40ee:	82 60       	ori	r24, 0x02	; 2
    40f0:	80 93 c1 00 	sts	0x00C1, r24	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
	sbi(TCCR4B, CS40);
    40f4:	80 91 c1 00 	lds	r24, 0x00C1	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
    40f8:	81 60       	ori	r24, 0x01	; 1
    40fa:	80 93 c1 00 	sts	0x00C1, r24	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
	sbi(TCCR4D, WGM40);		// put timer 4 in phase- and frequency-correct PWM mode	
    40fe:	80 91 c3 00 	lds	r24, 0x00C3	; 0x8000c3 <__DATA_REGION_ORIGIN__+0x63>
    4102:	81 60       	ori	r24, 0x01	; 1
    4104:	80 93 c3 00 	sts	0x00C3, r24	; 0x8000c3 <__DATA_REGION_ORIGIN__+0x63>
	sbi(TCCR4A, PWM4A);		// enable PWM mode for comparator OCR4A
    4108:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__DATA_REGION_ORIGIN__+0x60>
    410c:	82 60       	ori	r24, 0x02	; 2
    410e:	80 93 c0 00 	sts	0x00C0, r24	; 0x8000c0 <__DATA_REGION_ORIGIN__+0x60>
	sbi(TCCR4C, PWM4D);		// enable PWM mode for comparator OCR4D
    4112:	80 91 c2 00 	lds	r24, 0x00C2	; 0x8000c2 <__DATA_REGION_ORIGIN__+0x62>
    4116:	81 60       	ori	r24, 0x01	; 1
    4118:	80 93 c2 00 	sts	0x00C2, r24	; 0x8000c2 <__DATA_REGION_ORIGIN__+0x62>
#endif

#if defined(ADCSRA)
	// set a2d prescaler so we are inside the desired 50-200 KHz range.
	#if F_CPU >= 16000000 // 16 MHz / 128 = 125 KHz
		sbi(ADCSRA, ADPS2);
    411c:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
    4120:	84 60       	ori	r24, 0x04	; 4
    4122:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
		sbi(ADCSRA, ADPS1);
    4126:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
    412a:	82 60       	ori	r24, 0x02	; 2
    412c:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
		sbi(ADCSRA, ADPS0);
    4130:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
    4134:	81 60       	ori	r24, 0x01	; 1
    4136:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
		cbi(ADCSRA, ADPS2);
		cbi(ADCSRA, ADPS1);
		sbi(ADCSRA, ADPS0);
	#endif
	// enable a2d conversions
	sbi(ADCSRA, ADEN);
    413a:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
    413e:	80 68       	ori	r24, 0x80	; 128
    4140:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
{
}

void USBDevice_::attach()
{
	_usbConfiguration = 0;
    4144:	10 92 89 05 	sts	0x0589, r1	; 0x800589 <_usbConfiguration>
	_usbCurrentStatus = 0;
    4148:	10 92 29 05 	sts	0x0529, r1	; 0x800529 <_usbCurrentStatus>
	_usbSuspendState = 0;
    414c:	10 92 2b 05 	sts	0x052B, r1	; 0x80052b <_usbSuspendState>
}

static inline void USB_ClockEnable()
{
#if defined(UHWCON)
	UHWCON |= (1<<UVREGE);			// power internal reg
    4150:	80 91 d7 00 	lds	r24, 0x00D7	; 0x8000d7 <__DATA_REGION_ORIGIN__+0x77>
    4154:	81 60       	ori	r24, 0x01	; 1
    4156:	80 93 d7 00 	sts	0x00D7, r24	; 0x8000d7 <__DATA_REGION_ORIGIN__+0x77>
#endif
	USBCON = (1<<USBE) | (1<<FRZCLK);	// clock frozen, usb enabled
    415a:	80 ea       	ldi	r24, 0xA0	; 160
    415c:	80 93 d8 00 	sts	0x00D8, r24	; 0x8000d8 <__DATA_REGION_ORIGIN__+0x78>

// ATmega32U4
#if defined(PINDIV)
#if F_CPU == 16000000UL
	PLLCSR |= (1<<PINDIV);                   // Need 16 MHz xtal
    4160:	89 b5       	in	r24, 0x29	; 41
    4162:	80 61       	ori	r24, 0x10	; 16
    4164:	89 bd       	out	0x29, r24	; 41
#endif
#else
#error "USB Chip not supported, please defined method of USB PLL initialization"
#endif

	PLLCSR |= (1<<PLLE);
    4166:	89 b5       	in	r24, 0x29	; 41
    4168:	82 60       	ori	r24, 0x02	; 2
    416a:	89 bd       	out	0x29, r24	; 41
	while (!(PLLCSR & (1<<PLOCK)))		// wait for lock pll
    416c:	09 b4       	in	r0, 0x29	; 41
    416e:	00 fe       	sbrs	r0, 0
    4170:	fd cf       	rjmp	.-6      	; 0x416c <main+0x104>
	}

	// Some tests on specific versions of macosx (10.7.3), reported some
	// strange behaviors when the board is reset using the serial
	// port touch at 1200 bps. This delay fixes this behavior.
	delay(1);
    4172:	61 e0       	ldi	r22, 0x01	; 1
    4174:	70 e0       	ldi	r23, 0x00	; 0
    4176:	80 e0       	ldi	r24, 0x00	; 0
    4178:	90 e0       	ldi	r25, 0x00	; 0
    417a:	0e 94 5b 0b 	call	0x16b6	; 0x16b6 <delay>
#if defined(OTGPADE)
	USBCON = (USBCON & ~(1<<FRZCLK)) | (1<<OTGPADE);	// start USB clock, enable VBUS Pad
    417e:	80 91 d8 00 	lds	r24, 0x00D8	; 0x8000d8 <__DATA_REGION_ORIGIN__+0x78>
    4182:	8f 7c       	andi	r24, 0xCF	; 207
    4184:	80 61       	ori	r24, 0x10	; 16
    4186:	80 93 d8 00 	sts	0x00D8, r24	; 0x8000d8 <__DATA_REGION_ORIGIN__+0x78>
	USBCON &= ~(1 << FRZCLK);	// start USB clock
#endif

#if defined(RSTCPU)
#if defined(LSM)
	UDCON &= ~((1<<RSTCPU) | (1<<LSM) | (1<<RMWKUP) | (1<<DETACH));	// enable attach resistor, set full speed mode
    418a:	80 91 e0 00 	lds	r24, 0x00E0	; 0x8000e0 <__DATA_REGION_ORIGIN__+0x80>
    418e:	80 7f       	andi	r24, 0xF0	; 240
    4190:	80 93 e0 00 	sts	0x00E0, r24	; 0x8000e0 <__DATA_REGION_ORIGIN__+0x80>
	_usbConfiguration = 0;
	_usbCurrentStatus = 0;
	_usbSuspendState = 0;
	USB_ClockEnable();

	UDINT &= ~((1<<WAKEUPI) | (1<<SUSPI)); // clear already pending WAKEUP / SUSPEND requests
    4194:	80 91 e1 00 	lds	r24, 0x00E1	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
    4198:	8e 7e       	andi	r24, 0xEE	; 238
    419a:	80 93 e1 00 	sts	0x00E1, r24	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
	UDIEN = (1<<EORSTE) | (1<<SOFE) | (1<<SUSPE);	// Enable interrupts for EOR (End of Reset), SOF (start of frame) and SUSPEND
    419e:	8d e0       	ldi	r24, 0x0D	; 13
    41a0:	80 93 e2 00 	sts	0x00E2, r24	; 0x8000e2 <__DATA_REGION_ORIGIN__+0x82>
	
	TX_RX_LED_INIT;
    41a4:	55 9a       	sbi	0x0a, 5	; 10
    41a6:	20 9a       	sbi	0x04, 0	; 4
  // ARDUBOY_SET_CPU_8MHZ will be set by the IDE using boards.txt
  setCPUSpeed8MHz();
  #endif

  // Select the ADC input here so a delay isn't required in generateRandomSeed()
  ADMUX = RAND_SEED_IN_ADMUX;
    41a8:	81 ec       	ldi	r24, 0xC1	; 193
    41aa:	80 93 7c 00 	sts	0x007C, r24	; 0x80007c <__DATA_REGION_ORIGIN__+0x1c>
void Arduboy2Core::bootPins()
{
#ifdef ARDUBOY_10

  // Port B INPUT_PULLUP or HIGH
  PORTB |= _BV(RED_LED_BIT) | _BV(GREEN_LED_BIT) | _BV(BLUE_LED_BIT) |
    41ae:	85 b1       	in	r24, 0x05	; 5
    41b0:	80 6f       	ori	r24, 0xF0	; 240
    41b2:	85 b9       	out	0x05, r24	; 5
           _BV(B_BUTTON_BIT);
  // Port B INPUT or LOW (none)
  // Port B inputs
  DDRB &= ~(_BV(B_BUTTON_BIT) | _BV(SPI_MISO_BIT));
    41b4:	84 b1       	in	r24, 0x04	; 4
    41b6:	87 7e       	andi	r24, 0xE7	; 231
    41b8:	84 b9       	out	0x04, r24	; 4
  // Port B outputs
  DDRB |= _BV(RED_LED_BIT) | _BV(GREEN_LED_BIT) | _BV(BLUE_LED_BIT) |
    41ba:	84 b1       	in	r24, 0x04	; 4
    41bc:	87 6e       	ori	r24, 0xE7	; 231
    41be:	84 b9       	out	0x04, r24	; 4

  // Port C
  // Speaker: Not set here. Controlled by audio class

  // Port D INPUT_PULLUP or HIGH
  PORTD |= _BV(CS_BIT);
    41c0:	5e 9a       	sbi	0x0b, 6	; 11
  // Port D INPUT or LOW
  PORTD &= ~(_BV(RST_BIT));
    41c2:	5f 98       	cbi	0x0b, 7	; 11
  // Port D inputs (none)
  // Port D outputs
  DDRD |= _BV(RST_BIT) | _BV(CS_BIT) | _BV(DC_BIT);
    41c4:	8a b1       	in	r24, 0x0a	; 10
    41c6:	80 6d       	ori	r24, 0xD0	; 208
    41c8:	8a b9       	out	0x0a, r24	; 10

  // Port E INPUT_PULLUP or HIGH
  PORTE |= _BV(A_BUTTON_BIT);
    41ca:	76 9a       	sbi	0x0e, 6	; 14
  // Port E INPUT or LOW (none)
  // Port E inputs
  DDRE &= ~(_BV(A_BUTTON_BIT));
    41cc:	6e 98       	cbi	0x0d, 6	; 13
  // Port E outputs (none)

  // Port F INPUT_PULLUP or HIGH
  PORTF |= _BV(LEFT_BUTTON_BIT) | _BV(RIGHT_BUTTON_BIT) |
    41ce:	81 b3       	in	r24, 0x11	; 17
    41d0:	80 6f       	ori	r24, 0xF0	; 240
    41d2:	81 bb       	out	0x11, r24	; 17
           _BV(UP_BUTTON_BIT) | _BV(DOWN_BUTTON_BIT);
  // Port F INPUT or LOW
  PORTF &= ~(_BV(RAND_SEED_IN_BIT));
    41d4:	89 98       	cbi	0x11, 1	; 17
  // Port F inputs
  DDRF &= ~(_BV(LEFT_BUTTON_BIT) | _BV(RIGHT_BUTTON_BIT) |
    41d6:	80 b3       	in	r24, 0x10	; 16
    41d8:	8d 70       	andi	r24, 0x0D	; 13
    41da:	80 bb       	out	0x10, r24	; 16

// Initialize the SPI interface for the display
void Arduboy2Core::bootSPI()
{
// master, mode 0, MSB first, CPU clock / 2 (8MHz)
  SPCR = _BV(SPE) | _BV(MSTR);
    41dc:	80 e5       	ldi	r24, 0x50	; 80
    41de:	8c bd       	out	0x2c, r24	; 44
  SPSR = _BV(SPI2X);
    41e0:	81 e0       	ldi	r24, 0x01	; 1
    41e2:	8d bd       	out	0x2d, r24	; 45
}

void Arduboy2Core::bootOLED()
{
  // reset the display
  delayShort(5); // reset pin should be low here. let it stay low a while
    41e4:	85 e0       	ldi	r24, 0x05	; 5
    41e6:	90 e0       	ldi	r25, 0x00	; 0
    41e8:	0e 94 15 0c 	call	0x182a	; 0x182a <_ZN12Arduboy2Core10delayShortEj>
  bitSet(RST_PORT, RST_BIT); // set high to come out of reset
    41ec:	5f 9a       	sbi	0x0b, 7	; 11
  delayShort(5); // wait a while
    41ee:	85 e0       	ldi	r24, 0x05	; 5
    41f0:	90 e0       	ldi	r25, 0x00	; 0
    41f2:	0e 94 15 0c 	call	0x182a	; 0x182a <_ZN12Arduboy2Core10delayShortEj>

  // select the display (permanently, since nothing else is using SPI)
  bitClear(CS_PORT, CS_BIT);
    41f6:	5e 98       	cbi	0x0b, 6	; 11
  bitSet(DC_PORT, DC_BIT);
}

void Arduboy2Core::LCDCommandMode()
{
  bitClear(DC_PORT, DC_BIT);
    41f8:	5c 98       	cbi	0x0b, 4	; 11
    41fa:	e6 e4       	ldi	r30, 0x46	; 70
    41fc:	f2 e0       	ldi	r31, 0x02	; 2
    41fe:	83 e5       	ldi	r24, 0x53	; 83
    4200:	92 e0       	ldi	r25, 0x02	; 2

  // run our customized boot-up command sequence against the
  // OLED to initialize it properly for Arduboy
  LCDCommandMode();
  for (uint8_t i = 0; i < sizeof(lcdBootProgram); i++) {
    SPItransfer(pgm_read_byte(lcdBootProgram + i));
    4202:	24 91       	lpm	r18, Z
}

// Write to the SPI bus (MOSI pin)
void Arduboy2Core::SPItransfer(uint8_t data)
{
  SPDR = data;
    4204:	2e bd       	out	0x2e, r18	; 46
   * The following NOP introduces a small delay that can prevent the wait
   * loop from iterating when running at the maximum speed. This gives
   * about 10% more speed, even if it seems counter-intuitive. At lower
   * speeds it is unnoticed.
   */
  asm volatile("nop");
    4206:	00 00       	nop
  while (!(SPSR & _BV(SPIF))) { } // wait
    4208:	0d b4       	in	r0, 0x2d	; 45
    420a:	07 fe       	sbrs	r0, 7
    420c:	fd cf       	rjmp	.-6      	; 0x4208 <main+0x1a0>
    420e:	31 96       	adiw	r30, 0x01	; 1
  bitClear(CS_PORT, CS_BIT);

  // run our customized boot-up command sequence against the
  // OLED to initialize it properly for Arduboy
  LCDCommandMode();
  for (uint8_t i = 0; i < sizeof(lcdBootProgram); i++) {
    4210:	8e 17       	cp	r24, r30
    4212:	9f 07       	cpc	r25, r31
    4214:	b1 f7       	brne	.-20     	; 0x4202 <main+0x19a>
  LCDDataMode();
}

void Arduboy2Core::LCDDataMode()
{
  bitSet(DC_PORT, DC_BIT);
    4216:	5c 9a       	sbi	0x0b, 4	; 11

void Arduboy2Core::bootPowerSaving()
{
  // disable Two Wire Interface (I2C) and the ADC
  // All other bits will be written with 0 so will be enabled
  PRR0 = _BV(PRTWI) | _BV(PRADC);
    4218:	81 e8       	ldi	r24, 0x81	; 129
    421a:	80 93 64 00 	sts	0x0064, r24	; 0x800064 <__DATA_REGION_ORIGIN__+0x4>
  // disable USART1
  PRR1 |= _BV(PRUSART1);
    421e:	80 91 65 00 	lds	r24, 0x0065	; 0x800065 <__DATA_REGION_ORIGIN__+0x5>
    4222:	81 60       	ori	r24, 0x01	; 1
    4224:	80 93 65 00 	sts	0x0065, r24	; 0x800065 <__DATA_REGION_ORIGIN__+0x5>
  audio.begin();
}

void Arduboy2Base::flashlight()
{
  if (!pressed(UP_BUTTON)) {
    4228:	80 e8       	ldi	r24, 0x80	; 128
    422a:	0e 94 1a 0c 	call	0x1834	; 0x1834 <_ZN12Arduboy2Base7pressedEh>
***/

struct EERef{

    EERef( const int index )
        : index( index )                 {}
    422e:	02 e0       	ldi	r16, 0x02	; 2
    4230:	10 e0       	ldi	r17, 0x00	; 0
    4232:	88 23       	and	r24, r24
    4234:	a9 f0       	breq	.+42     	; 0x4260 <main+0x1f8>
  bitSet(DC_PORT, DC_BIT);
}

void Arduboy2Core::LCDCommandMode()
{
  bitClear(DC_PORT, DC_BIT);
    4236:	5c 98       	cbi	0x0b, 4	; 11
}

// Write to the SPI bus (MOSI pin)
void Arduboy2Core::SPItransfer(uint8_t data)
{
  SPDR = data;
    4238:	85 ea       	ldi	r24, 0xA5	; 165
    423a:	8e bd       	out	0x2e, r24	; 46
   * The following NOP introduces a small delay that can prevent the wait
   * loop from iterating when running at the maximum speed. This gives
   * about 10% more speed, even if it seems counter-intuitive. At lower
   * speeds it is unnoticed.
   */
  asm volatile("nop");
    423c:	00 00       	nop
  while (!(SPSR & _BV(SPIF))) { } // wait
    423e:	0d b4       	in	r0, 0x2d	; 45
    4240:	07 fe       	sbrs	r0, 7
    4242:	fd cf       	rjmp	.-6      	; 0x423e <main+0x1d6>
  LCDDataMode();
}

void Arduboy2Core::LCDDataMode()
{
  bitSet(DC_PORT, DC_BIT);
    4244:	5c 9a       	sbi	0x0b, 4	; 11
}

void Arduboy2Core::digitalWriteRGB(uint8_t red, uint8_t green, uint8_t blue)
{
#ifdef ARDUBOY_10
  bitWrite(RED_LED_PORT, RED_LED_BIT, red);
    4246:	2e 98       	cbi	0x05, 6	; 5
  bitWrite(GREEN_LED_PORT, GREEN_LED_BIT, green);
    4248:	2f 98       	cbi	0x05, 7	; 5
  bitWrite(BLUE_LED_PORT, BLUE_LED_BIT, blue);
    424a:	2d 98       	cbi	0x05, 5	; 5

#ifndef ARDUBOY_CORE // for Arduboy core timer 0 should remain enabled
  // prevent the bootloader magic number from being overwritten by timer 0
  // when a timer variable overlaps the magic number location, for when
  // flashlight mode is used for upload problem recovery
  power_timer0_disable();
    424c:	80 91 64 00 	lds	r24, 0x0064	; 0x800064 <__DATA_REGION_ORIGIN__+0x4>
    4250:	80 62       	ori	r24, 0x20	; 32
    4252:	80 93 64 00 	sts	0x0064, r24	; 0x800064 <__DATA_REGION_ORIGIN__+0x4>

/* Power Management */

void Arduboy2Core::idle()
{
  SMCR = _BV(SE); // select idle mode and enable sleeping
    4256:	81 e0       	ldi	r24, 0x01	; 1
    4258:	83 bf       	out	0x33, r24	; 51
  sleep_cpu();
    425a:	88 95       	sleep
  SMCR = 0; // disable sleeping
    425c:	13 be       	out	0x33, r1	; 51
    425e:	fc cf       	rjmp	.-8      	; 0x4258 <main+0x1f0>
  }
}

void Arduboy2Base::systemButtons()
{
  while (pressed(B_BUTTON)) {
    4260:	84 e0       	ldi	r24, 0x04	; 4
    4262:	0e 94 1a 0c 	call	0x1834	; 0x1834 <_ZN12Arduboy2Base7pressedEh>
    4266:	88 23       	and	r24, r24
    4268:	09 f4       	brne	.+2      	; 0x426c <main+0x204>
    426a:	40 c0       	rjmp	.+128    	; 0x42ec <main+0x284>
  {
    bitWrite(GREEN_LED_PORT, GREEN_LED_BIT, val);
  }
  else if (color == BLUE_LED)
  {
    bitWrite(BLUE_LED_PORT, BLUE_LED_BIT, val);
    426c:	2d 98       	cbi	0x05, 5	; 5
  digitalWriteRGB(BLUE_LED, RGB_OFF); // turn off blue LED
}

void Arduboy2Base::sysCtrlSound(uint8_t buttons, uint8_t led, uint8_t eeVal)
{
  if (pressed(buttons)) {
    426e:	84 e8       	ldi	r24, 0x84	; 132
    4270:	0e 94 1a 0c 	call	0x1834	; 0x1834 <_ZN12Arduboy2Base7pressedEh>
    4274:	88 23       	and	r24, r24
    4276:	c1 f0       	breq	.+48     	; 0x42a8 <main+0x240>
    4278:	0e 94 13 0c 	call	0x1826	; 0x1826 <_ZN12Arduboy2Core15digitalWriteRGBEhh.part.2>
    digitalWriteRGB(BLUE_LED, RGB_OFF); // turn off blue LED
    delayShort(200);
    427c:	88 ec       	ldi	r24, 0xC8	; 200
    427e:	90 e0       	ldi	r25, 0x00	; 0
    4280:	0e 94 15 0c 	call	0x182a	; 0x182a <_ZN12Arduboy2Core10delayShortEj>
  {
    bitWrite(RED_LED_PORT, RED_LED_BIT, val);
  }
  else if (color == GREEN_LED)
  {
    bitWrite(GREEN_LED_PORT, GREEN_LED_BIT, val);
    4284:	2f 98       	cbi	0x05, 7	; 5
    4286:	1a 83       	std	Y+2, r17	; 0x02
    4288:	09 83       	std	Y+1, r16	; 0x01

    //Basic user access methods.
    EERef operator[]( const int idx )    { return idx; }
    uint8_t read( int idx )              { return EERef( idx ); }
    void write( int idx, uint8_t val )   { (EERef( idx )) = val; }
    void update( int idx, uint8_t val )  { EERef( idx ).update( val ); }
    428a:	6f ef       	ldi	r22, 0xFF	; 255
    428c:	ce 01       	movw	r24, r28
    428e:	01 96       	adiw	r24, 0x01	; 1
    4290:	0e 94 db 18 	call	0x31b6	; 0x31b6 <_ZN5EERef6updateEh>
    digitalWriteRGB(led, RGB_ON); // turn on "acknowledge" LED
    EEPROM.update(eepromAudioOnOff, eeVal);
    delayShort(500);
    4294:	84 ef       	ldi	r24, 0xF4	; 244
    4296:	91 e0       	ldi	r25, 0x01	; 1
    4298:	0e 94 15 0c 	call	0x182a	; 0x182a <_ZN12Arduboy2Core10delayShortEj>
    429c:	2f 9a       	sbi	0x05, 7	; 5
    digitalWriteRGB(led, RGB_OFF); // turn off "acknowledge" LED

    while (pressed(buttons)) { } // Wait for button release
    429e:	84 e8       	ldi	r24, 0x84	; 132
    42a0:	0e 94 1a 0c 	call	0x1834	; 0x1834 <_ZN12Arduboy2Base7pressedEh>
    42a4:	81 11       	cpse	r24, r1
    42a6:	fb cf       	rjmp	.-10     	; 0x429e <main+0x236>
  digitalWriteRGB(BLUE_LED, RGB_OFF); // turn off blue LED
}

void Arduboy2Base::sysCtrlSound(uint8_t buttons, uint8_t led, uint8_t eeVal)
{
  if (pressed(buttons)) {
    42a8:	84 e1       	ldi	r24, 0x14	; 20
    42aa:	0e 94 1a 0c 	call	0x1834	; 0x1834 <_ZN12Arduboy2Base7pressedEh>
    42ae:	88 23       	and	r24, r24
    42b0:	c1 f0       	breq	.+48     	; 0x42e2 <main+0x27a>
    42b2:	0e 94 13 0c 	call	0x1826	; 0x1826 <_ZN12Arduboy2Core15digitalWriteRGBEhh.part.2>
    digitalWriteRGB(BLUE_LED, RGB_OFF); // turn off blue LED
    delayShort(200);
    42b6:	88 ec       	ldi	r24, 0xC8	; 200
    42b8:	90 e0       	ldi	r25, 0x00	; 0
    42ba:	0e 94 15 0c 	call	0x182a	; 0x182a <_ZN12Arduboy2Core10delayShortEj>
void Arduboy2Core::digitalWriteRGB(uint8_t color, uint8_t val)
{
#ifdef ARDUBOY_10
  if (color == RED_LED)
  {
    bitWrite(RED_LED_PORT, RED_LED_BIT, val);
    42be:	2e 98       	cbi	0x05, 6	; 5
***/

struct EERef{

    EERef( const int index )
        : index( index )                 {}
    42c0:	1a 83       	std	Y+2, r17	; 0x02
    42c2:	09 83       	std	Y+1, r16	; 0x01

    //Basic user access methods.
    EERef operator[]( const int idx )    { return idx; }
    uint8_t read( int idx )              { return EERef( idx ); }
    void write( int idx, uint8_t val )   { (EERef( idx )) = val; }
    void update( int idx, uint8_t val )  { EERef( idx ).update( val ); }
    42c4:	60 e0       	ldi	r22, 0x00	; 0
    42c6:	ce 01       	movw	r24, r28
    42c8:	01 96       	adiw	r24, 0x01	; 1
    42ca:	0e 94 db 18 	call	0x31b6	; 0x31b6 <_ZN5EERef6updateEh>
    digitalWriteRGB(led, RGB_ON); // turn on "acknowledge" LED
    EEPROM.update(eepromAudioOnOff, eeVal);
    delayShort(500);
    42ce:	84 ef       	ldi	r24, 0xF4	; 244
    42d0:	91 e0       	ldi	r25, 0x01	; 1
    42d2:	0e 94 15 0c 	call	0x182a	; 0x182a <_ZN12Arduboy2Core10delayShortEj>
    42d6:	2e 9a       	sbi	0x05, 6	; 5
    digitalWriteRGB(led, RGB_OFF); // turn off "acknowledge" LED

    while (pressed(buttons)) { } // Wait for button release
    42d8:	84 e1       	ldi	r24, 0x14	; 20
    42da:	0e 94 1a 0c 	call	0x1834	; 0x1834 <_ZN12Arduboy2Base7pressedEh>
    42de:	81 11       	cpse	r24, r1
    42e0:	fb cf       	rjmp	.-10     	; 0x42d8 <main+0x270>
{
  while (pressed(B_BUTTON)) {
    digitalWriteRGB(BLUE_LED, RGB_ON); // turn on blue LED
    sysCtrlSound(UP_BUTTON + B_BUTTON, GREEN_LED, 0xff);
    sysCtrlSound(DOWN_BUTTON + B_BUTTON, RED_LED, 0);
    delayShort(200);
    42e2:	88 ec       	ldi	r24, 0xC8	; 200
    42e4:	90 e0       	ldi	r25, 0x00	; 0
    42e6:	0e 94 15 0c 	call	0x182a	; 0x182a <_ZN12Arduboy2Core10delayShortEj>
    42ea:	ba cf       	rjmp	.-140    	; 0x4260 <main+0x1f8>
    42ec:	0e 94 13 0c 	call	0x1826	; 0x1826 <_ZN12Arduboy2Core15digitalWriteRGBEhh.part.2>
  EEPROM.update(eepromSysFlags, flags);
}

bool Arduboy2Base::readShowBootLogoLEDsFlag()
{
  return (EEPROM.read(eepromSysFlags) & sysFlagShowLogoLEDsMask);
    42f0:	81 e0       	ldi	r24, 0x01	; 1
    42f2:	90 e0       	ldi	r25, 0x00	; 0
    42f4:	0e 94 a6 18 	call	0x314c	; 0x314c <_ZN11EEPROMClass4readEi.isra.0.lto_priv.17>
    42f8:	18 2f       	mov	r17, r24
    42fa:	14 70       	andi	r17, 0x04	; 4
// if changes are made to one, equivalent changes should be made to the other
bool Arduboy2Base::bootLogoShell(void (&drawLogo)(int16_t))
{
  bool showLEDs = readShowBootLogoLEDsFlag();

  if (!readShowBootLogoFlag()) {
    42fc:	81 ff       	sbrs	r24, 1
    42fe:	0f c0       	rjmp	.+30     	; 0x431e <main+0x2b6>
    return false;
  }

  if (showLEDs) {
    4300:	11 11       	cpse	r17, r1
    4302:	2e 98       	cbi	0x05, 6	; 5
    4304:	f1 ef       	ldi	r31, 0xF1	; 241
    4306:	ef 2e       	mov	r14, r31
    4308:	ff 24       	eor	r15, r15
    430a:	fa 94       	dec	r15
    digitalWriteRGB(RED_LED, RGB_ON);
  }

  for (int16_t y = -15; y <= 24; y++) {
    if (pressed(RIGHT_BUTTON)) {
    430c:	80 e4       	ldi	r24, 0x40	; 64
    430e:	0e 94 1a 0c 	call	0x1834	; 0x1834 <_ZN12Arduboy2Base7pressedEh>
    4312:	88 23       	and	r24, r24
    4314:	09 f1       	breq	.+66     	; 0x4358 <main+0x2f0>
}

void Arduboy2Core::digitalWriteRGB(uint8_t red, uint8_t green, uint8_t blue)
{
#ifdef ARDUBOY_10
  bitWrite(RED_LED_PORT, RED_LED_BIT, red);
    4316:	2e 9a       	sbi	0x05, 6	; 5
  bitWrite(GREEN_LED_PORT, GREEN_LED_BIT, green);
    4318:	2f 9a       	sbi	0x05, 7	; 5
    431a:	0e 94 13 0c 	call	0x1826	; 0x1826 <_ZN12Arduboy2Core15digitalWriteRGBEhh.part.2>

/* Frame management */

void Arduboy2Base::setFrameRate(uint8_t rate)
{
  eachFrameMillis = 1000 / rate;
    431e:	88 e2       	ldi	r24, 0x28	; 40
    4320:	80 93 02 01 	sts	0x0102, r24	; 0x800102 <_ZN12Arduboy2Base15eachFrameMillisE>
    4324:	0e 94 c3 16 	call	0x2d86	; 0x2d86 <_Z8InitGamev>
}

unsigned long millis()
{
	unsigned long m;
	uint8_t oldSREG = SREG;
    4328:	8f b7       	in	r24, 0x3f	; 63

	// disable interrupts while we read timer0_millis or we might get an
	// inconsistent value (e.g. in the middle of a write to timer0_millis)
	cli();
    432a:	f8 94       	cli
	m = timer0_millis;
    432c:	40 91 2f 01 	lds	r20, 0x012F	; 0x80012f <timer0_millis>
    4330:	50 91 30 01 	lds	r21, 0x0130	; 0x800130 <timer0_millis+0x1>
    4334:	60 91 31 01 	lds	r22, 0x0131	; 0x800131 <timer0_millis+0x2>
    4338:	70 91 32 01 	lds	r23, 0x0132	; 0x800132 <timer0_millis+0x3>
	SREG = oldSREG;
    433c:	8f bf       	out	0x3f, r24	; 63
bool Arduboy2Base::nextFrame()
{
  uint8_t now = (uint8_t) millis();
  uint8_t frameDurationMs = now - thisFrameStart;

  if (justRendered) {
    433e:	80 91 35 01 	lds	r24, 0x0135	; 0x800135 <_ZN12Arduboy2Base12justRenderedE>
    4342:	88 23       	and	r24, r24
    4344:	b9 f1       	breq	.+110    	; 0x43b4 <main+0x34c>
    lastFrameDurationMs = frameDurationMs;
    justRendered = false;
    4346:	10 92 35 01 	sts	0x0135, r1	; 0x800135 <_ZN12Arduboy2Base12justRenderedE>
	
	setup();
    
	for (;;) {
		loop();
		if (serialEventRun) serialEventRun();
    434a:	80 e0       	ldi	r24, 0x00	; 0
    434c:	90 e0       	ldi	r25, 0x00	; 0
    434e:	89 2b       	or	r24, r25
    4350:	59 f3       	breq	.-42     	; 0x4328 <main+0x2c0>
    4352:	0e 94 00 00 	call	0	; 0x0 <__vectors>
    4356:	e8 cf       	rjmp	.-48     	; 0x4328 <main+0x2c0>
    if (pressed(RIGHT_BUTTON)) {
      digitalWriteRGB(RGB_OFF, RGB_OFF, RGB_OFF); // all LEDs off
      return false;
    }

    if (showLEDs && y == 4) {
    4358:	11 23       	and	r17, r17
    435a:	31 f0       	breq	.+12     	; 0x4368 <main+0x300>
    435c:	24 e0       	ldi	r18, 0x04	; 4
    435e:	e2 16       	cp	r14, r18
    4360:	f1 04       	cpc	r15, r1
    4362:	11 f4       	brne	.+4      	; 0x4368 <main+0x300>
void Arduboy2Core::digitalWriteRGB(uint8_t color, uint8_t val)
{
#ifdef ARDUBOY_10
  if (color == RED_LED)
  {
    bitWrite(RED_LED_PORT, RED_LED_BIT, val);
    4364:	2e 9a       	sbi	0x05, 6	; 5
  }
  else if (color == GREEN_LED)
  {
    bitWrite(GREEN_LED_PORT, GREEN_LED_BIT, val);
    4366:	2f 98       	cbi	0x05, 7	; 5
  paintScreen(sBuffer);
}

void Arduboy2Base::display(bool clear)
{
  paintScreen(sBuffer, clear);
    4368:	81 e0       	ldi	r24, 0x01	; 1
    436a:	0e 94 c5 09 	call	0x138a	; 0x138a <_ZN12Arduboy2Core11paintScreenEPhb.constprop.13>
  bootLogoShell(drawLogoBitmap);
}

void Arduboy2Base::drawLogoBitmap(int16_t y)
{
  drawBitmap(20, y, arduboy_logo, 88, 16);
    436e:	00 e1       	ldi	r16, 0x10	; 16
    4370:	28 e5       	ldi	r18, 0x58	; 88
    4372:	43 e5       	ldi	r20, 0x53	; 83
    4374:	52 e0       	ldi	r21, 0x02	; 2
    4376:	b7 01       	movw	r22, r14
    4378:	84 e1       	ldi	r24, 0x14	; 20
    437a:	90 e0       	ldi	r25, 0x00	; 0
    437c:	0e 94 0b 09 	call	0x1216	; 0x1216 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh.constprop.14>
  }
}

void Arduboy2Base::display()
{
  paintScreen(sBuffer);
    4380:	80 e0       	ldi	r24, 0x00	; 0
    4382:	0e 94 c5 09 	call	0x138a	; 0x138a <_ZN12Arduboy2Core11paintScreenEPhb.constprop.13>
    // Using display(CLEAR_BUFFER) instead of clear() may save code space.
    // The extra time it takes to repaint the previous logo isn't an issue.
    display(CLEAR_BUFFER);
    (*drawLogo)(y); // call the function that actually draws the logo
    display();
    delayShort(15);
    4386:	8f e0       	ldi	r24, 0x0F	; 15
    4388:	90 e0       	ldi	r25, 0x00	; 0
    438a:	0e 94 15 0c 	call	0x182a	; 0x182a <_ZN12Arduboy2Core10delayShortEj>

  if (showLEDs) {
    digitalWriteRGB(RED_LED, RGB_ON);
  }

  for (int16_t y = -15; y <= 24; y++) {
    438e:	3f ef       	ldi	r19, 0xFF	; 255
    4390:	e3 1a       	sub	r14, r19
    4392:	f3 0a       	sbc	r15, r19
    4394:	49 e1       	ldi	r20, 0x19	; 25
    4396:	e4 16       	cp	r14, r20
    4398:	f1 04       	cpc	r15, r1
    439a:	09 f0       	breq	.+2      	; 0x439e <main+0x336>
    439c:	b7 cf       	rjmp	.-146    	; 0x430c <main+0x2a4>
    (*drawLogo)(y); // call the function that actually draws the logo
    display();
    delayShort(15);
  }

  if (showLEDs) {
    439e:	11 23       	and	r17, r17
    43a0:	11 f0       	breq	.+4      	; 0x43a6 <main+0x33e>
    43a2:	2f 9a       	sbi	0x05, 7	; 5
  }
  else if (color == BLUE_LED)
  {
    bitWrite(BLUE_LED_PORT, BLUE_LED_BIT, val);
    43a4:	2d 98       	cbi	0x05, 5	; 5
    digitalWriteRGB(GREEN_LED, RGB_OFF);  // green LED off
    digitalWriteRGB(BLUE_LED, RGB_ON);    // blue LED on
  }
  delayShort(400);
    43a6:	80 e9       	ldi	r24, 0x90	; 144
    43a8:	91 e0       	ldi	r25, 0x01	; 1
    43aa:	0e 94 15 0c 	call	0x182a	; 0x182a <_ZN12Arduboy2Core10delayShortEj>
    43ae:	0e 94 13 0c 	call	0x1826	; 0x1826 <_ZN12Arduboy2Core15digitalWriteRGBEhh.part.2>
    43b2:	b5 cf       	rjmp	.-150    	; 0x431e <main+0x2b6>
}

bool Arduboy2Base::nextFrame()
{
  uint8_t now = (uint8_t) millis();
  uint8_t frameDurationMs = now - thisFrameStart;
    43b4:	80 91 36 01 	lds	r24, 0x0136	; 0x800136 <_ZN12Arduboy2Base14thisFrameStartE>
    43b8:	94 2f       	mov	r25, r20
    43ba:	98 1b       	sub	r25, r24
    43bc:	89 2f       	mov	r24, r25
  if (justRendered) {
    lastFrameDurationMs = frameDurationMs;
    justRendered = false;
    return false;
  }
  else if (frameDurationMs < eachFrameMillis) {
    43be:	90 91 02 01 	lds	r25, 0x0102	; 0x800102 <_ZN12Arduboy2Base15eachFrameMillisE>
    43c2:	89 17       	cp	r24, r25
    43c4:	48 f4       	brcc	.+18     	; 0x43d8 <main+0x370>
    // Only idle if at least a full millisecond remains, since idle() may
    // sleep the processor until the next millisecond timer interrupt.
    if (++frameDurationMs < eachFrameMillis) {
    43c6:	8f 5f       	subi	r24, 0xFF	; 255
    43c8:	89 17       	cp	r24, r25
    43ca:	08 f0       	brcs	.+2      	; 0x43ce <main+0x366>
    43cc:	be cf       	rjmp	.-132    	; 0x434a <main+0x2e2>

/* Power Management */

void Arduboy2Core::idle()
{
  SMCR = _BV(SE); // select idle mode and enable sleeping
    43ce:	81 e0       	ldi	r24, 0x01	; 1
    43d0:	83 bf       	out	0x33, r24	; 51
  sleep_cpu();
    43d2:	88 95       	sleep
  SMCR = 0; // disable sleeping
    43d4:	13 be       	out	0x33, r1	; 51
    43d6:	b9 cf       	rjmp	.-142    	; 0x434a <main+0x2e2>

    return false;
  }

  // pre-render
  justRendered = true;
    43d8:	81 e0       	ldi	r24, 0x01	; 1
    43da:	80 93 35 01 	sts	0x0135, r24	; 0x800135 <_ZN12Arduboy2Base12justRenderedE>
  thisFrameStart = now;
    43de:	40 93 36 01 	sts	0x0136, r20	; 0x800136 <_ZN12Arduboy2Base14thisFrameStartE>
  frameCount++;
    43e2:	80 91 33 01 	lds	r24, 0x0133	; 0x800133 <_ZN12Arduboy2Base10frameCountE>
    43e6:	90 91 34 01 	lds	r25, 0x0134	; 0x800134 <_ZN12Arduboy2Base10frameCountE+0x1>
    43ea:	01 96       	adiw	r24, 0x01	; 1
    43ec:	90 93 34 01 	sts	0x0134, r25	; 0x800134 <_ZN12Arduboy2Base10frameCountE+0x1>
    43f0:	80 93 33 01 	sts	0x0133, r24	; 0x800133 <_ZN12Arduboy2Base10frameCountE>
    43f4:	80 91 22 05 	lds	r24, 0x0522	; 0x800522 <UIState+0x8>
    43f8:	82 30       	cpi	r24, 0x02	; 2
    43fa:	19 f0       	breq	.+6      	; 0x4402 <main+0x39a>
    43fc:	84 30       	cpi	r24, 0x04	; 4
    43fe:	09 f0       	breq	.+2      	; 0x4402 <main+0x39a>
    4400:	17 c6       	rjmp	.+3118   	; 0x5030 <main+0xfc8>
    4402:	80 91 3c 01 	lds	r24, 0x013C	; 0x80013c <State+0x3>
    4406:	82 38       	cpi	r24, 0x82	; 130
    4408:	08 f0       	brcs	.+2      	; 0x440c <main+0x3a4>
    440a:	b7 c3       	rjmp	.+1902   	; 0x4b7a <main+0xb12>
    440c:	e8 2e       	mov	r14, r24
    440e:	f1 2c       	mov	r15, r1
    4410:	a3 e0       	ldi	r26, 0x03	; 3
    4412:	8a 9f       	mul	r24, r26
    4414:	c0 01       	movw	r24, r0
    4416:	11 24       	eor	r1, r1
    4418:	fc 01       	movw	r30, r24
    441a:	ed 56       	subi	r30, 0x6D	; 109
    441c:	fc 4f       	sbci	r31, 0xFC	; 252
    441e:	5f 01       	movw	r10, r30
    4420:	47 01       	movw	r8, r14
    4422:	88 0c       	add	r8, r8
    4424:	99 1c       	adc	r9, r9
    4426:	94 01       	movw	r18, r8
    4428:	2e 0d       	add	r18, r14
    442a:	3f 1d       	adc	r19, r15
    442c:	f9 01       	movw	r30, r18
    442e:	ed 56       	subi	r30, 0x6D	; 109
    4430:	fc 4f       	sbci	r31, 0xFC	; 252
    4432:	92 81       	ldd	r25, Z+2	; 0x02
    4434:	89 2f       	mov	r24, r25
    4436:	80 73       	andi	r24, 0x30	; 48
    4438:	09 f4       	brne	.+2      	; 0x443c <main+0x3d4>
    443a:	4c c1       	rjmp	.+664    	; 0x46d4 <main+0x66c>
    443c:	d9 01       	movw	r26, r18
    443e:	ac 56       	subi	r26, 0x6C	; 108
    4440:	bc 4f       	sbci	r27, 0xFC	; 252
    4442:	8c 91       	ld	r24, X
    4444:	80 39       	cpi	r24, 0x90	; 144
    4446:	08 f4       	brcc	.+2      	; 0x444a <main+0x3e2>
    4448:	93 c0       	rjmp	.+294    	; 0x4570 <main+0x508>
    444a:	2b 56       	subi	r18, 0x6B	; 107
    444c:	3c 4f       	sbci	r19, 0xFC	; 252
    444e:	d9 01       	movw	r26, r18
    4450:	8c 91       	ld	r24, X
    4452:	82 95       	swap	r24
    4454:	8f 70       	andi	r24, 0x0F	; 15
    4456:	8d 5f       	subi	r24, 0xFD	; 253
    4458:	83 70       	andi	r24, 0x03	; 3
    445a:	82 95       	swap	r24
    445c:	80 7f       	andi	r24, 0xF0	; 240
    445e:	9f 7c       	andi	r25, 0xCF	; 207
    4460:	89 2b       	or	r24, r25
    4462:	82 83       	std	Z+2, r24	; 0x02
    4464:	0e 94 3b 0d 	call	0x1a76	; 0x1a76 <_Z7GetRandv>
    4468:	81 34       	cpi	r24, 0x41	; 65
    446a:	18 f0       	brcs	.+6      	; 0x4472 <main+0x40a>
    446c:	c5 01       	movw	r24, r10
    446e:	0e 94 f8 17 	call	0x2ff0	; 0x2ff0 <_Z10SpreadFireP8Building>
    4472:	c5 01       	movw	r24, r10
    4474:	0e 94 32 15 	call	0x2a64	; 0x2a64 <_Z20RefreshBuildingTilesP8Building>
    4478:	80 91 3c 01 	lds	r24, 0x013C	; 0x80013c <State+0x3>
    447c:	8f 5f       	subi	r24, 0xFF	; 255
    447e:	80 93 3c 01 	sts	0x013C, r24	; 0x80013c <State+0x3>
    4482:	80 91 91 03 	lds	r24, 0x0391	; 0x800391 <State+0x258>
    4486:	90 91 92 03 	lds	r25, 0x0392	; 0x800392 <State+0x259>
    448a:	01 97       	sbiw	r24, 0x01	; 1
    448c:	90 93 92 03 	sts	0x0392, r25	; 0x800392 <State+0x259>
    4490:	80 93 91 03 	sts	0x0391, r24	; 0x800391 <State+0x258>
    4494:	89 2b       	or	r24, r25
    4496:	09 f0       	breq	.+2      	; 0x449a <main+0x432>
    4498:	cb c5       	rjmp	.+2966   	; 0x5030 <main+0xfc8>
    449a:	02 e8       	ldi	r16, 0x82	; 130
    449c:	10 e0       	ldi	r17, 0x00	; 0
    449e:	0e 94 3b 0d 	call	0x1a76	; 0x1a76 <_Z7GetRandv>
    44a2:	99 27       	eor	r25, r25
    44a4:	82 38       	cpi	r24, 0x82	; 130
    44a6:	91 05       	cpc	r25, r1
    44a8:	0c f0       	brlt	.+2      	; 0x44ac <main+0x444>
    44aa:	52 c6       	rjmp	.+3236   	; 0x5150 <main+0x10e8>
    44ac:	9c 01       	movw	r18, r24
    44ae:	22 0f       	add	r18, r18
    44b0:	33 1f       	adc	r19, r19
    44b2:	82 0f       	add	r24, r18
    44b4:	93 1f       	adc	r25, r19
    44b6:	fc 01       	movw	r30, r24
    44b8:	ec 56       	subi	r30, 0x6C	; 108
    44ba:	fc 4f       	sbci	r31, 0xFC	; 252
    44bc:	20 81       	ld	r18, Z
    44be:	22 95       	swap	r18
    44c0:	2f 70       	andi	r18, 0x0F	; 15
    44c2:	09 f4       	brne	.+2      	; 0x44c6 <main+0x45e>
    44c4:	45 c6       	rjmp	.+3210   	; 0x5150 <main+0x10e8>
    44c6:	fc 01       	movw	r30, r24
    44c8:	eb 56       	subi	r30, 0x6B	; 107
    44ca:	fc 4f       	sbci	r31, 0xFC	; 252
    44cc:	30 81       	ld	r19, Z
    44ce:	32 95       	swap	r19
    44d0:	33 70       	andi	r19, 0x03	; 3
    44d2:	09 f0       	breq	.+2      	; 0x44d6 <main+0x46e>
    44d4:	3d c6       	rjmp	.+3194   	; 0x5150 <main+0x10e8>
    44d6:	29 30       	cpi	r18, 0x09	; 9
    44d8:	08 f0       	brcs	.+2      	; 0x44dc <main+0x474>
    44da:	3a c6       	rjmp	.+3188   	; 0x5150 <main+0x10e8>
    44dc:	25 30       	cpi	r18, 0x05	; 5
    44de:	09 f4       	brne	.+2      	; 0x44e2 <main+0x47a>
    44e0:	37 c6       	rjmp	.+3182   	; 0x5150 <main+0x10e8>
    44e2:	8c 01       	movw	r16, r24
    44e4:	0d 56       	subi	r16, 0x6D	; 109
    44e6:	1c 4f       	sbci	r17, 0xFC	; 252
    44e8:	d8 01       	movw	r26, r16
    44ea:	12 96       	adiw	r26, 0x02	; 2
    44ec:	2c 91       	ld	r18, X
    44ee:	12 97       	sbiw	r26, 0x02	; 2
    44f0:	2f 7c       	andi	r18, 0xCF	; 207
    44f2:	20 61       	ori	r18, 0x10	; 16
    44f4:	12 96       	adiw	r26, 0x02	; 2
    44f6:	2c 93       	st	X, r18
    44f8:	c8 01       	movw	r24, r16
    44fa:	0e 94 32 15 	call	0x2a64	; 0x2a64 <_Z20RefreshBuildingTilesP8Building>
    44fe:	f8 01       	movw	r30, r16
    4500:	20 81       	ld	r18, Z
    4502:	92 2f       	mov	r25, r18
    4504:	92 95       	swap	r25
    4506:	96 95       	lsr	r25
    4508:	96 95       	lsr	r25
    450a:	93 70       	andi	r25, 0x03	; 3
    450c:	81 81       	ldd	r24, Z+1	; 0x01
    450e:	8f 70       	andi	r24, 0x0F	; 15
    4510:	88 0f       	add	r24, r24
    4512:	88 0f       	add	r24, r24
    4514:	89 2b       	or	r24, r25
    4516:	8f 5f       	subi	r24, 0xFF	; 255
    4518:	2f 73       	andi	r18, 0x3F	; 63
    451a:	2f 5f       	subi	r18, 0xFF	; 255
    451c:	20 93 1e 05 	sts	0x051E, r18	; 0x80051e <UIState+0x4>
    4520:	80 93 1f 05 	sts	0x051F, r24	; 0x80051f <UIState+0x5>
    4524:	f8 e0       	ldi	r31, 0x08	; 8
    4526:	2f 9f       	mul	r18, r31
    4528:	90 01       	movw	r18, r0
    452a:	11 24       	eor	r1, r1
    452c:	2c 53       	subi	r18, 0x3C	; 60
    452e:	31 09       	sbc	r19, r1
    4530:	30 93 1b 05 	sts	0x051B, r19	; 0x80051b <UIState+0x1>
    4534:	20 93 1a 05 	sts	0x051A, r18	; 0x80051a <UIState>
    4538:	28 e0       	ldi	r18, 0x08	; 8
    453a:	82 9f       	mul	r24, r18
    453c:	c0 01       	movw	r24, r0
    453e:	11 24       	eor	r1, r1
    4540:	4c 97       	sbiw	r24, 0x1c	; 28
    4542:	90 93 1d 05 	sts	0x051D, r25	; 0x80051d <UIState+0x3>
    4546:	80 93 1c 05 	sts	0x051C, r24	; 0x80051c <UIState+0x2>
    454a:	83 e0       	ldi	r24, 0x03	; 3
    454c:	80 93 22 05 	sts	0x0522, r24	; 0x800522 <UIState+0x8>
    4550:	8c e3       	ldi	r24, 0x3C	; 60
    4552:	80 93 21 05 	sts	0x0521, r24	; 0x800521 <UIState+0x7>
    4556:	0e 94 3b 0d 	call	0x1a76	; 0x1a76 <_Z7GetRandv>
    455a:	60 e6       	ldi	r22, 0x60	; 96
    455c:	78 e1       	ldi	r23, 0x18	; 24
    455e:	0e 94 2b 2e 	call	0x5c56	; 0x5c56 <__udivmodhi4>
    4562:	80 5d       	subi	r24, 0xD0	; 208
    4564:	93 4f       	sbci	r25, 0xF3	; 243
    4566:	90 93 92 03 	sts	0x0392, r25	; 0x800392 <State+0x259>
    456a:	80 93 91 03 	sts	0x0391, r24	; 0x800391 <State+0x258>
    456e:	60 c5       	rjmp	.+2752   	; 0x5030 <main+0xfc8>
    4570:	0f ef       	ldi	r16, 0xFF	; 255
    4572:	30 e0       	ldi	r19, 0x00	; 0
    4574:	20 e0       	ldi	r18, 0x00	; 0
    4576:	c9 01       	movw	r24, r18
    4578:	88 0f       	add	r24, r24
    457a:	99 1f       	adc	r25, r25
    457c:	ac 01       	movw	r20, r24
    457e:	42 0f       	add	r20, r18
    4580:	53 1f       	adc	r21, r19
    4582:	ba 01       	movw	r22, r20
    4584:	6d 56       	subi	r22, 0x6D	; 109
    4586:	7c 4f       	sbci	r23, 0xFC	; 252
    4588:	6b 01       	movw	r12, r22
    458a:	db 01       	movw	r26, r22
    458c:	11 96       	adiw	r26, 0x01	; 1
    458e:	6c 91       	ld	r22, X
    4590:	60 7f       	andi	r22, 0xF0	; 240
    4592:	60 37       	cpi	r22, 0x70	; 112
    4594:	99 f5       	brne	.+102    	; 0x45fc <main+0x594>
    4596:	4b 56       	subi	r20, 0x6B	; 107
    4598:	5c 4f       	sbci	r21, 0xFC	; 252
    459a:	da 01       	movw	r26, r20
    459c:	4c 91       	ld	r20, X
    459e:	47 ff       	sbrs	r20, 7
    45a0:	2d c0       	rjmp	.+90     	; 0x45fc <main+0x594>
    45a2:	50 81       	ld	r21, Z
    45a4:	5f 73       	andi	r21, 0x3F	; 63
    45a6:	d6 01       	movw	r26, r12
    45a8:	4c 91       	ld	r20, X
    45aa:	4f 73       	andi	r20, 0x3F	; 63
    45ac:	45 17       	cp	r20, r21
    45ae:	08 f0       	brcs	.+2      	; 0x45b2 <main+0x54a>
    45b0:	59 c0       	rjmp	.+178    	; 0x4664 <main+0x5fc>
    45b2:	54 1b       	sub	r21, r20
    45b4:	45 2f       	mov	r20, r21
    45b6:	50 81       	ld	r21, Z
    45b8:	65 2f       	mov	r22, r21
    45ba:	62 95       	swap	r22
    45bc:	66 95       	lsr	r22
    45be:	66 95       	lsr	r22
    45c0:	63 70       	andi	r22, 0x03	; 3
    45c2:	51 81       	ldd	r21, Z+1	; 0x01
    45c4:	5f 70       	andi	r21, 0x0F	; 15
    45c6:	55 0f       	add	r21, r21
    45c8:	55 0f       	add	r21, r21
    45ca:	56 2b       	or	r21, r22
    45cc:	82 0f       	add	r24, r18
    45ce:	93 1f       	adc	r25, r19
    45d0:	dc 01       	movw	r26, r24
    45d2:	ad 56       	subi	r26, 0x6D	; 109
    45d4:	bc 4f       	sbci	r27, 0xFC	; 252
    45d6:	8c 91       	ld	r24, X
    45d8:	98 2f       	mov	r25, r24
    45da:	92 95       	swap	r25
    45dc:	96 95       	lsr	r25
    45de:	96 95       	lsr	r25
    45e0:	93 70       	andi	r25, 0x03	; 3
    45e2:	11 96       	adiw	r26, 0x01	; 1
    45e4:	8c 91       	ld	r24, X
    45e6:	8f 70       	andi	r24, 0x0F	; 15
    45e8:	88 0f       	add	r24, r24
    45ea:	88 0f       	add	r24, r24
    45ec:	89 2b       	or	r24, r25
    45ee:	85 17       	cp	r24, r21
    45f0:	d8 f5       	brcc	.+118    	; 0x4668 <main+0x600>
    45f2:	58 1b       	sub	r21, r24
    45f4:	54 0f       	add	r21, r20
    45f6:	50 17       	cp	r21, r16
    45f8:	08 f4       	brcc	.+2      	; 0x45fc <main+0x594>
    45fa:	05 2f       	mov	r16, r21
    45fc:	2f 5f       	subi	r18, 0xFF	; 255
    45fe:	3f 4f       	sbci	r19, 0xFF	; 255
    4600:	22 38       	cpi	r18, 0x82	; 130
    4602:	31 05       	cpc	r19, r1
    4604:	09 f0       	breq	.+2      	; 0x4608 <main+0x5a0>
    4606:	b7 cf       	rjmp	.-146    	; 0x4576 <main+0x50e>
    4608:	b5 e0       	ldi	r27, 0x05	; 5
    460a:	0b 9f       	mul	r16, r27
    460c:	80 01       	movw	r16, r0
    460e:	11 24       	eor	r1, r1
    4610:	00 5c       	subi	r16, 0xC0	; 192
    4612:	1f 4f       	sbci	r17, 0xFF	; 255
    4614:	0f 3f       	cpi	r16, 0xFF	; 255
    4616:	11 05       	cpc	r17, r1
    4618:	09 f0       	breq	.+2      	; 0x461c <main+0x5b4>
    461a:	4c f5       	brge	.+82     	; 0x466e <main+0x606>
    461c:	0e 94 3b 0d 	call	0x1a76	; 0x1a76 <_Z7GetRandv>
    4620:	80 17       	cp	r24, r16
    4622:	11 06       	cpc	r1, r17
    4624:	21 f1       	breq	.+72     	; 0x466e <main+0x606>
    4626:	18 f1       	brcs	.+70     	; 0x466e <main+0x606>
    4628:	c4 01       	movw	r24, r8
    462a:	8e 0d       	add	r24, r14
    462c:	9f 1d       	adc	r25, r15
    462e:	fc 01       	movw	r30, r24
    4630:	ed 56       	subi	r30, 0x6D	; 109
    4632:	fc 4f       	sbci	r31, 0xFC	; 252
    4634:	8b 56       	subi	r24, 0x6B	; 107
    4636:	9c 4f       	sbci	r25, 0xFC	; 252
    4638:	dc 01       	movw	r26, r24
    463a:	8c 91       	ld	r24, X
    463c:	82 95       	swap	r24
    463e:	8f 70       	andi	r24, 0x0F	; 15
    4640:	8d 5f       	subi	r24, 0xFD	; 253
    4642:	83 70       	andi	r24, 0x03	; 3
    4644:	82 95       	swap	r24
    4646:	80 7f       	andi	r24, 0xF0	; 240
    4648:	92 81       	ldd	r25, Z+2	; 0x02
    464a:	9f 7c       	andi	r25, 0xCF	; 207
    464c:	89 2b       	or	r24, r25
    464e:	82 83       	std	Z+2, r24	; 0x02
    4650:	f4 01       	movw	r30, r8
    4652:	ee 0d       	add	r30, r14
    4654:	ff 1d       	adc	r31, r15
    4656:	ed 56       	subi	r30, 0x6D	; 109
    4658:	fc 4f       	sbci	r31, 0xFC	; 252
    465a:	82 81       	ldd	r24, Z+2	; 0x02
    465c:	8f 7b       	andi	r24, 0xBF	; 191
    465e:	82 83       	std	Z+2, r24	; 0x02
    4660:	80 e0       	ldi	r24, 0x00	; 0
    4662:	cd c1       	rjmp	.+922    	; 0x49fe <main+0x996>
    4664:	45 1b       	sub	r20, r21
    4666:	a7 cf       	rjmp	.-178    	; 0x45b6 <main+0x54e>
    4668:	85 1b       	sub	r24, r21
    466a:	58 2f       	mov	r21, r24
    466c:	c3 cf       	rjmp	.-122    	; 0x45f4 <main+0x58c>
    466e:	0e 94 3b 0d 	call	0x1a76	; 0x1a76 <_Z7GetRandv>
    4672:	81 34       	cpi	r24, 0x41	; 65
    4674:	d8 f0       	brcs	.+54     	; 0x46ac <main+0x644>
    4676:	0e 94 3b 0d 	call	0x1a76	; 0x1a76 <_Z7GetRandv>
    467a:	80 34       	cpi	r24, 0x40	; 64
    467c:	48 f7       	brcc	.-46     	; 0x4650 <main+0x5e8>
    467e:	94 01       	movw	r18, r8
    4680:	2e 0d       	add	r18, r14
    4682:	3f 1d       	adc	r19, r15
    4684:	89 01       	movw	r16, r18
    4686:	0d 56       	subi	r16, 0x6D	; 109
    4688:	1c 4f       	sbci	r17, 0xFC	; 252
    468a:	f8 01       	movw	r30, r16
    468c:	92 81       	ldd	r25, Z+2	; 0x02
    468e:	89 2f       	mov	r24, r25
    4690:	80 73       	andi	r24, 0x30	; 48
    4692:	80 33       	cpi	r24, 0x30	; 48
    4694:	89 f4       	brne	.+34     	; 0x46b8 <main+0x650>
    4696:	c5 01       	movw	r24, r10
    4698:	0e 94 fb 16 	call	0x2df6	; 0x2df6 <_Z15DestroyBuildingP8Building>
    469c:	d8 01       	movw	r26, r16
    469e:	12 96       	adiw	r26, 0x02	; 2
    46a0:	8c 91       	ld	r24, X
    46a2:	12 97       	sbiw	r26, 0x02	; 2
    46a4:	80 63       	ori	r24, 0x30	; 48
    46a6:	12 96       	adiw	r26, 0x02	; 2
    46a8:	8c 93       	st	X, r24
    46aa:	d2 cf       	rjmp	.-92     	; 0x4650 <main+0x5e8>
    46ac:	c5 01       	movw	r24, r10
    46ae:	0e 94 f8 17 	call	0x2ff0	; 0x2ff0 <_Z10SpreadFireP8Building>
    46b2:	88 23       	and	r24, r24
    46b4:	01 f3       	breq	.-64     	; 0x4676 <main+0x60e>
    46b6:	cc cf       	rjmp	.-104    	; 0x4650 <main+0x5e8>
    46b8:	2b 56       	subi	r18, 0x6B	; 107
    46ba:	3c 4f       	sbci	r19, 0xFC	; 252
    46bc:	f9 01       	movw	r30, r18
    46be:	80 81       	ld	r24, Z
    46c0:	82 95       	swap	r24
    46c2:	8f 70       	andi	r24, 0x0F	; 15
    46c4:	8f 5f       	subi	r24, 0xFF	; 255
    46c6:	83 70       	andi	r24, 0x03	; 3
    46c8:	82 95       	swap	r24
    46ca:	80 7f       	andi	r24, 0xF0	; 240
    46cc:	9f 7c       	andi	r25, 0xCF	; 207
    46ce:	89 2b       	or	r24, r25
    46d0:	d8 01       	movw	r26, r16
    46d2:	e9 cf       	rjmp	.-46     	; 0x46a6 <main+0x63e>
    46d4:	81 81       	ldd	r24, Z+1	; 0x01
    46d6:	98 2f       	mov	r25, r24
    46d8:	90 7d       	andi	r25, 0xD0	; 208
    46da:	90 31       	cpi	r25, 0x10	; 16
    46dc:	21 f0       	breq	.+8      	; 0x46e6 <main+0x67e>
    46de:	80 7f       	andi	r24, 0xF0	; 240
    46e0:	80 32       	cpi	r24, 0x20	; 32
    46e2:	09 f0       	breq	.+2      	; 0x46e6 <main+0x67e>
    46e4:	bd cf       	rjmp	.-134    	; 0x4660 <main+0x5f8>
    46e6:	84 01       	movw	r16, r8
    46e8:	0e 0d       	add	r16, r14
    46ea:	1f 1d       	adc	r17, r15
    46ec:	f8 01       	movw	r30, r16
    46ee:	eb 56       	subi	r30, 0x6B	; 107
    46f0:	fc 4f       	sbci	r31, 0xFC	; 252
    46f2:	80 81       	ld	r24, Z
    46f4:	87 ff       	sbrs	r24, 7
    46f6:	1a c2       	rjmp	.+1076   	; 0x4b2c <main+0xac4>
    46f8:	0e 94 3b 0d 	call	0x1a76	; 0x1a76 <_Z7GetRandv>
    46fc:	20 91 82 03 	lds	r18, 0x0382	; 0x800382 <State+0x249>
    4700:	26 50       	subi	r18, 0x06	; 6
    4702:	33 0b       	sbc	r19, r19
    4704:	66 ef       	ldi	r22, 0xF6	; 246
    4706:	62 03       	mulsu	r22, r18
    4708:	a0 01       	movw	r20, r0
    470a:	63 9f       	mul	r22, r19
    470c:	50 0d       	add	r21, r0
    470e:	11 24       	eor	r1, r1
    4710:	8f 71       	andi	r24, 0x1F	; 31
    4712:	99 27       	eor	r25, r25
    4714:	0f 97       	sbiw	r24, 0x0f	; 15
    4716:	48 0f       	add	r20, r24
    4718:	59 1f       	adc	r21, r25
    471a:	f8 01       	movw	r30, r16
    471c:	ec 56       	subi	r30, 0x6C	; 108
    471e:	fc 4f       	sbci	r31, 0xFC	; 252
    4720:	90 81       	ld	r25, Z
    4722:	92 95       	swap	r25
    4724:	9f 70       	andi	r25, 0x0F	; 15
    4726:	92 30       	cpi	r25, 0x02	; 2
    4728:	09 f4       	brne	.+2      	; 0x472c <main+0x6c4>
    472a:	c2 c0       	rjmp	.+388    	; 0x48b0 <main+0x848>
    472c:	93 30       	cpi	r25, 0x03	; 3
    472e:	d9 f0       	breq	.+54     	; 0x4766 <main+0x6fe>
    4730:	91 30       	cpi	r25, 0x01	; 1
    4732:	b1 f4       	brne	.+44     	; 0x4760 <main+0x6f8>
    4734:	80 91 83 03 	lds	r24, 0x0383	; 0x800383 <State+0x24a>
    4738:	90 91 84 03 	lds	r25, 0x0384	; 0x800384 <State+0x24b>
    473c:	20 91 85 03 	lds	r18, 0x0385	; 0x800385 <State+0x24c>
    4740:	30 91 86 03 	lds	r19, 0x0386	; 0x800386 <State+0x24d>
    4744:	82 17       	cp	r24, r18
    4746:	93 07       	cpc	r25, r19
    4748:	00 f1       	brcs	.+64     	; 0x478a <main+0x722>
    474a:	60 91 87 03 	lds	r22, 0x0387	; 0x800387 <State+0x24e>
    474e:	70 91 88 03 	lds	r23, 0x0388	; 0x800388 <State+0x24f>
    4752:	26 0f       	add	r18, r22
    4754:	37 1f       	adc	r19, r23
    4756:	0c e9       	ldi	r16, 0x9C	; 156
    4758:	1f ef       	ldi	r17, 0xFF	; 255
    475a:	28 17       	cp	r18, r24
    475c:	39 07       	cpc	r19, r25
    475e:	b8 f0       	brcs	.+46     	; 0x478e <main+0x726>
    4760:	10 e0       	ldi	r17, 0x00	; 0
    4762:	00 e0       	ldi	r16, 0x00	; 0
    4764:	14 c0       	rjmp	.+40     	; 0x478e <main+0x726>
    4766:	80 91 85 03 	lds	r24, 0x0385	; 0x800385 <State+0x24c>
    476a:	90 91 86 03 	lds	r25, 0x0386	; 0x800386 <State+0x24d>
    476e:	20 91 83 03 	lds	r18, 0x0383	; 0x800383 <State+0x24a>
    4772:	30 91 84 03 	lds	r19, 0x0384	; 0x800384 <State+0x24b>
    4776:	82 17       	cp	r24, r18
    4778:	93 07       	cpc	r25, r19
    477a:	38 f0       	brcs	.+14     	; 0x478a <main+0x722>
    477c:	20 91 87 03 	lds	r18, 0x0387	; 0x800387 <State+0x24e>
    4780:	30 91 88 03 	lds	r19, 0x0388	; 0x800388 <State+0x24f>
    4784:	82 17       	cp	r24, r18
    4786:	93 07       	cpc	r25, r19
    4788:	58 f7       	brcc	.-42     	; 0x4760 <main+0x6f8>
    478a:	0a e0       	ldi	r16, 0x0A	; 10
    478c:	10 e0       	ldi	r17, 0x00	; 0
    478e:	fa 01       	movw	r30, r20
    4790:	e0 0f       	add	r30, r16
    4792:	f1 1f       	adc	r31, r17
    4794:	fd 87       	std	Y+13, r31	; 0x0d
    4796:	ec 87       	std	Y+12, r30	; 0x0c
    4798:	c5 01       	movw	r24, r10
    479a:	0e 94 a4 12 	call	0x2548	; 0x2548 <_Z21GetNumRoadConnectionsP8Building>
    479e:	83 30       	cpi	r24, 0x03	; 3
    47a0:	08 f4       	brcc	.+2      	; 0x47a4 <main+0x73c>
    47a2:	bd c1       	rjmp	.+890    	; 0x4b1e <main+0xab6>
    47a4:	f4 01       	movw	r30, r8
    47a6:	ee 0d       	add	r30, r14
    47a8:	ff 1d       	adc	r31, r15
    47aa:	ed 56       	subi	r30, 0x6D	; 109
    47ac:	fc 4f       	sbci	r31, 0xFC	; 252
    47ae:	82 81       	ldd	r24, Z+2	; 0x02
    47b0:	8f 70       	andi	r24, 0x0F	; 15
    47b2:	31 f4       	brne	.+12     	; 0x47c0 <main+0x758>
    47b4:	2c 85       	ldd	r18, Y+12	; 0x0c
    47b6:	3d 85       	ldd	r19, Y+13	; 0x0d
    47b8:	21 5f       	subi	r18, 0xF1	; 241
    47ba:	3f 4f       	sbci	r19, 0xFF	; 255
    47bc:	3d 87       	std	Y+13, r19	; 0x0d
    47be:	2c 87       	std	Y+12, r18	; 0x0c
    47c0:	43 e9       	ldi	r20, 0x93	; 147
    47c2:	53 e0       	ldi	r21, 0x03	; 3
    47c4:	5d 83       	std	Y+5, r21	; 0x05
    47c6:	4c 83       	std	Y+4, r20	; 0x04
    47c8:	10 e0       	ldi	r17, 0x00	; 0
    47ca:	00 e0       	ldi	r16, 0x00	; 0
    47cc:	31 2c       	mov	r3, r1
    47ce:	21 2c       	mov	r2, r1
    47d0:	58 e1       	ldi	r21, 0x18	; 24
    47d2:	58 87       	std	Y+8, r21	; 0x08
    47d4:	71 2c       	mov	r7, r1
    47d6:	61 2c       	mov	r6, r1
    47d8:	c4 01       	movw	r24, r8
    47da:	8e 0d       	add	r24, r14
    47dc:	9f 1d       	adc	r25, r15
    47de:	bc 01       	movw	r22, r24
    47e0:	6d 56       	subi	r22, 0x6D	; 109
    47e2:	7c 4f       	sbci	r23, 0xFC	; 252
    47e4:	2b 01       	movw	r4, r22
    47e6:	dc 01       	movw	r26, r24
    47e8:	ab 56       	subi	r26, 0x6B	; 107
    47ea:	bc 4f       	sbci	r27, 0xFC	; 252
    47ec:	bf 87       	std	Y+15, r27	; 0x0f
    47ee:	ae 87       	std	Y+14, r26	; 0x0e
    47f0:	ec 81       	ldd	r30, Y+4	; 0x04
    47f2:	fd 81       	ldd	r31, Y+5	; 0x05
    47f4:	ae 16       	cp	r10, r30
    47f6:	bf 06       	cpc	r11, r31
    47f8:	09 f4       	brne	.+2      	; 0x47fc <main+0x794>
    47fa:	9f c0       	rjmp	.+318    	; 0x493a <main+0x8d2>
    47fc:	63 01       	movw	r12, r6
    47fe:	cc 0c       	add	r12, r12
    4800:	dd 1c       	adc	r13, r13
    4802:	c6 01       	movw	r24, r12
    4804:	86 0d       	add	r24, r6
    4806:	97 1d       	adc	r25, r7
    4808:	fc 01       	movw	r30, r24
    480a:	ed 56       	subi	r30, 0x6D	; 109
    480c:	fc 4f       	sbci	r31, 0xFC	; 252
    480e:	21 81       	ldd	r18, Z+1	; 0x01
    4810:	20 7f       	andi	r18, 0xF0	; 240
    4812:	09 f4       	brne	.+2      	; 0x4816 <main+0x7ae>
    4814:	92 c0       	rjmp	.+292    	; 0x493a <main+0x8d2>
    4816:	8b 56       	subi	r24, 0x6B	; 107
    4818:	9c 4f       	sbci	r25, 0xFC	; 252
    481a:	dc 01       	movw	r26, r24
    481c:	8c 91       	ld	r24, X
    481e:	87 fd       	sbrc	r24, 7
    4820:	03 c0       	rjmp	.+6      	; 0x4828 <main+0x7c0>
    4822:	20 35       	cpi	r18, 0x50	; 80
    4824:	09 f0       	breq	.+2      	; 0x4828 <main+0x7c0>
    4826:	89 c0       	rjmp	.+274    	; 0x493a <main+0x8d2>
    4828:	f6 01       	movw	r30, r12
    482a:	e6 0d       	add	r30, r6
    482c:	f7 1d       	adc	r31, r7
    482e:	ed 56       	subi	r30, 0x6D	; 109
    4830:	fc 4f       	sbci	r31, 0xFC	; 252
    4832:	82 81       	ldd	r24, Z+2	; 0x02
    4834:	80 73       	andi	r24, 0x30	; 48
    4836:	09 f0       	breq	.+2      	; 0x483a <main+0x7d2>
    4838:	80 c0       	rjmp	.+256    	; 0x493a <main+0x8d2>
    483a:	d2 01       	movw	r26, r4
    483c:	9c 91       	ld	r25, X
    483e:	9f 73       	andi	r25, 0x3F	; 63
    4840:	80 81       	ld	r24, Z
    4842:	8f 73       	andi	r24, 0x3F	; 63
    4844:	89 17       	cp	r24, r25
    4846:	08 f0       	brcs	.+2      	; 0x484a <main+0x7e2>
    4848:	44 c0       	rjmp	.+136    	; 0x48d2 <main+0x86a>
    484a:	98 1b       	sub	r25, r24
    484c:	89 2f       	mov	r24, r25
    484e:	f2 01       	movw	r30, r4
    4850:	30 81       	ld	r19, Z
    4852:	32 95       	swap	r19
    4854:	36 95       	lsr	r19
    4856:	36 95       	lsr	r19
    4858:	33 70       	andi	r19, 0x03	; 3
    485a:	91 81       	ldd	r25, Z+1	; 0x01
    485c:	9f 70       	andi	r25, 0x0F	; 15
    485e:	99 0f       	add	r25, r25
    4860:	99 0f       	add	r25, r25
    4862:	39 2b       	or	r19, r25
    4864:	f6 01       	movw	r30, r12
    4866:	e6 0d       	add	r30, r6
    4868:	f7 1d       	adc	r31, r7
    486a:	ed 56       	subi	r30, 0x6D	; 109
    486c:	fc 4f       	sbci	r31, 0xFC	; 252
    486e:	90 81       	ld	r25, Z
    4870:	49 2f       	mov	r20, r25
    4872:	42 95       	swap	r20
    4874:	46 95       	lsr	r20
    4876:	46 95       	lsr	r20
    4878:	43 70       	andi	r20, 0x03	; 3
    487a:	91 81       	ldd	r25, Z+1	; 0x01
    487c:	9f 70       	andi	r25, 0x0F	; 15
    487e:	99 0f       	add	r25, r25
    4880:	99 0f       	add	r25, r25
    4882:	94 2b       	or	r25, r20
    4884:	93 17       	cp	r25, r19
    4886:	38 f5       	brcc	.+78     	; 0x48d6 <main+0x86e>
    4888:	39 1b       	sub	r19, r25
    488a:	93 2f       	mov	r25, r19
    488c:	89 0f       	add	r24, r25
    488e:	20 36       	cpi	r18, 0x60	; 96
    4890:	21 f5       	brne	.+72     	; 0x48da <main+0x872>
    4892:	f8 85       	ldd	r31, Y+8	; 0x08
    4894:	8f 17       	cp	r24, r31
    4896:	08 f4       	brcc	.+2      	; 0x489a <main+0x832>
    4898:	88 87       	std	Y+8, r24	; 0x08
    489a:	f6 01       	movw	r30, r12
    489c:	e6 0d       	add	r30, r6
    489e:	f7 1d       	adc	r31, r7
    48a0:	eb 56       	subi	r30, 0x6B	; 107
    48a2:	fc 4f       	sbci	r31, 0xFC	; 252
    48a4:	90 81       	ld	r25, Z
    48a6:	96 ff       	sbrs	r25, 6
    48a8:	2c c0       	rjmp	.+88     	; 0x4902 <main+0x89a>
    48aa:	28 e0       	ldi	r18, 0x08	; 8
    48ac:	30 e0       	ldi	r19, 0x00	; 0
    48ae:	22 c0       	rjmp	.+68     	; 0x48f4 <main+0x88c>
    48b0:	80 91 87 03 	lds	r24, 0x0387	; 0x800387 <State+0x24e>
    48b4:	90 91 88 03 	lds	r25, 0x0388	; 0x800388 <State+0x24f>
    48b8:	20 91 83 03 	lds	r18, 0x0383	; 0x800383 <State+0x24a>
    48bc:	30 91 84 03 	lds	r19, 0x0384	; 0x800384 <State+0x24b>
    48c0:	82 17       	cp	r24, r18
    48c2:	93 07       	cpc	r25, r19
    48c4:	08 f4       	brcc	.+2      	; 0x48c8 <main+0x860>
    48c6:	61 cf       	rjmp	.-318    	; 0x478a <main+0x722>
    48c8:	20 91 85 03 	lds	r18, 0x0385	; 0x800385 <State+0x24c>
    48cc:	30 91 86 03 	lds	r19, 0x0386	; 0x800386 <State+0x24d>
    48d0:	59 cf       	rjmp	.-334    	; 0x4784 <main+0x71c>
    48d2:	89 1b       	sub	r24, r25
    48d4:	bc cf       	rjmp	.-136    	; 0x484e <main+0x7e6>
    48d6:	93 1b       	sub	r25, r19
    48d8:	d9 cf       	rjmp	.-78     	; 0x488c <main+0x824>
    48da:	20 33       	cpi	r18, 0x30	; 48
    48dc:	09 f0       	breq	.+2      	; 0x48e0 <main+0x878>
    48de:	bc c0       	rjmp	.+376    	; 0x4a58 <main+0x9f0>
    48e0:	f6 01       	movw	r30, r12
    48e2:	e6 0d       	add	r30, r6
    48e4:	f7 1d       	adc	r31, r7
    48e6:	eb 56       	subi	r30, 0x6B	; 107
    48e8:	fc 4f       	sbci	r31, 0xFC	; 252
    48ea:	20 81       	ld	r18, Z
    48ec:	2f 70       	andi	r18, 0x0F	; 15
    48ee:	30 e0       	ldi	r19, 0x00	; 0
    48f0:	28 5f       	subi	r18, 0xF8	; 248
    48f2:	3f 4f       	sbci	r19, 0xFF	; 255
    48f4:	28 1b       	sub	r18, r24
    48f6:	31 09       	sbc	r19, r1
    48f8:	12 16       	cp	r1, r18
    48fa:	13 06       	cpc	r1, r19
    48fc:	14 f4       	brge	.+4      	; 0x4902 <main+0x89a>
    48fe:	22 0e       	add	r2, r18
    4900:	33 1e       	adc	r3, r19
    4902:	81 32       	cpi	r24, 0x21	; 33
    4904:	d0 f4       	brcc	.+52     	; 0x493a <main+0x8d2>
    4906:	8c 81       	ldd	r24, Y+4	; 0x04
    4908:	9d 81       	ldd	r25, Y+5	; 0x05
    490a:	0e 94 a4 12 	call	0x2548	; 0x2548 <_Z21GetNumRoadConnectionsP8Building>
    490e:	83 30       	cpi	r24, 0x03	; 3
    4910:	a0 f0       	brcs	.+40     	; 0x493a <main+0x8d2>
    4912:	c6 01       	movw	r24, r12
    4914:	86 0d       	add	r24, r6
    4916:	97 1d       	adc	r25, r7
    4918:	fc 01       	movw	r30, r24
    491a:	ec 56       	subi	r30, 0x6C	; 108
    491c:	fc 4f       	sbci	r31, 0xFC	; 252
    491e:	20 81       	ld	r18, Z
    4920:	22 95       	swap	r18
    4922:	2f 70       	andi	r18, 0x0F	; 15
    4924:	23 30       	cpi	r18, 0x03	; 3
    4926:	09 f4       	brne	.+2      	; 0x492a <main+0x8c2>
    4928:	af c0       	rjmp	.+350    	; 0x4a88 <main+0xa20>
    492a:	08 f0       	brcs	.+2      	; 0x492e <main+0x8c6>
    492c:	9b c0       	rjmp	.+310    	; 0x4a64 <main+0x9fc>
    492e:	21 30       	cpi	r18, 0x01	; 1
    4930:	09 f4       	brne	.+2      	; 0x4934 <main+0x8cc>
    4932:	c8 c0       	rjmp	.+400    	; 0x4ac4 <main+0xa5c>
    4934:	22 30       	cpi	r18, 0x02	; 2
    4936:	09 f4       	brne	.+2      	; 0x493a <main+0x8d2>
    4938:	d6 c0       	rjmp	.+428    	; 0x4ae6 <main+0xa7e>
    493a:	ff ef       	ldi	r31, 0xFF	; 255
    493c:	6f 1a       	sub	r6, r31
    493e:	7f 0a       	sbc	r7, r31
    4940:	2c 81       	ldd	r18, Y+4	; 0x04
    4942:	3d 81       	ldd	r19, Y+5	; 0x05
    4944:	2d 5f       	subi	r18, 0xFD	; 253
    4946:	3f 4f       	sbci	r19, 0xFF	; 255
    4948:	3d 83       	std	Y+5, r19	; 0x05
    494a:	2c 83       	std	Y+4, r18	; 0x04
    494c:	32 e8       	ldi	r19, 0x82	; 130
    494e:	63 16       	cp	r6, r19
    4950:	71 04       	cpc	r7, r1
    4952:	09 f0       	breq	.+2      	; 0x4956 <main+0x8ee>
    4954:	4d cf       	rjmp	.-358    	; 0x47f0 <main+0x788>
    4956:	6c 85       	ldd	r22, Y+12	; 0x0c
    4958:	7d 85       	ldd	r23, Y+13	; 0x0d
    495a:	06 0f       	add	r16, r22
    495c:	17 1f       	adc	r17, r23
    495e:	f4 01       	movw	r30, r8
    4960:	ee 0d       	add	r30, r14
    4962:	ff 1d       	adc	r31, r15
    4964:	ed 56       	subi	r30, 0x6D	; 109
    4966:	fc 4f       	sbci	r31, 0xFC	; 252
    4968:	81 81       	ldd	r24, Z+1	; 0x01
    496a:	80 7f       	andi	r24, 0xF0	; 240
    496c:	80 31       	cpi	r24, 0x10	; 16
    496e:	51 f4       	brne	.+20     	; 0x4984 <main+0x91c>
    4970:	91 01       	movw	r18, r2
    4972:	23 33       	cpi	r18, 0x33	; 51
    4974:	31 05       	cpc	r19, r1
    4976:	14 f0       	brlt	.+4      	; 0x497c <main+0x914>
    4978:	22 e3       	ldi	r18, 0x32	; 50
    497a:	30 e0       	ldi	r19, 0x00	; 0
    497c:	22 0f       	add	r18, r18
    497e:	33 1f       	adc	r19, r19
    4980:	02 1b       	sub	r16, r18
    4982:	13 0b       	sbc	r17, r19
    4984:	f4 01       	movw	r30, r8
    4986:	ee 0d       	add	r30, r14
    4988:	ff 1d       	adc	r31, r15
    498a:	eb 56       	subi	r30, 0x6B	; 107
    498c:	fc 4f       	sbci	r31, 0xFC	; 252
    498e:	40 81       	ld	r20, Z
    4990:	4f 70       	andi	r20, 0x0F	; 15
    4992:	a8 85       	ldd	r26, Y+8	; 0x08
    4994:	a0 51       	subi	r26, 0x10	; 16
    4996:	bb 0b       	sbc	r27, r27
    4998:	4a 9f       	mul	r20, r26
    499a:	90 01       	movw	r18, r0
    499c:	4b 9f       	mul	r20, r27
    499e:	30 0d       	add	r19, r0
    49a0:	11 24       	eor	r1, r1
    49a2:	37 ff       	sbrs	r19, 7
    49a4:	02 c0       	rjmp	.+4      	; 0x49aa <main+0x942>
    49a6:	30 e0       	ldi	r19, 0x00	; 0
    49a8:	20 e0       	ldi	r18, 0x00	; 0
    49aa:	23 33       	cpi	r18, 0x33	; 51
    49ac:	31 05       	cpc	r19, r1
    49ae:	14 f0       	brlt	.+4      	; 0x49b4 <main+0x94c>
    49b0:	22 e3       	ldi	r18, 0x32	; 50
    49b2:	30 e0       	ldi	r19, 0x00	; 0
    49b4:	02 1b       	sub	r16, r18
    49b6:	13 0b       	sbc	r17, r19
    49b8:	f4 01       	movw	r30, r8
    49ba:	ee 0d       	add	r30, r14
    49bc:	ff 1d       	adc	r31, r15
    49be:	ed 56       	subi	r30, 0x6D	; 109
    49c0:	fc 4f       	sbci	r31, 0xFC	; 252
    49c2:	92 81       	ldd	r25, Z+2	; 0x02
    49c4:	9f 70       	andi	r25, 0x0F	; 15
    49c6:	9f 30       	cpi	r25, 0x0F	; 15
    49c8:	39 f0       	breq	.+14     	; 0x49d8 <main+0x970>
    49ca:	81 e0       	ldi	r24, 0x01	; 1
    49cc:	04 31       	cpi	r16, 0x14	; 20
    49ce:	11 05       	cpc	r17, r1
    49d0:	4c f4       	brge	.+18     	; 0x49e4 <main+0x97c>
    49d2:	80 e0       	ldi	r24, 0x00	; 0
    49d4:	99 23       	and	r25, r25
    49d6:	31 f0       	breq	.+12     	; 0x49e4 <main+0x97c>
    49d8:	81 e0       	ldi	r24, 0x01	; 1
    49da:	03 3e       	cpi	r16, 0xE3	; 227
    49dc:	1f 4f       	sbci	r17, 0xFF	; 255
    49de:	0c f0       	brlt	.+2      	; 0x49e2 <main+0x97a>
    49e0:	80 e0       	ldi	r24, 0x00	; 0
    49e2:	81 95       	neg	r24
    49e4:	f4 01       	movw	r30, r8
    49e6:	ee 0d       	add	r30, r14
    49e8:	ff 1d       	adc	r31, r15
    49ea:	ed 56       	subi	r30, 0x6D	; 109
    49ec:	fc 4f       	sbci	r31, 0xFC	; 252
    49ee:	21 e0       	ldi	r18, 0x01	; 1
    49f0:	4d 30       	cpi	r20, 0x0D	; 13
    49f2:	08 f4       	brcc	.+2      	; 0x49f6 <main+0x98e>
    49f4:	20 e0       	ldi	r18, 0x00	; 0
    49f6:	92 81       	ldd	r25, Z+2	; 0x02
    49f8:	20 fb       	bst	r18, 0
    49fa:	96 f9       	bld	r25, 6
    49fc:	92 83       	std	Z+2, r25	; 0x02
    49fe:	94 01       	movw	r18, r8
    4a00:	2e 0d       	add	r18, r14
    4a02:	3f 1d       	adc	r19, r15
    4a04:	f9 01       	movw	r30, r18
    4a06:	ed 56       	subi	r30, 0x6D	; 109
    4a08:	fc 4f       	sbci	r31, 0xFC	; 252
    4a0a:	d9 01       	movw	r26, r18
    4a0c:	ab 56       	subi	r26, 0x6B	; 107
    4a0e:	bc 4f       	sbci	r27, 0xFC	; 252
    4a10:	9c 91       	ld	r25, X
    4a12:	98 0f       	add	r25, r24
    4a14:	49 2f       	mov	r20, r25
    4a16:	4f 70       	andi	r20, 0x0F	; 15
    4a18:	92 81       	ldd	r25, Z+2	; 0x02
    4a1a:	90 7f       	andi	r25, 0xF0	; 240
    4a1c:	94 2b       	or	r25, r20
    4a1e:	92 83       	std	Z+2, r25	; 0x02
    4a20:	2c 56       	subi	r18, 0x6C	; 108
    4a22:	3c 4f       	sbci	r19, 0xFC	; 252
    4a24:	f9 01       	movw	r30, r18
    4a26:	90 81       	ld	r25, Z
    4a28:	92 95       	swap	r25
    4a2a:	9f 70       	andi	r25, 0x0F	; 15
    4a2c:	92 30       	cpi	r25, 0x02	; 2
    4a2e:	09 f4       	brne	.+2      	; 0x4a32 <main+0x9ca>
    4a30:	97 c0       	rjmp	.+302    	; 0x4b60 <main+0xaf8>
    4a32:	93 30       	cpi	r25, 0x03	; 3
    4a34:	09 f4       	brne	.+2      	; 0x4a38 <main+0x9d0>
    4a36:	87 c0       	rjmp	.+270    	; 0x4b46 <main+0xade>
    4a38:	91 30       	cpi	r25, 0x01	; 1
    4a3a:	09 f0       	breq	.+2      	; 0x4a3e <main+0x9d6>
    4a3c:	1a cd       	rjmp	.-1484   	; 0x4472 <main+0x40a>
    4a3e:	20 91 83 03 	lds	r18, 0x0383	; 0x800383 <State+0x24a>
    4a42:	30 91 84 03 	lds	r19, 0x0384	; 0x800384 <State+0x24b>
    4a46:	28 0f       	add	r18, r24
    4a48:	31 1d       	adc	r19, r1
    4a4a:	87 fd       	sbrc	r24, 7
    4a4c:	3a 95       	dec	r19
    4a4e:	30 93 84 03 	sts	0x0384, r19	; 0x800384 <State+0x24b>
    4a52:	20 93 83 03 	sts	0x0383, r18	; 0x800383 <State+0x24a>
    4a56:	0d cd       	rjmp	.-1510   	; 0x4472 <main+0x40a>
    4a58:	20 34       	cpi	r18, 0x40	; 64
    4a5a:	09 f0       	breq	.+2      	; 0x4a5e <main+0x9f6>
    4a5c:	1e cf       	rjmp	.-452    	; 0x489a <main+0x832>
    4a5e:	20 e2       	ldi	r18, 0x20	; 32
    4a60:	30 e0       	ldi	r19, 0x00	; 0
    4a62:	48 cf       	rjmp	.-368    	; 0x48f4 <main+0x88c>
    4a64:	25 30       	cpi	r18, 0x05	; 5
    4a66:	09 f4       	brne	.+2      	; 0x4a6a <main+0xa02>
    4a68:	51 c0       	rjmp	.+162    	; 0x4b0c <main+0xaa4>
    4a6a:	28 30       	cpi	r18, 0x08	; 8
    4a6c:	09 f0       	breq	.+2      	; 0x4a70 <main+0xa08>
    4a6e:	65 cf       	rjmp	.-310    	; 0x493a <main+0x8d2>
    4a70:	d2 01       	movw	r26, r4
    4a72:	11 96       	adiw	r26, 0x01	; 1
    4a74:	8c 91       	ld	r24, X
    4a76:	80 7f       	andi	r24, 0xF0	; 240
    4a78:	80 31       	cpi	r24, 0x10	; 16
    4a7a:	19 f0       	breq	.+6      	; 0x4a82 <main+0xa1a>
    4a7c:	80 32       	cpi	r24, 0x20	; 32
    4a7e:	09 f0       	breq	.+2      	; 0x4a82 <main+0xa1a>
    4a80:	5c cf       	rjmp	.-328    	; 0x493a <main+0x8d2>
    4a82:	0c 59       	subi	r16, 0x9C	; 156
    4a84:	1f 4f       	sbci	r17, 0xFF	; 255
    4a86:	59 cf       	rjmp	.-334    	; 0x493a <main+0x8d2>
    4a88:	8b 56       	subi	r24, 0x6B	; 107
    4a8a:	9c 4f       	sbci	r25, 0xFC	; 252
    4a8c:	dc 01       	movw	r26, r24
    4a8e:	9c 91       	ld	r25, X
    4a90:	9f 70       	andi	r25, 0x0F	; 15
    4a92:	ee 85       	ldd	r30, Y+14	; 0x0e
    4a94:	ff 85       	ldd	r31, Y+15	; 0x0f
    4a96:	80 81       	ld	r24, Z
    4a98:	8f 70       	andi	r24, 0x0F	; 15
    4a9a:	98 17       	cp	r25, r24
    4a9c:	48 f0       	brcs	.+18     	; 0x4ab0 <main+0xa48>
    4a9e:	d2 01       	movw	r26, r4
    4aa0:	11 96       	adiw	r26, 0x01	; 1
    4aa2:	2c 91       	ld	r18, X
    4aa4:	20 7f       	andi	r18, 0xF0	; 240
    4aa6:	20 31       	cpi	r18, 0x10	; 16
    4aa8:	19 f4       	brne	.+6      	; 0x4ab0 <main+0xa48>
    4aaa:	0c 5f       	subi	r16, 0xFC	; 252
    4aac:	1f 4f       	sbci	r17, 0xFF	; 255
    4aae:	45 cf       	rjmp	.-374    	; 0x493a <main+0x8d2>
    4ab0:	89 17       	cp	r24, r25
    4ab2:	08 f0       	brcs	.+2      	; 0x4ab6 <main+0xa4e>
    4ab4:	42 cf       	rjmp	.-380    	; 0x493a <main+0x8d2>
    4ab6:	f2 01       	movw	r30, r4
    4ab8:	81 81       	ldd	r24, Z+1	; 0x01
    4aba:	80 7f       	andi	r24, 0xF0	; 240
    4abc:	80 32       	cpi	r24, 0x20	; 32
    4abe:	09 f0       	breq	.+2      	; 0x4ac2 <main+0xa5a>
    4ac0:	3c cf       	rjmp	.-392    	; 0x493a <main+0x8d2>
    4ac2:	f3 cf       	rjmp	.-26     	; 0x4aaa <main+0xa42>
    4ac4:	8b 56       	subi	r24, 0x6B	; 107
    4ac6:	9c 4f       	sbci	r25, 0xFC	; 252
    4ac8:	dc 01       	movw	r26, r24
    4aca:	9c 91       	ld	r25, X
    4acc:	9f 70       	andi	r25, 0x0F	; 15
    4ace:	ee 85       	ldd	r30, Y+14	; 0x0e
    4ad0:	ff 85       	ldd	r31, Y+15	; 0x0f
    4ad2:	80 81       	ld	r24, Z
    4ad4:	8f 70       	andi	r24, 0x0F	; 15
    4ad6:	89 17       	cp	r24, r25
    4ad8:	08 f0       	brcs	.+2      	; 0x4adc <main+0xa74>
    4ada:	2f cf       	rjmp	.-418    	; 0x493a <main+0x8d2>
    4adc:	d2 01       	movw	r26, r4
    4ade:	11 96       	adiw	r26, 0x01	; 1
    4ae0:	8c 91       	ld	r24, X
    4ae2:	80 7e       	andi	r24, 0xE0	; 224
    4ae4:	eb cf       	rjmp	.-42     	; 0x4abc <main+0xa54>
    4ae6:	8b 56       	subi	r24, 0x6B	; 107
    4ae8:	9c 4f       	sbci	r25, 0xFC	; 252
    4aea:	fc 01       	movw	r30, r24
    4aec:	90 81       	ld	r25, Z
    4aee:	9f 70       	andi	r25, 0x0F	; 15
    4af0:	ae 85       	ldd	r26, Y+14	; 0x0e
    4af2:	bf 85       	ldd	r27, Y+15	; 0x0f
    4af4:	8c 91       	ld	r24, X
    4af6:	8f 70       	andi	r24, 0x0F	; 15
    4af8:	98 17       	cp	r25, r24
    4afa:	08 f4       	brcc	.+2      	; 0x4afe <main+0xa96>
    4afc:	1e cf       	rjmp	.-452    	; 0x493a <main+0x8d2>
    4afe:	f2 01       	movw	r30, r4
    4b00:	81 81       	ldd	r24, Z+1	; 0x01
    4b02:	80 7f       	andi	r24, 0xF0	; 240
    4b04:	80 31       	cpi	r24, 0x10	; 16
    4b06:	09 f0       	breq	.+2      	; 0x4b0a <main+0xaa2>
    4b08:	18 cf       	rjmp	.-464    	; 0x493a <main+0x8d2>
    4b0a:	cf cf       	rjmp	.-98     	; 0x4aaa <main+0xa42>
    4b0c:	f2 01       	movw	r30, r4
    4b0e:	81 81       	ldd	r24, Z+1	; 0x01
    4b10:	80 7f       	andi	r24, 0xF0	; 240
    4b12:	80 31       	cpi	r24, 0x10	; 16
    4b14:	09 f0       	breq	.+2      	; 0x4b18 <main+0xab0>
    4b16:	11 cf       	rjmp	.-478    	; 0x493a <main+0x8d2>
    4b18:	0b 5f       	subi	r16, 0xFB	; 251
    4b1a:	1f 4f       	sbci	r17, 0xFF	; 255
    4b1c:	0e cf       	rjmp	.-484    	; 0x493a <main+0x8d2>
    4b1e:	10 e0       	ldi	r17, 0x00	; 0
    4b20:	00 e0       	ldi	r16, 0x00	; 0
    4b22:	31 2c       	mov	r3, r1
    4b24:	21 2c       	mov	r2, r1
    4b26:	48 e1       	ldi	r20, 0x18	; 24
    4b28:	48 87       	std	Y+8, r20	; 0x08
    4b2a:	15 cf       	rjmp	.-470    	; 0x4956 <main+0x8ee>
    4b2c:	f8 01       	movw	r30, r16
    4b2e:	ed 56       	subi	r30, 0x6D	; 109
    4b30:	fc 4f       	sbci	r31, 0xFC	; 252
    4b32:	82 81       	ldd	r24, Z+2	; 0x02
    4b34:	8f 7b       	andi	r24, 0xBF	; 191
    4b36:	82 83       	std	Z+2, r24	; 0x02
    4b38:	8f 70       	andi	r24, 0x0F	; 15
    4b3a:	91 e0       	ldi	r25, 0x01	; 1
    4b3c:	09 f4       	brne	.+2      	; 0x4b40 <main+0xad8>
    4b3e:	90 e0       	ldi	r25, 0x00	; 0
    4b40:	89 2f       	mov	r24, r25
    4b42:	81 95       	neg	r24
    4b44:	5c cf       	rjmp	.-328    	; 0x49fe <main+0x996>
    4b46:	20 91 85 03 	lds	r18, 0x0385	; 0x800385 <State+0x24c>
    4b4a:	30 91 86 03 	lds	r19, 0x0386	; 0x800386 <State+0x24d>
    4b4e:	28 0f       	add	r18, r24
    4b50:	31 1d       	adc	r19, r1
    4b52:	87 fd       	sbrc	r24, 7
    4b54:	3a 95       	dec	r19
    4b56:	30 93 86 03 	sts	0x0386, r19	; 0x800386 <State+0x24d>
    4b5a:	20 93 85 03 	sts	0x0385, r18	; 0x800385 <State+0x24c>
    4b5e:	89 cc       	rjmp	.-1774   	; 0x4472 <main+0x40a>
    4b60:	20 91 87 03 	lds	r18, 0x0387	; 0x800387 <State+0x24e>
    4b64:	30 91 88 03 	lds	r19, 0x0388	; 0x800388 <State+0x24f>
    4b68:	28 0f       	add	r18, r24
    4b6a:	31 1d       	adc	r19, r1
    4b6c:	87 fd       	sbrc	r24, 7
    4b6e:	3a 95       	dec	r19
    4b70:	30 93 88 03 	sts	0x0388, r19	; 0x800388 <State+0x24f>
    4b74:	20 93 87 03 	sts	0x0387, r18	; 0x800387 <State+0x24e>
    4b78:	7c cc       	rjmp	.-1800   	; 0x4472 <main+0x40a>
    4b7a:	83 38       	cpi	r24, 0x83	; 131
    4b7c:	09 f4       	brne	.+2      	; 0x4b80 <main+0xb18>
    4b7e:	2b c1       	rjmp	.+598    	; 0x4dd6 <main+0xd6e>
    4b80:	84 38       	cpi	r24, 0x84	; 132
    4b82:	09 f4       	brne	.+2      	; 0x4b86 <main+0xb1e>
    4b84:	6a c1       	rjmp	.+724    	; 0x4e5a <main+0xdf2>
    4b86:	82 38       	cpi	r24, 0x82	; 130
    4b88:	09 f0       	breq	.+2      	; 0x4b8c <main+0xb24>
    4b8a:	76 cc       	rjmp	.-1812   	; 0x4478 <main+0x410>
    4b8c:	ea e8       	ldi	r30, 0x8A	; 138
    4b8e:	f5 e0       	ldi	r31, 0x05	; 5
    4b90:	8a ea       	ldi	r24, 0xAA	; 170
    4b92:	96 e0       	ldi	r25, 0x06	; 6
    4b94:	11 92       	st	Z+, r1
    4b96:	8e 17       	cp	r24, r30
    4b98:	9f 07       	cpc	r25, r31
    4b9a:	e1 f7       	brne	.-8      	; 0x4b94 <main+0xb2c>
    4b9c:	d1 2c       	mov	r13, r1
    4b9e:	c1 2c       	mov	r12, r1
    4ba0:	f6 01       	movw	r30, r12
    4ba2:	ee 0f       	add	r30, r30
    4ba4:	ff 1f       	adc	r31, r31
    4ba6:	ec 0d       	add	r30, r12
    4ba8:	fd 1d       	adc	r31, r13
    4baa:	df 01       	movw	r26, r30
    4bac:	ac 56       	subi	r26, 0x6C	; 108
    4bae:	bc 4f       	sbci	r27, 0xFC	; 252
    4bb0:	8c 91       	ld	r24, X
    4bb2:	82 95       	swap	r24
    4bb4:	8f 70       	andi	r24, 0x0F	; 15
    4bb6:	84 30       	cpi	r24, 0x04	; 4
    4bb8:	09 f0       	breq	.+2      	; 0x4bbc <main+0xb54>
    4bba:	40 c0       	rjmp	.+128    	; 0x4c3c <main+0xbd4>
    4bbc:	ed 56       	subi	r30, 0x6D	; 109
    4bbe:	fc 4f       	sbci	r31, 0xFC	; 252
    4bc0:	90 81       	ld	r25, Z
    4bc2:	29 2f       	mov	r18, r25
    4bc4:	22 95       	swap	r18
    4bc6:	26 95       	lsr	r18
    4bc8:	26 95       	lsr	r18
    4bca:	23 70       	andi	r18, 0x03	; 3
    4bcc:	81 81       	ldd	r24, Z+1	; 0x01
    4bce:	8f 70       	andi	r24, 0x0F	; 15
    4bd0:	88 0f       	add	r24, r24
    4bd2:	88 0f       	add	r24, r24
    4bd4:	82 2b       	or	r24, r18
    4bd6:	9f 73       	andi	r25, 0x3F	; 63
    4bd8:	90 93 aa 06 	sts	0x06AA, r25	; 0x8006aa <_ZN12Arduboy2Base7sBufferE+0x120>
    4bdc:	80 93 ab 06 	sts	0x06AB, r24	; 0x8006ab <_ZN12Arduboy2Base7sBufferE+0x121>
    4be0:	3c ea       	ldi	r19, 0xAC	; 172
    4be2:	e3 2e       	mov	r14, r19
    4be4:	36 e0       	ldi	r19, 0x06	; 6
    4be6:	f3 2e       	mov	r15, r19
    4be8:	66 24       	eor	r6, r6
    4bea:	63 94       	inc	r6
    4bec:	57 01       	movw	r10, r14
    4bee:	f2 e0       	ldi	r31, 0x02	; 2
    4bf0:	af 1a       	sub	r10, r31
    4bf2:	b1 08       	sbc	r11, r1
    4bf4:	d5 01       	movw	r26, r10
    4bf6:	7c 90       	ld	r7, X
    4bf8:	6a 94       	dec	r6
    4bfa:	f7 01       	movw	r30, r14
    4bfc:	31 97       	sbiw	r30, 0x01	; 1
    4bfe:	50 80       	ld	r5, Z
    4c00:	10 e0       	ldi	r17, 0x00	; 0
    4c02:	00 e0       	ldi	r16, 0x00	; 0
    4c04:	e5 2c       	mov	r14, r5
    4c06:	05 2c       	mov	r0, r5
    4c08:	00 0c       	add	r0, r0
    4c0a:	ff 08       	sbc	r15, r15
    4c0c:	87 2c       	mov	r8, r7
    4c0e:	91 2c       	mov	r9, r1
    4c10:	57 fc       	sbrc	r5, 7
    4c12:	49 c0       	rjmp	.+146    	; 0x4ca6 <main+0xc3e>
    4c14:	b7 01       	movw	r22, r14
    4c16:	60 1b       	sub	r22, r16
    4c18:	71 0b       	sbc	r23, r17
    4c1a:	c4 01       	movw	r24, r8
    4c1c:	0e 94 80 12 	call	0x2500	; 0x2500 <_Z14GetConnectionsii>
    4c20:	81 ff       	sbrs	r24, 1
    4c22:	41 c0       	rjmp	.+130    	; 0x4ca6 <main+0xc3e>
    4c24:	65 2d       	mov	r22, r5
    4c26:	87 2d       	mov	r24, r7
    4c28:	0e 94 35 12 	call	0x246a	; 0x246a <_Z13IsTilePoweredhh>
    4c2c:	0f 5f       	subi	r16, 0xFF	; 255
    4c2e:	1f 4f       	sbci	r17, 0xFF	; 255
    4c30:	81 11       	cpse	r24, r1
    4c32:	39 c0       	rjmp	.+114    	; 0x4ca6 <main+0xc3e>
    4c34:	5a 94       	dec	r5
    4c36:	ec cf       	rjmp	.-40     	; 0x4c10 <main+0xba8>
    4c38:	61 10       	cpse	r6, r1
    4c3a:	d8 cf       	rjmp	.-80     	; 0x4bec <main+0xb84>
    4c3c:	5f ef       	ldi	r21, 0xFF	; 255
    4c3e:	c5 1a       	sub	r12, r21
    4c40:	d5 0a       	sbc	r13, r21
    4c42:	62 e8       	ldi	r22, 0x82	; 130
    4c44:	c6 16       	cp	r12, r22
    4c46:	d1 04       	cpc	r13, r1
    4c48:	09 f0       	breq	.+2      	; 0x4c4c <main+0xbe4>
    4c4a:	aa cf       	rjmp	.-172    	; 0x4ba0 <main+0xb38>
    4c4c:	f1 2c       	mov	r15, r1
    4c4e:	e1 2c       	mov	r14, r1
    4c50:	87 01       	movw	r16, r14
    4c52:	00 0f       	add	r16, r16
    4c54:	11 1f       	adc	r17, r17
    4c56:	0e 0d       	add	r16, r14
    4c58:	1f 1d       	adc	r17, r15
    4c5a:	f8 01       	movw	r30, r16
    4c5c:	ec 56       	subi	r30, 0x6C	; 108
    4c5e:	fc 4f       	sbci	r31, 0xFC	; 252
    4c60:	80 81       	ld	r24, Z
    4c62:	82 95       	swap	r24
    4c64:	8f 70       	andi	r24, 0x0F	; 15
    4c66:	b9 f0       	breq	.+46     	; 0x4c96 <main+0xc2e>
    4c68:	0d 56       	subi	r16, 0x6D	; 109
    4c6a:	1c 4f       	sbci	r17, 0xFC	; 252
    4c6c:	d8 01       	movw	r26, r16
    4c6e:	8c 91       	ld	r24, X
    4c70:	98 2f       	mov	r25, r24
    4c72:	92 95       	swap	r25
    4c74:	96 95       	lsr	r25
    4c76:	96 95       	lsr	r25
    4c78:	93 70       	andi	r25, 0x03	; 3
    4c7a:	11 96       	adiw	r26, 0x01	; 1
    4c7c:	6c 91       	ld	r22, X
    4c7e:	6f 70       	andi	r22, 0x0F	; 15
    4c80:	66 0f       	add	r22, r22
    4c82:	66 0f       	add	r22, r22
    4c84:	69 2b       	or	r22, r25
    4c86:	8f 73       	andi	r24, 0x3F	; 63
    4c88:	0e 94 35 12 	call	0x246a	; 0x246a <_Z13IsTilePoweredhh>
    4c8c:	f8 01       	movw	r30, r16
    4c8e:	92 81       	ldd	r25, Z+2	; 0x02
    4c90:	80 fb       	bst	r24, 0
    4c92:	97 f9       	bld	r25, 7
    4c94:	92 83       	std	Z+2, r25	; 0x02
    4c96:	ff ef       	ldi	r31, 0xFF	; 255
    4c98:	ef 1a       	sub	r14, r31
    4c9a:	ff 0a       	sbc	r15, r31
    4c9c:	22 e8       	ldi	r18, 0x82	; 130
    4c9e:	e2 16       	cp	r14, r18
    4ca0:	f1 04       	cpc	r15, r1
    4ca2:	b1 f6       	brne	.-84     	; 0x4c50 <main+0xbe8>
    4ca4:	e9 cb       	rjmp	.-2094   	; 0x4478 <main+0x410>
    4ca6:	81 2c       	mov	r8, r1
    4ca8:	1c 82       	std	Y+4, r1	; 0x04
    4caa:	11 e0       	ldi	r17, 0x01	; 1
    4cac:	15 0d       	add	r17, r5
    4cae:	75 01       	movw	r14, r10
    4cb0:	31 2c       	mov	r3, r1
    4cb2:	21 2c       	mov	r2, r1
    4cb4:	a1 2e       	mov	r10, r17
    4cb6:	01 2e       	mov	r0, r17
    4cb8:	00 0c       	add	r0, r0
    4cba:	bb 08       	sbc	r11, r11
    4cbc:	bf 86       	std	Y+15, r11	; 0x0f
    4cbe:	ae 86       	std	Y+14, r10	; 0x0e
    4cc0:	47 2c       	mov	r4, r7
    4cc2:	51 2c       	mov	r5, r1
    4cc4:	92 01       	movw	r18, r4
    4cc6:	21 50       	subi	r18, 0x01	; 1
    4cc8:	31 09       	sbc	r19, r1
    4cca:	39 8b       	std	Y+17, r19	; 0x11
    4ccc:	28 8b       	std	Y+16, r18	; 0x10
    4cce:	99 24       	eor	r9, r9
    4cd0:	9a 94       	dec	r9
    4cd2:	97 0c       	add	r9, r7
    4cd4:	98 86       	std	Y+8, r9	; 0x08
    4cd6:	2e 5f       	subi	r18, 0xFE	; 254
    4cd8:	3f 4f       	sbci	r19, 0xFF	; 255
    4cda:	3b 8b       	std	Y+19, r19	; 0x13
    4cdc:	2a 8b       	std	Y+18, r18	; 0x12
    4cde:	99 24       	eor	r9, r9
    4ce0:	93 94       	inc	r9
    4ce2:	97 0c       	add	r9, r7
    4ce4:	9c 86       	std	Y+12, r9	; 0x0c
    4ce6:	10 33       	cpi	r17, 0x30	; 48
    4ce8:	0c f0       	brlt	.+2      	; 0x4cec <main+0xc84>
    4cea:	a6 cf       	rjmp	.-180    	; 0x4c38 <main+0xbd0>
    4cec:	ae 84       	ldd	r10, Y+14	; 0x0e
    4cee:	bf 84       	ldd	r11, Y+15	; 0x0f
    4cf0:	a2 0c       	add	r10, r2
    4cf2:	b3 1c       	adc	r11, r3
    4cf4:	b5 01       	movw	r22, r10
    4cf6:	c2 01       	movw	r24, r4
    4cf8:	0e 94 80 12 	call	0x2500	; 0x2500 <_Z14GetConnectionsii>
    4cfc:	81 ff       	sbrs	r24, 1
    4cfe:	9c cf       	rjmp	.-200    	; 0x4c38 <main+0xbd0>
    4d00:	61 2f       	mov	r22, r17
    4d02:	87 2d       	mov	r24, r7
    4d04:	0e 94 35 12 	call	0x246a	; 0x246a <_Z13IsTilePoweredhh>
    4d08:	08 2f       	mov	r16, r24
    4d0a:	81 11       	cpse	r24, r1
    4d0c:	95 cf       	rjmp	.-214    	; 0x4c38 <main+0xbd0>
    4d0e:	c2 01       	movw	r24, r4
    4d10:	20 e3       	ldi	r18, 0x30	; 48
    4d12:	12 9f       	mul	r17, r18
    4d14:	80 0d       	add	r24, r0
    4d16:	91 1d       	adc	r25, r1
    4d18:	11 24       	eor	r1, r1
    4d1a:	fc 01       	movw	r30, r24
    4d1c:	23 e0       	ldi	r18, 0x03	; 3
    4d1e:	f5 95       	asr	r31
    4d20:	e7 95       	ror	r30
    4d22:	2a 95       	dec	r18
    4d24:	e1 f7       	brne	.-8      	; 0x4d1e <main+0xcb6>
    4d26:	e6 57       	subi	r30, 0x76	; 118
    4d28:	fa 4f       	sbci	r31, 0xFA	; 250
    4d2a:	87 70       	andi	r24, 0x07	; 7
    4d2c:	99 27       	eor	r25, r25
    4d2e:	21 e0       	ldi	r18, 0x01	; 1
    4d30:	30 e0       	ldi	r19, 0x00	; 0
    4d32:	01 c0       	rjmp	.+2      	; 0x4d36 <main+0xcce>
    4d34:	22 0f       	add	r18, r18
    4d36:	8a 95       	dec	r24
    4d38:	ea f7       	brpl	.-6      	; 0x4d34 <main+0xccc>
    4d3a:	80 81       	ld	r24, Z
    4d3c:	82 2b       	or	r24, r18
    4d3e:	80 83       	st	Z, r24
    4d40:	b5 01       	movw	r22, r10
    4d42:	88 89       	ldd	r24, Y+16	; 0x10
    4d44:	99 89       	ldd	r25, Y+17	; 0x11
    4d46:	0e 94 80 12 	call	0x2500	; 0x2500 <_Z14GetConnectionsii>
    4d4a:	91 2c       	mov	r9, r1
    4d4c:	81 ff       	sbrs	r24, 1
    4d4e:	07 c0       	rjmp	.+14     	; 0x4d5e <main+0xcf6>
    4d50:	61 2f       	mov	r22, r17
    4d52:	88 85       	ldd	r24, Y+8	; 0x08
    4d54:	0e 94 35 12 	call	0x246a	; 0x246a <_Z13IsTilePoweredhh>
    4d58:	99 24       	eor	r9, r9
    4d5a:	93 94       	inc	r9
    4d5c:	98 26       	eor	r9, r24
    4d5e:	3c 81       	ldd	r19, Y+4	; 0x04
    4d60:	31 11       	cpse	r19, r1
    4d62:	28 c0       	rjmp	.+80     	; 0x4db4 <main+0xd4c>
    4d64:	77 20       	and	r7, r7
    4d66:	49 f1       	breq	.+82     	; 0x4dba <main+0xd52>
    4d68:	99 20       	and	r9, r9
    4d6a:	51 f0       	breq	.+20     	; 0x4d80 <main+0xd18>
    4d6c:	e8 85       	ldd	r30, Y+8	; 0x08
    4d6e:	d7 01       	movw	r26, r14
    4d70:	ec 93       	st	X, r30
    4d72:	11 96       	adiw	r26, 0x01	; 1
    4d74:	1c 93       	st	X, r17
    4d76:	63 94       	inc	r6
    4d78:	97 01       	movw	r18, r14
    4d7a:	2e 5f       	subi	r18, 0xFE	; 254
    4d7c:	3f 4f       	sbci	r19, 0xFF	; 255
    4d7e:	79 01       	movw	r14, r18
    4d80:	b5 01       	movw	r22, r10
    4d82:	8a 89       	ldd	r24, Y+18	; 0x12
    4d84:	9b 89       	ldd	r25, Y+19	; 0x13
    4d86:	0e 94 80 12 	call	0x2500	; 0x2500 <_Z14GetConnectionsii>
    4d8a:	81 ff       	sbrs	r24, 1
    4d8c:	f1 c6       	rjmp	.+3554   	; 0x5b70 <main+0x1b08>
    4d8e:	61 2f       	mov	r22, r17
    4d90:	8c 85       	ldd	r24, Y+12	; 0x0c
    4d92:	0e 94 35 12 	call	0x246a	; 0x246a <_Z13IsTilePoweredhh>
    4d96:	81 11       	cpse	r24, r1
    4d98:	eb c6       	rjmp	.+3542   	; 0x5b70 <main+0x1b08>
    4d9a:	88 20       	and	r8, r8
    4d9c:	81 f0       	breq	.+32     	; 0x4dbe <main+0xd56>
    4d9e:	08 2d       	mov	r16, r8
    4da0:	3e e2       	ldi	r19, 0x2E	; 46
    4da2:	37 15       	cp	r19, r7
    4da4:	b0 f0       	brcs	.+44     	; 0x4dd2 <main+0xd6a>
    4da6:	4f ef       	ldi	r20, 0xFF	; 255
    4da8:	24 1a       	sub	r2, r20
    4daa:	34 0a       	sbc	r3, r20
    4dac:	1f 5f       	subi	r17, 0xFF	; 255
    4dae:	80 2e       	mov	r8, r16
    4db0:	9c 82       	std	Y+4, r9	; 0x04
    4db2:	99 cf       	rjmp	.-206    	; 0x4ce6 <main+0xc7e>
    4db4:	31 e0       	ldi	r19, 0x01	; 1
    4db6:	73 12       	cpse	r7, r19
    4db8:	e3 cf       	rjmp	.-58     	; 0x4d80 <main+0xd18>
    4dba:	91 2c       	mov	r9, r1
    4dbc:	e1 cf       	rjmp	.-62     	; 0x4d80 <main+0xd18>
    4dbe:	8c 84       	ldd	r8, Y+12	; 0x0c
    4dc0:	d7 01       	movw	r26, r14
    4dc2:	8c 92       	st	X, r8
    4dc4:	11 96       	adiw	r26, 0x01	; 1
    4dc6:	1c 93       	st	X, r17
    4dc8:	63 94       	inc	r6
    4dca:	97 01       	movw	r18, r14
    4dcc:	2e 5f       	subi	r18, 0xFE	; 254
    4dce:	3f 4f       	sbci	r19, 0xFF	; 255
    4dd0:	79 01       	movw	r14, r18
    4dd2:	01 e0       	ldi	r16, 0x01	; 1
    4dd4:	e8 cf       	rjmp	.-48     	; 0x4da6 <main+0xd3e>
    4dd6:	50 e0       	ldi	r21, 0x00	; 0
    4dd8:	40 e0       	ldi	r20, 0x00	; 0
    4dda:	70 e0       	ldi	r23, 0x00	; 0
    4ddc:	60 e0       	ldi	r22, 0x00	; 0
    4dde:	f0 e0       	ldi	r31, 0x00	; 0
    4de0:	e0 e0       	ldi	r30, 0x00	; 0
    4de2:	30 e0       	ldi	r19, 0x00	; 0
    4de4:	20 e0       	ldi	r18, 0x00	; 0
    4de6:	c9 01       	movw	r24, r18
    4de8:	88 0f       	add	r24, r24
    4dea:	99 1f       	adc	r25, r25
    4dec:	82 0f       	add	r24, r18
    4dee:	93 1f       	adc	r25, r19
    4df0:	dc 01       	movw	r26, r24
    4df2:	ac 56       	subi	r26, 0x6C	; 108
    4df4:	bc 4f       	sbci	r27, 0xFC	; 252
    4df6:	ac 91       	ld	r26, X
    4df8:	a2 95       	swap	r26
    4dfa:	af 70       	andi	r26, 0x0F	; 15
    4dfc:	a2 30       	cpi	r26, 0x02	; 2
    4dfe:	29 f1       	breq	.+74     	; 0x4e4a <main+0xde2>
    4e00:	a3 30       	cpi	r26, 0x03	; 3
    4e02:	d9 f0       	breq	.+54     	; 0x4e3a <main+0xdd2>
    4e04:	a1 30       	cpi	r26, 0x01	; 1
    4e06:	39 f4       	brne	.+14     	; 0x4e16 <main+0xdae>
    4e08:	8b 56       	subi	r24, 0x6B	; 107
    4e0a:	9c 4f       	sbci	r25, 0xFC	; 252
    4e0c:	dc 01       	movw	r26, r24
    4e0e:	8c 91       	ld	r24, X
    4e10:	8f 70       	andi	r24, 0x0F	; 15
    4e12:	48 0f       	add	r20, r24
    4e14:	51 1d       	adc	r21, r1
    4e16:	2f 5f       	subi	r18, 0xFF	; 255
    4e18:	3f 4f       	sbci	r19, 0xFF	; 255
    4e1a:	22 38       	cpi	r18, 0x82	; 130
    4e1c:	31 05       	cpc	r19, r1
    4e1e:	19 f7       	brne	.-58     	; 0x4de6 <main+0xd7e>
    4e20:	f0 93 86 03 	sts	0x0386, r31	; 0x800386 <State+0x24d>
    4e24:	e0 93 85 03 	sts	0x0385, r30	; 0x800385 <State+0x24c>
    4e28:	70 93 88 03 	sts	0x0388, r23	; 0x800388 <State+0x24f>
    4e2c:	60 93 87 03 	sts	0x0387, r22	; 0x800387 <State+0x24e>
    4e30:	50 93 84 03 	sts	0x0384, r21	; 0x800384 <State+0x24b>
    4e34:	40 93 83 03 	sts	0x0383, r20	; 0x800383 <State+0x24a>
    4e38:	1f cb       	rjmp	.-2498   	; 0x4478 <main+0x410>
    4e3a:	8b 56       	subi	r24, 0x6B	; 107
    4e3c:	9c 4f       	sbci	r25, 0xFC	; 252
    4e3e:	dc 01       	movw	r26, r24
    4e40:	8c 91       	ld	r24, X
    4e42:	8f 70       	andi	r24, 0x0F	; 15
    4e44:	e8 0f       	add	r30, r24
    4e46:	f1 1d       	adc	r31, r1
    4e48:	e6 cf       	rjmp	.-52     	; 0x4e16 <main+0xdae>
    4e4a:	8b 56       	subi	r24, 0x6B	; 107
    4e4c:	9c 4f       	sbci	r25, 0xFC	; 252
    4e4e:	dc 01       	movw	r26, r24
    4e50:	8c 91       	ld	r24, X
    4e52:	8f 70       	andi	r24, 0x0F	; 15
    4e54:	68 0f       	add	r22, r24
    4e56:	71 1d       	adc	r23, r1
    4e58:	de cf       	rjmp	.-68     	; 0x4e16 <main+0xdae>
    4e5a:	10 92 3c 01 	sts	0x013C, r1	; 0x80013c <State+0x3>
    4e5e:	80 91 3b 01 	lds	r24, 0x013B	; 0x80013b <State+0x2>
    4e62:	8f 5f       	subi	r24, 0xFF	; 255
    4e64:	80 93 3b 01 	sts	0x013B, r24	; 0x80013b <State+0x2>
    4e68:	8c 30       	cpi	r24, 0x0C	; 12
    4e6a:	08 f4       	brcc	.+2      	; 0x4e6e <main+0xe06>
    4e6c:	e1 c0       	rjmp	.+450    	; 0x5030 <main+0xfc8>
    4e6e:	10 92 3b 01 	sts	0x013B, r1	; 0x80013b <State+0x2>
    4e72:	80 91 39 01 	lds	r24, 0x0139	; 0x800139 <State>
    4e76:	90 91 3a 01 	lds	r25, 0x013A	; 0x80013a <State+0x1>
    4e7a:	01 96       	adiw	r24, 0x01	; 1
    4e7c:	90 93 3a 01 	sts	0x013A, r25	; 0x80013a <State+0x1>
    4e80:	80 93 39 01 	sts	0x0139, r24	; 0x800139 <State>
    4e84:	80 91 83 03 	lds	r24, 0x0383	; 0x800383 <State+0x24a>
    4e88:	90 91 84 03 	lds	r25, 0x0384	; 0x800384 <State+0x24b>
    4e8c:	88 0f       	add	r24, r24
    4e8e:	99 1f       	adc	r25, r25
    4e90:	20 91 87 03 	lds	r18, 0x0387	; 0x800387 <State+0x24e>
    4e94:	30 91 88 03 	lds	r19, 0x0388	; 0x800388 <State+0x24f>
    4e98:	82 0f       	add	r24, r18
    4e9a:	93 1f       	adc	r25, r19
    4e9c:	41 e1       	ldi	r20, 0x11	; 17
    4e9e:	48 9f       	mul	r20, r24
    4ea0:	90 01       	movw	r18, r0
    4ea2:	49 9f       	mul	r20, r25
    4ea4:	30 0d       	add	r19, r0
    4ea6:	11 24       	eor	r1, r1
    4ea8:	a0 91 82 03 	lds	r26, 0x0382	; 0x800382 <State+0x249>
    4eac:	b0 e0       	ldi	r27, 0x00	; 0
    4eae:	0e 94 1c 2e 	call	0x5c38	; 0x5c38 <__umulhisi3>
    4eb2:	24 e6       	ldi	r18, 0x64	; 100
    4eb4:	30 e0       	ldi	r19, 0x00	; 0
    4eb6:	40 e0       	ldi	r20, 0x00	; 0
    4eb8:	50 e0       	ldi	r21, 0x00	; 0
    4eba:	0e 94 db 2d 	call	0x5bb6	; 0x5bb6 <__divmodsi4>
    4ebe:	29 01       	movw	r4, r18
    4ec0:	3a 01       	movw	r6, r20
    4ec2:	40 92 89 03 	sts	0x0389, r4	; 0x800389 <State+0x250>
    4ec6:	50 92 8a 03 	sts	0x038A, r5	; 0x80038a <State+0x251>
    4eca:	60 92 8b 03 	sts	0x038B, r6	; 0x80038b <State+0x252>
    4ece:	70 92 8c 03 	sts	0x038C, r7	; 0x80038c <State+0x253>
    4ed2:	c0 90 3d 01 	lds	r12, 0x013D	; 0x80013d <State+0x4>
    4ed6:	d0 90 3e 01 	lds	r13, 0x013E	; 0x80013e <State+0x5>
    4eda:	e0 90 3f 01 	lds	r14, 0x013F	; 0x80013f <State+0x6>
    4ede:	f0 90 40 01 	lds	r15, 0x0140	; 0x800140 <State+0x7>
    4ee2:	c4 0c       	add	r12, r4
    4ee4:	d5 1c       	adc	r13, r5
    4ee6:	e6 1c       	adc	r14, r6
    4ee8:	f7 1c       	adc	r15, r7
    4eea:	30 e0       	ldi	r19, 0x00	; 0
    4eec:	20 e0       	ldi	r18, 0x00	; 0
    4eee:	90 e0       	ldi	r25, 0x00	; 0
    4ef0:	80 e0       	ldi	r24, 0x00	; 0
    4ef2:	fc 01       	movw	r30, r24
    4ef4:	ee 0f       	add	r30, r30
    4ef6:	ff 1f       	adc	r31, r31
    4ef8:	e8 0f       	add	r30, r24
    4efa:	f9 1f       	adc	r31, r25
    4efc:	ec 56       	subi	r30, 0x6C	; 108
    4efe:	fc 4f       	sbci	r31, 0xFC	; 252
    4f00:	40 81       	ld	r20, Z
    4f02:	42 95       	swap	r20
    4f04:	4f 70       	andi	r20, 0x0F	; 15
    4f06:	46 30       	cpi	r20, 0x06	; 6
    4f08:	09 f0       	breq	.+2      	; 0x4f0c <main+0xea4>
    4f0a:	1d c1       	rjmp	.+570    	; 0x5146 <main+0x10de>
    4f0c:	2f 5f       	subi	r18, 0xFF	; 255
    4f0e:	01 96       	adiw	r24, 0x01	; 1
    4f10:	82 38       	cpi	r24, 0x82	; 130
    4f12:	91 05       	cpc	r25, r1
    4f14:	71 f7       	brne	.-36     	; 0x4ef2 <main+0xe8a>
    4f16:	30 93 8e 03 	sts	0x038E, r19	; 0x80038e <State+0x255>
    4f1a:	20 93 8d 03 	sts	0x038D, r18	; 0x80038d <State+0x254>
    4f1e:	44 e6       	ldi	r20, 0x64	; 100
    4f20:	34 9f       	mul	r19, r20
    4f22:	c0 01       	movw	r24, r0
    4f24:	11 24       	eor	r1, r1
    4f26:	4c 01       	movw	r8, r24
    4f28:	99 0f       	add	r25, r25
    4f2a:	aa 08       	sbc	r10, r10
    4f2c:	bb 08       	sbc	r11, r11
    4f2e:	8c 82       	std	Y+4, r8	; 0x04
    4f30:	9d 82       	std	Y+5, r9	; 0x05
    4f32:	ae 82       	std	Y+6, r10	; 0x06
    4f34:	bf 82       	std	Y+7, r11	; 0x07
    4f36:	24 9f       	mul	r18, r20
    4f38:	90 01       	movw	r18, r0
    4f3a:	11 24       	eor	r1, r1
    4f3c:	49 01       	movw	r8, r18
    4f3e:	33 0f       	add	r19, r19
    4f40:	aa 08       	sbc	r10, r10
    4f42:	bb 08       	sbc	r11, r11
    4f44:	88 86       	std	Y+8, r8	; 0x08
    4f46:	99 86       	std	Y+9, r9	; 0x09
    4f48:	aa 86       	std	Y+10, r10	; 0x0a
    4f4a:	bb 86       	std	Y+11, r11	; 0x0b
    4f4c:	8c 80       	ldd	r8, Y+4	; 0x04
    4f4e:	9d 80       	ldd	r9, Y+5	; 0x05
    4f50:	ae 80       	ldd	r10, Y+6	; 0x06
    4f52:	bf 80       	ldd	r11, Y+7	; 0x07
    4f54:	c8 18       	sub	r12, r8
    4f56:	d9 08       	sbc	r13, r9
    4f58:	ea 08       	sbc	r14, r10
    4f5a:	fb 08       	sbc	r15, r11
    4f5c:	88 84       	ldd	r8, Y+8	; 0x08
    4f5e:	99 84       	ldd	r9, Y+9	; 0x09
    4f60:	aa 84       	ldd	r10, Y+10	; 0x0a
    4f62:	bb 84       	ldd	r11, Y+11	; 0x0b
    4f64:	c8 18       	sub	r12, r8
    4f66:	d9 08       	sbc	r13, r9
    4f68:	ea 08       	sbc	r14, r10
    4f6a:	fb 08       	sbc	r15, r11
    4f6c:	c0 92 3d 01 	sts	0x013D, r12	; 0x80013d <State+0x4>
    4f70:	d0 92 3e 01 	sts	0x013E, r13	; 0x80013e <State+0x5>
    4f74:	e0 92 3f 01 	sts	0x013F, r14	; 0x80013f <State+0x6>
    4f78:	f0 92 40 01 	sts	0x0140, r15	; 0x800140 <State+0x7>
    4f7c:	91 2c       	mov	r9, r1
    4f7e:	81 2c       	mov	r8, r1
    4f80:	10 e0       	ldi	r17, 0x00	; 0
    4f82:	00 e0       	ldi	r16, 0x00	; 0
    4f84:	b1 2c       	mov	r11, r1
    4f86:	a1 2c       	mov	r10, r1
    4f88:	b8 01       	movw	r22, r16
    4f8a:	c5 01       	movw	r24, r10
    4f8c:	0e 94 80 12 	call	0x2500	; 0x2500 <_Z14GetConnectionsii>
    4f90:	80 ff       	sbrs	r24, 0
    4f92:	03 c0       	rjmp	.+6      	; 0x4f9a <main+0xf32>
    4f94:	2f ef       	ldi	r18, 0xFF	; 255
    4f96:	82 1a       	sub	r8, r18
    4f98:	92 0a       	sbc	r9, r18
    4f9a:	3f ef       	ldi	r19, 0xFF	; 255
    4f9c:	a3 1a       	sub	r10, r19
    4f9e:	b3 0a       	sbc	r11, r19
    4fa0:	40 e3       	ldi	r20, 0x30	; 48
    4fa2:	a4 16       	cp	r10, r20
    4fa4:	b1 04       	cpc	r11, r1
    4fa6:	81 f7       	brne	.-32     	; 0x4f88 <main+0xf20>
    4fa8:	0f 5f       	subi	r16, 0xFF	; 255
    4faa:	1f 4f       	sbci	r17, 0xFF	; 255
    4fac:	00 33       	cpi	r16, 0x30	; 48
    4fae:	11 05       	cpc	r17, r1
    4fb0:	49 f7       	brne	.-46     	; 0x4f84 <main+0xf1c>
    4fb2:	c4 01       	movw	r24, r8
    4fb4:	6a e0       	ldi	r22, 0x0A	; 10
    4fb6:	70 e0       	ldi	r23, 0x00	; 0
    4fb8:	0e 94 3f 2e 	call	0x5c7e	; 0x5c7e <__divmodhi4>
    4fbc:	70 93 90 03 	sts	0x0390, r23	; 0x800390 <State+0x257>
    4fc0:	60 93 8f 03 	sts	0x038F, r22	; 0x80038f <State+0x256>
    4fc4:	cb 01       	movw	r24, r22
    4fc6:	b0 e0       	ldi	r27, 0x00	; 0
    4fc8:	a0 e0       	ldi	r26, 0x00	; 0
    4fca:	c8 1a       	sub	r12, r24
    4fcc:	d9 0a       	sbc	r13, r25
    4fce:	ea 0a       	sbc	r14, r26
    4fd0:	fb 0a       	sbc	r15, r27
    4fd2:	c0 92 3d 01 	sts	0x013D, r12	; 0x80013d <State+0x4>
    4fd6:	d0 92 3e 01 	sts	0x013E, r13	; 0x80013e <State+0x5>
    4fda:	e0 92 3f 01 	sts	0x013F, r14	; 0x80013f <State+0x6>
    4fde:	f0 92 40 01 	sts	0x0140, r15	; 0x800140 <State+0x7>
    4fe2:	48 1a       	sub	r4, r24
    4fe4:	59 0a       	sbc	r5, r25
    4fe6:	6a 0a       	sbc	r6, r26
    4fe8:	7b 0a       	sbc	r7, r27
    4fea:	88 84       	ldd	r8, Y+8	; 0x08
    4fec:	99 84       	ldd	r9, Y+9	; 0x09
    4fee:	aa 84       	ldd	r10, Y+10	; 0x0a
    4ff0:	bb 84       	ldd	r11, Y+11	; 0x0b
    4ff2:	48 18       	sub	r4, r8
    4ff4:	59 08       	sbc	r5, r9
    4ff6:	6a 08       	sbc	r6, r10
    4ff8:	7b 08       	sbc	r7, r11
    4ffa:	8c 80       	ldd	r8, Y+4	; 0x04
    4ffc:	9d 80       	ldd	r9, Y+5	; 0x05
    4ffe:	ae 80       	ldd	r10, Y+6	; 0x06
    5000:	bf 80       	ldd	r11, Y+7	; 0x07
    5002:	48 18       	sub	r4, r8
    5004:	59 08       	sbc	r5, r9
    5006:	6a 08       	sbc	r6, r10
    5008:	7b 08       	sbc	r7, r11
    500a:	80 91 23 05 	lds	r24, 0x0523	; 0x800523 <UIState+0x9>
    500e:	80 ff       	sbrs	r24, 0
    5010:	0a c0       	rjmp	.+20     	; 0x5026 <main+0xfbe>
    5012:	14 14       	cp	r1, r4
    5014:	15 04       	cpc	r1, r5
    5016:	16 04       	cpc	r1, r6
    5018:	17 04       	cpc	r1, r7
    501a:	2c f4       	brge	.+10     	; 0x5026 <main+0xfbe>
    501c:	1c 14       	cp	r1, r12
    501e:	1d 04       	cpc	r1, r13
    5020:	1e 04       	cpc	r1, r14
    5022:	1f 04       	cpc	r1, r15
    5024:	2c f0       	brlt	.+10     	; 0x5030 <main+0xfc8>
    5026:	86 e0       	ldi	r24, 0x06	; 6
    5028:	80 93 22 05 	sts	0x0522, r24	; 0x800522 <UIState+0x8>
    502c:	10 92 21 05 	sts	0x0521, r1	; 0x800521 <UIState+0x7>
    5030:	80 91 22 05 	lds	r24, 0x0522	; 0x800522 <UIState+0x8>
    5034:	83 30       	cpi	r24, 0x03	; 3
    5036:	39 f4       	brne	.+14     	; 0x5046 <main+0xfde>
    5038:	80 91 21 05 	lds	r24, 0x0521	; 0x800521 <UIState+0x7>
    503c:	81 11       	cpse	r24, r1
    503e:	8d c0       	rjmp	.+282    	; 0x515a <main+0x10f2>
    5040:	82 e0       	ldi	r24, 0x02	; 2
    5042:	80 93 22 05 	sts	0x0522, r24	; 0x800522 <UIState+0x8>
    5046:	88 e0       	ldi	r24, 0x08	; 8
    5048:	0e 94 1a 0c 	call	0x1834	; 0x1834 <_ZN12Arduboy2Base7pressedEh>
    504c:	10 e0       	ldi	r17, 0x00	; 0
    504e:	81 11       	cpse	r24, r1
    5050:	10 e1       	ldi	r17, 0x10	; 16
    5052:	84 e0       	ldi	r24, 0x04	; 4
    5054:	0e 94 1a 0c 	call	0x1834	; 0x1834 <_ZN12Arduboy2Base7pressedEh>
    5058:	81 11       	cpse	r24, r1
    505a:	10 62       	ori	r17, 0x20	; 32
    505c:	80 e8       	ldi	r24, 0x80	; 128
    505e:	0e 94 1a 0c 	call	0x1834	; 0x1834 <_ZN12Arduboy2Base7pressedEh>
    5062:	81 11       	cpse	r24, r1
    5064:	14 60       	ori	r17, 0x04	; 4
    5066:	80 e1       	ldi	r24, 0x10	; 16
    5068:	0e 94 1a 0c 	call	0x1834	; 0x1834 <_ZN12Arduboy2Base7pressedEh>
    506c:	81 11       	cpse	r24, r1
    506e:	18 60       	ori	r17, 0x08	; 8
    5070:	80 e2       	ldi	r24, 0x20	; 32
    5072:	0e 94 1a 0c 	call	0x1834	; 0x1834 <_ZN12Arduboy2Base7pressedEh>
    5076:	81 11       	cpse	r24, r1
    5078:	11 60       	ori	r17, 0x01	; 1
    507a:	80 e4       	ldi	r24, 0x40	; 64
    507c:	0e 94 1a 0c 	call	0x1834	; 0x1834 <_ZN12Arduboy2Base7pressedEh>
    5080:	81 11       	cpse	r24, r1
    5082:	12 60       	ori	r17, 0x02	; 2
    5084:	80 91 38 01 	lds	r24, 0x0138	; 0x800138 <_ZL9LastInput>
    5088:	81 17       	cp	r24, r17
    508a:	09 f4       	brne	.+2      	; 0x508e <main+0x1026>
    508c:	6a c0       	rjmp	.+212    	; 0x5162 <main+0x10fa>
    508e:	10 92 37 01 	sts	0x0137, r1	; 0x800137 <_ZL18InputRepeatCounter>
    5092:	80 95       	com	r24
    5094:	81 23       	and	r24, r17
    5096:	19 f0       	breq	.+6      	; 0x509e <main+0x1036>
    5098:	81 2f       	mov	r24, r17
    509a:	0e 94 f4 18 	call	0x31e8	; 0x31e8 <_Z11HandleInputh>
    509e:	10 93 38 01 	sts	0x0138, r17	; 0x800138 <_ZL9LastInput>
    50a2:	80 90 1e 05 	lds	r8, 0x051E	; 0x80051e <UIState+0x4>
    50a6:	8e 86       	std	Y+14, r8	; 0x0e
    50a8:	28 e0       	ldi	r18, 0x08	; 8
    50aa:	82 9e       	mul	r8, r18
    50ac:	a0 01       	movw	r20, r0
    50ae:	11 24       	eor	r1, r1
    50b0:	4c 53       	subi	r20, 0x3C	; 60
    50b2:	51 09       	sbc	r21, r1
    50b4:	80 90 1f 05 	lds	r8, 0x051F	; 0x80051f <UIState+0x5>
    50b8:	88 8a       	std	Y+16, r8	; 0x10
    50ba:	68 e0       	ldi	r22, 0x08	; 8
    50bc:	86 9e       	mul	r8, r22
    50be:	90 01       	movw	r18, r0
    50c0:	11 24       	eor	r1, r1
    50c2:	2c 51       	subi	r18, 0x1C	; 28
    50c4:	31 09       	sbc	r19, r1
    50c6:	80 91 1a 05 	lds	r24, 0x051A	; 0x80051a <UIState>
    50ca:	90 91 1b 05 	lds	r25, 0x051B	; 0x80051b <UIState+0x1>
    50ce:	da 01       	movw	r26, r20
    50d0:	a8 1b       	sub	r26, r24
    50d2:	b9 0b       	sbc	r27, r25
    50d4:	cd 01       	movw	r24, r26
    50d6:	b7 fd       	sbrc	r27, 7
    50d8:	01 96       	adiw	r24, 0x01	; 1
    50da:	95 95       	asr	r25
    50dc:	87 95       	ror	r24
    50de:	4a 01       	movw	r8, r20
    50e0:	88 1a       	sub	r8, r24
    50e2:	99 0a       	sbc	r9, r25
    50e4:	99 86       	std	Y+9, r9	; 0x09
    50e6:	88 86       	std	Y+8, r8	; 0x08
    50e8:	90 92 1b 05 	sts	0x051B, r9	; 0x80051b <UIState+0x1>
    50ec:	80 92 1a 05 	sts	0x051A, r8	; 0x80051a <UIState>
    50f0:	80 91 1c 05 	lds	r24, 0x051C	; 0x80051c <UIState+0x2>
    50f4:	90 91 1d 05 	lds	r25, 0x051D	; 0x80051d <UIState+0x3>
    50f8:	59 01       	movw	r10, r18
    50fa:	a8 1a       	sub	r10, r24
    50fc:	b9 0a       	sbc	r11, r25
    50fe:	c5 01       	movw	r24, r10
    5100:	b7 fc       	sbrc	r11, 7
    5102:	01 96       	adiw	r24, 0x01	; 1
    5104:	95 95       	asr	r25
    5106:	87 95       	ror	r24
    5108:	29 01       	movw	r4, r18
    510a:	48 1a       	sub	r4, r24
    510c:	59 0a       	sbc	r5, r25
    510e:	50 92 1d 05 	sts	0x051D, r5	; 0x80051d <UIState+0x3>
    5112:	40 92 1c 05 	sts	0x051C, r4	; 0x80051c <UIState+0x2>
    5116:	b0 90 22 05 	lds	r11, 0x0522	; 0x800522 <UIState+0x8>
    511a:	bc 82       	std	Y+4, r11	; 0x04
    511c:	2b 2d       	mov	r18, r11
    511e:	25 30       	cpi	r18, 0x05	; 5
    5120:	88 f5       	brcc	.+98     	; 0x5184 <main+0x111c>
    5122:	22 30       	cpi	r18, 0x02	; 2
    5124:	08 f0       	brcs	.+2      	; 0x5128 <main+0x10c0>
    5126:	6c c1       	rjmp	.+728    	; 0x5400 <main+0x1398>
    5128:	bb 20       	and	r11, r11
    512a:	09 f4       	brne	.+2      	; 0x512e <main+0x10c6>
    512c:	ec c0       	rjmp	.+472    	; 0x5306 <main+0x129e>
    512e:	21 30       	cpi	r18, 0x01	; 1
    5130:	09 f4       	brne	.+2      	; 0x5134 <main+0x10cc>
    5132:	20 c1       	rjmp	.+576    	; 0x5374 <main+0x130c>
    5134:	80 91 19 05 	lds	r24, 0x0519	; 0x800519 <AnimationFrame>
    5138:	8f 5f       	subi	r24, 0xFF	; 255
    513a:	80 93 19 05 	sts	0x0519, r24	; 0x800519 <AnimationFrame>
  paintScreen(sBuffer);
}

void Arduboy2Base::display(bool clear)
{
  paintScreen(sBuffer, clear);
    513e:	80 e0       	ldi	r24, 0x00	; 0
    5140:	0e 94 c5 09 	call	0x138a	; 0x138a <_ZN12Arduboy2Core11paintScreenEPhb.constprop.13>
    5144:	02 c9       	rjmp	.-3580   	; 0x434a <main+0x2e2>
    5146:	47 30       	cpi	r20, 0x07	; 7
    5148:	09 f0       	breq	.+2      	; 0x514c <main+0x10e4>
    514a:	e1 ce       	rjmp	.-574    	; 0x4f0e <main+0xea6>
    514c:	3f 5f       	subi	r19, 0xFF	; 255
    514e:	df ce       	rjmp	.-578    	; 0x4f0e <main+0xea6>
    5150:	01 50       	subi	r16, 0x01	; 1
    5152:	11 09       	sbc	r17, r1
    5154:	09 f0       	breq	.+2      	; 0x5158 <main+0x10f0>
    5156:	a3 c9       	rjmp	.-3258   	; 0x449e <main+0x436>
    5158:	fe c9       	rjmp	.-3076   	; 0x4556 <main+0x4ee>
    515a:	81 50       	subi	r24, 0x01	; 1
    515c:	80 93 21 05 	sts	0x0521, r24	; 0x800521 <UIState+0x7>
    5160:	72 cf       	rjmp	.-284    	; 0x5046 <main+0xfde>
    5162:	80 91 37 01 	lds	r24, 0x0137	; 0x800137 <_ZL18InputRepeatCounter>
    5166:	8f 5f       	subi	r24, 0xFF	; 255
    5168:	80 93 37 01 	sts	0x0137, r24	; 0x800137 <_ZL18InputRepeatCounter>
    516c:	8b 30       	cpi	r24, 0x0B	; 11
    516e:	08 f4       	brcc	.+2      	; 0x5172 <main+0x110a>
    5170:	96 cf       	rjmp	.-212    	; 0x509e <main+0x1036>
    5172:	81 2f       	mov	r24, r17
    5174:	0e 94 f4 18 	call	0x31e8	; 0x31e8 <_Z11HandleInputh>
    5178:	80 91 37 01 	lds	r24, 0x0137	; 0x800137 <_ZL18InputRepeatCounter>
    517c:	82 50       	subi	r24, 0x02	; 2
    517e:	80 93 37 01 	sts	0x0137, r24	; 0x800137 <_ZL18InputRepeatCounter>
    5182:	8d cf       	rjmp	.-230    	; 0x509e <main+0x1036>
    5184:	3c 81       	ldd	r19, Y+4	; 0x04
    5186:	35 30       	cpi	r19, 0x05	; 5
    5188:	09 f4       	brne	.+2      	; 0x518c <main+0x1124>
    518a:	aa c4       	rjmp	.+2388   	; 0x5ae0 <main+0x1a78>
    518c:	36 30       	cpi	r19, 0x06	; 6
    518e:	91 f6       	brne	.-92     	; 0x5134 <main+0x10cc>
    5190:	00 e0       	ldi	r16, 0x00	; 0
    5192:	28 e3       	ldi	r18, 0x38	; 56
    5194:	44 e6       	ldi	r20, 0x64	; 100
    5196:	65 e0       	ldi	r22, 0x05	; 5
    5198:	8f e0       	ldi	r24, 0x0F	; 15
    519a:	0e 94 37 10 	call	0x206e	; 0x206e <_Z8DrawRecthhhhh>
    519e:	01 e0       	ldi	r16, 0x01	; 1
    51a0:	28 e3       	ldi	r18, 0x38	; 56
    51a2:	44 e6       	ldi	r20, 0x64	; 100
    51a4:	64 e0       	ldi	r22, 0x04	; 4
    51a6:	8e e0       	ldi	r24, 0x0E	; 14
    51a8:	0e 94 a1 10 	call	0x2142	; 0x2142 <_Z14DrawFilledRecthhhhh>
    51ac:	00 e0       	ldi	r16, 0x00	; 0
    51ae:	28 e3       	ldi	r18, 0x38	; 56
    51b0:	44 e6       	ldi	r20, 0x64	; 100
    51b2:	64 e0       	ldi	r22, 0x04	; 4
    51b4:	8e e0       	ldi	r24, 0x0E	; 14
    51b6:	0e 94 37 10 	call	0x206e	; 0x206e <_Z8DrawRecthhhhh>
    51ba:	46 e0       	ldi	r20, 0x06	; 6
    51bc:	60 e1       	ldi	r22, 0x10	; 16
    51be:	84 ef       	ldi	r24, 0xF4	; 244
    51c0:	98 e0       	ldi	r25, 0x08	; 8
    51c2:	0e 94 20 10 	call	0x2040	; 0x2040 <_Z10DrawStringPKchh>
    51c6:	80 91 39 01 	lds	r24, 0x0139	; 0x800139 <State>
    51ca:	90 91 3a 01 	lds	r25, 0x013A	; 0x80013a <State+0x1>
    51ce:	00 97       	sbiw	r24, 0x00	; 0
    51d0:	09 f4       	brne	.+2      	; 0x51d4 <main+0x116c>
    51d2:	cb c4       	rjmp	.+2454   	; 0x5b6a <main+0x1b02>
    51d4:	85 59       	subi	r24, 0x95	; 149
    51d6:	98 4f       	sbci	r25, 0xF8	; 248
    51d8:	46 e0       	ldi	r20, 0x06	; 6
    51da:	68 e5       	ldi	r22, 0x58	; 88
    51dc:	0e 94 bb 0f 	call	0x1f76	; 0x1f76 <_Z7DrawIntihh>
    51e0:	4f e0       	ldi	r20, 0x0F	; 15
    51e2:	60 e1       	ldi	r22, 0x10	; 16
    51e4:	8b ed       	ldi	r24, 0xDB	; 219
    51e6:	98 e0       	ldi	r25, 0x08	; 8
    51e8:	0e 94 20 10 	call	0x2040	; 0x2040 <_Z10DrawStringPKchh>
    51ec:	80 91 82 03 	lds	r24, 0x0382	; 0x800382 <State+0x249>
    51f0:	4f e0       	ldi	r20, 0x0F	; 15
    51f2:	6c e5       	ldi	r22, 0x5C	; 92
    51f4:	90 e0       	ldi	r25, 0x00	; 0
    51f6:	0e 94 bb 0f 	call	0x1f76	; 0x1f76 <_Z7DrawIntihh>
    51fa:	46 e1       	ldi	r20, 0x16	; 22
    51fc:	60 e1       	ldi	r22, 0x10	; 16
    51fe:	8b ec       	ldi	r24, 0xCB	; 203
    5200:	98 e0       	ldi	r25, 0x08	; 8
    5202:	0e 94 20 10 	call	0x2040	; 0x2040 <_Z10DrawStringPKchh>
    5206:	60 91 89 03 	lds	r22, 0x0389	; 0x800389 <State+0x250>
    520a:	70 91 8a 03 	lds	r23, 0x038A	; 0x80038a <State+0x251>
    520e:	80 91 8b 03 	lds	r24, 0x038B	; 0x80038b <State+0x252>
    5212:	90 91 8c 03 	lds	r25, 0x038C	; 0x80038c <State+0x253>
    5216:	26 e1       	ldi	r18, 0x16	; 22
    5218:	4c e6       	ldi	r20, 0x6C	; 108
    521a:	0e 94 1f 0f 	call	0x1e3e	; 0x1e3e <_Z12DrawCurrencylhh>
    521e:	4d e1       	ldi	r20, 0x1D	; 29
    5220:	60 e1       	ldi	r22, 0x10	; 16
    5222:	8f eb       	ldi	r24, 0xBF	; 191
    5224:	98 e0       	ldi	r25, 0x08	; 8
    5226:	0e 94 20 10 	call	0x2040	; 0x2040 <_Z10DrawStringPKchh>
    522a:	60 91 8e 03 	lds	r22, 0x038E	; 0x80038e <State+0x255>
    522e:	14 e6       	ldi	r17, 0x64	; 100
    5230:	61 9f       	mul	r22, r17
    5232:	b0 01       	movw	r22, r0
    5234:	11 24       	eor	r1, r1
    5236:	07 2e       	mov	r0, r23
    5238:	00 0c       	add	r0, r0
    523a:	88 0b       	sbc	r24, r24
    523c:	99 0b       	sbc	r25, r25
    523e:	2d e1       	ldi	r18, 0x1D	; 29
    5240:	4c e6       	ldi	r20, 0x6C	; 108
    5242:	0e 94 1f 0f 	call	0x1e3e	; 0x1e3e <_Z12DrawCurrencylhh>
    5246:	44 e2       	ldi	r20, 0x24	; 36
    5248:	60 e1       	ldi	r22, 0x10	; 16
    524a:	81 eb       	ldi	r24, 0xB1	; 177
    524c:	98 e0       	ldi	r25, 0x08	; 8
    524e:	0e 94 20 10 	call	0x2040	; 0x2040 <_Z10DrawStringPKchh>
    5252:	60 91 8d 03 	lds	r22, 0x038D	; 0x80038d <State+0x254>
    5256:	61 9f       	mul	r22, r17
    5258:	b0 01       	movw	r22, r0
    525a:	11 24       	eor	r1, r1
    525c:	07 2e       	mov	r0, r23
    525e:	00 0c       	add	r0, r0
    5260:	88 0b       	sbc	r24, r24
    5262:	99 0b       	sbc	r25, r25
    5264:	24 e2       	ldi	r18, 0x24	; 36
    5266:	4c e6       	ldi	r20, 0x6C	; 108
    5268:	0e 94 1f 0f 	call	0x1e3e	; 0x1e3e <_Z12DrawCurrencylhh>
    526c:	4b e2       	ldi	r20, 0x2B	; 43
    526e:	60 e1       	ldi	r22, 0x10	; 16
    5270:	85 ea       	ldi	r24, 0xA5	; 165
    5272:	98 e0       	ldi	r25, 0x08	; 8
    5274:	0e 94 20 10 	call	0x2040	; 0x2040 <_Z10DrawStringPKchh>
    5278:	60 91 8f 03 	lds	r22, 0x038F	; 0x80038f <State+0x256>
    527c:	70 91 90 03 	lds	r23, 0x0390	; 0x800390 <State+0x257>
    5280:	90 e0       	ldi	r25, 0x00	; 0
    5282:	80 e0       	ldi	r24, 0x00	; 0
    5284:	2b e2       	ldi	r18, 0x2B	; 43
    5286:	4c e6       	ldi	r20, 0x6C	; 108
    5288:	0e 94 1f 0f 	call	0x1e3e	; 0x1e3e <_Z12DrawCurrencylhh>
    528c:	44 e3       	ldi	r20, 0x34	; 52
    528e:	60 e1       	ldi	r22, 0x10	; 16
    5290:	8b e9       	ldi	r24, 0x9B	; 155
    5292:	98 e0       	ldi	r25, 0x08	; 8
    5294:	0e 94 20 10 	call	0x2040	; 0x2040 <_Z10DrawStringPKchh>
    5298:	20 91 8f 03 	lds	r18, 0x038F	; 0x80038f <State+0x256>
    529c:	30 91 90 03 	lds	r19, 0x0390	; 0x800390 <State+0x257>
    52a0:	60 91 89 03 	lds	r22, 0x0389	; 0x800389 <State+0x250>
    52a4:	70 91 8a 03 	lds	r23, 0x038A	; 0x80038a <State+0x251>
    52a8:	80 91 8b 03 	lds	r24, 0x038B	; 0x80038b <State+0x252>
    52ac:	90 91 8c 03 	lds	r25, 0x038C	; 0x80038c <State+0x253>
    52b0:	62 1b       	sub	r22, r18
    52b2:	73 0b       	sbc	r23, r19
    52b4:	81 09       	sbc	r24, r1
    52b6:	91 09       	sbc	r25, r1
    52b8:	c0 90 8d 03 	lds	r12, 0x038D	; 0x80038d <State+0x254>
    52bc:	c1 9e       	mul	r12, r17
    52be:	60 01       	movw	r12, r0
    52c0:	11 24       	eor	r1, r1
    52c2:	0d 2c       	mov	r0, r13
    52c4:	00 0c       	add	r0, r0
    52c6:	ee 08       	sbc	r14, r14
    52c8:	ff 08       	sbc	r15, r15
    52ca:	6c 19       	sub	r22, r12
    52cc:	7d 09       	sbc	r23, r13
    52ce:	8e 09       	sbc	r24, r14
    52d0:	9f 09       	sbc	r25, r15
    52d2:	00 91 8e 03 	lds	r16, 0x038E	; 0x80038e <State+0x255>
    52d6:	01 9f       	mul	r16, r17
    52d8:	80 01       	movw	r16, r0
    52da:	11 24       	eor	r1, r1
    52dc:	01 2e       	mov	r0, r17
    52de:	00 0c       	add	r0, r0
    52e0:	22 0b       	sbc	r18, r18
    52e2:	33 0b       	sbc	r19, r19
    52e4:	60 1b       	sub	r22, r16
    52e6:	71 0b       	sbc	r23, r17
    52e8:	82 0b       	sbc	r24, r18
    52ea:	93 0b       	sbc	r25, r19
    52ec:	24 e3       	ldi	r18, 0x34	; 52
    52ee:	4c e6       	ldi	r20, 0x6C	; 108
    52f0:	0e 94 1f 0f 	call	0x1e3e	; 0x1e3e <_Z12DrawCurrencylhh>
    52f4:	80 91 21 05 	lds	r24, 0x0521	; 0x800521 <UIState+0x7>
    52f8:	80 31       	cpi	r24, 0x10	; 16
    52fa:	08 f0       	brcs	.+2      	; 0x52fe <main+0x1296>
    52fc:	1b cf       	rjmp	.-458    	; 0x5134 <main+0x10cc>
    52fe:	8f 5f       	subi	r24, 0xFF	; 255
    5300:	80 93 21 05 	sts	0x0521, r24	; 0x800521 <UIState+0x7>
    5304:	17 cf       	rjmp	.-466    	; 0x5134 <main+0x10cc>
    5306:	01 e0       	ldi	r16, 0x01	; 1
    5308:	20 e4       	ldi	r18, 0x40	; 64
    530a:	40 e8       	ldi	r20, 0x80	; 128
    530c:	60 e0       	ldi	r22, 0x00	; 0
    530e:	80 e0       	ldi	r24, 0x00	; 0
    5310:	0e 94 a1 10 	call	0x2142	; 0x2142 <_Z14DrawFilledRecthhhhh>
    5314:	00 e0       	ldi	r16, 0x00	; 0
    5316:	28 e2       	ldi	r18, 0x28	; 40
    5318:	48 e4       	ldi	r20, 0x48	; 72
    531a:	61 e0       	ldi	r22, 0x01	; 1
    531c:	8c e1       	ldi	r24, 0x1C	; 28
    531e:	0e 94 a1 10 	call	0x2142	; 0x2142 <_Z14DrawFilledRecthhhhh>
    5322:	08 e2       	ldi	r16, 0x28	; 40
    5324:	28 e4       	ldi	r18, 0x48	; 72
    5326:	44 e1       	ldi	r20, 0x14	; 20
    5328:	53 e0       	ldi	r21, 0x03	; 3
    532a:	61 e0       	ldi	r22, 0x01	; 1
    532c:	70 e0       	ldi	r23, 0x00	; 0
    532e:	8c e1       	ldi	r24, 0x1C	; 28
    5330:	90 e0       	ldi	r25, 0x00	; 0
    5332:	0e 94 0b 09 	call	0x1216	; 0x1216 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh.constprop.14>
    5336:	60 91 21 05 	lds	r22, 0x0521	; 0x800521 <UIState+0x7>
    533a:	89 e0       	ldi	r24, 0x09	; 9
    533c:	68 9f       	mul	r22, r24
    533e:	60 2d       	mov	r22, r0
    5340:	11 24       	eor	r1, r1
    5342:	6b 5d       	subi	r22, 0xDB	; 219
    5344:	2a e0       	ldi	r18, 0x0A	; 10
    5346:	4c e2       	ldi	r20, 0x2C	; 44
    5348:	8a e2       	ldi	r24, 0x2A	; 42
    534a:	0e 94 dc 10 	call	0x21b8	; 0x21b8 <_Z14DrawCursorRecthhhh>
    534e:	47 e2       	ldi	r20, 0x27	; 39
    5350:	6c e2       	ldi	r22, 0x2C	; 44
    5352:	8e e7       	ldi	r24, 0x7E	; 126
    5354:	98 e0       	ldi	r25, 0x08	; 8
    5356:	0e 94 20 10 	call	0x2040	; 0x2040 <_Z10DrawStringPKchh>
    535a:	40 e3       	ldi	r20, 0x30	; 48
    535c:	6c e2       	ldi	r22, 0x2C	; 44
    535e:	87 e8       	ldi	r24, 0x87	; 135
    5360:	98 e0       	ldi	r25, 0x08	; 8
    5362:	0e 94 20 10 	call	0x2040	; 0x2040 <_Z10DrawStringPKchh>
    5366:	49 e3       	ldi	r20, 0x39	; 57
    5368:	60 e2       	ldi	r22, 0x20	; 32
    536a:	83 e0       	ldi	r24, 0x03	; 3
    536c:	93 e0       	ldi	r25, 0x03	; 3
    536e:	0e 94 20 10 	call	0x2040	; 0x2040 <_Z10DrawStringPKchh>
    5372:	e0 ce       	rjmp	.-576    	; 0x5134 <main+0x10cc>
    5374:	01 e0       	ldi	r16, 0x01	; 1
    5376:	20 e4       	ldi	r18, 0x40	; 64
    5378:	40 e8       	ldi	r20, 0x80	; 128
    537a:	60 e0       	ldi	r22, 0x00	; 0
    537c:	80 e0       	ldi	r24, 0x00	; 0
    537e:	0e 94 a1 10 	call	0x2142	; 0x2142 <_Z14DrawFilledRecthhhhh>
    5382:	00 e0       	ldi	r16, 0x00	; 0
    5384:	20 e3       	ldi	r18, 0x30	; 48
    5386:	40 e3       	ldi	r20, 0x30	; 48
    5388:	64 e0       	ldi	r22, 0x04	; 4
    538a:	88 e2       	ldi	r24, 0x28	; 40
    538c:	0e 94 a1 10 	call	0x2142	; 0x2142 <_Z14DrawFilledRecthhhhh>
    5390:	80 91 81 03 	lds	r24, 0x0381	; 0x800381 <State+0x248>
    5394:	4c e9       	ldi	r20, 0x9C	; 156
    5396:	55 e0       	ldi	r21, 0x05	; 5
    5398:	81 30       	cpi	r24, 0x01	; 1
    539a:	31 f0       	breq	.+12     	; 0x53a8 <main+0x1340>
    539c:	4c eb       	ldi	r20, 0xBC	; 188
    539e:	56 e0       	ldi	r21, 0x06	; 6
    53a0:	82 30       	cpi	r24, 0x02	; 2
    53a2:	11 f4       	brne	.+4      	; 0x53a8 <main+0x1340>
    53a4:	4c e7       	ldi	r20, 0x7C	; 124
    53a6:	54 e0       	ldi	r21, 0x04	; 4
    53a8:	00 e3       	ldi	r16, 0x30	; 48
    53aa:	20 e3       	ldi	r18, 0x30	; 48
    53ac:	64 e0       	ldi	r22, 0x04	; 4
    53ae:	70 e0       	ldi	r23, 0x00	; 0
    53b0:	88 e2       	ldi	r24, 0x28	; 40
    53b2:	90 e0       	ldi	r25, 0x00	; 0
    53b4:	0e 94 0b 09 	call	0x1216	; 0x1216 <_ZN12Arduboy2Base10drawBitmapEiiPKhhhh.constprop.14>
    53b8:	00 e0       	ldi	r16, 0x00	; 0
    53ba:	24 e3       	ldi	r18, 0x34	; 52
    53bc:	44 e3       	ldi	r20, 0x34	; 52
    53be:	62 e0       	ldi	r22, 0x02	; 2
    53c0:	86 e2       	ldi	r24, 0x26	; 38
    53c2:	0e 94 37 10 	call	0x206e	; 0x206e <_Z8DrawRecthhhhh>
    53c6:	80 91 81 03 	lds	r24, 0x0381	; 0x800381 <State+0x248>
    53ca:	81 30       	cpi	r24, 0x01	; 1
    53cc:	b1 f0       	breq	.+44     	; 0x53fa <main+0x1392>
    53ce:	82 30       	cpi	r24, 0x02	; 2
    53d0:	89 f0       	breq	.+34     	; 0x53f4 <main+0x138c>
    53d2:	88 ee       	ldi	r24, 0xE8	; 232
    53d4:	97 e0       	ldi	r25, 0x07	; 7
    53d6:	49 e3       	ldi	r20, 0x39	; 57
    53d8:	64 e3       	ldi	r22, 0x34	; 52
    53da:	0e 94 20 10 	call	0x2040	; 0x2040 <_Z10DrawStringPKchh>
    53de:	4d e1       	ldi	r20, 0x1D	; 29
    53e0:	6e e1       	ldi	r22, 0x1E	; 30
    53e2:	80 ef       	ldi	r24, 0xF0	; 240
    53e4:	97 e0       	ldi	r25, 0x07	; 7
    53e6:	0e 94 20 10 	call	0x2040	; 0x2040 <_Z10DrawStringPKchh>
    53ea:	4d e1       	ldi	r20, 0x1D	; 29
    53ec:	6e e5       	ldi	r22, 0x5E	; 94
    53ee:	8e ee       	ldi	r24, 0xEE	; 238
    53f0:	97 e0       	ldi	r25, 0x07	; 7
    53f2:	bd cf       	rjmp	.-134    	; 0x536e <main+0x1306>
    53f4:	8c ed       	ldi	r24, 0xDC	; 220
    53f6:	97 e0       	ldi	r25, 0x07	; 7
    53f8:	ee cf       	rjmp	.-36     	; 0x53d6 <main+0x136e>
    53fa:	81 ee       	ldi	r24, 0xE1	; 225
    53fc:	97 e0       	ldi	r25, 0x07	; 7
    53fe:	eb cf       	rjmp	.-42     	; 0x53d6 <main+0x136e>
    5400:	80 90 24 0a 	lds	r8, 0x0A24	; 0x800a24 <CachedScrollX>
    5404:	e8 84       	ldd	r14, Y+8	; 0x08
    5406:	f9 84       	ldd	r15, Y+9	; 0x09
    5408:	f3 e0       	ldi	r31, 0x03	; 3
    540a:	f5 94       	asr	r15
    540c:	e7 94       	ror	r14
    540e:	fa 95       	dec	r31
    5410:	e1 f7       	brne	.-8      	; 0x540a <main+0x13a2>
    5412:	e8 18       	sub	r14, r8
    5414:	f1 08       	sbc	r15, r1
    5416:	87 fc       	sbrc	r8, 7
    5418:	f3 94       	inc	r15
    541a:	80 91 23 0a 	lds	r24, 0x0A23	; 0x800a23 <CachedScrollY>
    541e:	28 2e       	mov	r2, r24
    5420:	88 0f       	add	r24, r24
    5422:	33 08       	sbc	r3, r3
    5424:	32 01       	movw	r6, r4
    5426:	a3 e0       	ldi	r26, 0x03	; 3
    5428:	75 94       	asr	r7
    542a:	67 94       	ror	r6
    542c:	aa 95       	dec	r26
    542e:	e1 f7       	brne	.-8      	; 0x5428 <main+0x13c0>
    5430:	62 18       	sub	r6, r2
    5432:	73 08       	sbc	r7, r3
    5434:	f7 fe       	sbrs	r15, 7
    5436:	8a c0       	rjmp	.+276    	; 0x554c <main+0x14e4>
    5438:	40 ef       	ldi	r20, 0xF0	; 240
    543a:	e4 16       	cp	r14, r20
    543c:	4f ef       	ldi	r20, 0xFF	; 255
    543e:	f4 06       	cpc	r15, r20
    5440:	0c f4       	brge	.+2      	; 0x5444 <main+0x13dc>
    5442:	81 c0       	rjmp	.+258    	; 0x5546 <main+0x14de>
    5444:	aa 24       	eor	r10, r10
    5446:	bb 24       	eor	r11, r11
    5448:	ae 18       	sub	r10, r14
    544a:	bf 08       	sbc	r11, r15
    544c:	8a 18       	sub	r8, r10
    544e:	80 92 24 0a 	sts	0x0A24, r8	; 0x800a24 <CachedScrollX>
    5452:	90 e0       	ldi	r25, 0x00	; 0
    5454:	80 e0       	ldi	r24, 0x00	; 0
    5456:	a7 01       	movw	r20, r14
    5458:	4f 5e       	subi	r20, 0xEF	; 239
    545a:	5f 4f       	sbci	r21, 0xFF	; 255
    545c:	84 17       	cp	r24, r20
    545e:	95 07       	cpc	r25, r21
    5460:	9c f4       	brge	.+38     	; 0x5488 <main+0x1420>
    5462:	ea e9       	ldi	r30, 0x9A	; 154
    5464:	f9 e0       	ldi	r31, 0x09	; 9
    5466:	e8 1b       	sub	r30, r24
    5468:	f9 0b       	sbc	r31, r25
    546a:	30 e0       	ldi	r19, 0x00	; 0
    546c:	20 e0       	ldi	r18, 0x00	; 0
    546e:	df 01       	movw	r26, r30
    5470:	ae 0d       	add	r26, r14
    5472:	bf 1d       	adc	r27, r15
    5474:	6c 91       	ld	r22, X
    5476:	60 83       	st	Z, r22
    5478:	2f 5f       	subi	r18, 0xFF	; 255
    547a:	3f 4f       	sbci	r19, 0xFF	; 255
    547c:	71 96       	adiw	r30, 0x11	; 17
    547e:	29 30       	cpi	r18, 0x09	; 9
    5480:	31 05       	cpc	r19, r1
    5482:	a9 f7       	brne	.-22     	; 0x546e <main+0x1406>
    5484:	01 96       	adiw	r24, 0x01	; 1
    5486:	ea cf       	rjmp	.-44     	; 0x545c <main+0x13f4>
    5488:	0a e8       	ldi	r16, 0x8A	; 138
    548a:	19 e0       	ldi	r17, 0x09	; 9
    548c:	08 2c       	mov	r0, r8
    548e:	00 0c       	add	r0, r0
    5490:	99 08       	sbc	r9, r9
    5492:	b4 01       	movw	r22, r8
    5494:	6a 58       	subi	r22, 0x8A	; 138
    5496:	79 40       	sbci	r23, 0x09	; 9
    5498:	4b 01       	movw	r8, r22
    549a:	68 01       	movw	r12, r16
    549c:	f1 2c       	mov	r15, r1
    549e:	e1 2c       	mov	r14, r1
    54a0:	c4 01       	movw	r24, r8
    54a2:	80 0f       	add	r24, r16
    54a4:	91 1f       	adc	r25, r17
    54a6:	9d 87       	std	Y+13, r25	; 0x0d
    54a8:	8c 87       	std	Y+12, r24	; 0x0c
    54aa:	b7 01       	movw	r22, r14
    54ac:	62 0d       	add	r22, r2
    54ae:	73 1d       	adc	r23, r3
    54b0:	8c 85       	ldd	r24, Y+12	; 0x0c
    54b2:	9d 85       	ldd	r25, Y+13	; 0x0d
    54b4:	0e 94 80 13 	call	0x2700	; 0x2700 <_Z13CalculateTileii>
    54b8:	d6 01       	movw	r26, r12
    54ba:	8c 93       	st	X, r24
    54bc:	bf ef       	ldi	r27, 0xFF	; 255
    54be:	eb 1a       	sub	r14, r27
    54c0:	fb 0a       	sbc	r15, r27
    54c2:	e1 e1       	ldi	r30, 0x11	; 17
    54c4:	ce 0e       	add	r12, r30
    54c6:	d1 1c       	adc	r13, r1
    54c8:	f9 e0       	ldi	r31, 0x09	; 9
    54ca:	ef 16       	cp	r14, r31
    54cc:	f1 04       	cpc	r15, r1
    54ce:	69 f7       	brne	.-38     	; 0x54aa <main+0x1442>
    54d0:	0f 5f       	subi	r16, 0xFF	; 255
    54d2:	1f 4f       	sbci	r17, 0xFF	; 255
    54d4:	c8 01       	movw	r24, r16
    54d6:	8a 58       	subi	r24, 0x8A	; 138
    54d8:	99 40       	sbci	r25, 0x09	; 9
    54da:	8a 15       	cp	r24, r10
    54dc:	9b 05       	cpc	r25, r11
    54de:	ec f2       	brlt	.-70     	; 0x549a <main+0x1432>
    54e0:	77 fe       	sbrs	r7, 7
    54e2:	39 c2       	rjmp	.+1138   	; 0x5956 <main+0x18ee>
    54e4:	38 ef       	ldi	r19, 0xF8	; 248
    54e6:	63 16       	cp	r6, r19
    54e8:	3f ef       	ldi	r19, 0xFF	; 255
    54ea:	73 06       	cpc	r7, r19
    54ec:	0c f4       	brge	.+2      	; 0x54f0 <main+0x1488>
    54ee:	30 c2       	rjmp	.+1120   	; 0x5950 <main+0x18e8>
    54f0:	22 24       	eor	r2, r2
    54f2:	33 24       	eor	r3, r3
    54f4:	26 18       	sub	r2, r6
    54f6:	37 08       	sbc	r3, r7
    54f8:	00 91 23 0a 	lds	r16, 0x0A23	; 0x800a23 <CachedScrollY>
    54fc:	02 19       	sub	r16, r2
    54fe:	00 93 23 0a 	sts	0x0A23, r16	; 0x800a23 <CachedScrollY>
    5502:	82 e1       	ldi	r24, 0x12	; 18
    5504:	9a e0       	ldi	r25, 0x0A	; 10
    5506:	21 e1       	ldi	r18, 0x11	; 17
    5508:	26 9d       	mul	r18, r6
    550a:	b0 01       	movw	r22, r0
    550c:	27 9d       	mul	r18, r7
    550e:	70 0d       	add	r23, r0
    5510:	11 24       	eor	r1, r1
    5512:	30 e0       	ldi	r19, 0x00	; 0
    5514:	20 e0       	ldi	r18, 0x00	; 0
    5516:	49 e0       	ldi	r20, 0x09	; 9
    5518:	64 0e       	add	r6, r20
    551a:	71 1c       	adc	r7, r1
    551c:	26 15       	cp	r18, r6
    551e:	37 05       	cpc	r19, r7
    5520:	0c f0       	brlt	.+2      	; 0x5524 <main+0x14bc>
    5522:	65 c0       	rjmp	.+202    	; 0x55ee <main+0x1586>
    5524:	db 01       	movw	r26, r22
    5526:	a8 0f       	add	r26, r24
    5528:	b9 1f       	adc	r27, r25
    552a:	fc 01       	movw	r30, r24
    552c:	50 e0       	ldi	r21, 0x00	; 0
    552e:	40 e0       	ldi	r20, 0x00	; 0
    5530:	1d 91       	ld	r17, X+
    5532:	11 93       	st	Z+, r17
    5534:	4f 5f       	subi	r20, 0xFF	; 255
    5536:	5f 4f       	sbci	r21, 0xFF	; 255
    5538:	41 31       	cpi	r20, 0x11	; 17
    553a:	51 05       	cpc	r21, r1
    553c:	c9 f7       	brne	.-14     	; 0x5530 <main+0x14c8>
    553e:	2f 5f       	subi	r18, 0xFF	; 255
    5540:	3f 4f       	sbci	r19, 0xFF	; 255
    5542:	41 97       	sbiw	r24, 0x11	; 17
    5544:	eb cf       	rjmp	.-42     	; 0x551c <main+0x14b4>
    5546:	0e 94 66 16 	call	0x2ccc	; 0x2ccc <_Z21ResetVisibleTileCachev>
    554a:	ca cf       	rjmp	.-108    	; 0x54e0 <main+0x1478>
    554c:	e1 14       	cp	r14, r1
    554e:	f1 04       	cpc	r15, r1
    5550:	39 f2       	breq	.-114    	; 0x54e0 <main+0x1478>
    5552:	21 e1       	ldi	r18, 0x11	; 17
    5554:	e2 16       	cp	r14, r18
    5556:	f1 04       	cpc	r15, r1
    5558:	b4 f7       	brge	.-20     	; 0x5546 <main+0x14de>
    555a:	08 2d       	mov	r16, r8
    555c:	0e 0d       	add	r16, r14
    555e:	00 93 24 0a 	sts	0x0A24, r16	; 0x800a24 <CachedScrollX>
    5562:	8a e8       	ldi	r24, 0x8A	; 138
    5564:	99 e0       	ldi	r25, 0x09	; 9
    5566:	21 e1       	ldi	r18, 0x11	; 17
    5568:	30 e0       	ldi	r19, 0x00	; 0
    556a:	2e 19       	sub	r18, r14
    556c:	3f 09       	sbc	r19, r15
    556e:	ac 01       	movw	r20, r24
    5570:	4a 58       	subi	r20, 0x8A	; 138
    5572:	59 40       	sbci	r21, 0x09	; 9
    5574:	42 17       	cp	r20, r18
    5576:	53 07       	cpc	r21, r19
    5578:	84 f4       	brge	.+32     	; 0x559a <main+0x1532>
    557a:	fc 01       	movw	r30, r24
    557c:	50 e0       	ldi	r21, 0x00	; 0
    557e:	40 e0       	ldi	r20, 0x00	; 0
    5580:	df 01       	movw	r26, r30
    5582:	ae 0d       	add	r26, r14
    5584:	bf 1d       	adc	r27, r15
    5586:	6c 91       	ld	r22, X
    5588:	60 83       	st	Z, r22
    558a:	4f 5f       	subi	r20, 0xFF	; 255
    558c:	5f 4f       	sbci	r21, 0xFF	; 255
    558e:	71 96       	adiw	r30, 0x11	; 17
    5590:	49 30       	cpi	r20, 0x09	; 9
    5592:	51 05       	cpc	r21, r1
    5594:	a9 f7       	brne	.-22     	; 0x5580 <main+0x1518>
    5596:	01 96       	adiw	r24, 0x01	; 1
    5598:	ea cf       	rjmp	.-44     	; 0x556e <main+0x1506>
    559a:	00 2e       	mov	r0, r16
    559c:	00 0c       	add	r0, r0
    559e:	11 0b       	sbc	r17, r17
    55a0:	00 5f       	subi	r16, 0xF0	; 240
    55a2:	1f 4f       	sbci	r17, 0xFF	; 255
    55a4:	d1 2c       	mov	r13, r1
    55a6:	c1 2c       	mov	r12, r1
    55a8:	ea e9       	ldi	r30, 0x9A	; 154
    55aa:	8e 2e       	mov	r8, r30
    55ac:	e9 e0       	ldi	r30, 0x09	; 9
    55ae:	9e 2e       	mov	r9, r30
    55b0:	8c 18       	sub	r8, r12
    55b2:	9d 08       	sbc	r9, r13
    55b4:	b1 2c       	mov	r11, r1
    55b6:	a1 2c       	mov	r10, r1
    55b8:	b5 01       	movw	r22, r10
    55ba:	62 0d       	add	r22, r2
    55bc:	73 1d       	adc	r23, r3
    55be:	c8 01       	movw	r24, r16
    55c0:	0e 94 80 13 	call	0x2700	; 0x2700 <_Z13CalculateTileii>
    55c4:	d4 01       	movw	r26, r8
    55c6:	8c 93       	st	X, r24
    55c8:	bf ef       	ldi	r27, 0xFF	; 255
    55ca:	ab 1a       	sub	r10, r27
    55cc:	bb 0a       	sbc	r11, r27
    55ce:	e1 e1       	ldi	r30, 0x11	; 17
    55d0:	8e 0e       	add	r8, r30
    55d2:	91 1c       	adc	r9, r1
    55d4:	f9 e0       	ldi	r31, 0x09	; 9
    55d6:	af 16       	cp	r10, r31
    55d8:	b1 04       	cpc	r11, r1
    55da:	71 f7       	brne	.-36     	; 0x55b8 <main+0x1550>
    55dc:	2f ef       	ldi	r18, 0xFF	; 255
    55de:	c2 1a       	sub	r12, r18
    55e0:	d2 0a       	sbc	r13, r18
    55e2:	01 50       	subi	r16, 0x01	; 1
    55e4:	11 09       	sbc	r17, r1
    55e6:	ce 14       	cp	r12, r14
    55e8:	df 04       	cpc	r13, r15
    55ea:	f4 f2       	brlt	.-68     	; 0x55a8 <main+0x1540>
    55ec:	79 cf       	rjmp	.-270    	; 0x54e0 <main+0x1478>
    55ee:	7a e8       	ldi	r23, 0x8A	; 138
    55f0:	67 2e       	mov	r6, r23
    55f2:	79 e0       	ldi	r23, 0x09	; 9
    55f4:	77 2e       	mov	r7, r23
    55f6:	f1 2c       	mov	r15, r1
    55f8:	e1 2c       	mov	r14, r1
    55fa:	00 2e       	mov	r0, r16
    55fc:	00 0c       	add	r0, r0
    55fe:	11 0b       	sbc	r17, r17
    5600:	53 01       	movw	r10, r6
    5602:	d1 2c       	mov	r13, r1
    5604:	c1 2c       	mov	r12, r1
    5606:	47 01       	movw	r8, r14
    5608:	80 0e       	add	r8, r16
    560a:	91 1e       	adc	r9, r17
    560c:	80 91 24 0a 	lds	r24, 0x0A24	; 0x800a24 <CachedScrollX>
    5610:	b4 01       	movw	r22, r8
    5612:	d6 01       	movw	r26, r12
    5614:	a8 0f       	add	r26, r24
    5616:	b1 1d       	adc	r27, r1
    5618:	87 fd       	sbrc	r24, 7
    561a:	ba 95       	dec	r27
    561c:	cd 01       	movw	r24, r26
    561e:	0e 94 80 13 	call	0x2700	; 0x2700 <_Z13CalculateTileii>
    5622:	f5 01       	movw	r30, r10
    5624:	81 93       	st	Z+, r24
    5626:	5f 01       	movw	r10, r30
    5628:	ff ef       	ldi	r31, 0xFF	; 255
    562a:	cf 1a       	sub	r12, r31
    562c:	df 0a       	sbc	r13, r31
    562e:	21 e1       	ldi	r18, 0x11	; 17
    5630:	c2 16       	cp	r12, r18
    5632:	d1 04       	cpc	r13, r1
    5634:	59 f7       	brne	.-42     	; 0x560c <main+0x15a4>
    5636:	3f ef       	ldi	r19, 0xFF	; 255
    5638:	e3 1a       	sub	r14, r19
    563a:	f3 0a       	sbc	r15, r19
    563c:	41 e1       	ldi	r20, 0x11	; 17
    563e:	64 0e       	add	r6, r20
    5640:	71 1c       	adc	r7, r1
    5642:	2e 14       	cp	r2, r14
    5644:	3f 04       	cpc	r3, r15
    5646:	e1 f6       	brne	.-72     	; 0x5600 <main+0x1598>
    5648:	80 91 19 05 	lds	r24, 0x0519	; 0x800519 <AnimationFrame>
    564c:	88 70       	andi	r24, 0x08	; 8
    564e:	d8 2e       	mov	r13, r24
    5650:	10 e0       	ldi	r17, 0x00	; 0
    5652:	00 e0       	ldi	r16, 0x00	; 0
    5654:	51 e1       	ldi	r21, 0x11	; 17
    5656:	c5 2e       	mov	r12, r21
    5658:	c8 01       	movw	r24, r16
    565a:	88 0f       	add	r24, r24
    565c:	99 1f       	adc	r25, r25
    565e:	bc 01       	movw	r22, r24
    5660:	60 0f       	add	r22, r16
    5662:	71 1f       	adc	r23, r17
    5664:	fb 01       	movw	r30, r22
    5666:	ed 56       	subi	r30, 0x6D	; 109
    5668:	fc 4f       	sbci	r31, 0xFC	; 252
    566a:	21 81       	ldd	r18, Z+1	; 0x01
    566c:	32 2f       	mov	r19, r18
    566e:	30 7f       	andi	r19, 0xF0	; 240
    5670:	09 f4       	brne	.+2      	; 0x5674 <main+0x160c>
    5672:	42 c0       	rjmp	.+132    	; 0x56f8 <main+0x1690>
    5674:	30 35       	cpi	r19, 0x50	; 80
    5676:	09 f4       	brne	.+2      	; 0x567a <main+0x1612>
    5678:	3f c0       	rjmp	.+126    	; 0x56f8 <main+0x1690>
    567a:	db 01       	movw	r26, r22
    567c:	ac 56       	subi	r26, 0x6C	; 108
    567e:	bc 4f       	sbci	r27, 0xFC	; 252
    5680:	3c 91       	ld	r19, X
    5682:	30 39       	cpi	r19, 0x90	; 144
    5684:	c8 f5       	brcc	.+114    	; 0x56f8 <main+0x1690>
    5686:	30 81       	ld	r19, Z
    5688:	43 2f       	mov	r20, r19
    568a:	4f 73       	andi	r20, 0x3F	; 63
    568c:	50 e0       	ldi	r21, 0x00	; 0
    568e:	4f 5f       	subi	r20, 0xFF	; 255
    5690:	5f 4f       	sbci	r21, 0xFF	; 255
    5692:	e0 91 24 0a 	lds	r30, 0x0A24	; 0x800a24 <CachedScrollX>
    5696:	4e 1b       	sub	r20, r30
    5698:	51 09       	sbc	r21, r1
    569a:	e7 fd       	sbrc	r30, 7
    569c:	53 95       	inc	r21
    569e:	41 31       	cpi	r20, 0x11	; 17
    56a0:	51 05       	cpc	r21, r1
    56a2:	50 f5       	brcc	.+84     	; 0x56f8 <main+0x1690>
    56a4:	32 95       	swap	r19
    56a6:	36 95       	lsr	r19
    56a8:	36 95       	lsr	r19
    56aa:	33 70       	andi	r19, 0x03	; 3
    56ac:	2f 70       	andi	r18, 0x0F	; 15
    56ae:	22 0f       	add	r18, r18
    56b0:	22 0f       	add	r18, r18
    56b2:	23 2b       	or	r18, r19
    56b4:	30 e0       	ldi	r19, 0x00	; 0
    56b6:	2f 5f       	subi	r18, 0xFF	; 255
    56b8:	3f 4f       	sbci	r19, 0xFF	; 255
    56ba:	e0 91 23 0a 	lds	r30, 0x0A23	; 0x800a23 <CachedScrollY>
    56be:	2e 1b       	sub	r18, r30
    56c0:	31 09       	sbc	r19, r1
    56c2:	e7 fd       	sbrc	r30, 7
    56c4:	33 95       	inc	r19
    56c6:	29 30       	cpi	r18, 0x09	; 9
    56c8:	31 05       	cpc	r19, r1
    56ca:	b0 f4       	brcc	.+44     	; 0x56f8 <main+0x1690>
    56cc:	c2 9e       	mul	r12, r18
    56ce:	70 01       	movw	r14, r0
    56d0:	c3 9e       	mul	r12, r19
    56d2:	f0 0c       	add	r15, r0
    56d4:	11 24       	eor	r1, r1
    56d6:	4e 0d       	add	r20, r14
    56d8:	5f 1d       	adc	r21, r15
    56da:	da 01       	movw	r26, r20
    56dc:	a6 57       	subi	r26, 0x76	; 118
    56de:	b6 4f       	sbci	r27, 0xF6	; 246
    56e0:	7d 01       	movw	r14, r26
    56e2:	dd 20       	and	r13, r13
    56e4:	09 f4       	brne	.+2      	; 0x56e8 <main+0x1680>
    56e6:	95 c1       	rjmp	.+810    	; 0x5a12 <main+0x19aa>
    56e8:	6b 56       	subi	r22, 0x6B	; 107
    56ea:	7c 4f       	sbci	r23, 0xFC	; 252
    56ec:	fb 01       	movw	r30, r22
    56ee:	20 81       	ld	r18, Z
    56f0:	27 fd       	sbrc	r18, 7
    56f2:	8f c1       	rjmp	.+798    	; 0x5a12 <main+0x19aa>
    56f4:	f0 e3       	ldi	r31, 0x30	; 48
    56f6:	fc 93       	st	X, r31
    56f8:	0f 5f       	subi	r16, 0xFF	; 255
    56fa:	1f 4f       	sbci	r17, 0xFF	; 255
    56fc:	02 38       	cpi	r16, 0x82	; 130
    56fe:	11 05       	cpc	r17, r1
    5700:	09 f0       	breq	.+2      	; 0x5704 <main+0x169c>
    5702:	aa cf       	rjmp	.-172    	; 0x5658 <main+0x15f0>
    5704:	08 85       	ldd	r16, Y+8	; 0x08
    5706:	19 85       	ldd	r17, Y+9	; 0x09
    5708:	07 70       	andi	r16, 0x07	; 7
    570a:	11 27       	eor	r17, r17
    570c:	d1 2c       	mov	r13, r1
    570e:	c1 2c       	mov	r12, r1
    5710:	f1 2c       	mov	r15, r1
    5712:	e1 2c       	mov	r14, r1
    5714:	12 01       	movw	r2, r4
    5716:	b7 e0       	ldi	r27, 0x07	; 7
    5718:	2b 22       	and	r2, r27
    571a:	33 24       	eor	r3, r3
    571c:	31 01       	movw	r6, r2
    571e:	70 e0       	ldi	r23, 0x00	; 0
    5720:	60 e0       	ldi	r22, 0x00	; 0
    5722:	c6 01       	movw	r24, r12
    5724:	0e 94 56 11 	call	0x22ac	; 0x22ac <_Z13GetCachedTileii>
    5728:	28 e0       	ldi	r18, 0x08	; 8
    572a:	82 9f       	mul	r24, r18
    572c:	f0 01       	movw	r30, r0
    572e:	11 24       	eor	r1, r1
    5730:	e0 0f       	add	r30, r16
    5732:	f1 1f       	adc	r31, r17
    5734:	e5 58       	subi	r30, 0x85	; 133
    5736:	f6 4f       	sbci	r31, 0xF6	; 246
    5738:	e4 91       	lpm	r30, Z
    573a:	f0 e0       	ldi	r31, 0x00	; 0
    573c:	02 2c       	mov	r0, r2
    573e:	02 c0       	rjmp	.+4      	; 0x5744 <main+0x16dc>
    5740:	f5 95       	asr	r31
    5742:	e7 95       	ror	r30
    5744:	0a 94       	dec	r0
    5746:	e2 f7       	brpl	.-8      	; 0x5740 <main+0x16d8>
    5748:	ec 87       	std	Y+12, r30	; 0x0c
    574a:	91 2c       	mov	r9, r1
    574c:	81 2c       	mov	r8, r1
    574e:	b1 2c       	mov	r11, r1
    5750:	a1 2c       	mov	r10, r1
    5752:	4c 85       	ldd	r20, Y+12	; 0x0c
    5754:	41 70       	andi	r20, 0x01	; 1
    5756:	b5 01       	movw	r22, r10
    5758:	c7 01       	movw	r24, r14
    575a:	0e 94 27 0c 	call	0x184e	; 0x184e <_ZN12Arduboy2Base9drawPixelEiih>
    575e:	3f ef       	ldi	r19, 0xFF	; 255
    5760:	63 1a       	sub	r6, r19
    5762:	73 0a       	sbc	r7, r19
    5764:	47 e0       	ldi	r20, 0x07	; 7
    5766:	64 22       	and	r6, r20
    5768:	77 24       	eor	r7, r7
    576a:	61 14       	cp	r6, r1
    576c:	71 04       	cpc	r7, r1
    576e:	09 f4       	brne	.+2      	; 0x5772 <main+0x170a>
    5770:	5b c1       	rjmp	.+694    	; 0x5a28 <main+0x19c0>
    5772:	5c 85       	ldd	r21, Y+12	; 0x0c
    5774:	56 95       	lsr	r21
    5776:	5c 87       	std	Y+12, r21	; 0x0c
    5778:	9f ef       	ldi	r25, 0xFF	; 255
    577a:	a9 1a       	sub	r10, r25
    577c:	b9 0a       	sbc	r11, r25
    577e:	a0 e4       	ldi	r26, 0x40	; 64
    5780:	aa 16       	cp	r10, r26
    5782:	b1 04       	cpc	r11, r1
    5784:	31 f7       	brne	.-52     	; 0x5752 <main+0x16ea>
    5786:	0f 5f       	subi	r16, 0xFF	; 255
    5788:	1f 4f       	sbci	r17, 0xFF	; 255
    578a:	07 70       	andi	r16, 0x07	; 7
    578c:	11 27       	eor	r17, r17
    578e:	01 15       	cp	r16, r1
    5790:	11 05       	cpc	r17, r1
    5792:	19 f4       	brne	.+6      	; 0x579a <main+0x1732>
    5794:	bf ef       	ldi	r27, 0xFF	; 255
    5796:	cb 1a       	sub	r12, r27
    5798:	db 0a       	sbc	r13, r27
    579a:	ef ef       	ldi	r30, 0xFF	; 255
    579c:	ee 1a       	sub	r14, r30
    579e:	fe 0a       	sbc	r15, r30
    57a0:	f0 e8       	ldi	r31, 0x80	; 128
    57a2:	ef 16       	cp	r14, r31
    57a4:	f1 04       	cpc	r15, r1
    57a6:	09 f0       	breq	.+2      	; 0x57aa <main+0x1742>
    57a8:	b9 cf       	rjmp	.-142    	; 0x571c <main+0x16b4>
    57aa:	2c 81       	ldd	r18, Y+4	; 0x04
    57ac:	24 30       	cpi	r18, 0x04	; 4
    57ae:	09 f4       	brne	.+2      	; 0x57b2 <main+0x174a>
    57b0:	48 c0       	rjmp	.+144    	; 0x5842 <main+0x17da>
    57b2:	00 91 20 05 	lds	r16, 0x0520	; 0x800520 <UIState+0x6>
    57b6:	03 30       	cpi	r16, 0x03	; 3
    57b8:	08 f4       	brcc	.+2      	; 0x57bc <main+0x1754>
    57ba:	48 c1       	rjmp	.+656    	; 0x5a4c <main+0x19e4>
    57bc:	02 50       	subi	r16, 0x02	; 2
    57be:	11 0b       	sbc	r17, r17
    57c0:	ae 01       	movw	r20, r28
    57c2:	4f 5f       	subi	r20, 0xFF	; 255
    57c4:	5f 4f       	sbci	r21, 0xFF	; 255
    57c6:	be 01       	movw	r22, r28
    57c8:	6d 5f       	subi	r22, 0xFD	; 253
    57ca:	7f 4f       	sbci	r23, 0xFF	; 255
    57cc:	c8 01       	movw	r24, r16
    57ce:	0e 94 fb 0c 	call	0x19f6	; 0x19f6 <_Z24GetBuildingBrushLocation12BuildingTypePhS0_>
    57d2:	85 e0       	ldi	r24, 0x05	; 5
    57d4:	80 9f       	mul	r24, r16
    57d6:	90 01       	movw	r18, r0
    57d8:	81 9f       	mul	r24, r17
    57da:	30 0d       	add	r19, r0
    57dc:	11 24       	eor	r1, r1
    57de:	f9 01       	movw	r30, r18
    57e0:	ec 50       	subi	r30, 0x0C	; 12
    57e2:	f8 4f       	sbci	r31, 0xF8	; 248
    57e4:	44 91       	lpm	r20, Z
    57e6:	68 e0       	ldi	r22, 0x08	; 8
    57e8:	46 9f       	mul	r20, r22
    57ea:	a0 01       	movw	r20, r0
    57ec:	11 24       	eor	r1, r1
    57ee:	2b 50       	subi	r18, 0x0B	; 11
    57f0:	38 4f       	sbci	r19, 0xF8	; 248
    57f2:	f9 01       	movw	r30, r18
    57f4:	24 91       	lpm	r18, Z
    57f6:	f8 e0       	ldi	r31, 0x08	; 8
    57f8:	2f 9f       	mul	r18, r31
    57fa:	90 01       	movw	r18, r0
    57fc:	11 24       	eor	r1, r1
    57fe:	8b 81       	ldd	r24, Y+3	; 0x03
    5800:	68 e0       	ldi	r22, 0x08	; 8
    5802:	86 9f       	mul	r24, r22
    5804:	c0 01       	movw	r24, r0
    5806:	11 24       	eor	r1, r1
    5808:	88 84       	ldd	r8, Y+8	; 0x08
    580a:	99 84       	ldd	r9, Y+9	; 0x09
    580c:	88 19       	sub	r24, r8
    580e:	99 09       	sbc	r25, r9
    5810:	69 81       	ldd	r22, Y+1	; 0x01
    5812:	a8 e0       	ldi	r26, 0x08	; 8
    5814:	6a 9f       	mul	r22, r26
    5816:	b0 01       	movw	r22, r0
    5818:	11 24       	eor	r1, r1
    581a:	64 19       	sub	r22, r4
    581c:	75 09       	sbc	r23, r5
    581e:	97 fd       	sbrc	r25, 7
    5820:	10 c0       	rjmp	.+32     	; 0x5842 <main+0x17da>
    5822:	77 fd       	sbrc	r23, 7
    5824:	0e c0       	rjmp	.+28     	; 0x5842 <main+0x17da>
    5826:	fc 01       	movw	r30, r24
    5828:	e4 0f       	add	r30, r20
    582a:	f5 1f       	adc	r31, r21
    582c:	e0 38       	cpi	r30, 0x80	; 128
    582e:	f1 05       	cpc	r31, r1
    5830:	44 f4       	brge	.+16     	; 0x5842 <main+0x17da>
    5832:	fb 01       	movw	r30, r22
    5834:	e2 0f       	add	r30, r18
    5836:	f3 1f       	adc	r31, r19
    5838:	e0 34       	cpi	r30, 0x40	; 64
    583a:	f1 05       	cpc	r31, r1
    583c:	14 f4       	brge	.+4      	; 0x5842 <main+0x17da>
    583e:	0e 94 dc 10 	call	0x21b8	; 0x21b8 <_Z14DrawCursorRecthhhh>
    5842:	80 91 22 05 	lds	r24, 0x0522	; 0x800522 <UIState+0x8>
    5846:	84 30       	cpi	r24, 0x04	; 4
    5848:	09 f0       	breq	.+2      	; 0x584c <main+0x17e4>
    584a:	15 c1       	rjmp	.+554    	; 0x5a76 <main+0x1a0e>
    584c:	01 e0       	ldi	r16, 0x01	; 1
    584e:	2a e0       	ldi	r18, 0x0A	; 10
    5850:	47 e7       	ldi	r20, 0x77	; 119
    5852:	66 e3       	ldi	r22, 0x36	; 54
    5854:	80 e0       	ldi	r24, 0x00	; 0
    5856:	0e 94 a1 10 	call	0x2142	; 0x2142 <_Z14DrawFilledRecthhhhh>
    585a:	28 e0       	ldi	r18, 0x08	; 8
    585c:	45 e4       	ldi	r20, 0x45	; 69
    585e:	6f e2       	ldi	r22, 0x2F	; 47
    5860:	80 e0       	ldi	r24, 0x00	; 0
    5862:	0e 94 a1 10 	call	0x2142	; 0x2142 <_Z14DrawFilledRecthhhhh>
    5866:	01 e0       	ldi	r16, 0x01	; 1
    5868:	10 e0       	ldi	r17, 0x00	; 0
    586a:	30 ef       	ldi	r19, 0xF0	; 240
    586c:	f3 2e       	mov	r15, r19
    586e:	b8 01       	movw	r22, r16
    5870:	8f 2d       	mov	r24, r15
    5872:	0e 94 45 0c 	call	0x188a	; 0x188a <_Z10DrawTileAthii.constprop.15>
    5876:	f3 94       	inc	r15
    5878:	07 5f       	subi	r16, 0xF7	; 247
    587a:	1f 4f       	sbci	r17, 0xFF	; 255
    587c:	bd ef       	ldi	r27, 0xFD	; 253
    587e:	fb 12       	cpse	r15, r27
    5880:	f6 cf       	rjmp	.-20     	; 0x586e <main+0x1806>
    5882:	10 91 21 05 	lds	r17, 0x0521	; 0x800521 <UIState+0x7>
    5886:	2a e0       	ldi	r18, 0x0A	; 10
    5888:	4a e0       	ldi	r20, 0x0A	; 10
    588a:	66 e3       	ldi	r22, 0x36	; 54
    588c:	89 e0       	ldi	r24, 0x09	; 9
    588e:	18 9f       	mul	r17, r24
    5890:	80 2d       	mov	r24, r0
    5892:	11 24       	eor	r1, r1
    5894:	0e 94 dc 10 	call	0x21b8	; 0x21b8 <_Z14DrawCursorRecthhhh>
    5898:	e1 2f       	mov	r30, r17
    589a:	f0 e0       	ldi	r31, 0x00	; 0
    589c:	ee 0f       	add	r30, r30
    589e:	ff 1f       	adc	r31, r31
    58a0:	e7 5d       	subi	r30, 0xD7	; 215
    58a2:	f7 4f       	sbci	r31, 0xF7	; 247
    58a4:	85 91       	lpm	r24, Z+
    58a6:	94 91       	lpm	r25, Z
    58a8:	40 e3       	ldi	r20, 0x30	; 48
    58aa:	61 e0       	ldi	r22, 0x01	; 1
    58ac:	0e 94 20 10 	call	0x2040	; 0x2040 <_Z10DrawStringPKchh>
    58b0:	11 30       	cpi	r17, 0x01	; 1
    58b2:	09 f4       	brne	.+2      	; 0x58b6 <main+0x184e>
    58b4:	d4 c0       	rjmp	.+424    	; 0x5a5e <main+0x19f6>
    58b6:	08 f4       	brcc	.+2      	; 0x58ba <main+0x1852>
    58b8:	db c0       	rjmp	.+438    	; 0x5a70 <main+0x1a08>
    58ba:	65 e0       	ldi	r22, 0x05	; 5
    58bc:	70 e0       	ldi	r23, 0x00	; 0
    58be:	12 30       	cpi	r17, 0x02	; 2
    58c0:	09 f4       	brne	.+2      	; 0x58c4 <main+0x185c>
    58c2:	cf c0       	rjmp	.+414    	; 0x5a62 <main+0x19fa>
    58c4:	1b 30       	cpi	r17, 0x0B	; 11
    58c6:	70 f4       	brcc	.+28     	; 0x58e4 <main+0x187c>
    58c8:	ee ef       	ldi	r30, 0xFE	; 254
    58ca:	e1 0f       	add	r30, r17
    58cc:	25 e0       	ldi	r18, 0x05	; 5
    58ce:	e2 9f       	mul	r30, r18
    58d0:	f0 01       	movw	r30, r0
    58d2:	11 24       	eor	r1, r1
    58d4:	ee 50       	subi	r30, 0x0E	; 14
    58d6:	f8 4f       	sbci	r31, 0xF8	; 248
    58d8:	65 91       	lpm	r22, Z+
    58da:	74 91       	lpm	r23, Z
    58dc:	61 15       	cp	r22, r1
    58de:	71 05       	cpc	r23, r1
    58e0:	09 f0       	breq	.+2      	; 0x58e4 <main+0x187c>
    58e2:	bf c0       	rjmp	.+382    	; 0x5a62 <main+0x19fa>
    58e4:	01 e0       	ldi	r16, 0x01	; 1
    58e6:	28 e0       	ldi	r18, 0x08	; 8
    58e8:	42 e2       	ldi	r20, 0x22	; 34
    58ea:	60 e0       	ldi	r22, 0x00	; 0
    58ec:	80 e0       	ldi	r24, 0x00	; 0
    58ee:	0e 94 a1 10 	call	0x2142	; 0x2142 <_Z14DrawFilledRecthhhhh>
    58f2:	e0 91 3b 01 	lds	r30, 0x013B	; 0x80013b <State+0x2>
    58f6:	f0 e0       	ldi	r31, 0x00	; 0
    58f8:	ee 0f       	add	r30, r30
    58fa:	ff 1f       	adc	r31, r31
    58fc:	ed 5b       	subi	r30, 0xBD	; 189
    58fe:	f7 4f       	sbci	r31, 0xF7	; 247
    5900:	85 91       	lpm	r24, Z+
    5902:	94 91       	lpm	r25, Z
    5904:	41 e0       	ldi	r20, 0x01	; 1
    5906:	61 e0       	ldi	r22, 0x01	; 1
    5908:	0e 94 20 10 	call	0x2040	; 0x2040 <_Z10DrawStringPKchh>
    590c:	80 91 39 01 	lds	r24, 0x0139	; 0x800139 <State>
    5910:	90 91 3a 01 	lds	r25, 0x013A	; 0x80013a <State+0x1>
    5914:	41 e0       	ldi	r20, 0x01	; 1
    5916:	61 e1       	ldi	r22, 0x11	; 17
    5918:	84 59       	subi	r24, 0x94	; 148
    591a:	98 4f       	sbci	r25, 0xF8	; 248
    591c:	0e 94 bb 0f 	call	0x1f76	; 0x1f76 <_Z7DrawIntihh>
    5920:	60 91 3d 01 	lds	r22, 0x013D	; 0x80013d <State+0x4>
    5924:	70 91 3e 01 	lds	r23, 0x013E	; 0x80013e <State+0x5>
    5928:	80 91 3f 01 	lds	r24, 0x013F	; 0x80013f <State+0x6>
    592c:	90 91 40 01 	lds	r25, 0x0140	; 0x800140 <State+0x7>
    5930:	21 e0       	ldi	r18, 0x01	; 1
    5932:	4b e7       	ldi	r20, 0x7B	; 123
    5934:	0e 94 1f 0f 	call	0x1e3e	; 0x1e3e <_Z12DrawCurrencylhh>
    5938:	88 0f       	add	r24, r24
    593a:	88 0f       	add	r24, r24
    593c:	42 e0       	ldi	r20, 0x02	; 2
    593e:	48 0f       	add	r20, r24
    5940:	28 e0       	ldi	r18, 0x08	; 8
    5942:	60 e0       	ldi	r22, 0x00	; 0
    5944:	9e e7       	ldi	r25, 0x7E	; 126
    5946:	98 1b       	sub	r25, r24
    5948:	89 2f       	mov	r24, r25
    594a:	0e 94 37 10 	call	0x206e	; 0x206e <_Z8DrawRecthhhhh>
    594e:	f2 cb       	rjmp	.-2076   	; 0x5134 <main+0x10cc>
    5950:	0e 94 66 16 	call	0x2ccc	; 0x2ccc <_Z21ResetVisibleTileCachev>
    5954:	79 ce       	rjmp	.-782    	; 0x5648 <main+0x15e0>
    5956:	61 14       	cp	r6, r1
    5958:	71 04       	cpc	r7, r1
    595a:	09 f4       	brne	.+2      	; 0x595e <main+0x18f6>
    595c:	75 ce       	rjmp	.-790    	; 0x5648 <main+0x15e0>
    595e:	59 e0       	ldi	r21, 0x09	; 9
    5960:	65 16       	cp	r6, r21
    5962:	71 04       	cpc	r7, r1
    5964:	ac f7       	brge	.-22     	; 0x5950 <main+0x18e8>
    5966:	00 91 23 0a 	lds	r16, 0x0A23	; 0x800a23 <CachedScrollY>
    596a:	06 0d       	add	r16, r6
    596c:	00 93 23 0a 	sts	0x0A23, r16	; 0x800a23 <CachedScrollY>
    5970:	8a e8       	ldi	r24, 0x8A	; 138
    5972:	99 e0       	ldi	r25, 0x09	; 9
    5974:	21 e1       	ldi	r18, 0x11	; 17
    5976:	26 9d       	mul	r18, r6
    5978:	70 01       	movw	r14, r0
    597a:	27 9d       	mul	r18, r7
    597c:	f0 0c       	add	r15, r0
    597e:	11 24       	eor	r1, r1
    5980:	30 e0       	ldi	r19, 0x00	; 0
    5982:	20 e0       	ldi	r18, 0x00	; 0
    5984:	49 e0       	ldi	r20, 0x09	; 9
    5986:	50 e0       	ldi	r21, 0x00	; 0
    5988:	46 19       	sub	r20, r6
    598a:	57 09       	sbc	r21, r7
    598c:	24 17       	cp	r18, r20
    598e:	35 07       	cpc	r19, r21
    5990:	8c f4       	brge	.+34     	; 0x59b4 <main+0x194c>
    5992:	d7 01       	movw	r26, r14
    5994:	a8 0f       	add	r26, r24
    5996:	b9 1f       	adc	r27, r25
    5998:	fc 01       	movw	r30, r24
    599a:	70 e0       	ldi	r23, 0x00	; 0
    599c:	60 e0       	ldi	r22, 0x00	; 0
    599e:	1d 91       	ld	r17, X+
    59a0:	11 93       	st	Z+, r17
    59a2:	6f 5f       	subi	r22, 0xFF	; 255
    59a4:	7f 4f       	sbci	r23, 0xFF	; 255
    59a6:	61 31       	cpi	r22, 0x11	; 17
    59a8:	71 05       	cpc	r23, r1
    59aa:	c9 f7       	brne	.-14     	; 0x599e <main+0x1936>
    59ac:	2f 5f       	subi	r18, 0xFF	; 255
    59ae:	3f 4f       	sbci	r19, 0xFF	; 255
    59b0:	41 96       	adiw	r24, 0x11	; 17
    59b2:	ec cf       	rjmp	.-40     	; 0x598c <main+0x1924>
    59b4:	62 e1       	ldi	r22, 0x12	; 18
    59b6:	a6 2e       	mov	r10, r22
    59b8:	6a e0       	ldi	r22, 0x0A	; 10
    59ba:	b6 2e       	mov	r11, r22
    59bc:	00 2e       	mov	r0, r16
    59be:	00 0c       	add	r0, r0
    59c0:	11 0b       	sbc	r17, r17
    59c2:	08 5f       	subi	r16, 0xF8	; 248
    59c4:	1f 4f       	sbci	r17, 0xFF	; 255
    59c6:	d1 2c       	mov	r13, r1
    59c8:	c1 2c       	mov	r12, r1
    59ca:	45 01       	movw	r8, r10
    59cc:	f1 2c       	mov	r15, r1
    59ce:	e1 2c       	mov	r14, r1
    59d0:	80 91 24 0a 	lds	r24, 0x0A24	; 0x800a24 <CachedScrollX>
    59d4:	b8 01       	movw	r22, r16
    59d6:	d7 01       	movw	r26, r14
    59d8:	a8 0f       	add	r26, r24
    59da:	b1 1d       	adc	r27, r1
    59dc:	87 fd       	sbrc	r24, 7
    59de:	ba 95       	dec	r27
    59e0:	cd 01       	movw	r24, r26
    59e2:	0e 94 80 13 	call	0x2700	; 0x2700 <_Z13CalculateTileii>
    59e6:	f4 01       	movw	r30, r8
    59e8:	81 93       	st	Z+, r24
    59ea:	4f 01       	movw	r8, r30
    59ec:	ff ef       	ldi	r31, 0xFF	; 255
    59ee:	ef 1a       	sub	r14, r31
    59f0:	ff 0a       	sbc	r15, r31
    59f2:	21 e1       	ldi	r18, 0x11	; 17
    59f4:	e2 16       	cp	r14, r18
    59f6:	f1 04       	cpc	r15, r1
    59f8:	59 f7       	brne	.-42     	; 0x59d0 <main+0x1968>
    59fa:	3f ef       	ldi	r19, 0xFF	; 255
    59fc:	c3 1a       	sub	r12, r19
    59fe:	d3 0a       	sbc	r13, r19
    5a00:	41 e1       	ldi	r20, 0x11	; 17
    5a02:	a4 1a       	sub	r10, r20
    5a04:	b1 08       	sbc	r11, r1
    5a06:	01 50       	subi	r16, 0x01	; 1
    5a08:	11 09       	sbc	r17, r1
    5a0a:	c6 14       	cp	r12, r6
    5a0c:	d7 04       	cpc	r13, r7
    5a0e:	ec f2       	brlt	.-70     	; 0x59ca <main+0x1962>
    5a10:	1b ce       	rjmp	.-970    	; 0x5648 <main+0x15e0>
    5a12:	80 0f       	add	r24, r16
    5a14:	91 1f       	adc	r25, r17
    5a16:	41 e0       	ldi	r20, 0x01	; 1
    5a18:	61 e0       	ldi	r22, 0x01	; 1
    5a1a:	8d 56       	subi	r24, 0x6D	; 109
    5a1c:	9c 4f       	sbci	r25, 0xFC	; 252
    5a1e:	0e 94 7f 11 	call	0x22fe	; 0x22fe <_Z21CalculateBuildingTileP8Buildinghh>
    5a22:	d7 01       	movw	r26, r14
    5a24:	8c 93       	st	X, r24
    5a26:	68 ce       	rjmp	.-816    	; 0x56f8 <main+0x1690>
    5a28:	6f ef       	ldi	r22, 0xFF	; 255
    5a2a:	86 1a       	sub	r8, r22
    5a2c:	96 0a       	sbc	r9, r22
    5a2e:	b4 01       	movw	r22, r8
    5a30:	c6 01       	movw	r24, r12
    5a32:	0e 94 56 11 	call	0x22ac	; 0x22ac <_Z13GetCachedTileii>
    5a36:	78 e0       	ldi	r23, 0x08	; 8
    5a38:	87 9f       	mul	r24, r23
    5a3a:	f0 01       	movw	r30, r0
    5a3c:	11 24       	eor	r1, r1
    5a3e:	e0 0f       	add	r30, r16
    5a40:	f1 1f       	adc	r31, r17
    5a42:	e5 58       	subi	r30, 0x85	; 133
    5a44:	f6 4f       	sbci	r31, 0xF6	; 246
    5a46:	84 91       	lpm	r24, Z
    5a48:	8c 87       	std	Y+12, r24	; 0x0c
    5a4a:	96 ce       	rjmp	.-724    	; 0x5778 <main+0x1710>
    5a4c:	8e 84       	ldd	r8, Y+14	; 0x0e
    5a4e:	8b 82       	std	Y+3, r8	; 0x03
    5a50:	98 88       	ldd	r9, Y+16	; 0x10
    5a52:	99 82       	std	Y+1, r9	; 0x01
    5a54:	28 e0       	ldi	r18, 0x08	; 8
    5a56:	30 e0       	ldi	r19, 0x00	; 0
    5a58:	48 e0       	ldi	r20, 0x08	; 8
    5a5a:	50 e0       	ldi	r21, 0x00	; 0
    5a5c:	d0 ce       	rjmp	.-608    	; 0x57fe <main+0x1796>
    5a5e:	6a e0       	ldi	r22, 0x0A	; 10
    5a60:	70 e0       	ldi	r23, 0x00	; 0
    5a62:	90 e0       	ldi	r25, 0x00	; 0
    5a64:	80 e0       	ldi	r24, 0x00	; 0
    5a66:	20 e3       	ldi	r18, 0x30	; 48
    5a68:	40 e4       	ldi	r20, 0x40	; 64
    5a6a:	0e 94 1f 0f 	call	0x1e3e	; 0x1e3e <_Z12DrawCurrencylhh>
    5a6e:	3a cf       	rjmp	.-396    	; 0x58e4 <main+0x187c>
    5a70:	61 e0       	ldi	r22, 0x01	; 1
    5a72:	70 e0       	ldi	r23, 0x00	; 0
    5a74:	f6 cf       	rjmp	.-20     	; 0x5a62 <main+0x19fa>
    5a76:	83 30       	cpi	r24, 0x03	; 3
    5a78:	91 f4       	brne	.+36     	; 0x5a9e <main+0x1a36>
    5a7a:	01 e0       	ldi	r16, 0x01	; 1
    5a7c:	2a e0       	ldi	r18, 0x0A	; 10
    5a7e:	4c e3       	ldi	r20, 0x3C	; 60
    5a80:	66 e3       	ldi	r22, 0x36	; 54
    5a82:	83 e2       	ldi	r24, 0x23	; 35
    5a84:	0e 94 a1 10 	call	0x2142	; 0x2142 <_Z14DrawFilledRecthhhhh>
    5a88:	80 91 21 05 	lds	r24, 0x0521	; 0x800521 <UIState+0x7>
    5a8c:	82 ff       	sbrs	r24, 2
    5a8e:	2a cf       	rjmp	.-428    	; 0x58e4 <main+0x187c>
    5a90:	49 e3       	ldi	r20, 0x39	; 57
    5a92:	64 e2       	ldi	r22, 0x24	; 36
    5a94:	8b e5       	ldi	r24, 0x5B	; 91
    5a96:	98 e0       	ldi	r25, 0x08	; 8
    5a98:	0e 94 20 10 	call	0x2040	; 0x2040 <_Z10DrawStringPKchh>
    5a9c:	23 cf       	rjmp	.-442    	; 0x58e4 <main+0x187c>
    5a9e:	10 91 20 05 	lds	r17, 0x0520	; 0x800520 <UIState+0x6>
    5aa2:	e1 2f       	mov	r30, r17
    5aa4:	f0 e0       	ldi	r31, 0x00	; 0
    5aa6:	ee 0f       	add	r30, r30
    5aa8:	ff 1f       	adc	r31, r31
    5aaa:	e7 5d       	subi	r30, 0xD7	; 215
    5aac:	f7 4f       	sbci	r31, 0xF7	; 247
    5aae:	e5 90       	lpm	r14, Z+
    5ab0:	f4 90       	lpm	r15, Z
#else
extern size_t __strlen_P(const char *) __ATTR_CONST__;  /* internal helper function */
__attribute__((__always_inline__)) static __inline__ size_t strlen_P(const char * s);
static __inline__ size_t strlen_P(const char *s) {
  return __builtin_constant_p(__builtin_strlen(s))
     ? __builtin_strlen(s) : __strlen_P(s);
    5ab2:	c7 01       	movw	r24, r14
    5ab4:	0e 94 bc 2d 	call	0x5b78	; 0x5b78 <__strlen_P>
    5ab8:	03 96       	adiw	r24, 0x03	; 3
    5aba:	48 2f       	mov	r20, r24
    5abc:	44 0f       	add	r20, r20
    5abe:	44 0f       	add	r20, r20
    5ac0:	01 e0       	ldi	r16, 0x01	; 1
    5ac2:	2a e0       	ldi	r18, 0x0A	; 10
    5ac4:	66 e3       	ldi	r22, 0x36	; 54
    5ac6:	80 e0       	ldi	r24, 0x00	; 0
    5ac8:	0e 94 a1 10 	call	0x2142	; 0x2142 <_Z14DrawFilledRecthhhhh>
    5acc:	61 e0       	ldi	r22, 0x01	; 1
    5ace:	70 e0       	ldi	r23, 0x00	; 0
    5ad0:	80 ef       	ldi	r24, 0xF0	; 240
    5ad2:	81 0f       	add	r24, r17
    5ad4:	0e 94 45 0c 	call	0x188a	; 0x188a <_Z10DrawTileAthii.constprop.15>
    5ad8:	49 e3       	ldi	r20, 0x39	; 57
    5ada:	6a e0       	ldi	r22, 0x0A	; 10
    5adc:	c7 01       	movw	r24, r14
    5ade:	dc cf       	rjmp	.-72     	; 0x5a98 <main+0x1a30>
    5ae0:	00 e0       	ldi	r16, 0x00	; 0
    5ae2:	22 e3       	ldi	r18, 0x32	; 50
    5ae4:	44 e4       	ldi	r20, 0x44	; 68
    5ae6:	68 e0       	ldi	r22, 0x08	; 8
    5ae8:	8f e1       	ldi	r24, 0x1F	; 31
    5aea:	0e 94 37 10 	call	0x206e	; 0x206e <_Z8DrawRecthhhhh>
    5aee:	01 e0       	ldi	r16, 0x01	; 1
    5af0:	22 e3       	ldi	r18, 0x32	; 50
    5af2:	44 e4       	ldi	r20, 0x44	; 68
    5af4:	67 e0       	ldi	r22, 0x07	; 7
    5af6:	8e e1       	ldi	r24, 0x1E	; 30
    5af8:	0e 94 a1 10 	call	0x2142	; 0x2142 <_Z14DrawFilledRecthhhhh>
    5afc:	00 e0       	ldi	r16, 0x00	; 0
    5afe:	22 e3       	ldi	r18, 0x32	; 50
    5b00:	44 e4       	ldi	r20, 0x44	; 68
    5b02:	67 e0       	ldi	r22, 0x07	; 7
    5b04:	8e e1       	ldi	r24, 0x1E	; 30
    5b06:	0e 94 37 10 	call	0x206e	; 0x206e <_Z8DrawRecthhhhh>
    5b0a:	60 91 21 05 	lds	r22, 0x0521	; 0x800521 <UIState+0x7>
    5b0e:	8a e0       	ldi	r24, 0x0A	; 10
    5b10:	68 9f       	mul	r22, r24
    5b12:	60 2d       	mov	r22, r0
    5b14:	11 24       	eor	r1, r1
    5b16:	64 5f       	subi	r22, 0xF4	; 244
    5b18:	2a e0       	ldi	r18, 0x0A	; 10
    5b1a:	40 e4       	ldi	r20, 0x40	; 64
    5b1c:	80 e2       	ldi	r24, 0x20	; 32
    5b1e:	0e 94 dc 10 	call	0x21b8	; 0x21b8 <_Z14DrawCursorRecthhhh>
    5b22:	4e e0       	ldi	r20, 0x0E	; 14
    5b24:	62 e2       	ldi	r22, 0x22	; 34
    5b26:	81 e9       	ldi	r24, 0x91	; 145
    5b28:	98 e0       	ldi	r25, 0x08	; 8
    5b2a:	0e 94 20 10 	call	0x2040	; 0x2040 <_Z10DrawStringPKchh>
    5b2e:	48 e1       	ldi	r20, 0x18	; 24
    5b30:	62 e2       	ldi	r22, 0x22	; 34
    5b32:	87 e8       	ldi	r24, 0x87	; 135
    5b34:	98 e0       	ldi	r25, 0x08	; 8
    5b36:	0e 94 20 10 	call	0x2040	; 0x2040 <_Z10DrawStringPKchh>
    5b3a:	42 e2       	ldi	r20, 0x22	; 34
    5b3c:	62 e2       	ldi	r22, 0x22	; 34
    5b3e:	8e e7       	ldi	r24, 0x7E	; 126
    5b40:	98 e0       	ldi	r25, 0x08	; 8
    5b42:	0e 94 20 10 	call	0x2040	; 0x2040 <_Z10DrawStringPKchh>
    5b46:	4c e2       	ldi	r20, 0x2C	; 44
    5b48:	62 e2       	ldi	r22, 0x22	; 34
    5b4a:	81 e7       	ldi	r24, 0x71	; 113
    5b4c:	98 e0       	ldi	r25, 0x08	; 8
    5b4e:	0e 94 20 10 	call	0x2040	; 0x2040 <_Z10DrawStringPKchh>
    5b52:	80 91 23 05 	lds	r24, 0x0523	; 0x800523 <UIState+0x9>
    5b56:	80 ff       	sbrs	r24, 0
    5b58:	05 c0       	rjmp	.+10     	; 0x5b64 <main+0x1afc>
    5b5a:	8e e6       	ldi	r24, 0x6E	; 110
    5b5c:	98 e0       	ldi	r25, 0x08	; 8
    5b5e:	4c e2       	ldi	r20, 0x2C	; 44
    5b60:	62 e5       	ldi	r22, 0x52	; 82
    5b62:	05 cc       	rjmp	.-2038   	; 0x536e <main+0x1306>
    5b64:	8a e6       	ldi	r24, 0x6A	; 106
    5b66:	98 e0       	ldi	r25, 0x08	; 8
    5b68:	fa cf       	rjmp	.-12     	; 0x5b5e <main+0x1af6>
    5b6a:	8c e6       	ldi	r24, 0x6C	; 108
    5b6c:	97 e0       	ldi	r25, 0x07	; 7
    5b6e:	34 cb       	rjmp	.-2456   	; 0x51d8 <main+0x1170>
    5b70:	81 10       	cpse	r8, r1
    5b72:	16 c9       	rjmp	.-3540   	; 0x4da0 <main+0xd38>
    5b74:	00 e0       	ldi	r16, 0x00	; 0
    5b76:	17 c9       	rjmp	.-3538   	; 0x4da6 <main+0xd3e>

00005b78 <__strlen_P>:
    5b78:	fc 01       	movw	r30, r24
    5b7a:	05 90       	lpm	r0, Z+
    5b7c:	00 20       	and	r0, r0
    5b7e:	e9 f7       	brne	.-6      	; 0x5b7a <__strlen_P+0x2>
    5b80:	80 95       	com	r24
    5b82:	90 95       	com	r25
    5b84:	8e 0f       	add	r24, r30
    5b86:	9f 1f       	adc	r25, r31
    5b88:	08 95       	ret

00005b8a <eeprom_read_byte>:
    5b8a:	f9 99       	sbic	0x1f, 1	; 31
    5b8c:	fe cf       	rjmp	.-4      	; 0x5b8a <eeprom_read_byte>
    5b8e:	92 bd       	out	0x22, r25	; 34
    5b90:	81 bd       	out	0x21, r24	; 33
    5b92:	f8 9a       	sbi	0x1f, 0	; 31
    5b94:	99 27       	eor	r25, r25
    5b96:	80 b5       	in	r24, 0x20	; 32
    5b98:	08 95       	ret

00005b9a <eeprom_write_byte>:
    5b9a:	26 2f       	mov	r18, r22

00005b9c <eeprom_write_r18>:
    5b9c:	f9 99       	sbic	0x1f, 1	; 31
    5b9e:	fe cf       	rjmp	.-4      	; 0x5b9c <eeprom_write_r18>
    5ba0:	1f ba       	out	0x1f, r1	; 31
    5ba2:	92 bd       	out	0x22, r25	; 34
    5ba4:	81 bd       	out	0x21, r24	; 33
    5ba6:	20 bd       	out	0x20, r18	; 32
    5ba8:	0f b6       	in	r0, 0x3f	; 63
    5baa:	f8 94       	cli
    5bac:	fa 9a       	sbi	0x1f, 2	; 31
    5bae:	f9 9a       	sbi	0x1f, 1	; 31
    5bb0:	0f be       	out	0x3f, r0	; 63
    5bb2:	01 96       	adiw	r24, 0x01	; 1
    5bb4:	08 95       	ret

00005bb6 <__divmodsi4>:
    5bb6:	05 2e       	mov	r0, r21
    5bb8:	97 fb       	bst	r25, 7
    5bba:	1e f4       	brtc	.+6      	; 0x5bc2 <__divmodsi4+0xc>
    5bbc:	00 94       	com	r0
    5bbe:	0e 94 f2 2d 	call	0x5be4	; 0x5be4 <__negsi2>
    5bc2:	57 fd       	sbrc	r21, 7
    5bc4:	07 d0       	rcall	.+14     	; 0x5bd4 <__divmodsi4_neg2>
    5bc6:	0e 94 fa 2d 	call	0x5bf4	; 0x5bf4 <__udivmodsi4>
    5bca:	07 fc       	sbrc	r0, 7
    5bcc:	03 d0       	rcall	.+6      	; 0x5bd4 <__divmodsi4_neg2>
    5bce:	4e f4       	brtc	.+18     	; 0x5be2 <__divmodsi4_exit>
    5bd0:	0c 94 f2 2d 	jmp	0x5be4	; 0x5be4 <__negsi2>

00005bd4 <__divmodsi4_neg2>:
    5bd4:	50 95       	com	r21
    5bd6:	40 95       	com	r20
    5bd8:	30 95       	com	r19
    5bda:	21 95       	neg	r18
    5bdc:	3f 4f       	sbci	r19, 0xFF	; 255
    5bde:	4f 4f       	sbci	r20, 0xFF	; 255
    5be0:	5f 4f       	sbci	r21, 0xFF	; 255

00005be2 <__divmodsi4_exit>:
    5be2:	08 95       	ret

00005be4 <__negsi2>:
    5be4:	90 95       	com	r25
    5be6:	80 95       	com	r24
    5be8:	70 95       	com	r23
    5bea:	61 95       	neg	r22
    5bec:	7f 4f       	sbci	r23, 0xFF	; 255
    5bee:	8f 4f       	sbci	r24, 0xFF	; 255
    5bf0:	9f 4f       	sbci	r25, 0xFF	; 255
    5bf2:	08 95       	ret

00005bf4 <__udivmodsi4>:
    5bf4:	a1 e2       	ldi	r26, 0x21	; 33
    5bf6:	1a 2e       	mov	r1, r26
    5bf8:	aa 1b       	sub	r26, r26
    5bfa:	bb 1b       	sub	r27, r27
    5bfc:	fd 01       	movw	r30, r26
    5bfe:	0d c0       	rjmp	.+26     	; 0x5c1a <__udivmodsi4_ep>

00005c00 <__udivmodsi4_loop>:
    5c00:	aa 1f       	adc	r26, r26
    5c02:	bb 1f       	adc	r27, r27
    5c04:	ee 1f       	adc	r30, r30
    5c06:	ff 1f       	adc	r31, r31
    5c08:	a2 17       	cp	r26, r18
    5c0a:	b3 07       	cpc	r27, r19
    5c0c:	e4 07       	cpc	r30, r20
    5c0e:	f5 07       	cpc	r31, r21
    5c10:	20 f0       	brcs	.+8      	; 0x5c1a <__udivmodsi4_ep>
    5c12:	a2 1b       	sub	r26, r18
    5c14:	b3 0b       	sbc	r27, r19
    5c16:	e4 0b       	sbc	r30, r20
    5c18:	f5 0b       	sbc	r31, r21

00005c1a <__udivmodsi4_ep>:
    5c1a:	66 1f       	adc	r22, r22
    5c1c:	77 1f       	adc	r23, r23
    5c1e:	88 1f       	adc	r24, r24
    5c20:	99 1f       	adc	r25, r25
    5c22:	1a 94       	dec	r1
    5c24:	69 f7       	brne	.-38     	; 0x5c00 <__udivmodsi4_loop>
    5c26:	60 95       	com	r22
    5c28:	70 95       	com	r23
    5c2a:	80 95       	com	r24
    5c2c:	90 95       	com	r25
    5c2e:	9b 01       	movw	r18, r22
    5c30:	ac 01       	movw	r20, r24
    5c32:	bd 01       	movw	r22, r26
    5c34:	cf 01       	movw	r24, r30
    5c36:	08 95       	ret

00005c38 <__umulhisi3>:
    5c38:	a2 9f       	mul	r26, r18
    5c3a:	b0 01       	movw	r22, r0
    5c3c:	b3 9f       	mul	r27, r19
    5c3e:	c0 01       	movw	r24, r0
    5c40:	a3 9f       	mul	r26, r19
    5c42:	70 0d       	add	r23, r0
    5c44:	81 1d       	adc	r24, r1
    5c46:	11 24       	eor	r1, r1
    5c48:	91 1d       	adc	r25, r1
    5c4a:	b2 9f       	mul	r27, r18
    5c4c:	70 0d       	add	r23, r0
    5c4e:	81 1d       	adc	r24, r1
    5c50:	11 24       	eor	r1, r1
    5c52:	91 1d       	adc	r25, r1
    5c54:	08 95       	ret

00005c56 <__udivmodhi4>:
    5c56:	aa 1b       	sub	r26, r26
    5c58:	bb 1b       	sub	r27, r27
    5c5a:	51 e1       	ldi	r21, 0x11	; 17
    5c5c:	07 c0       	rjmp	.+14     	; 0x5c6c <__udivmodhi4_ep>

00005c5e <__udivmodhi4_loop>:
    5c5e:	aa 1f       	adc	r26, r26
    5c60:	bb 1f       	adc	r27, r27
    5c62:	a6 17       	cp	r26, r22
    5c64:	b7 07       	cpc	r27, r23
    5c66:	10 f0       	brcs	.+4      	; 0x5c6c <__udivmodhi4_ep>
    5c68:	a6 1b       	sub	r26, r22
    5c6a:	b7 0b       	sbc	r27, r23

00005c6c <__udivmodhi4_ep>:
    5c6c:	88 1f       	adc	r24, r24
    5c6e:	99 1f       	adc	r25, r25
    5c70:	5a 95       	dec	r21
    5c72:	a9 f7       	brne	.-22     	; 0x5c5e <__udivmodhi4_loop>
    5c74:	80 95       	com	r24
    5c76:	90 95       	com	r25
    5c78:	bc 01       	movw	r22, r24
    5c7a:	cd 01       	movw	r24, r26
    5c7c:	08 95       	ret

00005c7e <__divmodhi4>:
    5c7e:	97 fb       	bst	r25, 7
    5c80:	07 2e       	mov	r0, r23
    5c82:	16 f4       	brtc	.+4      	; 0x5c88 <__divmodhi4+0xa>
    5c84:	00 94       	com	r0
    5c86:	07 d0       	rcall	.+14     	; 0x5c96 <__divmodhi4_neg1>
    5c88:	77 fd       	sbrc	r23, 7
    5c8a:	09 d0       	rcall	.+18     	; 0x5c9e <__divmodhi4_neg2>
    5c8c:	0e 94 2b 2e 	call	0x5c56	; 0x5c56 <__udivmodhi4>
    5c90:	07 fc       	sbrc	r0, 7
    5c92:	05 d0       	rcall	.+10     	; 0x5c9e <__divmodhi4_neg2>
    5c94:	3e f4       	brtc	.+14     	; 0x5ca4 <__divmodhi4_exit>

00005c96 <__divmodhi4_neg1>:
    5c96:	90 95       	com	r25
    5c98:	81 95       	neg	r24
    5c9a:	9f 4f       	sbci	r25, 0xFF	; 255
    5c9c:	08 95       	ret

00005c9e <__divmodhi4_neg2>:
    5c9e:	70 95       	com	r23
    5ca0:	61 95       	neg	r22
    5ca2:	7f 4f       	sbci	r23, 0xFF	; 255

00005ca4 <__divmodhi4_exit>:
    5ca4:	08 95       	ret

00005ca6 <__tablejump2__>:
    5ca6:	ee 0f       	add	r30, r30
    5ca8:	ff 1f       	adc	r31, r31
    5caa:	05 90       	lpm	r0, Z+
    5cac:	f4 91       	lpm	r31, Z
    5cae:	e0 2d       	mov	r30, r0
    5cb0:	09 94       	ijmp

00005cb2 <_exit>:
    5cb2:	f8 94       	cli

00005cb4 <__stop_program>:
    5cb4:	ff cf       	rjmp	.-2      	; 0x5cb4 <__stop_program>
