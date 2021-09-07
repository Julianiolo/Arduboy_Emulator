
CastleBoySimple.ino.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
       0:	0c 94 4b 01 	jmp	0x296	; 0x296 <__ctors_end>
       4:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
       8:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
       c:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
      10:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
      14:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
      18:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
      1c:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
      20:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
      24:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
      28:	0c 94 e9 03 	jmp	0x7d2	; 0x7d2 <__vector_10>
      2c:	0c 94 58 04 	jmp	0x8b0	; 0x8b0 <__vector_11>
      30:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
      34:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
      38:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
      3c:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
      40:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
      44:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
      48:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
      4c:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
      50:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
      54:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
      58:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
      5c:	0c 94 8a 06 	jmp	0xd14	; 0xd14 <__vector_23>
      60:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
      64:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
      68:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
      6c:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
      70:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
      74:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
      78:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
      7c:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
      80:	0c 94 d4 06 	jmp	0xda8	; 0xda8 <__vector_32>
      84:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
      88:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
      8c:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
      90:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
      94:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
      98:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
      9c:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
      a0:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
      a4:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>
      a8:	0c 94 73 01 	jmp	0x2e6	; 0x2e6 <__bad_interrupt>

000000ac <__trampolines_end>:
      ac:	d5 f0       	brhs	.+52     	; 0xe2 <_ZN12Arduboy2Base12arduboy_logoE+0x29>
      ae:	8d 14       	cp	r8, r13
      b0:	a1 c8       	rjmp	.-3774   	; 0xfffff1f4 <__eeprom_end+0xff7ef1f4>
      b2:	81 cf       	rjmp	.-254    	; 0xffffffb6 <__eeprom_end+0xff7effb6>
      b4:	d9 f1       	breq	.+118    	; 0x12c <_ZN12Arduboy2Base12arduboy_logoE+0x73>
      b6:	af 20       	and	r10, r15
	...

000000b9 <_ZN12Arduboy2Base12arduboy_logoE>:
      b9:	f0 f8 9c 8e 87 83 87 8e 9c f8 f0 00 00 fe ff 03     ................
      c9:	03 03 03 03 07 0e fc f8 00 00 fe ff 03 03 03 03     ................
      d9:	03 07 0e fc f8 00 00 ff ff 00 00 00 00 00 00 00     ................
      e9:	ff ff 00 00 fe ff 83 83 83 83 83 c7 ee 7c 38 00     .............|8.
      f9:	00 f8 fc 0e 07 03 03 03 07 0e fc f8 00 00 3f 7f     ..............?.
     109:	e0 c0 80 80 c0 e0 7f 3f ff ff 01 01 01 01 01 01     .......?........
     119:	01 ff ff 00 00 ff ff 0c 0c 0c 0c 1c 3e 77 e3 c1     ............>w..
     129:	00 00 7f ff c0 c0 c0 c0 c0 e0 70 3f 1f 00 00 1f     ..........p?....
     139:	3f 70 e0 c0 c0 c0 e0 70 3f 1f 00 00 7f ff c1 c1     ?p.....p?.......
     149:	c1 c1 c1 e3 77 3e 1c 00 00 1f 3f 70 e0 c0 c0 c0     ....w>....?p....
     159:	e0 70 3f 1f 00 00 00 00 00 01 ff ff 01 00 00 00     .p?.............

00000169 <_ZL4logo>:
     169:	1e 2c 00 00 00 00 00 00 00 00 80 c0 e0 f0 f8 fc     .,..............
     179:	fe ff fe fc f8 f0 e0 c0 80 00 00 00 00 00 00 00     ................
     189:	80 40 e0 f0 f8 fc fe ff ff ff ff ff ff ff ff ff     .@..............
     199:	ff ff ff ff ff ff ff ff fe fc f8 f0 e0 c0 07 0f     ................
     1a9:	9e fd fb f7 0f df bf 7f ff ff ff ff ff ff ff ff     ................
     1b9:	ff ff ff ff ff ff ff 1f 0f 07 1f 0f 1e 3f 7f f3     .............?..
     1c9:	e1 c0 00 ff ff 0f 1e 3d 7b f7 0f ff ff 1f 0f 07     .......={.......
     1d9:	1f 0f ff c3 e1 80 c0 e0 7e 3f 00 00 00 00 01 03     ........~?......
     1e9:	00 0f 1f 3c 78 f0 e0 c0 00 c3 e1 80 c0 e0 7e 3f     ...<x.........~?
     1f9:	1f 0f 07 03 01 00 00 00 00 00 00 00 00 00 00 00     ................
     209:	00 00 00 00 01 03 00 0f 07 03 01 00 00 00 00 00     ................
     219:	00 00 00 00 00 00                                   ......

0000021f <_cdcInterface>:
     21f:	08 0b 00 02 02 02 00 00 09 04 00 00 01 02 02 00     ................
     22f:	00 05 24 00 10 01 05 24 01 01 01 04 24 02 06 05     ..$....$....$...
     23f:	24 06 00 01 07 05 81 03 10 00 40 09 04 01 00 02     $.........@.....
     24f:	0a 00 00 00 07 05 02 02 40 00 00 07 05 83 02 40     ........@......@
	...

00000261 <STRING_LANGUAGE>:
     261:	04 03 09 04                                         ....

00000265 <USB_DeviceDescriptorIAD>:
     265:	12 01 00 02 ef 02 01 40 41 23 36 80 00 01 01 02     .......@A#6.....
     275:	03 01                                               ..

00000277 <STRING_MANUFACTURER>:
     277:	41 72 64 75 69 6e 6f 20 4c 4c 43 00                 Arduino LLC.

00000283 <STRING_PRODUCT>:
     283:	41 72 64 75 69 6e 6f 20 4c 65 6f 6e 61 72 64 6f     Arduino Leonardo
	...

00000294 <__ctors_start>:
     294:	09 08       	sbc	r0, r9

00000296 <__ctors_end>:
     296:	11 24       	eor	r1, r1
     298:	1f be       	out	0x3f, r1	; 63
     29a:	cf ef       	ldi	r28, 0xFF	; 255
     29c:	da e0       	ldi	r29, 0x0A	; 10
     29e:	de bf       	out	0x3e, r29	; 62
     2a0:	cd bf       	out	0x3d, r28	; 61

000002a2 <__do_copy_data>:
     2a2:	11 e0       	ldi	r17, 0x01	; 1
     2a4:	a0 e0       	ldi	r26, 0x00	; 0
     2a6:	b1 e0       	ldi	r27, 0x01	; 1
     2a8:	ea e9       	ldi	r30, 0x9A	; 154
     2aa:	f6 e1       	ldi	r31, 0x16	; 22
     2ac:	02 c0       	rjmp	.+4      	; 0x2b2 <__do_copy_data+0x10>
     2ae:	05 90       	lpm	r0, Z+
     2b0:	0d 92       	st	X+, r0
     2b2:	a6 32       	cpi	r26, 0x26	; 38
     2b4:	b1 07       	cpc	r27, r17
     2b6:	d9 f7       	brne	.-10     	; 0x2ae <__do_copy_data+0xc>

000002b8 <__do_clear_bss>:
     2b8:	25 e0       	ldi	r18, 0x05	; 5
     2ba:	a6 e2       	ldi	r26, 0x26	; 38
     2bc:	b1 e0       	ldi	r27, 0x01	; 1
     2be:	01 c0       	rjmp	.+2      	; 0x2c2 <.do_clear_bss_start>

000002c0 <.do_clear_bss_loop>:
     2c0:	1d 92       	st	X+, r1

000002c2 <.do_clear_bss_start>:
     2c2:	a6 3b       	cpi	r26, 0xB6	; 182
     2c4:	b2 07       	cpc	r27, r18
     2c6:	e1 f7       	brne	.-8      	; 0x2c0 <.do_clear_bss_loop>

000002c8 <__do_global_ctors>:
     2c8:	11 e0       	ldi	r17, 0x01	; 1
     2ca:	cb e4       	ldi	r28, 0x4B	; 75
     2cc:	d1 e0       	ldi	r29, 0x01	; 1
     2ce:	04 c0       	rjmp	.+8      	; 0x2d8 <__do_global_ctors+0x10>
     2d0:	21 97       	sbiw	r28, 0x01	; 1
     2d2:	fe 01       	movw	r30, r28
     2d4:	0e 94 45 0b 	call	0x168a	; 0x168a <__tablejump2__>
     2d8:	ca 34       	cpi	r28, 0x4A	; 74
     2da:	d1 07       	cpc	r29, r17
     2dc:	c9 f7       	brne	.-14     	; 0x2d0 <__do_global_ctors+0x8>
     2de:	0e 94 2e 08 	call	0x105c	; 0x105c <main>
     2e2:	0c 94 4b 0b 	jmp	0x1696	; 0x1696 <_exit>

000002e6 <__bad_interrupt>:
     2e6:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000002ea <_ZN13Arduboy2Audio7enabledEv>:
}

bool Arduboy2Audio::enabled()
{
  return audio_enabled;
}
     2ea:	80 91 37 01 	lds	r24, 0x0137	; 0x800137 <_ZN13Arduboy2Audio13audio_enabledE>
     2ee:	08 95       	ret

000002f0 <_ZN12Arduboy2Core11paintScreenEPhb.constprop.17>:
    : [spdr]    "I"   (_SFR_IO_ADDR(SPDR)),
      [spsr]    "I"   (_SFR_IO_ADDR(SPSR)),
      [len_msb] "M"   (WIDTH * (HEIGHT / 8 * 2) >> 8),   // 8: pixels per byte
      [len_lsb] "M"   (WIDTH * (HEIGHT / 8 * 2) & 0xFF), // 2: for delay loop multiplier
      [clear]   "r"   (clear)
  );
     2f0:	e6 e5       	ldi	r30, 0x56	; 86
     2f2:	f1 e0       	ldi	r31, 0x01	; 1
     2f4:	a0 e0       	ldi	r26, 0x00	; 0
     2f6:	b8 e0       	ldi	r27, 0x08	; 8
     2f8:	00 80       	ld	r0, Z
     2fa:	0e bc       	out	0x2e, r0	; 46
     2fc:	81 11       	cpse	r24, r1
     2fe:	01 2c       	mov	r0, r1
     300:	11 97       	sbiw	r26, 0x01	; 1
     302:	a0 fd       	sbrc	r26, 0
     304:	fd cf       	rjmp	.-6      	; 0x300 <_ZN12Arduboy2Core11paintScreenEPhb.constprop.17+0x10>
     306:	01 92       	st	Z+, r0
     308:	b9 f7       	brne	.-18     	; 0x2f8 <_ZN12Arduboy2Core11paintScreenEPhb.constprop.17+0x8>
     30a:	0d b4       	in	r0, 0x2d	; 45
}
     30c:	08 95       	ret

0000030e <_Z8USB_RecvhPvi.constprop.5>:
	return FifoByteCount();
}

//	Non Blocking receive
//	Return number of bytes read
int USB_Recv(u8 ep, void* d, int len)
     30e:	fc 01       	movw	r30, r24
{
	if (!_usbConfiguration || len < 0)
     310:	80 91 55 01 	lds	r24, 0x0155	; 0x800155 <_usbConfiguration>
     314:	88 23       	and	r24, r24
     316:	11 f1       	breq	.+68     	; 0x35c <_Z8USB_RecvhPvi.constprop.5+0x4e>
#define USB_RECV_TIMEOUT
class LockEP
{
	u8 _sreg;
public:
	LockEP(u8 ep) : _sreg(SREG)
     318:	3f b7       	in	r19, 0x3f	; 63
	{
		cli();
     31a:	f8 94       	cli
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
     31c:	82 e0       	ldi	r24, 0x02	; 2
     31e:	80 93 e9 00 	sts	0x00E9, r24	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
}

static inline u8 FifoByteCount()
{
	return UEBCLX;
     322:	20 91 f2 00 	lds	r18, 0x00F2	; 0x8000f2 <__DATA_REGION_ORIGIN__+0x92>
	if (!_usbConfiguration || len < 0)
		return -1;
	
	LockEP lock(ep);
	u8 n = FifoByteCount();
	len = min(n,len);
     326:	82 2f       	mov	r24, r18
     328:	90 e0       	ldi	r25, 0x00	; 0
     32a:	18 16       	cp	r1, r24
     32c:	19 06       	cpc	r1, r25
     32e:	14 f4       	brge	.+4      	; 0x334 <_Z8USB_RecvhPvi.constprop.5+0x26>
     330:	81 e0       	ldi	r24, 0x01	; 1
     332:	90 e0       	ldi	r25, 0x00	; 0
	n = len;
	u8* dst = (u8*)d;
	while (n--)
     334:	88 23       	and	r24, r24
     336:	39 f0       	breq	.+14     	; 0x346 <_Z8USB_RecvhPvi.constprop.5+0x38>
	RxLEDPulse = TX_RX_LED_PULSE_MS;	
}

static inline u8 Recv8()
{
	RXLED1;					// light the RX LED
     338:	28 98       	cbi	0x05, 0	; 5
	RxLEDPulse = TX_RX_LED_PULSE_MS;
     33a:	44 e6       	ldi	r20, 0x64	; 100
     33c:	40 93 54 01 	sts	0x0154, r20	; 0x800154 <RxLEDPulse>

	return UEDATX;	
     340:	40 91 f1 00 	lds	r20, 0x00F1	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
	u8 n = FifoByteCount();
	len = min(n,len);
	n = len;
	u8* dst = (u8*)d;
	while (n--)
		*dst++ = Recv8();
     344:	40 83       	st	Z, r20
	if (len && !FifoByteCount())	// release empty buffer
     346:	22 23       	and	r18, r18
     348:	39 f0       	breq	.+14     	; 0x358 <_Z8USB_RecvhPvi.constprop.5+0x4a>
	UENUM = ep;
}

static inline u8 FifoByteCount()
{
	return UEBCLX;
     34a:	20 91 f2 00 	lds	r18, 0x00F2	; 0x8000f2 <__DATA_REGION_ORIGIN__+0x92>
	len = min(n,len);
	n = len;
	u8* dst = (u8*)d;
	while (n--)
		*dst++ = Recv8();
	if (len && !FifoByteCount())	// release empty buffer
     34e:	21 11       	cpse	r18, r1
     350:	03 c0       	rjmp	.+6      	; 0x358 <_Z8USB_RecvhPvi.constprop.5+0x4a>
	return UEINTX & (1<<FIFOCON);
}

static inline void ReleaseRX()
{
	UEINTX = 0x6B;	// FIFOCON=0 NAKINI=1 RWAL=1 NAKOUTI=0 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=1
     352:	2b e6       	ldi	r18, 0x6B	; 107
     354:	20 93 e8 00 	sts	0x00E8, r18	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
		cli();
		SetEP(ep & 7);
	}
	~LockEP()
	{
		SREG = _sreg;
     358:	3f bf       	out	0x3f, r19	; 63
     35a:	08 95       	ret
//	Non Blocking receive
//	Return number of bytes read
int USB_Recv(u8 ep, void* d, int len)
{
	if (!_usbConfiguration || len < 0)
		return -1;
     35c:	8f ef       	ldi	r24, 0xFF	; 255
     35e:	9f ef       	ldi	r25, 0xFF	; 255
		*dst++ = Recv8();
	if (len && !FifoByteCount())	// release empty buffer
		ReleaseRX();
	
	return len;
}
     360:	08 95       	ret

00000362 <_Z13USB_SendSpaceh.constprop.3>:
#define USB_RECV_TIMEOUT
class LockEP
{
	u8 _sreg;
public:
	LockEP(u8 ep) : _sreg(SREG)
     362:	2f b7       	in	r18, 0x3f	; 63
	{
		cli();
     364:	f8 94       	cli
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
     366:	83 e0       	ldi	r24, 0x03	; 3
     368:	80 93 e9 00 	sts	0x00E9, r24	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
	UECONX = (1<<STALLRQ) | (1<<EPEN);
}

static inline u8 ReadWriteAllowed()
{
	return UEINTX & (1<<RWAL);
     36c:	90 91 e8 00 	lds	r25, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>

//	Space in send EP
u8 USB_SendSpace(u8 ep)
{
	LockEP lock(ep);
	if (!ReadWriteAllowed())
     370:	89 2f       	mov	r24, r25
     372:	80 72       	andi	r24, 0x20	; 32
     374:	95 ff       	sbrs	r25, 5
     376:	04 c0       	rjmp	.+8      	; 0x380 <_Z13USB_SendSpaceh.constprop.3+0x1e>
	UENUM = ep;
}

static inline u8 FifoByteCount()
{
	return UEBCLX;
     378:	90 91 f2 00 	lds	r25, 0x00F2	; 0x8000f2 <__DATA_REGION_ORIGIN__+0x92>
u8 USB_SendSpace(u8 ep)
{
	LockEP lock(ep);
	if (!ReadWriteAllowed())
		return 0;
	return USB_EP_SIZE - FifoByteCount();
     37c:	80 e4       	ldi	r24, 0x40	; 64
     37e:	89 1b       	sub	r24, r25
		cli();
		SetEP(ep & 7);
	}
	~LockEP()
	{
		SREG = _sreg;
     380:	2f bf       	out	0x3f, r18	; 63
{
	LockEP lock(ep);
	if (!ReadWriteAllowed())
		return 0;
	return USB_EP_SIZE - FifoByteCount();
}
     382:	08 95       	ret

00000384 <_Z12PluggableUSBv>:
	// restart USB layer???
}

PluggableUSB_& PluggableUSB()
{
	static PluggableUSB_ obj;
     384:	80 91 4c 01 	lds	r24, 0x014C	; 0x80014c <_ZGVZ12PluggableUSBvE3obj>
     388:	81 11       	cpse	r24, r1
     38a:	0d c0       	rjmp	.+26     	; 0x3a6 <_Z12PluggableUSBv+0x22>
	return obj;
}

PluggableUSB_::PluggableUSB_() : lastIf(CDC_ACM_INTERFACE + CDC_INTERFACE_COUNT),
                                 lastEp(CDC_FIRST_ENDPOINT + CDC_ENPOINT_COUNT),
                                 rootNode(NULL)
     38c:	82 e0       	ldi	r24, 0x02	; 2
     38e:	80 93 48 01 	sts	0x0148, r24	; 0x800148 <_ZZ12PluggableUSBvE3obj>
     392:	84 e0       	ldi	r24, 0x04	; 4
     394:	80 93 49 01 	sts	0x0149, r24	; 0x800149 <_ZZ12PluggableUSBvE3obj+0x1>
     398:	10 92 4b 01 	sts	0x014B, r1	; 0x80014b <_ZZ12PluggableUSBvE3obj+0x3>
     39c:	10 92 4a 01 	sts	0x014A, r1	; 0x80014a <_ZZ12PluggableUSBvE3obj+0x2>
	// restart USB layer???
}

PluggableUSB_& PluggableUSB()
{
	static PluggableUSB_ obj;
     3a0:	81 e0       	ldi	r24, 0x01	; 1
     3a2:	80 93 4c 01 	sts	0x014C, r24	; 0x80014c <_ZGVZ12PluggableUSBvE3obj>
	return obj;
}
     3a6:	88 e4       	ldi	r24, 0x48	; 72
     3a8:	91 e0       	ldi	r25, 0x01	; 1
     3aa:	08 95       	ret

000003ac <_ZN7Serial_5writeEh>:
{
	USB_Flush(CDC_TX);
}

size_t Serial_::write(uint8_t c)
{
     3ac:	cf 93       	push	r28
     3ae:	df 93       	push	r29
     3b0:	1f 92       	push	r1
     3b2:	cd b7       	in	r28, 0x3d	; 61
     3b4:	de b7       	in	r29, 0x3e	; 62
     3b6:	69 83       	std	Y+1, r22	; 0x01
	return write(&c, 1);
     3b8:	dc 01       	movw	r26, r24
     3ba:	ed 91       	ld	r30, X+
     3bc:	fc 91       	ld	r31, X
     3be:	02 80       	ldd	r0, Z+2	; 0x02
     3c0:	f3 81       	ldd	r31, Z+3	; 0x03
     3c2:	e0 2d       	mov	r30, r0
     3c4:	41 e0       	ldi	r20, 0x01	; 1
     3c6:	50 e0       	ldi	r21, 0x00	; 0
     3c8:	be 01       	movw	r22, r28
     3ca:	6f 5f       	subi	r22, 0xFF	; 255
     3cc:	7f 4f       	sbci	r23, 0xFF	; 255
     3ce:	09 95       	icall
}
     3d0:	0f 90       	pop	r0
     3d2:	df 91       	pop	r29
     3d4:	cf 91       	pop	r28
     3d6:	08 95       	ret

000003d8 <_ZN7Serial_5flushEv>:
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
     3d8:	83 e0       	ldi	r24, 0x03	; 3
     3da:	80 93 e9 00 	sts	0x00E9, r24	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
}

static inline u8 FifoByteCount()
{
	return UEBCLX;
     3de:	80 91 f2 00 	lds	r24, 0x00F2	; 0x8000f2 <__DATA_REGION_ORIGIN__+0x92>
}

void USB_Flush(u8 ep)
{
	SetEP(ep);
	if (FifoByteCount())
     3e2:	88 23       	and	r24, r24
     3e4:	19 f0       	breq	.+6      	; 0x3ec <_ZN7Serial_5flushEv+0x14>
	UEINTX = 0x6B;	// FIFOCON=0 NAKINI=1 RWAL=1 NAKOUTI=0 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=1
}

static inline void ReleaseTX()
{
	UEINTX = 0x3A;	// FIFOCON=0 NAKINI=0 RWAL=1 NAKOUTI=1 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=0
     3e6:	8a e3       	ldi	r24, 0x3A	; 58
     3e8:	80 93 e8 00 	sts	0x00E8, r24	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
}

void Serial_::flush(void)
{
	USB_Flush(CDC_TX);
}
     3ec:	08 95       	ret

000003ee <_ZN7Serial_17availableForWriteEv>:
	return USB_Recv(CDC_RX);
}

int Serial_::availableForWrite(void)
{
	return USB_SendSpace(CDC_TX);
     3ee:	0e 94 b1 01 	call	0x362	; 0x362 <_Z13USB_SendSpaceh.constprop.3>
}
     3f2:	90 e0       	ldi	r25, 0x00	; 0
     3f4:	08 95       	ret

000003f6 <_ZN7Serial_4readEv>:
		peek_buffer = USB_Recv(CDC_RX);
	return peek_buffer;
}

int Serial_::read(void)
{
     3f6:	cf 93       	push	r28
     3f8:	df 93       	push	r29
     3fa:	1f 92       	push	r1
     3fc:	cd b7       	in	r28, 0x3d	; 61
     3fe:	de b7       	in	r29, 0x3e	; 62
     400:	fc 01       	movw	r30, r24
	if (peek_buffer >= 0) {
     402:	84 85       	ldd	r24, Z+12	; 0x0c
     404:	95 85       	ldd	r25, Z+13	; 0x0d
     406:	97 fd       	sbrc	r25, 7
     408:	08 c0       	rjmp	.+16     	; 0x41a <__LOCK_REGION_LENGTH__+0x1a>
		int c = peek_buffer;
		peek_buffer = -1;
     40a:	2f ef       	ldi	r18, 0xFF	; 255
     40c:	3f ef       	ldi	r19, 0xFF	; 255
     40e:	35 87       	std	Z+13, r19	; 0x0d
     410:	24 87       	std	Z+12, r18	; 0x0c
		return c;
	}
	return USB_Recv(CDC_RX);
}
     412:	0f 90       	pop	r0
     414:	df 91       	pop	r29
     416:	cf 91       	pop	r28
     418:	08 95       	ret

//	Recv 1 byte if ready
int USB_Recv(u8 ep)
{
	u8 c;
	if (USB_Recv(ep,&c,1) != 1)
     41a:	ce 01       	movw	r24, r28
     41c:	01 96       	adiw	r24, 0x01	; 1
     41e:	0e 94 87 01 	call	0x30e	; 0x30e <_Z8USB_RecvhPvi.constprop.5>
     422:	01 97       	sbiw	r24, 0x01	; 1
     424:	19 f4       	brne	.+6      	; 0x42c <__LOCK_REGION_LENGTH__+0x2c>
		return -1;
	return c;
     426:	89 81       	ldd	r24, Y+1	; 0x01
     428:	90 e0       	ldi	r25, 0x00	; 0
     42a:	f3 cf       	rjmp	.-26     	; 0x412 <__LOCK_REGION_LENGTH__+0x12>
//	Recv 1 byte if ready
int USB_Recv(u8 ep)
{
	u8 c;
	if (USB_Recv(ep,&c,1) != 1)
		return -1;
     42c:	8f ef       	ldi	r24, 0xFF	; 255
     42e:	9f ef       	ldi	r25, 0xFF	; 255
     430:	f0 cf       	rjmp	.-32     	; 0x412 <__LOCK_REGION_LENGTH__+0x12>

00000432 <_ZN7Serial_4peekEv>:
	}
	return USB_Available(CDC_RX);
}

int Serial_::peek(void)
{
     432:	0f 93       	push	r16
     434:	1f 93       	push	r17
     436:	cf 93       	push	r28
     438:	df 93       	push	r29
     43a:	1f 92       	push	r1
     43c:	cd b7       	in	r28, 0x3d	; 61
     43e:	de b7       	in	r29, 0x3e	; 62
     440:	8c 01       	movw	r16, r24
	if (peek_buffer < 0)
     442:	fc 01       	movw	r30, r24
     444:	84 85       	ldd	r24, Z+12	; 0x0c
     446:	95 85       	ldd	r25, Z+13	; 0x0d
     448:	97 ff       	sbrs	r25, 7
     44a:	0b c0       	rjmp	.+22     	; 0x462 <_ZN7Serial_4peekEv+0x30>

//	Recv 1 byte if ready
int USB_Recv(u8 ep)
{
	u8 c;
	if (USB_Recv(ep,&c,1) != 1)
     44c:	ce 01       	movw	r24, r28
     44e:	01 96       	adiw	r24, 0x01	; 1
     450:	0e 94 87 01 	call	0x30e	; 0x30e <_Z8USB_RecvhPvi.constprop.5>
     454:	01 97       	sbiw	r24, 0x01	; 1
     456:	71 f4       	brne	.+28     	; 0x474 <_ZN7Serial_4peekEv+0x42>
		return -1;
	return c;
     458:	89 81       	ldd	r24, Y+1	; 0x01
     45a:	90 e0       	ldi	r25, 0x00	; 0
		peek_buffer = USB_Recv(CDC_RX);
     45c:	f8 01       	movw	r30, r16
     45e:	95 87       	std	Z+13, r25	; 0x0d
     460:	84 87       	std	Z+12, r24	; 0x0c
	return peek_buffer;
}
     462:	f8 01       	movw	r30, r16
     464:	84 85       	ldd	r24, Z+12	; 0x0c
     466:	95 85       	ldd	r25, Z+13	; 0x0d
     468:	0f 90       	pop	r0
     46a:	df 91       	pop	r29
     46c:	cf 91       	pop	r28
     46e:	1f 91       	pop	r17
     470:	0f 91       	pop	r16
     472:	08 95       	ret
//	Recv 1 byte if ready
int USB_Recv(u8 ep)
{
	u8 c;
	if (USB_Recv(ep,&c,1) != 1)
		return -1;
     474:	8f ef       	ldi	r24, 0xFF	; 255
     476:	9f ef       	ldi	r25, 0xFF	; 255
     478:	f1 cf       	rjmp	.-30     	; 0x45c <_ZN7Serial_4peekEv+0x2a>

0000047a <_ZN7Serial_9availableEv>:
{
}

int Serial_::available(void)
{
	if (peek_buffer >= 0) {
     47a:	fc 01       	movw	r30, r24
     47c:	84 85       	ldd	r24, Z+12	; 0x0c
     47e:	95 85       	ldd	r25, Z+13	; 0x0d
     480:	97 fd       	sbrc	r25, 7
     482:	0b c0       	rjmp	.+22     	; 0x49a <_ZN7Serial_9availableEv+0x20>
#define USB_RECV_TIMEOUT
class LockEP
{
	u8 _sreg;
public:
	LockEP(u8 ep) : _sreg(SREG)
     484:	9f b7       	in	r25, 0x3f	; 63
	{
		cli();
     486:	f8 94       	cli
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
     488:	82 e0       	ldi	r24, 0x02	; 2
     48a:	80 93 e9 00 	sts	0x00E9, r24	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
}

static inline u8 FifoByteCount()
{
	return UEBCLX;
     48e:	80 91 f2 00 	lds	r24, 0x00F2	; 0x8000f2 <__DATA_REGION_ORIGIN__+0x92>
		cli();
		SetEP(ep & 7);
	}
	~LockEP()
	{
		SREG = _sreg;
     492:	9f bf       	out	0x3f, r25	; 63
		return 1 + USB_Available(CDC_RX);
     494:	90 e0       	ldi	r25, 0x00	; 0
     496:	01 96       	adiw	r24, 0x01	; 1
     498:	08 95       	ret
#define USB_RECV_TIMEOUT
class LockEP
{
	u8 _sreg;
public:
	LockEP(u8 ep) : _sreg(SREG)
     49a:	9f b7       	in	r25, 0x3f	; 63
	{
		cli();
     49c:	f8 94       	cli
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
     49e:	82 e0       	ldi	r24, 0x02	; 2
     4a0:	80 93 e9 00 	sts	0x00E9, r24	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
}

static inline u8 FifoByteCount()
{
	return UEBCLX;
     4a4:	80 91 f2 00 	lds	r24, 0x00F2	; 0x8000f2 <__DATA_REGION_ORIGIN__+0x92>
		cli();
		SetEP(ep & 7);
	}
	~LockEP()
	{
		SREG = _sreg;
     4a8:	9f bf       	out	0x3f, r25	; 63
	}
	return USB_Available(CDC_RX);
     4aa:	90 e0       	ldi	r25, 0x00	; 0
}
     4ac:	08 95       	ret

000004ae <_ZL11SendControlh>:
}

static
bool SendControl(u8 d)
{
	if (_cmark < _cend)
     4ae:	40 91 42 01 	lds	r20, 0x0142	; 0x800142 <_ZL6_cmark>
     4b2:	50 91 43 01 	lds	r21, 0x0143	; 0x800143 <_ZL6_cmark+0x1>
     4b6:	20 91 40 01 	lds	r18, 0x0140	; 0x800140 <_ZL5_cend>
     4ba:	30 91 41 01 	lds	r19, 0x0141	; 0x800141 <_ZL5_cend+0x1>
     4be:	42 17       	cp	r20, r18
     4c0:	53 07       	cpc	r21, r19
     4c2:	b4 f4       	brge	.+44     	; 0x4f0 <_ZL11SendControlh+0x42>
		;
}

static inline u8 WaitForINOrOUT()
{
	while (!(UEINTX & ((1<<TXINI)|(1<<RXOUTI))))
     4c4:	90 91 e8 00 	lds	r25, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
     4c8:	95 70       	andi	r25, 0x05	; 5
     4ca:	e1 f3       	breq	.-8      	; 0x4c4 <_ZL11SendControlh+0x16>
		;
	return (UEINTX & (1<<RXOUTI)) == 0;
     4cc:	90 91 e8 00 	lds	r25, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
static
bool SendControl(u8 d)
{
	if (_cmark < _cend)
	{
		if (!WaitForINOrOUT())
     4d0:	92 fd       	sbrc	r25, 2
     4d2:	19 c0       	rjmp	.+50     	; 0x506 <_ZL11SendControlh+0x58>
	return UEDATX;	
}

static inline void Send8(u8 d)
{
	UEDATX = d;
     4d4:	80 93 f1 00 	sts	0x00F1, r24	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
	if (_cmark < _cend)
	{
		if (!WaitForINOrOUT())
			return false;
		Send8(d);
		if (!((_cmark + 1) & 0x3F))
     4d8:	80 91 42 01 	lds	r24, 0x0142	; 0x800142 <_ZL6_cmark>
     4dc:	90 91 43 01 	lds	r25, 0x0143	; 0x800143 <_ZL6_cmark+0x1>
     4e0:	01 96       	adiw	r24, 0x01	; 1
     4e2:	8f 73       	andi	r24, 0x3F	; 63
     4e4:	99 27       	eor	r25, r25
     4e6:	89 2b       	or	r24, r25
     4e8:	19 f4       	brne	.+6      	; 0x4f0 <_ZL11SendControlh+0x42>
		;
}

static inline void ClearIN(void)
{
	UEINTX = ~(1<<TXINI);
     4ea:	8e ef       	ldi	r24, 0xFE	; 254
     4ec:	80 93 e8 00 	sts	0x00E8, r24	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
			return false;
		Send8(d);
		if (!((_cmark + 1) & 0x3F))
			ClearIN();	// Fifo is full, release this packet
	}
	_cmark++;
     4f0:	80 91 42 01 	lds	r24, 0x0142	; 0x800142 <_ZL6_cmark>
     4f4:	90 91 43 01 	lds	r25, 0x0143	; 0x800143 <_ZL6_cmark+0x1>
     4f8:	01 96       	adiw	r24, 0x01	; 1
     4fa:	90 93 43 01 	sts	0x0143, r25	; 0x800143 <_ZL6_cmark+0x1>
     4fe:	80 93 42 01 	sts	0x0142, r24	; 0x800142 <_ZL6_cmark>
	return true;
     502:	81 e0       	ldi	r24, 0x01	; 1
     504:	08 95       	ret
bool SendControl(u8 d)
{
	if (_cmark < _cend)
	{
		if (!WaitForINOrOUT())
			return false;
     506:	80 e0       	ldi	r24, 0x00	; 0
		if (!((_cmark + 1) & 0x3F))
			ClearIN();	// Fifo is full, release this packet
	}
	_cmark++;
	return true;
}
     508:	08 95       	ret

0000050a <_Z15USB_SendControlhPKvi>:

//	Clipped by _cmark/_cend
int USB_SendControl(u8 flags, const void* d, int len)
{
     50a:	df 92       	push	r13
     50c:	ef 92       	push	r14
     50e:	ff 92       	push	r15
     510:	0f 93       	push	r16
     512:	1f 93       	push	r17
     514:	cf 93       	push	r28
     516:	df 93       	push	r29
     518:	d8 2e       	mov	r13, r24
     51a:	8a 01       	movw	r16, r20
     51c:	eb 01       	movw	r28, r22
     51e:	7b 01       	movw	r14, r22
     520:	e4 0e       	add	r14, r20
     522:	f5 1e       	adc	r15, r21
	int sent = len;
	const u8* data = (const u8*)d;
	bool pgm = flags & TRANSFER_PGM;
	while (len--)
     524:	ce 15       	cp	r28, r14
     526:	df 05       	cpc	r29, r15
     528:	59 f0       	breq	.+22     	; 0x540 <_Z15USB_SendControlhPKvi+0x36>
	{
		u8 c = pgm ? pgm_read_byte(data++) : *data++;
     52a:	d7 fe       	sbrs	r13, 7
     52c:	12 c0       	rjmp	.+36     	; 0x552 <_Z15USB_SendControlhPKvi+0x48>
     52e:	fe 01       	movw	r30, r28
     530:	84 91       	lpm	r24, Z
		if (!SendControl(c))
     532:	0e 94 57 02 	call	0x4ae	; 0x4ae <_ZL11SendControlh>
     536:	21 96       	adiw	r28, 0x01	; 1
     538:	81 11       	cpse	r24, r1
     53a:	f4 cf       	rjmp	.-24     	; 0x524 <_Z15USB_SendControlhPKvi+0x1a>
			return -1;
     53c:	0f ef       	ldi	r16, 0xFF	; 255
     53e:	1f ef       	ldi	r17, 0xFF	; 255
	}
	return sent;
}
     540:	c8 01       	movw	r24, r16
     542:	df 91       	pop	r29
     544:	cf 91       	pop	r28
     546:	1f 91       	pop	r17
     548:	0f 91       	pop	r16
     54a:	ff 90       	pop	r15
     54c:	ef 90       	pop	r14
     54e:	df 90       	pop	r13
     550:	08 95       	ret
	int sent = len;
	const u8* data = (const u8*)d;
	bool pgm = flags & TRANSFER_PGM;
	while (len--)
	{
		u8 c = pgm ? pgm_read_byte(data++) : *data++;
     552:	88 81       	ld	r24, Y
     554:	ee cf       	rjmp	.-36     	; 0x532 <_Z15USB_SendControlhPKvi+0x28>

00000556 <_ZL14SendInterfacesv>:
	}
	return len;
}

static u8 SendInterfaces()
{
     556:	0f 93       	push	r16
     558:	1f 93       	push	r17
     55a:	cf 93       	push	r28
     55c:	df 93       	push	r29
     55e:	1f 92       	push	r1
     560:	cd b7       	in	r28, 0x3d	; 61
     562:	de b7       	in	r29, 0x3e	; 62
	return pgm_read_word(FLASHEND - 1) == NEW_LUFA_SIGNATURE;
}

int CDC_GetInterface(u8* interfaceNum)
{
	interfaceNum[0] += 2;	// uses 2
     564:	82 e0       	ldi	r24, 0x02	; 2
     566:	89 83       	std	Y+1, r24	; 0x01
	return USB_SendControl(TRANSFER_PGM,&_cdcInterface,sizeof(_cdcInterface));
     568:	42 e4       	ldi	r20, 0x42	; 66
     56a:	50 e0       	ldi	r21, 0x00	; 0
     56c:	6f e1       	ldi	r22, 0x1F	; 31
     56e:	72 e0       	ldi	r23, 0x02	; 2
     570:	80 e8       	ldi	r24, 0x80	; 128
     572:	0e 94 85 02 	call	0x50a	; 0x50a <_Z15USB_SendControlhPKvi>
	u8 interfaces = 0;

	CDC_GetInterface(&interfaces);

#ifdef PLUGGABLE_USB_ENABLED
	PluggableUSB().getInterface(&interfaces);
     576:	0e 94 c2 01 	call	0x384	; 0x384 <_Z12PluggableUSBv>

int PluggableUSB_::getInterface(uint8_t* interfaceCount)
{
	int sent = 0;
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
     57a:	dc 01       	movw	r26, r24
     57c:	12 96       	adiw	r26, 0x02	; 2
     57e:	0d 91       	ld	r16, X+
     580:	1c 91       	ld	r17, X
     582:	01 15       	cp	r16, r1
     584:	11 05       	cpc	r17, r1
     586:	89 f0       	breq	.+34     	; 0x5aa <_ZL14SendInterfacesv+0x54>
		int res = node->getInterface(interfaceCount);
     588:	d8 01       	movw	r26, r16
     58a:	ed 91       	ld	r30, X+
     58c:	fc 91       	ld	r31, X
     58e:	02 80       	ldd	r0, Z+2	; 0x02
     590:	f3 81       	ldd	r31, Z+3	; 0x03
     592:	e0 2d       	mov	r30, r0
     594:	be 01       	movw	r22, r28
     596:	6f 5f       	subi	r22, 0xFF	; 255
     598:	7f 4f       	sbci	r23, 0xFF	; 255
     59a:	c8 01       	movw	r24, r16
     59c:	09 95       	icall
		if (res < 0)
     59e:	97 fd       	sbrc	r25, 7
     5a0:	04 c0       	rjmp	.+8      	; 0x5aa <_ZL14SendInterfacesv+0x54>

int PluggableUSB_::getInterface(uint8_t* interfaceCount)
{
	int sent = 0;
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
     5a2:	f8 01       	movw	r30, r16
     5a4:	00 85       	ldd	r16, Z+8	; 0x08
     5a6:	11 85       	ldd	r17, Z+9	; 0x09
     5a8:	ec cf       	rjmp	.-40     	; 0x582 <_ZL14SendInterfacesv+0x2c>
#endif

	return interfaces;
}
     5aa:	89 81       	ldd	r24, Y+1	; 0x01
     5ac:	0f 90       	pop	r0
     5ae:	df 91       	pop	r29
     5b0:	cf 91       	pop	r28
     5b2:	1f 91       	pop	r17
     5b4:	0f 91       	pop	r16
     5b6:	08 95       	ret

000005b8 <_ZL4RecvPVhh>:
	UEINTX = ~(1<<RXOUTI);
}

static inline void Recv(volatile u8* data, u8 count)
{
	while (count--)
     5b8:	61 50       	subi	r22, 0x01	; 1
     5ba:	30 f0       	brcs	.+12     	; 0x5c8 <_ZL4RecvPVhh+0x10>
		*data++ = UEDATX;
     5bc:	20 91 f1 00 	lds	r18, 0x00F1	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
     5c0:	fc 01       	movw	r30, r24
     5c2:	20 83       	st	Z, r18
     5c4:	01 96       	adiw	r24, 0x01	; 1
     5c6:	f8 cf       	rjmp	.-16     	; 0x5b8 <_ZL4RecvPVhh>
	
	RXLED1;					// light the RX LED
     5c8:	28 98       	cbi	0x05, 0	; 5
	RxLEDPulse = TX_RX_LED_PULSE_MS;	
     5ca:	84 e6       	ldi	r24, 0x64	; 100
     5cc:	80 93 54 01 	sts	0x0154, r24	; 0x800154 <RxLEDPulse>
}
     5d0:	08 95       	ret

000005d2 <micros>:
	return m;
}

unsigned long micros() {
	unsigned long m;
	uint8_t oldSREG = SREG, t;
     5d2:	3f b7       	in	r19, 0x3f	; 63
	
	cli();
     5d4:	f8 94       	cli
	m = timer0_overflow_count;
     5d6:	80 91 33 01 	lds	r24, 0x0133	; 0x800133 <timer0_overflow_count>
     5da:	90 91 34 01 	lds	r25, 0x0134	; 0x800134 <timer0_overflow_count+0x1>
     5de:	a0 91 35 01 	lds	r26, 0x0135	; 0x800135 <timer0_overflow_count+0x2>
     5e2:	b0 91 36 01 	lds	r27, 0x0136	; 0x800136 <timer0_overflow_count+0x3>
#if defined(TCNT0)
	t = TCNT0;
     5e6:	26 b5       	in	r18, 0x26	; 38
#else
	#error TIMER 0 not defined
#endif

#ifdef TIFR0
	if ((TIFR0 & _BV(TOV0)) && (t < 255))
     5e8:	a8 9b       	sbis	0x15, 0	; 21
     5ea:	05 c0       	rjmp	.+10     	; 0x5f6 <micros+0x24>
     5ec:	2f 3f       	cpi	r18, 0xFF	; 255
     5ee:	19 f0       	breq	.+6      	; 0x5f6 <micros+0x24>
		m++;
     5f0:	01 96       	adiw	r24, 0x01	; 1
     5f2:	a1 1d       	adc	r26, r1
     5f4:	b1 1d       	adc	r27, r1
#else
	if ((TIFR & _BV(TOV0)) && (t < 255))
		m++;
#endif

	SREG = oldSREG;
     5f6:	3f bf       	out	0x3f, r19	; 63
	
	return ((m << 8) + t) * (64 / clockCyclesPerMicrosecond());
     5f8:	ba 2f       	mov	r27, r26
     5fa:	a9 2f       	mov	r26, r25
     5fc:	98 2f       	mov	r25, r24
     5fe:	88 27       	eor	r24, r24
     600:	bc 01       	movw	r22, r24
     602:	cd 01       	movw	r24, r26
     604:	62 0f       	add	r22, r18
     606:	71 1d       	adc	r23, r1
     608:	81 1d       	adc	r24, r1
     60a:	91 1d       	adc	r25, r1
     60c:	42 e0       	ldi	r20, 0x02	; 2
     60e:	66 0f       	add	r22, r22
     610:	77 1f       	adc	r23, r23
     612:	88 1f       	adc	r24, r24
     614:	99 1f       	adc	r25, r25
     616:	4a 95       	dec	r20
     618:	d1 f7       	brne	.-12     	; 0x60e <micros+0x3c>
}
     61a:	08 95       	ret

0000061c <delay>:

void delay(unsigned long ms)
{
     61c:	8f 92       	push	r8
     61e:	9f 92       	push	r9
     620:	af 92       	push	r10
     622:	bf 92       	push	r11
     624:	cf 92       	push	r12
     626:	df 92       	push	r13
     628:	ef 92       	push	r14
     62a:	ff 92       	push	r15
     62c:	6b 01       	movw	r12, r22
     62e:	7c 01       	movw	r14, r24
	uint32_t start = micros();
     630:	0e 94 e9 02 	call	0x5d2	; 0x5d2 <micros>
     634:	4b 01       	movw	r8, r22
     636:	5c 01       	movw	r10, r24

	while (ms > 0) {
		yield();
		while ( ms > 0 && (micros() - start) >= 1000) {
     638:	c1 14       	cp	r12, r1
     63a:	d1 04       	cpc	r13, r1
     63c:	e1 04       	cpc	r14, r1
     63e:	f1 04       	cpc	r15, r1
     640:	b9 f0       	breq	.+46     	; 0x670 <delay+0x54>
     642:	0e 94 e9 02 	call	0x5d2	; 0x5d2 <micros>
     646:	68 19       	sub	r22, r8
     648:	79 09       	sbc	r23, r9
     64a:	8a 09       	sbc	r24, r10
     64c:	9b 09       	sbc	r25, r11
     64e:	68 3e       	cpi	r22, 0xE8	; 232
     650:	73 40       	sbci	r23, 0x03	; 3
     652:	81 05       	cpc	r24, r1
     654:	91 05       	cpc	r25, r1
     656:	80 f3       	brcs	.-32     	; 0x638 <delay+0x1c>
			ms--;
     658:	21 e0       	ldi	r18, 0x01	; 1
     65a:	c2 1a       	sub	r12, r18
     65c:	d1 08       	sbc	r13, r1
     65e:	e1 08       	sbc	r14, r1
     660:	f1 08       	sbc	r15, r1
			start += 1000;
     662:	88 ee       	ldi	r24, 0xE8	; 232
     664:	88 0e       	add	r8, r24
     666:	83 e0       	ldi	r24, 0x03	; 3
     668:	98 1e       	adc	r9, r24
     66a:	a1 1c       	adc	r10, r1
     66c:	b1 1c       	adc	r11, r1
     66e:	e4 cf       	rjmp	.-56     	; 0x638 <delay+0x1c>
		}
	}
}
     670:	ff 90       	pop	r15
     672:	ef 90       	pop	r14
     674:	df 90       	pop	r13
     676:	cf 90       	pop	r12
     678:	bf 90       	pop	r11
     67a:	af 90       	pop	r10
     67c:	9f 90       	pop	r9
     67e:	8f 90       	pop	r8
     680:	08 95       	ret

00000682 <_ZN7Serial_5writeEPKhj>:
{
	return write(&c, 1);
}

size_t Serial_::write(const uint8_t *buffer, size_t size)
{
     682:	8f 92       	push	r8
     684:	9f 92       	push	r9
     686:	af 92       	push	r10
     688:	bf 92       	push	r11
     68a:	cf 92       	push	r12
     68c:	df 92       	push	r13
     68e:	ef 92       	push	r14
     690:	ff 92       	push	r15
     692:	0f 93       	push	r16
     694:	1f 93       	push	r17
     696:	cf 93       	push	r28
     698:	df 93       	push	r29
     69a:	6c 01       	movw	r12, r24
     69c:	7b 01       	movw	r14, r22
     69e:	8a 01       	movw	r16, r20
	 the connection is closed are lost - just like with a UART. */
	
	// TODO - ZE - check behavior on different OSes and test what happens if an
	// open connection isn't broken cleanly (cable is yanked out, host dies
	// or locks up, or host virtual serial port hangs)
	if (_usbLineInfo.lineState > 0)	{
     6a0:	80 91 0c 01 	lds	r24, 0x010C	; 0x80010c <_ZL12_usbLineInfo+0x7>
     6a4:	88 23       	and	r24, r24
     6a6:	09 f4       	brne	.+2      	; 0x6aa <_ZN7Serial_5writeEPKhj+0x28>
     6a8:	5c c0       	rjmp	.+184    	; 0x762 <_ZN7Serial_5writeEPKhj+0xe0>
}

//	Blocking Send of data to an endpoint
int USB_Send(u8 ep, const void* d, int len)
{
	if (!_usbConfiguration)
     6aa:	80 91 55 01 	lds	r24, 0x0155	; 0x800155 <_usbConfiguration>
     6ae:	88 23       	and	r24, r24
     6b0:	09 f4       	brne	.+2      	; 0x6b4 <_ZN7Serial_5writeEPKhj+0x32>
     6b2:	57 c0       	rjmp	.+174    	; 0x762 <_ZN7Serial_5writeEPKhj+0xe0>
		return -1;

	if (_usbSuspendState & (1<<SUSPI)) {
     6b4:	80 91 47 01 	lds	r24, 0x0147	; 0x800147 <_usbSuspendState>
     6b8:	80 ff       	sbrs	r24, 0
     6ba:	05 c0       	rjmp	.+10     	; 0x6c6 <_ZN7Serial_5writeEPKhj+0x44>
		//send a remote wakeup
		UDCON |= (1 << RMWKUP);
     6bc:	80 91 e0 00 	lds	r24, 0x00E0	; 0x8000e0 <__DATA_REGION_ORIGIN__+0x80>
     6c0:	82 60       	ori	r24, 0x02	; 2
     6c2:	80 93 e0 00 	sts	0x00E0, r24	; 0x8000e0 <__DATA_REGION_ORIGIN__+0x80>
{
	return write(&c, 1);
}

size_t Serial_::write(const uint8_t *buffer, size_t size)
{
     6c6:	e8 01       	movw	r28, r16
     6c8:	b1 2c       	mov	r11, r1
     6ca:	8a ef       	ldi	r24, 0xFA	; 250
     6cc:	a8 2e       	mov	r10, r24
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
     6ce:	93 e0       	ldi	r25, 0x03	; 3
     6d0:	89 2e       	mov	r8, r25
	UEINTX = 0x6B;	// FIFOCON=0 NAKINI=1 RWAL=1 NAKOUTI=0 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=1
}

static inline void ReleaseTX()
{
	UEINTX = 0x3A;	// FIFOCON=0 NAKINI=0 RWAL=1 NAKOUTI=1 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=0
     6d2:	2a e3       	ldi	r18, 0x3A	; 58
     6d4:	92 2e       	mov	r9, r18
	int r = len;
	const u8* data = (const u8*)d;
	u8 timeout = 250;		// 250ms timeout on send? TODO
	bool sendZlp = false;

	while (len || sendZlp)
     6d6:	20 97       	sbiw	r28, 0x00	; 0
     6d8:	11 f4       	brne	.+4      	; 0x6de <_ZN7Serial_5writeEPKhj+0x5c>
     6da:	bb 20       	and	r11, r11
     6dc:	d9 f1       	breq	.+118    	; 0x754 <_ZN7Serial_5writeEPKhj+0xd2>
	{
		u8 n = USB_SendSpace(ep);
     6de:	0e 94 b1 01 	call	0x362	; 0x362 <_Z13USB_SendSpaceh.constprop.3>
		if (n == 0)
     6e2:	81 11       	cpse	r24, r1
     6e4:	0a c0       	rjmp	.+20     	; 0x6fa <_ZN7Serial_5writeEPKhj+0x78>
		{
			if (!(--timeout))
     6e6:	aa 94       	dec	r10
     6e8:	aa 20       	and	r10, r10
     6ea:	d9 f1       	breq	.+118    	; 0x762 <_ZN7Serial_5writeEPKhj+0xe0>
				return -1;
			delay(1);
     6ec:	61 e0       	ldi	r22, 0x01	; 1
     6ee:	70 e0       	ldi	r23, 0x00	; 0
     6f0:	80 e0       	ldi	r24, 0x00	; 0
     6f2:	90 e0       	ldi	r25, 0x00	; 0
     6f4:	0e 94 0e 03 	call	0x61c	; 0x61c <delay>
     6f8:	ee cf       	rjmp	.-36     	; 0x6d6 <_ZN7Serial_5writeEPKhj+0x54>
			continue;
		}

		if (n > len) {
     6fa:	8c 17       	cp	r24, r28
     6fc:	1d 06       	cpc	r1, r29
     6fe:	11 f0       	breq	.+4      	; 0x704 <_ZN7Serial_5writeEPKhj+0x82>
     700:	0c f0       	brlt	.+2      	; 0x704 <_ZN7Serial_5writeEPKhj+0x82>
			n = len;
     702:	8c 2f       	mov	r24, r28
#define USB_RECV_TIMEOUT
class LockEP
{
	u8 _sreg;
public:
	LockEP(u8 ep) : _sreg(SREG)
     704:	9f b7       	in	r25, 0x3f	; 63
	{
		cli();
     706:	f8 94       	cli
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
     708:	80 92 e9 00 	sts	0x00E9, r8	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
	UECONX = (1<<STALLRQ) | (1<<EPEN);
}

static inline u8 ReadWriteAllowed()
{
	return UEINTX & (1<<RWAL);
     70c:	20 91 e8 00 	lds	r18, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
		}

		{
			LockEP lock(ep);
			// Frame may have been released by the SOF interrupt handler
			if (!ReadWriteAllowed())
     710:	25 fd       	sbrc	r18, 5
     712:	02 c0       	rjmp	.+4      	; 0x718 <_ZN7Serial_5writeEPKhj+0x96>
		cli();
		SetEP(ep & 7);
	}
	~LockEP()
	{
		SREG = _sreg;
     714:	9f bf       	out	0x3f, r25	; 63
     716:	df cf       	rjmp	.-66     	; 0x6d6 <_ZN7Serial_5writeEPKhj+0x54>
			LockEP lock(ep);
			// Frame may have been released by the SOF interrupt handler
			if (!ReadWriteAllowed())
				continue;

			len -= n;
     718:	28 2f       	mov	r18, r24
     71a:	30 e0       	ldi	r19, 0x00	; 0
     71c:	c2 1b       	sub	r28, r18
     71e:	d3 0b       	sbc	r29, r19
     720:	f7 01       	movw	r30, r14
				while (n--)
					Send8(pgm_read_byte(data++));
			}
			else
			{
				while (n--)
     722:	81 50       	subi	r24, 0x01	; 1
     724:	20 f0       	brcs	.+8      	; 0x72e <_ZN7Serial_5writeEPKhj+0xac>
					Send8(*data++);
     726:	41 91       	ld	r20, Z+
	return UEDATX;	
}

static inline void Send8(u8 d)
{
	UEDATX = d;
     728:	40 93 f1 00 	sts	0x00F1, r20	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
     72c:	fa cf       	rjmp	.-12     	; 0x722 <_ZN7Serial_5writeEPKhj+0xa0>
     72e:	e2 0e       	add	r14, r18
     730:	f3 1e       	adc	r15, r19
			{
				while (n--)
					Send8(*data++);
			}

			if (sendZlp) {
     732:	bb 20       	and	r11, r11
     734:	21 f0       	breq	.+8      	; 0x73e <_ZN7Serial_5writeEPKhj+0xbc>
	UEINTX = 0x6B;	// FIFOCON=0 NAKINI=1 RWAL=1 NAKOUTI=0 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=1
}

static inline void ReleaseTX()
{
	UEINTX = 0x3A;	// FIFOCON=0 NAKINI=0 RWAL=1 NAKOUTI=1 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=0
     736:	90 92 e8 00 	sts	0x00E8, r9	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
			if (sendZlp) {
				ReleaseTX();
				sendZlp = false;
			} else if (!ReadWriteAllowed()) { // ...release if buffer is full...
				ReleaseTX();
				if (len == 0) sendZlp = true;
     73a:	b1 2c       	mov	r11, r1
     73c:	eb cf       	rjmp	.-42     	; 0x714 <_ZN7Serial_5writeEPKhj+0x92>
	UECONX = (1<<STALLRQ) | (1<<EPEN);
}

static inline u8 ReadWriteAllowed()
{
	return UEINTX & (1<<RWAL);
     73e:	80 91 e8 00 	lds	r24, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
			}

			if (sendZlp) {
				ReleaseTX();
				sendZlp = false;
			} else if (!ReadWriteAllowed()) { // ...release if buffer is full...
     742:	85 fd       	sbrc	r24, 5
     744:	e7 cf       	rjmp	.-50     	; 0x714 <_ZN7Serial_5writeEPKhj+0x92>
	UEINTX = 0x6B;	// FIFOCON=0 NAKINI=1 RWAL=1 NAKOUTI=0 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=1
}

static inline void ReleaseTX()
{
	UEINTX = 0x3A;	// FIFOCON=0 NAKINI=0 RWAL=1 NAKOUTI=1 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=0
     746:	90 92 e8 00 	sts	0x00E8, r9	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
			if (sendZlp) {
				ReleaseTX();
				sendZlp = false;
			} else if (!ReadWriteAllowed()) { // ...release if buffer is full...
				ReleaseTX();
				if (len == 0) sendZlp = true;
     74a:	bb 24       	eor	r11, r11
     74c:	b3 94       	inc	r11
     74e:	20 97       	sbiw	r28, 0x00	; 0
     750:	09 f3       	breq	.-62     	; 0x714 <_ZN7Serial_5writeEPKhj+0x92>
     752:	f3 cf       	rjmp	.-26     	; 0x73a <_ZN7Serial_5writeEPKhj+0xb8>
				// XXX: TRANSFER_RELEASE is never used can be removed?
				ReleaseTX();
			}
		}
	}
	TXLED1;					// light the TX LED
     754:	5d 98       	cbi	0x0b, 5	; 11
	TxLEDPulse = TX_RX_LED_PULSE_MS;
     756:	84 e6       	ldi	r24, 0x64	; 100
     758:	80 93 46 01 	sts	0x0146, r24	; 0x800146 <TxLEDPulse>
	// TODO - ZE - check behavior on different OSes and test what happens if an
	// open connection isn't broken cleanly (cable is yanked out, host dies
	// or locks up, or host virtual serial port hangs)
	if (_usbLineInfo.lineState > 0)	{
		int r = USB_Send(CDC_TX,buffer,size);
		if (r > 0) {
     75c:	10 16       	cp	r1, r16
     75e:	11 06       	cpc	r1, r17
     760:	3c f0       	brlt	.+14     	; 0x770 <_ZN7Serial_5writeEPKhj+0xee>
  private:
    int write_error;
    size_t printNumber(unsigned long, uint8_t);
    size_t printFloat(double, uint8_t);
  protected:
    void setWriteError(int err = 1) { write_error = err; }
     762:	81 e0       	ldi	r24, 0x01	; 1
     764:	90 e0       	ldi	r25, 0x00	; 0
     766:	f6 01       	movw	r30, r12
     768:	93 83       	std	Z+3, r25	; 0x03
     76a:	82 83       	std	Z+2, r24	; 0x02
			return r;
		} else {
			setWriteError();
			return 0;
     76c:	10 e0       	ldi	r17, 0x00	; 0
     76e:	00 e0       	ldi	r16, 0x00	; 0
		}
	}
	setWriteError();
	return 0;
}
     770:	c8 01       	movw	r24, r16
     772:	df 91       	pop	r29
     774:	cf 91       	pop	r28
     776:	1f 91       	pop	r17
     778:	0f 91       	pop	r16
     77a:	ff 90       	pop	r15
     77c:	ef 90       	pop	r14
     77e:	df 90       	pop	r13
     780:	cf 90       	pop	r12
     782:	bf 90       	pop	r11
     784:	af 90       	pop	r10
     786:	9f 90       	pop	r9
     788:	8f 90       	pop	r8
     78a:	08 95       	ret

0000078c <_ZN12ArduboyTones7getNextEv>:
  bitWrite(TIMSK3, OCIE3A, 1); // enable the output compare match interrupt
}

uint16_t ArduboyTones::getNext()
{
  if (inProgmem) {
     78c:	20 91 26 01 	lds	r18, 0x0126	; 0x800126 <__data_end>
     790:	e0 91 29 01 	lds	r30, 0x0129	; 0x800129 <_ZL10tonesIndex>
     794:	f0 91 2a 01 	lds	r31, 0x012A	; 0x80012a <_ZL10tonesIndex+0x1>
     798:	cf 01       	movw	r24, r30
     79a:	02 96       	adiw	r24, 0x02	; 2
    return pgm_read_word(tonesIndex++);
     79c:	90 93 2a 01 	sts	0x012A, r25	; 0x80012a <_ZL10tonesIndex+0x1>
     7a0:	80 93 29 01 	sts	0x0129, r24	; 0x800129 <_ZL10tonesIndex>
  bitWrite(TIMSK3, OCIE3A, 1); // enable the output compare match interrupt
}

uint16_t ArduboyTones::getNext()
{
  if (inProgmem) {
     7a4:	22 23       	and	r18, r18
     7a6:	19 f0       	breq	.+6      	; 0x7ae <_ZN12ArduboyTones7getNextEv+0x22>
    return pgm_read_word(tonesIndex++);
     7a8:	85 91       	lpm	r24, Z+
     7aa:	94 91       	lpm	r25, Z
     7ac:	08 95       	ret
  }
  return *tonesIndex++;
     7ae:	80 81       	ld	r24, Z
     7b0:	91 81       	ldd	r25, Z+1	; 0x01
}
     7b2:	08 95       	ret

000007b4 <_ZN12Arduboy2Core15digitalWriteRGBEhh.part.2>:
void Arduboy2Core::digitalWriteRGB(uint8_t red, uint8_t green, uint8_t blue)
{
#ifdef ARDUBOY_10
  bitWrite(RED_LED_PORT, RED_LED_BIT, red);
  bitWrite(GREEN_LED_PORT, GREEN_LED_BIT, green);
  bitWrite(BLUE_LED_PORT, BLUE_LED_BIT, blue);
     7b4:	2d 9a       	sbi	0x05, 5	; 5
  // only blue on DevKit
  (void)red;    // parameter unused
  (void)green;  // parameter unused
  bitWrite(BLUE_LED_PORT, BLUE_LED_BIT, blue);
#endif
}
     7b6:	08 95       	ret

000007b8 <_ZN12Arduboy2Core10delayShortEj>:
}

// delay in ms with 16 bit duration
void Arduboy2Core::delayShort(uint16_t ms)
{
  delay((unsigned long) ms);
     7b8:	bc 01       	movw	r22, r24
     7ba:	90 e0       	ldi	r25, 0x00	; 0
     7bc:	80 e0       	ldi	r24, 0x00	; 0
     7be:	0c 94 0e 03 	jmp	0x61c	; 0x61c <delay>

000007c2 <_ZN12Arduboy2Core12buttonsStateEv>:
{
  uint8_t buttons;

#ifdef ARDUBOY_10
  // up, right, left, down
  buttons = ((~PINF) &
     7c2:	8f b1       	in	r24, 0x0f	; 15
     7c4:	80 95       	com	r24
     7c6:	80 7f       	andi	r24, 0xF0	; 240
              (_BV(UP_BUTTON_BIT) | _BV(RIGHT_BUTTON_BIT) |
               _BV(LEFT_BUTTON_BIT) | _BV(DOWN_BUTTON_BIT)));
  // A
  if (bitRead(A_BUTTON_PORTIN, A_BUTTON_BIT) == 0) { buttons |= A_BUTTON; }
     7c8:	66 9b       	sbis	0x0c, 6	; 12
     7ca:	88 60       	ori	r24, 0x08	; 8
  // B
  if (bitRead(B_BUTTON_PORTIN, B_BUTTON_BIT) == 0) { buttons |= B_BUTTON; }
     7cc:	1c 9b       	sbis	0x03, 4	; 3
     7ce:	84 60       	ori	r24, 0x04	; 4
  // B
  if (bitRead(B_BUTTON_PORTIN, B_BUTTON_BIT) == 0) { buttons |= B_BUTTON; }
#endif

  return buttons;
}
     7d0:	08 95       	ret

000007d2 <__vector_10>:
#endif
}

//	General interrupt
ISR(USB_GEN_vect)
{
     7d2:	1f 92       	push	r1
     7d4:	0f 92       	push	r0
     7d6:	0f b6       	in	r0, 0x3f	; 63
     7d8:	0f 92       	push	r0
     7da:	11 24       	eor	r1, r1
     7dc:	8f 93       	push	r24
     7de:	9f 93       	push	r25
	u8 udint = UDINT;
     7e0:	80 91 e1 00 	lds	r24, 0x00E1	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
	UDINT &= ~((1<<EORSTI) | (1<<SOFI)); // clear the IRQ flags for the IRQs which are handled here, except WAKEUPI and SUSPI (see below)
     7e4:	90 91 e1 00 	lds	r25, 0x00E1	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
     7e8:	93 7f       	andi	r25, 0xF3	; 243
     7ea:	90 93 e1 00 	sts	0x00E1, r25	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>

	//	End of Reset
	if (udint & (1<<EORSTI))
     7ee:	83 ff       	sbrs	r24, 3
     7f0:	0f c0       	rjmp	.+30     	; 0x810 <__vector_10+0x3e>
#define EP_SINGLE_16 0x12

static
void InitEP(u8 index, u8 type, u8 size)
{
	UENUM = index;
     7f2:	10 92 e9 00 	sts	0x00E9, r1	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
	UECONX = (1<<EPEN);
     7f6:	91 e0       	ldi	r25, 0x01	; 1
     7f8:	90 93 eb 00 	sts	0x00EB, r25	; 0x8000eb <__DATA_REGION_ORIGIN__+0x8b>
	UECFG0X = type;
     7fc:	10 92 ec 00 	sts	0x00EC, r1	; 0x8000ec <__DATA_REGION_ORIGIN__+0x8c>
	UECFG1X = size;
     800:	92 e3       	ldi	r25, 0x32	; 50
     802:	90 93 ed 00 	sts	0x00ED, r25	; 0x8000ed <__DATA_REGION_ORIGIN__+0x8d>

	//	End of Reset
	if (udint & (1<<EORSTI))
	{
		InitEP(0,EP_TYPE_CONTROL,EP_SINGLE_64);	// init ep0
		_usbConfiguration = 0;			// not configured yet
     806:	10 92 55 01 	sts	0x0155, r1	; 0x800155 <_usbConfiguration>
		UEIENX = 1 << RXSTPE;			// Enable interrupts for ep0
     80a:	98 e0       	ldi	r25, 0x08	; 8
     80c:	90 93 f0 00 	sts	0x00F0, r25	; 0x8000f0 <__DATA_REGION_ORIGIN__+0x90>
	}

	//	Start of Frame - happens every millisecond so we use it for TX and RX LED one-shot timing, too
	if (udint & (1<<SOFI))
     810:	82 ff       	sbrs	r24, 2
     812:	22 c0       	rjmp	.+68     	; 0x858 <__vector_10+0x86>
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
     814:	93 e0       	ldi	r25, 0x03	; 3
     816:	90 93 e9 00 	sts	0x00E9, r25	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
}

static inline u8 FifoByteCount()
{
	return UEBCLX;
     81a:	90 91 f2 00 	lds	r25, 0x00F2	; 0x8000f2 <__DATA_REGION_ORIGIN__+0x92>
}

void USB_Flush(u8 ep)
{
	SetEP(ep);
	if (FifoByteCount())
     81e:	99 23       	and	r25, r25
     820:	19 f0       	breq	.+6      	; 0x828 <__vector_10+0x56>
	UEINTX = 0x6B;	// FIFOCON=0 NAKINI=1 RWAL=1 NAKOUTI=0 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=1
}

static inline void ReleaseTX()
{
	UEINTX = 0x3A;	// FIFOCON=0 NAKINI=0 RWAL=1 NAKOUTI=1 RXSTPI=1 RXOUTI=0 STALLEDI=1 TXINI=0
     822:	9a e3       	ldi	r25, 0x3A	; 58
     824:	90 93 e8 00 	sts	0x00E8, r25	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
	if (udint & (1<<SOFI))
	{
		USB_Flush(CDC_TX);				// Send a tx frame if found
		
		// check whether the one-shot period has elapsed.  if so, turn off the LED
		if (TxLEDPulse && !(--TxLEDPulse))
     828:	90 91 46 01 	lds	r25, 0x0146	; 0x800146 <TxLEDPulse>
     82c:	99 23       	and	r25, r25
     82e:	41 f0       	breq	.+16     	; 0x840 <__vector_10+0x6e>
     830:	90 91 46 01 	lds	r25, 0x0146	; 0x800146 <TxLEDPulse>
     834:	91 50       	subi	r25, 0x01	; 1
     836:	90 93 46 01 	sts	0x0146, r25	; 0x800146 <TxLEDPulse>
     83a:	91 11       	cpse	r25, r1
     83c:	01 c0       	rjmp	.+2      	; 0x840 <__vector_10+0x6e>
			TXLED0;
     83e:	5d 9a       	sbi	0x0b, 5	; 11
		if (RxLEDPulse && !(--RxLEDPulse))
     840:	90 91 54 01 	lds	r25, 0x0154	; 0x800154 <RxLEDPulse>
     844:	99 23       	and	r25, r25
     846:	41 f0       	breq	.+16     	; 0x858 <__vector_10+0x86>
     848:	90 91 54 01 	lds	r25, 0x0154	; 0x800154 <RxLEDPulse>
     84c:	91 50       	subi	r25, 0x01	; 1
     84e:	90 93 54 01 	sts	0x0154, r25	; 0x800154 <RxLEDPulse>
     852:	91 11       	cpse	r25, r1
     854:	01 c0       	rjmp	.+2      	; 0x858 <__vector_10+0x86>
			RXLED0;
     856:	28 9a       	sbi	0x05, 0	; 5
	}

	// the WAKEUPI interrupt is triggered as soon as there are non-idle patterns on the data
	// lines. Thus, the WAKEUPI interrupt can occur even if the controller is not in the "suspend" mode.
	// Therefore the we enable it only when USB is suspended
	if (udint & (1<<WAKEUPI))
     858:	84 ff       	sbrs	r24, 4
     85a:	18 c0       	rjmp	.+48     	; 0x88c <__vector_10+0xba>
	{
		UDIEN = (UDIEN & ~(1<<WAKEUPE)) | (1<<SUSPE); // Disable interrupts for WAKEUP and enable interrupts for SUSPEND
     85c:	80 91 e2 00 	lds	r24, 0x00E2	; 0x8000e2 <__DATA_REGION_ORIGIN__+0x82>
     860:	8e 7e       	andi	r24, 0xEE	; 238
     862:	81 60       	ori	r24, 0x01	; 1
     864:	80 93 e2 00 	sts	0x00E2, r24	; 0x8000e2 <__DATA_REGION_ORIGIN__+0x82>

		//TODO
		// WAKEUPI shall be cleared by software (USB clock inputs must be enabled before).
		//USB_ClockEnable();
		UDINT &= ~(1<<WAKEUPI);
     868:	80 91 e1 00 	lds	r24, 0x00E1	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
     86c:	8f 7e       	andi	r24, 0xEF	; 239
     86e:	80 93 e1 00 	sts	0x00E1, r24	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
		_usbSuspendState = (_usbSuspendState & ~(1<<SUSPI)) | (1<<WAKEUPI);
     872:	80 91 47 01 	lds	r24, 0x0147	; 0x800147 <_usbSuspendState>
     876:	8e 7e       	andi	r24, 0xEE	; 238
     878:	80 61       	ori	r24, 0x10	; 16

		//TODO
		//USB_ClockDisable();

		UDINT &= ~((1<<WAKEUPI) | (1<<SUSPI)); // clear any already pending WAKEUP IRQs and the SUSPI request
		_usbSuspendState = (_usbSuspendState & ~(1<<WAKEUPI)) | (1<<SUSPI);
     87a:	80 93 47 01 	sts	0x0147, r24	; 0x800147 <_usbSuspendState>
	}
}
     87e:	9f 91       	pop	r25
     880:	8f 91       	pop	r24
     882:	0f 90       	pop	r0
     884:	0f be       	out	0x3f, r0	; 63
     886:	0f 90       	pop	r0
     888:	1f 90       	pop	r1
     88a:	18 95       	reti
		// WAKEUPI shall be cleared by software (USB clock inputs must be enabled before).
		//USB_ClockEnable();
		UDINT &= ~(1<<WAKEUPI);
		_usbSuspendState = (_usbSuspendState & ~(1<<SUSPI)) | (1<<WAKEUPI);
	}
	else if (udint & (1<<SUSPI)) // only one of the WAKEUPI / SUSPI bits can be active at time
     88c:	80 ff       	sbrs	r24, 0
     88e:	f7 cf       	rjmp	.-18     	; 0x87e <__vector_10+0xac>
	{
		UDIEN = (UDIEN & ~(1<<SUSPE)) | (1<<WAKEUPE); // Disable interrupts for SUSPEND and enable interrupts for WAKEUP
     890:	80 91 e2 00 	lds	r24, 0x00E2	; 0x8000e2 <__DATA_REGION_ORIGIN__+0x82>
     894:	8e 7e       	andi	r24, 0xEE	; 238
     896:	80 61       	ori	r24, 0x10	; 16
     898:	80 93 e2 00 	sts	0x00E2, r24	; 0x8000e2 <__DATA_REGION_ORIGIN__+0x82>

		//TODO
		//USB_ClockDisable();

		UDINT &= ~((1<<WAKEUPI) | (1<<SUSPI)); // clear any already pending WAKEUP IRQs and the SUSPI request
     89c:	80 91 e1 00 	lds	r24, 0x00E1	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
     8a0:	8e 7e       	andi	r24, 0xEE	; 238
     8a2:	80 93 e1 00 	sts	0x00E1, r24	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
		_usbSuspendState = (_usbSuspendState & ~(1<<WAKEUPI)) | (1<<SUSPI);
     8a6:	80 91 47 01 	lds	r24, 0x0147	; 0x800147 <_usbSuspendState>
     8aa:	8e 7e       	andi	r24, 0xEE	; 238
     8ac:	81 60       	ori	r24, 0x01	; 1
     8ae:	e5 cf       	rjmp	.-54     	; 0x87a <__vector_10+0xa8>

000008b0 <__vector_11>:
	return true;
}

//	Endpoint 0 interrupt
ISR(USB_COM_vect)
{
     8b0:	1f 92       	push	r1
     8b2:	0f 92       	push	r0
     8b4:	0f b6       	in	r0, 0x3f	; 63
     8b6:	0f 92       	push	r0
     8b8:	11 24       	eor	r1, r1
     8ba:	cf 92       	push	r12
     8bc:	df 92       	push	r13
     8be:	ef 92       	push	r14
     8c0:	ff 92       	push	r15
     8c2:	0f 93       	push	r16
     8c4:	1f 93       	push	r17
     8c6:	2f 93       	push	r18
     8c8:	3f 93       	push	r19
     8ca:	4f 93       	push	r20
     8cc:	5f 93       	push	r21
     8ce:	6f 93       	push	r22
     8d0:	7f 93       	push	r23
     8d2:	8f 93       	push	r24
     8d4:	9f 93       	push	r25
     8d6:	af 93       	push	r26
     8d8:	bf 93       	push	r27
     8da:	ef 93       	push	r30
     8dc:	ff 93       	push	r31
     8de:	cf 93       	push	r28
     8e0:	df 93       	push	r29
     8e2:	cd b7       	in	r28, 0x3d	; 61
     8e4:	de b7       	in	r29, 0x3e	; 62
     8e6:	6c 97       	sbiw	r28, 0x1c	; 28
     8e8:	de bf       	out	0x3e, r29	; 62
     8ea:	cd bf       	out	0x3d, r28	; 61
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
     8ec:	10 92 e9 00 	sts	0x00E9, r1	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
	return UEBCLX;
}

static inline u8 ReceivedSetupInt()
{
	return UEINTX & (1<<RXSTPI);
     8f0:	80 91 e8 00 	lds	r24, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>

//	Endpoint 0 interrupt
ISR(USB_COM_vect)
{
    SetEP(0);
	if (!ReceivedSetupInt())
     8f4:	83 ff       	sbrs	r24, 3
     8f6:	25 c0       	rjmp	.+74     	; 0x942 <__vector_11+0x92>
		return;

	USBSetup setup;
	Recv((u8*)&setup,8);
     8f8:	68 e0       	ldi	r22, 0x08	; 8
     8fa:	ce 01       	movw	r24, r28
     8fc:	45 96       	adiw	r24, 0x15	; 21
     8fe:	0e 94 dc 02 	call	0x5b8	; 0x5b8 <_ZL4RecvPVhh>
	return UEINTX & (1<<RXSTPI);
}

static inline void ClearSetupInt()
{
	UEINTX = ~((1<<RXSTPI) | (1<<RXOUTI) | (1<<TXINI));
     902:	82 ef       	ldi	r24, 0xF2	; 242
     904:	80 93 e8 00 	sts	0x00E8, r24	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>

	USBSetup setup;
	Recv((u8*)&setup,8);
	ClearSetupInt();

	u8 requestType = setup.bmRequestType;
     908:	8d 89       	ldd	r24, Y+21	; 0x15
	if (requestType & REQUEST_DEVICETOHOST)
     90a:	87 ff       	sbrs	r24, 7
     90c:	39 c0       	rjmp	.+114    	; 0x980 <__vector_11+0xd0>
volatile u8 _usbCurrentStatus = 0; // meaning of bits see usb_20.pdf, Figure 9-4. Information Returned by a GetStatus() Request to a Device
volatile u8 _usbSuspendState = 0; // copy of UDINT to check SUSPI and WAKEUPI bits

static inline void WaitIN(void)
{
	while (!(UEINTX & (1<<TXINI)))
     90e:	90 91 e8 00 	lds	r25, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
     912:	90 ff       	sbrs	r25, 0
     914:	fc cf       	rjmp	.-8      	; 0x90e <__vector_11+0x5e>
		WaitIN();
	else
		ClearIN();

    bool ok = true;
	if (REQUEST_STANDARD == (requestType & REQUEST_TYPE))
     916:	98 2f       	mov	r25, r24
     918:	90 76       	andi	r25, 0x60	; 96
     91a:	09 f0       	breq	.+2      	; 0x91e <__vector_11+0x6e>
     91c:	34 c1       	rjmp	.+616    	; 0xb86 <__stack+0x87>
	{
		//	Standard Requests
		u8 r = setup.bRequest;
     91e:	9e 89       	ldd	r25, Y+22	; 0x16
     920:	4f 89       	ldd	r20, Y+23	; 0x17
     922:	58 8d       	ldd	r21, Y+24	; 0x18
		u16 wValue = setup.wValueL | (setup.wValueH << 8);
     924:	2f 89       	ldd	r18, Y+23	; 0x17
     926:	f8 8c       	ldd	r15, Y+24	; 0x18
		if (GET_STATUS == r)
     928:	91 11       	cpse	r25, r1
     92a:	31 c0       	rjmp	.+98     	; 0x98e <__vector_11+0xde>
		{
			if (requestType == (REQUEST_DEVICETOHOST | REQUEST_STANDARD | REQUEST_DEVICE))
     92c:	80 38       	cpi	r24, 0x80	; 128
     92e:	61 f5       	brne	.+88     	; 0x988 <__vector_11+0xd8>
			{
				Send8(_usbCurrentStatus);
     930:	80 91 45 01 	lds	r24, 0x0145	; 0x800145 <_usbCurrentStatus>
	return UEDATX;	
}

static inline void Send8(u8 d)
{
	UEDATX = d;
     934:	80 93 f1 00 	sts	0x00F1, r24	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
     938:	10 92 f1 00 	sts	0x00F1, r1	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
		;
}

static inline void ClearIN(void)
{
	UEINTX = ~(1<<TXINI);
     93c:	8e ef       	ldi	r24, 0xFE	; 254
     93e:	80 93 e8 00 	sts	0x00E8, r24	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
		ClearIN();
	else
	{
		Stall();
	}
}
     942:	6c 96       	adiw	r28, 0x1c	; 28
     944:	0f b6       	in	r0, 0x3f	; 63
     946:	f8 94       	cli
     948:	de bf       	out	0x3e, r29	; 62
     94a:	0f be       	out	0x3f, r0	; 63
     94c:	cd bf       	out	0x3d, r28	; 61
     94e:	df 91       	pop	r29
     950:	cf 91       	pop	r28
     952:	ff 91       	pop	r31
     954:	ef 91       	pop	r30
     956:	bf 91       	pop	r27
     958:	af 91       	pop	r26
     95a:	9f 91       	pop	r25
     95c:	8f 91       	pop	r24
     95e:	7f 91       	pop	r23
     960:	6f 91       	pop	r22
     962:	5f 91       	pop	r21
     964:	4f 91       	pop	r20
     966:	3f 91       	pop	r19
     968:	2f 91       	pop	r18
     96a:	1f 91       	pop	r17
     96c:	0f 91       	pop	r16
     96e:	ff 90       	pop	r15
     970:	ef 90       	pop	r14
     972:	df 90       	pop	r13
     974:	cf 90       	pop	r12
     976:	0f 90       	pop	r0
     978:	0f be       	out	0x3f, r0	; 63
     97a:	0f 90       	pop	r0
     97c:	1f 90       	pop	r1
     97e:	18 95       	reti
		;
}

static inline void ClearIN(void)
{
	UEINTX = ~(1<<TXINI);
     980:	9e ef       	ldi	r25, 0xFE	; 254
     982:	90 93 e8 00 	sts	0x00E8, r25	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
     986:	c7 cf       	rjmp	.-114    	; 0x916 <__vector_11+0x66>
	return UEDATX;	
}

static inline void Send8(u8 d)
{
	UEDATX = d;
     988:	10 92 f1 00 	sts	0x00F1, r1	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
     98c:	d5 cf       	rjmp	.-86     	; 0x938 <__vector_11+0x88>
				// see "Figure 9-6. Information Returned by a GetStatus() Request to an Endpoint" in usb_20.pdf for more information
				Send8(0);
				Send8(0);
			}
		}
		else if (CLEAR_FEATURE == r)
     98e:	91 30       	cpi	r25, 0x01	; 1
     990:	59 f4       	brne	.+22     	; 0x9a8 <__vector_11+0xf8>
		{
			if((requestType == (REQUEST_HOSTTODEVICE | REQUEST_STANDARD | REQUEST_DEVICE))
     992:	81 11       	cpse	r24, r1
     994:	d3 cf       	rjmp	.-90     	; 0x93c <__vector_11+0x8c>
				&& (wValue == DEVICE_REMOTE_WAKEUP))
     996:	41 30       	cpi	r20, 0x01	; 1
     998:	51 05       	cpc	r21, r1
     99a:	81 f6       	brne	.-96     	; 0x93c <__vector_11+0x8c>
			{
				_usbCurrentStatus &= ~FEATURE_REMOTE_WAKEUP_ENABLED;
     99c:	80 91 45 01 	lds	r24, 0x0145	; 0x800145 <_usbCurrentStatus>
     9a0:	8d 7f       	andi	r24, 0xFD	; 253
		else if (SET_FEATURE == r)
		{
			if((requestType == (REQUEST_HOSTTODEVICE | REQUEST_STANDARD | REQUEST_DEVICE))
				&& (wValue == DEVICE_REMOTE_WAKEUP))
			{
				_usbCurrentStatus |= FEATURE_REMOTE_WAKEUP_ENABLED;
     9a2:	80 93 45 01 	sts	0x0145, r24	; 0x800145 <_usbCurrentStatus>
     9a6:	ca cf       	rjmp	.-108    	; 0x93c <__vector_11+0x8c>
				&& (wValue == DEVICE_REMOTE_WAKEUP))
			{
				_usbCurrentStatus &= ~FEATURE_REMOTE_WAKEUP_ENABLED;
			}
		}
		else if (SET_FEATURE == r)
     9a8:	93 30       	cpi	r25, 0x03	; 3
     9aa:	49 f4       	brne	.+18     	; 0x9be <__vector_11+0x10e>
		{
			if((requestType == (REQUEST_HOSTTODEVICE | REQUEST_STANDARD | REQUEST_DEVICE))
     9ac:	81 11       	cpse	r24, r1
     9ae:	c6 cf       	rjmp	.-116    	; 0x93c <__vector_11+0x8c>
				&& (wValue == DEVICE_REMOTE_WAKEUP))
     9b0:	41 30       	cpi	r20, 0x01	; 1
     9b2:	51 05       	cpc	r21, r1
     9b4:	19 f6       	brne	.-122    	; 0x93c <__vector_11+0x8c>
			{
				_usbCurrentStatus |= FEATURE_REMOTE_WAKEUP_ENABLED;
     9b6:	80 91 45 01 	lds	r24, 0x0145	; 0x800145 <_usbCurrentStatus>
     9ba:	82 60       	ori	r24, 0x02	; 2
     9bc:	f2 cf       	rjmp	.-28     	; 0x9a2 <__vector_11+0xf2>
			}
		}
		else if (SET_ADDRESS == r)
     9be:	95 30       	cpi	r25, 0x05	; 5
     9c0:	41 f4       	brne	.+16     	; 0x9d2 <__vector_11+0x122>
volatile u8 _usbCurrentStatus = 0; // meaning of bits see usb_20.pdf, Figure 9-4. Information Returned by a GetStatus() Request to a Device
volatile u8 _usbSuspendState = 0; // copy of UDINT to check SUSPI and WAKEUPI bits

static inline void WaitIN(void)
{
	while (!(UEINTX & (1<<TXINI)))
     9c2:	80 91 e8 00 	lds	r24, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
     9c6:	80 ff       	sbrs	r24, 0
     9c8:	fc cf       	rjmp	.-8      	; 0x9c2 <__vector_11+0x112>
			}
		}
		else if (SET_ADDRESS == r)
		{
			WaitIN();
			UDADDR = setup.wValueL | (1<<ADDEN);
     9ca:	20 68       	ori	r18, 0x80	; 128
     9cc:	20 93 e3 00 	sts	0x00E3, r18	; 0x8000e3 <__DATA_REGION_ORIGIN__+0x83>
     9d0:	b5 cf       	rjmp	.-150    	; 0x93c <__vector_11+0x8c>
		}
		else if (GET_DESCRIPTOR == r)
     9d2:	96 30       	cpi	r25, 0x06	; 6
     9d4:	09 f0       	breq	.+2      	; 0x9d8 <__vector_11+0x128>
     9d6:	a9 c0       	rjmp	.+338    	; 0xb2a <__stack+0x2b>
     9d8:	0b 8d       	ldd	r16, Y+27	; 0x1b
     9da:	1c 8d       	ldd	r17, Y+28	; 0x1c

static
bool SendDescriptor(USBSetup& setup)
{
	u8 t = setup.wValueH;
	if (USB_CONFIGURATION_DESCRIPTOR_TYPE == t)
     9dc:	22 e0       	ldi	r18, 0x02	; 2
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
     9de:	10 92 e9 00 	sts	0x00E9, r1	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
static int _cmark;
static int _cend;
void InitControl(int end)
{
	SetEP(0);
	_cmark = 0;
     9e2:	10 92 43 01 	sts	0x0143, r1	; 0x800143 <_ZL6_cmark+0x1>
     9e6:	10 92 42 01 	sts	0x0142, r1	; 0x800142 <_ZL6_cmark>

static
bool SendDescriptor(USBSetup& setup)
{
	u8 t = setup.wValueH;
	if (USB_CONFIGURATION_DESCRIPTOR_TYPE == t)
     9ea:	f2 12       	cpse	r15, r18
     9ec:	2e c0       	rjmp	.+92     	; 0xa4a <__vector_11+0x19a>
static int _cend;
void InitControl(int end)
{
	SetEP(0);
	_cmark = 0;
	_cend = end;
     9ee:	10 92 41 01 	sts	0x0141, r1	; 0x800141 <_ZL5_cend+0x1>
     9f2:	10 92 40 01 	sts	0x0140, r1	; 0x800140 <_ZL5_cend>
static
bool SendConfiguration(int maxlen)
{
	//	Count and measure interfaces
	InitControl(0);
	u8 interfaces = SendInterfaces();
     9f6:	0e 94 ab 02 	call	0x556	; 0x556 <_ZL14SendInterfacesv>
	ConfigDescriptor config = D_CONFIG(_cmark + sizeof(ConfigDescriptor),interfaces);
     9fa:	1f 82       	std	Y+7, r1	; 0x07
     9fc:	99 e0       	ldi	r25, 0x09	; 9
     9fe:	99 83       	std	Y+1, r25	; 0x01
     a00:	fa 82       	std	Y+2, r15	; 0x02
     a02:	91 e0       	ldi	r25, 0x01	; 1
     a04:	9e 83       	std	Y+6, r25	; 0x06
     a06:	90 ea       	ldi	r25, 0xA0	; 160
     a08:	98 87       	std	Y+8, r25	; 0x08
     a0a:	9a ef       	ldi	r25, 0xFA	; 250
     a0c:	99 87       	std	Y+9, r25	; 0x09
     a0e:	20 91 42 01 	lds	r18, 0x0142	; 0x800142 <_ZL6_cmark>
     a12:	30 91 43 01 	lds	r19, 0x0143	; 0x800143 <_ZL6_cmark+0x1>
     a16:	27 5f       	subi	r18, 0xF7	; 247
     a18:	3f 4f       	sbci	r19, 0xFF	; 255
     a1a:	3c 83       	std	Y+4, r19	; 0x04
     a1c:	2b 83       	std	Y+3, r18	; 0x03
     a1e:	8d 83       	std	Y+5, r24	; 0x05
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
     a20:	10 92 e9 00 	sts	0x00E9, r1	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
static int _cmark;
static int _cend;
void InitControl(int end)
{
	SetEP(0);
	_cmark = 0;
     a24:	10 92 43 01 	sts	0x0143, r1	; 0x800143 <_ZL6_cmark+0x1>
     a28:	10 92 42 01 	sts	0x0142, r1	; 0x800142 <_ZL6_cmark>
	_cend = end;
     a2c:	10 93 41 01 	sts	0x0141, r17	; 0x800141 <_ZL5_cend+0x1>
     a30:	00 93 40 01 	sts	0x0140, r16	; 0x800140 <_ZL5_cend>
	u8 interfaces = SendInterfaces();
	ConfigDescriptor config = D_CONFIG(_cmark + sizeof(ConfigDescriptor),interfaces);

	//	Now send them
	InitControl(maxlen);
	USB_SendControl(0,&config,sizeof(ConfigDescriptor));
     a34:	49 e0       	ldi	r20, 0x09	; 9
     a36:	50 e0       	ldi	r21, 0x00	; 0
     a38:	be 01       	movw	r22, r28
     a3a:	6f 5f       	subi	r22, 0xFF	; 255
     a3c:	7f 4f       	sbci	r23, 0xFF	; 255
     a3e:	80 e0       	ldi	r24, 0x00	; 0
     a40:	0e 94 85 02 	call	0x50a	; 0x50a <_Z15USB_SendControlhPKvi>
	SendInterfaces();
     a44:	0e 94 ab 02 	call	0x556	; 0x556 <_ZL14SendInterfacesv>
     a48:	79 cf       	rjmp	.-270    	; 0x93c <__vector_11+0x8c>
static int _cend;
void InitControl(int end)
{
	SetEP(0);
	_cmark = 0;
	_cend = end;
     a4a:	10 93 41 01 	sts	0x0141, r17	; 0x800141 <_ZL5_cend+0x1>
     a4e:	00 93 40 01 	sts	0x0140, r16	; 0x800140 <_ZL5_cend>
	if (USB_CONFIGURATION_DESCRIPTOR_TYPE == t)
		return SendConfiguration(setup.wLength);

	InitControl(setup.wLength);
#ifdef PLUGGABLE_USB_ENABLED
	int ret = PluggableUSB().getDescriptor(setup);
     a52:	0e 94 c2 01 	call	0x384	; 0x384 <_Z12PluggableUSBv>
}

int PluggableUSB_::getDescriptor(USBSetup& setup)
{
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
     a56:	dc 01       	movw	r26, r24
     a58:	12 96       	adiw	r26, 0x02	; 2
     a5a:	0d 91       	ld	r16, X+
     a5c:	1c 91       	ld	r17, X
     a5e:	01 15       	cp	r16, r1
     a60:	11 05       	cpc	r17, r1
     a62:	09 f4       	brne	.+2      	; 0xa66 <__vector_11+0x1b6>
     a64:	51 c1       	rjmp	.+674    	; 0xd08 <__stack+0x209>
		int ret = node->getDescriptor(setup);
     a66:	d8 01       	movw	r26, r16
     a68:	ed 91       	ld	r30, X+
     a6a:	fc 91       	ld	r31, X
     a6c:	04 80       	ldd	r0, Z+4	; 0x04
     a6e:	f5 81       	ldd	r31, Z+5	; 0x05
     a70:	e0 2d       	mov	r30, r0
     a72:	be 01       	movw	r22, r28
     a74:	6b 5e       	subi	r22, 0xEB	; 235
     a76:	7f 4f       	sbci	r23, 0xFF	; 255
     a78:	c8 01       	movw	r24, r16
     a7a:	09 95       	icall
		// ret!=0 -> request has been processed
		if (ret)
     a7c:	00 97       	sbiw	r24, 0x00	; 0
     a7e:	09 f0       	breq	.+2      	; 0xa82 <__vector_11+0x1d2>
     a80:	3e c1       	rjmp	.+636    	; 0xcfe <__stack+0x1ff>
}

int PluggableUSB_::getDescriptor(USBSetup& setup)
{
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
     a82:	f8 01       	movw	r30, r16
     a84:	00 85       	ldd	r16, Z+8	; 0x08
     a86:	11 85       	ldd	r17, Z+9	; 0x09
     a88:	ea cf       	rjmp	.-44     	; 0xa5e <__vector_11+0x1ae>
	const u8* desc_addr = 0;
	if (USB_DEVICE_DESCRIPTOR_TYPE == t)
	{
		desc_addr = (const u8*)&USB_DeviceDescriptorIAD;
	}
	else if (USB_STRING_DESCRIPTOR_TYPE == t)
     a8a:	f3 e0       	ldi	r31, 0x03	; 3
     a8c:	ff 12       	cpse	r15, r31
     a8e:	0e c0       	rjmp	.+28     	; 0xaac <__vector_11+0x1fc>
	{
		if (setup.wValueL == 0) {
     a90:	8f 89       	ldd	r24, Y+23	; 0x17
     a92:	88 23       	and	r24, r24
     a94:	09 f4       	brne	.+2      	; 0xa98 <__vector_11+0x1e8>
     a96:	40 c0       	rjmp	.+128    	; 0xb18 <__stack+0x19>
			desc_addr = (const u8*)&STRING_LANGUAGE;
		}
		else if (setup.wValueL == IPRODUCT) {
     a98:	82 30       	cpi	r24, 0x02	; 2
     a9a:	61 f4       	brne	.+24     	; 0xab4 <__vector_11+0x204>
			return USB_SendStringDescriptor(STRING_PRODUCT, strlen(USB_PRODUCT), TRANSFER_PGM);
     a9c:	40 e8       	ldi	r20, 0x80	; 128
     a9e:	60 e1       	ldi	r22, 0x10	; 16
     aa0:	83 e8       	ldi	r24, 0x83	; 131
     aa2:	92 e0       	ldi	r25, 0x02	; 2
		}
		else if (setup.wValueL == ISERIAL) {
#ifdef PLUGGABLE_USB_ENABLED
			char name[ISERIAL_MAX_LEN];
			PluggableUSB().getShortName(name);
			return USB_SendStringDescriptor((uint8_t*)name, strlen(name), 0);
     aa4:	0e 94 d6 07 	call	0xfac	; 0xfac <_ZL24USB_SendStringDescriptorPKhhh>
	{
		InitControl(setup.wLength);		//	Max length of transfer
		ok = ClassInterfaceRequest(setup);
	}

	if (ok)
     aa8:	81 11       	cpse	r24, r1
     aaa:	48 cf       	rjmp	.-368    	; 0x93c <__vector_11+0x8c>
	UEINTX = ~((1<<RXSTPI) | (1<<RXOUTI) | (1<<TXINI));
}

static inline void Stall()
{
	UECONX = (1<<STALLRQ) | (1<<EPEN);
     aac:	81 e2       	ldi	r24, 0x21	; 33
     aae:	80 93 eb 00 	sts	0x00EB, r24	; 0x8000eb <__DATA_REGION_ORIGIN__+0x8b>
     ab2:	47 cf       	rjmp	.-370    	; 0x942 <__vector_11+0x92>
			desc_addr = (const u8*)&STRING_LANGUAGE;
		}
		else if (setup.wValueL == IPRODUCT) {
			return USB_SendStringDescriptor(STRING_PRODUCT, strlen(USB_PRODUCT), TRANSFER_PGM);
		}
		else if (setup.wValueL == IMANUFACTURER) {
     ab4:	81 30       	cpi	r24, 0x01	; 1
     ab6:	29 f4       	brne	.+10     	; 0xac2 <__vector_11+0x212>
			return USB_SendStringDescriptor(STRING_MANUFACTURER, strlen(USB_MANUFACTURER), TRANSFER_PGM);
     ab8:	40 e8       	ldi	r20, 0x80	; 128
     aba:	6b e0       	ldi	r22, 0x0B	; 11
     abc:	87 e7       	ldi	r24, 0x77	; 119
     abe:	92 e0       	ldi	r25, 0x02	; 2
     ac0:	f1 cf       	rjmp	.-30     	; 0xaa4 <__vector_11+0x1f4>
		}
		else if (setup.wValueL == ISERIAL) {
     ac2:	83 30       	cpi	r24, 0x03	; 3
     ac4:	99 f7       	brne	.-26     	; 0xaac <__vector_11+0x1fc>
#ifdef PLUGGABLE_USB_ENABLED
			char name[ISERIAL_MAX_LEN];
			PluggableUSB().getShortName(name);
     ac6:	0e 94 c2 01 	call	0x384	; 0x384 <_Z12PluggableUSBv>
}

void PluggableUSB_::getShortName(char *iSerialNum)
{
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
     aca:	dc 01       	movw	r26, r24
     acc:	12 96       	adiw	r26, 0x02	; 2
     ace:	ed 90       	ld	r14, X+
     ad0:	fc 90       	ld	r15, X
     ad2:	8e 01       	movw	r16, r28
     ad4:	0f 5f       	subi	r16, 0xFF	; 255
     ad6:	1f 4f       	sbci	r17, 0xFF	; 255
     ad8:	68 01       	movw	r12, r16
     ada:	e1 14       	cp	r14, r1
     adc:	f1 04       	cpc	r15, r1
     ade:	79 f0       	breq	.+30     	; 0xafe <__vector_11+0x24e>
		iSerialNum += node->getShortName(iSerialNum);
     ae0:	d7 01       	movw	r26, r14
     ae2:	ed 91       	ld	r30, X+
     ae4:	fc 91       	ld	r31, X
     ae6:	06 80       	ldd	r0, Z+6	; 0x06
     ae8:	f7 81       	ldd	r31, Z+7	; 0x07
     aea:	e0 2d       	mov	r30, r0
     aec:	b8 01       	movw	r22, r16
     aee:	c7 01       	movw	r24, r14
     af0:	09 95       	icall
     af2:	08 0f       	add	r16, r24
     af4:	11 1d       	adc	r17, r1
}

void PluggableUSB_::getShortName(char *iSerialNum)
{
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
     af6:	f7 01       	movw	r30, r14
     af8:	e0 84       	ldd	r14, Z+8	; 0x08
     afa:	f1 84       	ldd	r15, Z+9	; 0x09
     afc:	ee cf       	rjmp	.-36     	; 0xada <__vector_11+0x22a>
		iSerialNum += node->getShortName(iSerialNum);
	}
	*iSerialNum = 0;
     afe:	d8 01       	movw	r26, r16
     b00:	1c 92       	st	X, r1
			return USB_SendStringDescriptor((uint8_t*)name, strlen(name), 0);
     b02:	f6 01       	movw	r30, r12
     b04:	01 90       	ld	r0, Z+
     b06:	00 20       	and	r0, r0
     b08:	e9 f7       	brne	.-6      	; 0xb04 <__stack+0x5>
     b0a:	31 97       	sbiw	r30, 0x01	; 1
     b0c:	bf 01       	movw	r22, r30
     b0e:	6c 19       	sub	r22, r12
     b10:	7d 09       	sbc	r23, r13
     b12:	40 e0       	ldi	r20, 0x00	; 0
     b14:	c6 01       	movw	r24, r12
     b16:	c6 cf       	rjmp	.-116    	; 0xaa4 <__vector_11+0x1f4>
		desc_addr = (const u8*)&USB_DeviceDescriptorIAD;
	}
	else if (USB_STRING_DESCRIPTOR_TYPE == t)
	{
		if (setup.wValueL == 0) {
			desc_addr = (const u8*)&STRING_LANGUAGE;
     b18:	61 e6       	ldi	r22, 0x61	; 97
     b1a:	72 e0       	ldi	r23, 0x02	; 2
			return false;
	}

	if (desc_addr == 0)
		return false;
	u8 desc_length = pgm_read_byte(desc_addr);
     b1c:	fb 01       	movw	r30, r22
     b1e:	44 91       	lpm	r20, Z

	USB_SendControl(TRANSFER_PGM,desc_addr,desc_length);
     b20:	50 e0       	ldi	r21, 0x00	; 0
     b22:	80 e8       	ldi	r24, 0x80	; 128

	if (REQUEST_DEVICETOHOST_CLASS_INTERFACE == requestType)
	{
		if (CDC_GET_LINE_CODING == r)
		{
			USB_SendControl(0,(void*)&_usbLineInfo,7);
     b24:	0e 94 85 02 	call	0x50a	; 0x50a <_Z15USB_SendControlhPKvi>
     b28:	09 cf       	rjmp	.-494    	; 0x93c <__vector_11+0x8c>
		}
		else if (GET_DESCRIPTOR == r)
		{
			ok = SendDescriptor(setup);
		}
		else if (SET_DESCRIPTOR == r)
     b2a:	97 30       	cpi	r25, 0x07	; 7
     b2c:	09 f4       	brne	.+2      	; 0xb30 <__stack+0x31>
     b2e:	be cf       	rjmp	.-132    	; 0xaac <__vector_11+0x1fc>
		{
			ok = false;
		}
		else if (GET_CONFIGURATION == r)
     b30:	98 30       	cpi	r25, 0x08	; 8
     b32:	21 f4       	brne	.+8      	; 0xb3c <__stack+0x3d>
	return UEDATX;	
}

static inline void Send8(u8 d)
{
	UEDATX = d;
     b34:	81 e0       	ldi	r24, 0x01	; 1
     b36:	80 93 f1 00 	sts	0x00F1, r24	; 0x8000f1 <__DATA_REGION_ORIGIN__+0x91>
     b3a:	00 cf       	rjmp	.-512    	; 0x93c <__vector_11+0x8c>
		}
		else if (GET_CONFIGURATION == r)
		{
			Send8(1);
		}
		else if (SET_CONFIGURATION == r)
     b3c:	99 30       	cpi	r25, 0x09	; 9
     b3e:	09 f0       	breq	.+2      	; 0xb42 <__stack+0x43>
     b40:	fd ce       	rjmp	.-518    	; 0x93c <__vector_11+0x8c>
		{
			if (REQUEST_DEVICE == (requestType & REQUEST_RECIPIENT))
     b42:	83 70       	andi	r24, 0x03	; 3
     b44:	09 f0       	breq	.+2      	; 0xb48 <__stack+0x49>
     b46:	b2 cf       	rjmp	.-156    	; 0xaac <__vector_11+0x1fc>
     b48:	ee e0       	ldi	r30, 0x0E	; 14
     b4a:	f1 e0       	ldi	r31, 0x01	; 1
}

static
void InitEndpoints()
{
	for (u8 i = 1; i < sizeof(_initEndpoints) && _initEndpoints[i] != 0; i++)
     b4c:	81 e0       	ldi	r24, 0x01	; 1
	{
		UENUM = i;
		UECONX = (1<<EPEN);
     b4e:	31 e0       	ldi	r19, 0x01	; 1
		UECFG0X = _initEndpoints[i];
#if USB_EP_SIZE == 16
		UECFG1X = EP_SINGLE_16;
#elif USB_EP_SIZE == 64
		UECFG1X = EP_DOUBLE_64;
     b50:	96 e3       	ldi	r25, 0x36	; 54
}

static
void InitEndpoints()
{
	for (u8 i = 1; i < sizeof(_initEndpoints) && _initEndpoints[i] != 0; i++)
     b52:	21 91       	ld	r18, Z+
     b54:	22 23       	and	r18, r18
     b56:	71 f0       	breq	.+28     	; 0xb74 <__stack+0x75>
	{
		UENUM = i;
     b58:	80 93 e9 00 	sts	0x00E9, r24	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
		UECONX = (1<<EPEN);
     b5c:	30 93 eb 00 	sts	0x00EB, r19	; 0x8000eb <__DATA_REGION_ORIGIN__+0x8b>
		UECFG0X = _initEndpoints[i];
     b60:	df 01       	movw	r26, r30
     b62:	11 97       	sbiw	r26, 0x01	; 1
     b64:	2c 91       	ld	r18, X
     b66:	20 93 ec 00 	sts	0x00EC, r18	; 0x8000ec <__DATA_REGION_ORIGIN__+0x8c>
#if USB_EP_SIZE == 16
		UECFG1X = EP_SINGLE_16;
#elif USB_EP_SIZE == 64
		UECFG1X = EP_DOUBLE_64;
     b6a:	90 93 ed 00 	sts	0x00ED, r25	; 0x8000ed <__DATA_REGION_ORIGIN__+0x8d>
}

static
void InitEndpoints()
{
	for (u8 i = 1; i < sizeof(_initEndpoints) && _initEndpoints[i] != 0; i++)
     b6e:	8f 5f       	subi	r24, 0xFF	; 255
     b70:	87 30       	cpi	r24, 0x07	; 7
     b72:	79 f7       	brne	.-34     	; 0xb52 <__stack+0x53>
		UECFG1X = EP_DOUBLE_64;
#else
#error Unsupported value for USB_EP_SIZE
#endif
	}
	UERST = 0x7E;	// And reset them
     b74:	8e e7       	ldi	r24, 0x7E	; 126
     b76:	80 93 ea 00 	sts	0x00EA, r24	; 0x8000ea <__DATA_REGION_ORIGIN__+0x8a>
	UERST = 0;
     b7a:	10 92 ea 00 	sts	0x00EA, r1	; 0x8000ea <__DATA_REGION_ORIGIN__+0x8a>
		else if (SET_CONFIGURATION == r)
		{
			if (REQUEST_DEVICE == (requestType & REQUEST_RECIPIENT))
			{
				InitEndpoints();
				_usbConfiguration = setup.wValueL;
     b7e:	8f 89       	ldd	r24, Y+23	; 0x17
     b80:	80 93 55 01 	sts	0x0155, r24	; 0x800155 <_usbConfiguration>
     b84:	db ce       	rjmp	.-586    	; 0x93c <__vector_11+0x8c>
		{
		}
	}
	else
	{
		InitControl(setup.wLength);		//	Max length of transfer
     b86:	8b 8d       	ldd	r24, Y+27	; 0x1b
     b88:	9c 8d       	ldd	r25, Y+28	; 0x1c
	UEDATX = d;
}

static inline void SetEP(u8 ep)
{
	UENUM = ep;
     b8a:	10 92 e9 00 	sts	0x00E9, r1	; 0x8000e9 <__DATA_REGION_ORIGIN__+0x89>
static int _cmark;
static int _cend;
void InitControl(int end)
{
	SetEP(0);
	_cmark = 0;
     b8e:	10 92 43 01 	sts	0x0143, r1	; 0x800143 <_ZL6_cmark+0x1>
     b92:	10 92 42 01 	sts	0x0142, r1	; 0x800142 <_ZL6_cmark>
	_cend = end;
     b96:	90 93 41 01 	sts	0x0141, r25	; 0x800141 <_ZL5_cend+0x1>
     b9a:	80 93 40 01 	sts	0x0140, r24	; 0x800140 <_ZL5_cend>
static
bool ClassInterfaceRequest(USBSetup& setup)
{
	u8 i = setup.wIndex;

	if (CDC_ACM_INTERFACE == i)
     b9e:	89 8d       	ldd	r24, Y+25	; 0x19
     ba0:	81 11       	cpse	r24, r1
     ba2:	92 c0       	rjmp	.+292    	; 0xcc8 <__stack+0x1c9>
	return USB_SendControl(TRANSFER_PGM,&_cdcInterface,sizeof(_cdcInterface));
}

bool CDC_Setup(USBSetup& setup)
{
	u8 r = setup.bRequest;
     ba4:	8e 89       	ldd	r24, Y+22	; 0x16
	u8 requestType = setup.bmRequestType;
     ba6:	9d 89       	ldd	r25, Y+21	; 0x15

	if (REQUEST_DEVICETOHOST_CLASS_INTERFACE == requestType)
     ba8:	91 3a       	cpi	r25, 0xA1	; 161
     baa:	49 f4       	brne	.+18     	; 0xbbe <__stack+0xbf>
	{
		if (CDC_GET_LINE_CODING == r)
     bac:	81 32       	cpi	r24, 0x21	; 33
     bae:	09 f0       	breq	.+2      	; 0xbb2 <__stack+0xb3>
     bb0:	7d cf       	rjmp	.-262    	; 0xaac <__vector_11+0x1fc>
		{
			USB_SendControl(0,(void*)&_usbLineInfo,7);
     bb2:	47 e0       	ldi	r20, 0x07	; 7
     bb4:	50 e0       	ldi	r21, 0x00	; 0
     bb6:	65 e0       	ldi	r22, 0x05	; 5
     bb8:	71 e0       	ldi	r23, 0x01	; 1
     bba:	80 e0       	ldi	r24, 0x00	; 0
     bbc:	b3 cf       	rjmp	.-154    	; 0xb24 <__stack+0x25>
			return true;
		}
	}

	if (REQUEST_HOSTTODEVICE_CLASS_INTERFACE == requestType)
     bbe:	91 32       	cpi	r25, 0x21	; 33
     bc0:	09 f0       	breq	.+2      	; 0xbc4 <__stack+0xc5>
     bc2:	74 cf       	rjmp	.-280    	; 0xaac <__vector_11+0x1fc>
	{
		if (CDC_SEND_BREAK == r)
     bc4:	83 32       	cpi	r24, 0x23	; 35
     bc6:	69 f4       	brne	.+26     	; 0xbe2 <__stack+0xe3>
		{
			breakValue = ((uint16_t)setup.wValueH << 8) | setup.wValueL;
     bc8:	8f 89       	ldd	r24, Y+23	; 0x17
     bca:	98 8d       	ldd	r25, Y+24	; 0x18
     bcc:	b0 e0       	ldi	r27, 0x00	; 0
     bce:	a0 e0       	ldi	r26, 0x00	; 0
     bd0:	80 93 01 01 	sts	0x0101, r24	; 0x800101 <_ZL10breakValue>
     bd4:	90 93 02 01 	sts	0x0102, r25	; 0x800102 <_ZL10breakValue+0x1>
     bd8:	a0 93 03 01 	sts	0x0103, r26	; 0x800103 <_ZL10breakValue+0x2>
     bdc:	b0 93 04 01 	sts	0x0104, r27	; 0x800104 <_ZL10breakValue+0x3>
     be0:	ad ce       	rjmp	.-678    	; 0x93c <__vector_11+0x8c>
		}

		if (CDC_SET_LINE_CODING == r)
     be2:	80 32       	cpi	r24, 0x20	; 32
     be4:	69 f4       	brne	.+26     	; 0xc00 <__stack+0x101>
	UEINTX = ~(1<<TXINI);
}

static inline void WaitOUT(void)
{
	while (!(UEINTX & (1<<RXOUTI)))
     be6:	80 91 e8 00 	lds	r24, 0x00E8	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
     bea:	82 ff       	sbrs	r24, 2
     bec:	fc cf       	rjmp	.-8      	; 0xbe6 <__stack+0xe7>
			recvLength = 64;
		}

		// Write data to fit to the end (not the beginning) of the array
		WaitOUT();
		Recv((u8*)d + len - length, recvLength);
     bee:	67 e0       	ldi	r22, 0x07	; 7
     bf0:	85 e0       	ldi	r24, 0x05	; 5
     bf2:	91 e0       	ldi	r25, 0x01	; 1
     bf4:	0e 94 dc 02 	call	0x5b8	; 0x5b8 <_ZL4RecvPVhh>
	return (UEINTX & (1<<RXOUTI)) == 0;
}

static inline void ClearOUT(void)
{
	UEINTX = ~(1<<RXOUTI);
     bf8:	8b ef       	ldi	r24, 0xFB	; 251
     bfa:	80 93 e8 00 	sts	0x00E8, r24	; 0x8000e8 <__DATA_REGION_ORIGIN__+0x88>
     bfe:	9e ce       	rjmp	.-708    	; 0x93c <__vector_11+0x8c>
		{
			USB_RecvControl((void*)&_usbLineInfo,7);
		}

		if (CDC_SET_CONTROL_LINE_STATE == r)
     c00:	82 32       	cpi	r24, 0x22	; 34
     c02:	09 f0       	breq	.+2      	; 0xc06 <__stack+0x107>
     c04:	9b ce       	rjmp	.-714    	; 0x93c <__vector_11+0x8c>
		{
			_usbLineInfo.lineState = setup.wValueL;
     c06:	8f 89       	ldd	r24, Y+23	; 0x17
     c08:	80 93 0c 01 	sts	0x010C, r24	; 0x80010c <_ZL12_usbLineInfo+0x7>
	D_ENDPOINT(USB_ENDPOINT_IN (CDC_ENDPOINT_IN ),USB_ENDPOINT_TYPE_BULK,USB_EP_SIZE,0)
};

bool isLUFAbootloader()
{
	return pgm_read_word(FLASHEND - 1) == NEW_LUFA_SIGNATURE;
     c0c:	ee ef       	ldi	r30, 0xFE	; 254
     c0e:	ff e7       	ldi	r31, 0x7F	; 127
     c10:	85 91       	lpm	r24, Z+
     c12:	94 91       	lpm	r25, Z
// This is used to keep compatible with the old leonardo bootloaders.
// You are still able to set the magic key position manually to RAMEND-1 to save a few bytes for this check.
#if MAGIC_KEY_POS != (RAMEND-1)
			// For future boards save the key in the inproblematic RAMEND
			// Which is reserved for the main() return value (which will never return)
			if (isLUFAbootloader()) {
     c14:	8b 3f       	cpi	r24, 0xFB	; 251
     c16:	9c 4d       	sbci	r25, 0xDC	; 220
     c18:	51 f1       	breq	.+84     	; 0xc6e <__stack+0x16f>
			// auto-reset into the bootloader is triggered when the port, already 
			// open at 1200 bps, is closed.  this is the signal to start the watchdog
			// with a relatively long period so it can finish housekeeping tasks
			// like servicing endpoints before the sketch ends

			uint16_t magic_key_pos = MAGIC_KEY_POS;
     c1a:	e0 e0       	ldi	r30, 0x00	; 0
     c1c:	f8 e0       	ldi	r31, 0x08	; 8
				magic_key_pos = (RAMEND-1);
			}
#endif

			// We check DTR state to determine if host port is open (bit 0 of lineState).
			if (1200 == _usbLineInfo.dwDTERate && (_usbLineInfo.lineState & 0x01) == 0)
     c1e:	80 91 05 01 	lds	r24, 0x0105	; 0x800105 <_ZL12_usbLineInfo>
     c22:	90 91 06 01 	lds	r25, 0x0106	; 0x800106 <_ZL12_usbLineInfo+0x1>
     c26:	a0 91 07 01 	lds	r26, 0x0107	; 0x800107 <_ZL12_usbLineInfo+0x2>
     c2a:	b0 91 08 01 	lds	r27, 0x0108	; 0x800108 <_ZL12_usbLineInfo+0x3>
     c2e:	80 3b       	cpi	r24, 0xB0	; 176
     c30:	94 40       	sbci	r25, 0x04	; 4
     c32:	a1 05       	cpc	r26, r1
     c34:	b1 05       	cpc	r27, r1
     c36:	f1 f4       	brne	.+60     	; 0xc74 <__stack+0x175>
     c38:	80 91 0c 01 	lds	r24, 0x010C	; 0x80010c <_ZL12_usbLineInfo+0x7>
     c3c:	80 fd       	sbrc	r24, 0
     c3e:	1a c0       	rjmp	.+52     	; 0xc74 <__stack+0x175>
			{
#if MAGIC_KEY_POS != (RAMEND-1)
				// Backup ram value if its not a newer bootloader and it hasn't already been saved.
				// This should avoid memory corruption at least a bit, not fully
				if (magic_key_pos != (RAMEND-1) && *(uint16_t *)magic_key_pos != MAGIC_KEY) {
     c40:	ee 3f       	cpi	r30, 0xFE	; 254
     c42:	8a e0       	ldi	r24, 0x0A	; 10
     c44:	f8 07       	cpc	r31, r24
     c46:	89 f5       	brne	.+98     	; 0xcaa <__stack+0x1ab>
					*(uint16_t *)(RAMEND-1) = *(uint16_t *)magic_key_pos;
				}
#endif
				// Store boot key
				*(uint16_t *)magic_key_pos = MAGIC_KEY;
     c48:	87 e7       	ldi	r24, 0x77	; 119
     c4a:	97 e7       	ldi	r25, 0x77	; 119
     c4c:	91 83       	std	Z+1, r25	; 0x01
     c4e:	80 83       	st	Z, r24
				// Save the watchdog state in case the reset is aborted.
				wdtcsr_save = WDTCSR;
     c50:	80 91 60 00 	lds	r24, 0x0060	; 0x800060 <__DATA_REGION_ORIGIN__>
     c54:	80 93 44 01 	sts	0x0144, r24	; 0x800144 <_ZL11wdtcsr_save>
				: "n" (_SFR_MEM_ADDR(_WD_CONTROL_REG)),
				"r" ((uint8_t)(_BV(_WD_CHANGE_BIT) | _BV(WDE))),
				"r" ((uint8_t) ((value & 0x08 ? _WD_PS3_MASK : 0x00) |
						_BV(WDE) | (value & 0x07)) )
				: "r0"
		);
     c58:	88 e1       	ldi	r24, 0x18	; 24
     c5a:	9b e0       	ldi	r25, 0x0B	; 11
     c5c:	0f b6       	in	r0, 0x3f	; 63
     c5e:	f8 94       	cli
     c60:	a8 95       	wdr
     c62:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
     c66:	0f be       	out	0x3f, r0	; 63
     c68:	90 93 60 00 	sts	0x0060, r25	; 0x800060 <__DATA_REGION_ORIGIN__>
     c6c:	67 ce       	rjmp	.-818    	; 0x93c <__vector_11+0x8c>
#if MAGIC_KEY_POS != (RAMEND-1)
			// For future boards save the key in the inproblematic RAMEND
			// Which is reserved for the main() return value (which will never return)
			if (isLUFAbootloader()) {
				// horray, we got a new bootloader!
				magic_key_pos = (RAMEND-1);
     c6e:	ee ef       	ldi	r30, 0xFE	; 254
     c70:	fa e0       	ldi	r31, 0x0A	; 10
     c72:	d5 cf       	rjmp	.-86     	; 0xc1e <__stack+0x11f>
				*(uint16_t *)magic_key_pos = MAGIC_KEY;
				// Save the watchdog state in case the reset is aborted.
				wdtcsr_save = WDTCSR;
				wdt_enable(WDTO_120MS);
			}
			else if (*(uint16_t *)magic_key_pos == MAGIC_KEY)
     c74:	80 81       	ld	r24, Z
     c76:	91 81       	ldd	r25, Z+1	; 0x01
     c78:	87 37       	cpi	r24, 0x77	; 119
     c7a:	97 47       	sbci	r25, 0x77	; 119
     c7c:	09 f0       	breq	.+2      	; 0xc80 <__stack+0x181>
     c7e:	5e ce       	rjmp	.-836    	; 0x93c <__vector_11+0x8c>
				// To avoid spurious resets we set the watchdog to 120ms and eventually
				// cancel if DTR goes back high.
				// Cancellation is only done if an auto-reset was started, which is
				// indicated by the magic key having been set.

				wdt_reset();
     c80:	a8 95       	wdr
				// Restore the watchdog state in case the sketch was using it.
				WDTCSR |= (1<<WDCE) | (1<<WDE);
     c82:	80 91 60 00 	lds	r24, 0x0060	; 0x800060 <__DATA_REGION_ORIGIN__>
     c86:	88 61       	ori	r24, 0x18	; 24
     c88:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
				WDTCSR = wdtcsr_save;
     c8c:	80 91 44 01 	lds	r24, 0x0144	; 0x800144 <_ZL11wdtcsr_save>
     c90:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__DATA_REGION_ORIGIN__>
#if MAGIC_KEY_POS != (RAMEND-1)
				// Restore backed up (old bootloader) magic key data
				if (magic_key_pos != (RAMEND-1)) {
     c94:	ee 3f       	cpi	r30, 0xFE	; 254
     c96:	2a e0       	ldi	r18, 0x0A	; 10
     c98:	f2 07       	cpc	r31, r18
     c9a:	89 f0       	breq	.+34     	; 0xcbe <__stack+0x1bf>
					*(uint16_t *)magic_key_pos = *(uint16_t *)(RAMEND-1);
     c9c:	80 91 fe 0a 	lds	r24, 0x0AFE	; 0x800afe <__bss_end+0x548>
     ca0:	90 91 ff 0a 	lds	r25, 0x0AFF	; 0x800aff <__bss_end+0x549>
     ca4:	91 83       	std	Z+1, r25	; 0x01
     ca6:	80 83       	st	Z, r24
     ca8:	49 ce       	rjmp	.-878    	; 0x93c <__vector_11+0x8c>
			if (1200 == _usbLineInfo.dwDTERate && (_usbLineInfo.lineState & 0x01) == 0)
			{
#if MAGIC_KEY_POS != (RAMEND-1)
				// Backup ram value if its not a newer bootloader and it hasn't already been saved.
				// This should avoid memory corruption at least a bit, not fully
				if (magic_key_pos != (RAMEND-1) && *(uint16_t *)magic_key_pos != MAGIC_KEY) {
     caa:	80 81       	ld	r24, Z
     cac:	91 81       	ldd	r25, Z+1	; 0x01
     cae:	87 37       	cpi	r24, 0x77	; 119
     cb0:	98 07       	cpc	r25, r24
     cb2:	51 f2       	breq	.-108    	; 0xc48 <__stack+0x149>
					*(uint16_t *)(RAMEND-1) = *(uint16_t *)magic_key_pos;
     cb4:	90 93 ff 0a 	sts	0x0AFF, r25	; 0x800aff <__bss_end+0x549>
     cb8:	80 93 fe 0a 	sts	0x0AFE, r24	; 0x800afe <__bss_end+0x548>
     cbc:	c5 cf       	rjmp	.-118    	; 0xc48 <__stack+0x149>
					*(uint16_t *)magic_key_pos = *(uint16_t *)(RAMEND-1);
				} else
#endif
				{
				// Clean up RAMEND key
					*(uint16_t *)magic_key_pos = 0x0000;
     cbe:	10 92 ff 0a 	sts	0x0AFF, r1	; 0x800aff <__bss_end+0x549>
     cc2:	10 92 fe 0a 	sts	0x0AFE, r1	; 0x800afe <__bss_end+0x548>
     cc6:	3a ce       	rjmp	.-908    	; 0x93c <__vector_11+0x8c>

	if (CDC_ACM_INTERFACE == i)
		return CDC_Setup(setup);

#ifdef PLUGGABLE_USB_ENABLED
	return PluggableUSB().setup(setup);
     cc8:	0e 94 c2 01 	call	0x384	; 0x384 <_Z12PluggableUSBv>
}

bool PluggableUSB_::setup(USBSetup& setup)
{
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
     ccc:	dc 01       	movw	r26, r24
     cce:	12 96       	adiw	r26, 0x02	; 2
     cd0:	0d 91       	ld	r16, X+
     cd2:	1c 91       	ld	r17, X
     cd4:	01 15       	cp	r16, r1
     cd6:	11 05       	cpc	r17, r1
     cd8:	09 f4       	brne	.+2      	; 0xcdc <__stack+0x1dd>
     cda:	e8 ce       	rjmp	.-560    	; 0xaac <__vector_11+0x1fc>
		if (node->setup(setup)) {
     cdc:	d8 01       	movw	r26, r16
     cde:	ed 91       	ld	r30, X+
     ce0:	fc 91       	ld	r31, X
     ce2:	01 90       	ld	r0, Z+
     ce4:	f0 81       	ld	r31, Z
     ce6:	e0 2d       	mov	r30, r0
     ce8:	be 01       	movw	r22, r28
     cea:	6b 5e       	subi	r22, 0xEB	; 235
     cec:	7f 4f       	sbci	r23, 0xFF	; 255
     cee:	c8 01       	movw	r24, r16
     cf0:	09 95       	icall
     cf2:	81 11       	cpse	r24, r1
     cf4:	23 ce       	rjmp	.-954    	; 0x93c <__vector_11+0x8c>
}

bool PluggableUSB_::setup(USBSetup& setup)
{
	PluggableUSBModule* node;
	for (node = rootNode; node; node = node->next) {
     cf6:	f8 01       	movw	r30, r16
     cf8:	00 85       	ldd	r16, Z+8	; 0x08
     cfa:	11 85       	ldd	r17, Z+9	; 0x09
     cfc:	eb cf       	rjmp	.-42     	; 0xcd4 <__stack+0x1d5>

	InitControl(setup.wLength);
#ifdef PLUGGABLE_USB_ENABLED
	int ret = PluggableUSB().getDescriptor(setup);
	if (ret != 0) {
		return (ret > 0 ? true : false);
     cfe:	18 16       	cp	r1, r24
     d00:	19 06       	cpc	r1, r25
     d02:	0c f4       	brge	.+2      	; 0xd06 <__stack+0x207>
     d04:	1b ce       	rjmp	.-970    	; 0x93c <__vector_11+0x8c>
     d06:	d2 ce       	rjmp	.-604    	; 0xaac <__vector_11+0x1fc>
	}
#endif

	const u8* desc_addr = 0;
	if (USB_DEVICE_DESCRIPTOR_TYPE == t)
     d08:	f1 e0       	ldi	r31, 0x01	; 1
     d0a:	ff 12       	cpse	r15, r31
     d0c:	be ce       	rjmp	.-644    	; 0xa8a <__vector_11+0x1da>
	{
		desc_addr = (const u8*)&USB_DeviceDescriptorIAD;
     d0e:	65 e6       	ldi	r22, 0x65	; 101
     d10:	72 e0       	ldi	r23, 0x02	; 2
     d12:	04 cf       	rjmp	.-504    	; 0xb1c <__stack+0x1d>

00000d14 <__vector_23>:
#if defined(TIM0_OVF_vect)
ISR(TIM0_OVF_vect)
#else
ISR(TIMER0_OVF_vect)
#endif
{
     d14:	1f 92       	push	r1
     d16:	0f 92       	push	r0
     d18:	0f b6       	in	r0, 0x3f	; 63
     d1a:	0f 92       	push	r0
     d1c:	11 24       	eor	r1, r1
     d1e:	2f 93       	push	r18
     d20:	3f 93       	push	r19
     d22:	8f 93       	push	r24
     d24:	9f 93       	push	r25
     d26:	af 93       	push	r26
     d28:	bf 93       	push	r27
	// copy these to local variables so they can be stored in registers
	// (volatile variables must be read from memory on every access)
	unsigned long m = timer0_millis;
     d2a:	80 91 38 01 	lds	r24, 0x0138	; 0x800138 <timer0_millis>
     d2e:	90 91 39 01 	lds	r25, 0x0139	; 0x800139 <timer0_millis+0x1>
     d32:	a0 91 3a 01 	lds	r26, 0x013A	; 0x80013a <timer0_millis+0x2>
     d36:	b0 91 3b 01 	lds	r27, 0x013B	; 0x80013b <timer0_millis+0x3>
	unsigned char f = timer0_fract;
     d3a:	30 91 32 01 	lds	r19, 0x0132	; 0x800132 <timer0_fract>

	m += MILLIS_INC;
	f += FRACT_INC;
     d3e:	23 e0       	ldi	r18, 0x03	; 3
     d40:	23 0f       	add	r18, r19
	if (f >= FRACT_MAX) {
     d42:	2d 37       	cpi	r18, 0x7D	; 125
     d44:	58 f5       	brcc	.+86     	; 0xd9c <__vector_23+0x88>
	// copy these to local variables so they can be stored in registers
	// (volatile variables must be read from memory on every access)
	unsigned long m = timer0_millis;
	unsigned char f = timer0_fract;

	m += MILLIS_INC;
     d46:	01 96       	adiw	r24, 0x01	; 1
     d48:	a1 1d       	adc	r26, r1
     d4a:	b1 1d       	adc	r27, r1
	if (f >= FRACT_MAX) {
		f -= FRACT_MAX;
		m += 1;
	}

	timer0_fract = f;
     d4c:	20 93 32 01 	sts	0x0132, r18	; 0x800132 <timer0_fract>
	timer0_millis = m;
     d50:	80 93 38 01 	sts	0x0138, r24	; 0x800138 <timer0_millis>
     d54:	90 93 39 01 	sts	0x0139, r25	; 0x800139 <timer0_millis+0x1>
     d58:	a0 93 3a 01 	sts	0x013A, r26	; 0x80013a <timer0_millis+0x2>
     d5c:	b0 93 3b 01 	sts	0x013B, r27	; 0x80013b <timer0_millis+0x3>
	timer0_overflow_count++;
     d60:	80 91 33 01 	lds	r24, 0x0133	; 0x800133 <timer0_overflow_count>
     d64:	90 91 34 01 	lds	r25, 0x0134	; 0x800134 <timer0_overflow_count+0x1>
     d68:	a0 91 35 01 	lds	r26, 0x0135	; 0x800135 <timer0_overflow_count+0x2>
     d6c:	b0 91 36 01 	lds	r27, 0x0136	; 0x800136 <timer0_overflow_count+0x3>
     d70:	01 96       	adiw	r24, 0x01	; 1
     d72:	a1 1d       	adc	r26, r1
     d74:	b1 1d       	adc	r27, r1
     d76:	80 93 33 01 	sts	0x0133, r24	; 0x800133 <timer0_overflow_count>
     d7a:	90 93 34 01 	sts	0x0134, r25	; 0x800134 <timer0_overflow_count+0x1>
     d7e:	a0 93 35 01 	sts	0x0135, r26	; 0x800135 <timer0_overflow_count+0x2>
     d82:	b0 93 36 01 	sts	0x0136, r27	; 0x800136 <timer0_overflow_count+0x3>
}
     d86:	bf 91       	pop	r27
     d88:	af 91       	pop	r26
     d8a:	9f 91       	pop	r25
     d8c:	8f 91       	pop	r24
     d8e:	3f 91       	pop	r19
     d90:	2f 91       	pop	r18
     d92:	0f 90       	pop	r0
     d94:	0f be       	out	0x3f, r0	; 63
     d96:	0f 90       	pop	r0
     d98:	1f 90       	pop	r1
     d9a:	18 95       	reti
	unsigned char f = timer0_fract;

	m += MILLIS_INC;
	f += FRACT_INC;
	if (f >= FRACT_MAX) {
		f -= FRACT_MAX;
     d9c:	26 e8       	ldi	r18, 0x86	; 134
     d9e:	23 0f       	add	r18, r19
		m += 1;
     da0:	02 96       	adiw	r24, 0x02	; 2
     da2:	a1 1d       	adc	r26, r1
     da4:	b1 1d       	adc	r27, r1
     da6:	d2 cf       	rjmp	.-92     	; 0xd4c <__vector_23+0x38>

00000da8 <__vector_32>:

ISR(TIMER3_COMPA_vect)
{
     da8:	1f 92       	push	r1
     daa:	0f 92       	push	r0
     dac:	0f b6       	in	r0, 0x3f	; 63
     dae:	0f 92       	push	r0
     db0:	11 24       	eor	r1, r1
     db2:	cf 92       	push	r12
     db4:	df 92       	push	r13
     db6:	ef 92       	push	r14
     db8:	ff 92       	push	r15
     dba:	2f 93       	push	r18
     dbc:	3f 93       	push	r19
     dbe:	4f 93       	push	r20
     dc0:	5f 93       	push	r21
     dc2:	6f 93       	push	r22
     dc4:	7f 93       	push	r23
     dc6:	8f 93       	push	r24
     dc8:	9f 93       	push	r25
     dca:	af 93       	push	r26
     dcc:	bf 93       	push	r27
     dce:	cf 93       	push	r28
     dd0:	df 93       	push	r29
     dd2:	ef 93       	push	r30
     dd4:	ff 93       	push	r31
  if (durationToggleCount != 0) {
     dd6:	80 91 2e 01 	lds	r24, 0x012E	; 0x80012e <_ZL19durationToggleCount>
     dda:	90 91 2f 01 	lds	r25, 0x012F	; 0x80012f <_ZL19durationToggleCount+0x1>
     dde:	a0 91 30 01 	lds	r26, 0x0130	; 0x800130 <_ZL19durationToggleCount+0x2>
     de2:	b0 91 31 01 	lds	r27, 0x0131	; 0x800131 <_ZL19durationToggleCount+0x3>
     de6:	89 2b       	or	r24, r25
     de8:	8a 2b       	or	r24, r26
     dea:	8b 2b       	or	r24, r27
     dec:	09 f4       	brne	.+2      	; 0xdf0 <__vector_32+0x48>
     dee:	46 c0       	rjmp	.+140    	; 0xe7c <__vector_32+0xd4>
    if (!toneSilent) {
     df0:	80 91 2d 01 	lds	r24, 0x012D	; 0x80012d <_ZL10toneSilent>
     df4:	81 11       	cpse	r24, r1
     df6:	0b c0       	rjmp	.+22     	; 0xe0e <__vector_32+0x66>
      *(&TONE_PIN_PORT) ^= TONE_PIN_MASK; // toggle the pin
     df8:	88 b1       	in	r24, 0x08	; 8
     dfa:	90 e4       	ldi	r25, 0x40	; 64
     dfc:	89 27       	eor	r24, r25
     dfe:	88 b9       	out	0x08, r24	; 8
#ifdef TONES_VOLUME_CONTROL
      if (toneHighVol) {
     e00:	80 91 2c 01 	lds	r24, 0x012C	; 0x80012c <_ZL11toneHighVol>
     e04:	88 23       	and	r24, r24
     e06:	19 f0       	breq	.+6      	; 0xe0e <__vector_32+0x66>
        *(&TONE_PIN2_PORT) ^= TONE_PIN2_MASK; // toggle pin 2
     e08:	88 b1       	in	r24, 0x08	; 8
     e0a:	80 58       	subi	r24, 0x80	; 128
     e0c:	88 b9       	out	0x08, r24	; 8
      }
#endif
    }
    if (durationToggleCount > 0) {
     e0e:	80 91 2e 01 	lds	r24, 0x012E	; 0x80012e <_ZL19durationToggleCount>
     e12:	90 91 2f 01 	lds	r25, 0x012F	; 0x80012f <_ZL19durationToggleCount+0x1>
     e16:	a0 91 30 01 	lds	r26, 0x0130	; 0x800130 <_ZL19durationToggleCount+0x2>
     e1a:	b0 91 31 01 	lds	r27, 0x0131	; 0x800131 <_ZL19durationToggleCount+0x3>
     e1e:	18 16       	cp	r1, r24
     e20:	19 06       	cpc	r1, r25
     e22:	1a 06       	cpc	r1, r26
     e24:	1b 06       	cpc	r1, r27
     e26:	9c f4       	brge	.+38     	; 0xe4e <__vector_32+0xa6>
      durationToggleCount--;
     e28:	80 91 2e 01 	lds	r24, 0x012E	; 0x80012e <_ZL19durationToggleCount>
     e2c:	90 91 2f 01 	lds	r25, 0x012F	; 0x80012f <_ZL19durationToggleCount+0x1>
     e30:	a0 91 30 01 	lds	r26, 0x0130	; 0x800130 <_ZL19durationToggleCount+0x2>
     e34:	b0 91 31 01 	lds	r27, 0x0131	; 0x800131 <_ZL19durationToggleCount+0x3>
     e38:	01 97       	sbiw	r24, 0x01	; 1
     e3a:	a1 09       	sbc	r26, r1
     e3c:	b1 09       	sbc	r27, r1
     e3e:	80 93 2e 01 	sts	0x012E, r24	; 0x80012e <_ZL19durationToggleCount>
     e42:	90 93 2f 01 	sts	0x012F, r25	; 0x80012f <_ZL19durationToggleCount+0x1>
     e46:	a0 93 30 01 	sts	0x0130, r26	; 0x800130 <_ZL19durationToggleCount+0x2>
     e4a:	b0 93 31 01 	sts	0x0131, r27	; 0x800131 <_ZL19durationToggleCount+0x3>
    }
  }
  else {
    ArduboyTones::nextTone();
  }
}
     e4e:	ff 91       	pop	r31
     e50:	ef 91       	pop	r30
     e52:	df 91       	pop	r29
     e54:	cf 91       	pop	r28
     e56:	bf 91       	pop	r27
     e58:	af 91       	pop	r26
     e5a:	9f 91       	pop	r25
     e5c:	8f 91       	pop	r24
     e5e:	7f 91       	pop	r23
     e60:	6f 91       	pop	r22
     e62:	5f 91       	pop	r21
     e64:	4f 91       	pop	r20
     e66:	3f 91       	pop	r19
     e68:	2f 91       	pop	r18
     e6a:	ff 90       	pop	r15
     e6c:	ef 90       	pop	r14
     e6e:	df 90       	pop	r13
     e70:	cf 90       	pop	r12
     e72:	0f 90       	pop	r0
     e74:	0f be       	out	0x3f, r0	; 63
     e76:	0f 90       	pop	r0
     e78:	1f 90       	pop	r1
     e7a:	18 95       	reti
  uint32_t ocrValue;
#ifdef TONES_ADJUST_PRESCALER
  uint8_t tccrxbValue;
#endif

  freq = getNext(); // get tone frequency
     e7c:	0e 94 c6 03 	call	0x78c	; 0x78c <_ZN12ArduboyTones7getNextEv>

  if (freq == TONES_END) { // if freq is actually an "end of sequence" marker
     e80:	81 15       	cp	r24, r1
     e82:	20 e8       	ldi	r18, 0x80	; 128
     e84:	92 07       	cpc	r25, r18
     e86:	61 f4       	brne	.+24     	; 0xea0 <__vector_32+0xf8>
  nextTone(); // start playing
}

void ArduboyTones::noTone()
{
  bitWrite(TIMSK3, OCIE3A, 0); // disable the output compare match interrupt
     e88:	80 91 71 00 	lds	r24, 0x0071	; 0x800071 <__DATA_REGION_ORIGIN__+0x11>
     e8c:	8d 7f       	andi	r24, 0xFD	; 253
     e8e:	80 93 71 00 	sts	0x0071, r24	; 0x800071 <__DATA_REGION_ORIGIN__+0x11>
  TCCR3B = 0; // stop the counter
     e92:	10 92 91 00 	sts	0x0091, r1	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
  bitClear(TONE_PIN_PORT, TONE_PIN); // set the pin low
     e96:	46 98       	cbi	0x08, 6	; 8
#ifdef TONES_VOLUME_CONTROL
  bitClear(TONE_PIN2_PORT, TONE_PIN2); // set pin 2 low
     e98:	47 98       	cbi	0x08, 7	; 8
#endif
  tonesPlaying = false;
     e9a:	10 92 2b 01 	sts	0x012B, r1	; 0x80012b <_ZL12tonesPlaying>
     e9e:	d7 cf       	rjmp	.-82     	; 0xe4e <__vector_32+0xa6>
  if (freq == TONES_END) { // if freq is actually an "end of sequence" marker
    noTone(); // stop playing
    return;
  }

  tonesPlaying = true;
     ea0:	21 e0       	ldi	r18, 0x01	; 1
     ea2:	20 93 2b 01 	sts	0x012B, r18	; 0x80012b <_ZL12tonesPlaying>

  if (freq == TONES_REPEAT) { // if frequency is actually a "repeat" marker
     ea6:	81 30       	cpi	r24, 0x01	; 1
     ea8:	20 e8       	ldi	r18, 0x80	; 128
     eaa:	92 07       	cpc	r25, r18
     eac:	31 f4       	brne	.+12     	; 0xeba <__vector_32+0x112>
    tonesIndex = tonesStart; // reset to start of sequence
     eae:	10 92 2a 01 	sts	0x012A, r1	; 0x80012a <_ZL10tonesIndex+0x1>
     eb2:	10 92 29 01 	sts	0x0129, r1	; 0x800129 <_ZL10tonesIndex>
    freq = getNext();
     eb6:	0e 94 c6 03 	call	0x78c	; 0x78c <_ZN12ArduboyTones7getNextEv>
  }

#ifdef TONES_VOLUME_CONTROL
  if (((freq & TONE_HIGH_VOLUME) || forceHighVol) && !forceNormVol) {
     eba:	97 fd       	sbrc	r25, 7
     ebc:	05 c0       	rjmp	.+10     	; 0xec8 <__vector_32+0x120>
     ebe:	20 91 28 01 	lds	r18, 0x0128	; 0x800128 <_ZL12forceHighVol>
     ec2:	22 23       	and	r18, r18
     ec4:	09 f4       	brne	.+2      	; 0xec8 <__vector_32+0x120>
     ec6:	54 c0       	rjmp	.+168    	; 0xf70 <__vector_32+0x1c8>
     ec8:	20 91 27 01 	lds	r18, 0x0127	; 0x800127 <_ZL12forceNormVol>
     ecc:	21 11       	cpse	r18, r1
     ece:	50 c0       	rjmp	.+160    	; 0xf70 <__vector_32+0x1c8>
    toneHighVol = true;
     ed0:	21 e0       	ldi	r18, 0x01	; 1
     ed2:	20 93 2c 01 	sts	0x012C, r18	; 0x80012c <_ZL11toneHighVol>
  else {
    toneHighVol = false;
  }
#endif

  freq &= ~TONE_HIGH_VOLUME; // strip volume indicator from frequency
     ed6:	ec 01       	movw	r28, r24
     ed8:	df 77       	andi	r29, 0x7F	; 127
    toneSilent = false;
  }
  else {
    tccrxbValue = _BV(WGM32) | _BV(CS31); // CTC mode, prescaler /8
#endif
    if (freq == 0) { // if tone is silent
     eda:	20 97       	sbiw	r28, 0x00	; 0
     edc:	09 f0       	breq	.+2      	; 0xee0 <__vector_32+0x138>
     ede:	4b c0       	rjmp	.+150    	; 0xf76 <__vector_32+0x1ce>
      ocrValue = F_CPU / 8 / SILENT_FREQ / 2 - 1; // dummy tone for silence
      freq = SILENT_FREQ;
      toneSilent = true;
     ee0:	81 e0       	ldi	r24, 0x01	; 1
     ee2:	80 93 2d 01 	sts	0x012D, r24	; 0x80012d <_ZL10toneSilent>
      bitClear(TONE_PIN_PORT, TONE_PIN); // set the pin low
     ee6:	46 98       	cbi	0x08, 6	; 8
  }
  else {
    tccrxbValue = _BV(WGM32) | _BV(CS31); // CTC mode, prescaler /8
#endif
    if (freq == 0) { // if tone is silent
      ocrValue = F_CPU / 8 / SILENT_FREQ / 2 - 1; // dummy tone for silence
     ee8:	3f e9       	ldi	r19, 0x9F	; 159
     eea:	c3 2e       	mov	r12, r19
     eec:	3f e0       	ldi	r19, 0x0F	; 15
     eee:	d3 2e       	mov	r13, r19
     ef0:	e1 2c       	mov	r14, r1
     ef2:	f1 2c       	mov	r15, r1
      freq = SILENT_FREQ;
     ef4:	ca ef       	ldi	r28, 0xFA	; 250
     ef6:	d0 e0       	ldi	r29, 0x00	; 0
    }
#ifdef TONES_ADJUST_PRESCALER
  }
#endif

  if (!outputEnabled()) { // if sound has been muted
     ef8:	e0 91 b4 05 	lds	r30, 0x05B4	; 0x8005b4 <_ZL13outputEnabled>
     efc:	f0 91 b5 05 	lds	r31, 0x05B5	; 0x8005b5 <_ZL13outputEnabled+0x1>
     f00:	09 95       	icall
     f02:	81 11       	cpse	r24, r1
     f04:	03 c0       	rjmp	.+6      	; 0xf0c <__vector_32+0x164>
    toneSilent = true;
     f06:	81 e0       	ldi	r24, 0x01	; 1
     f08:	80 93 2d 01 	sts	0x012D, r24	; 0x80012d <_ZL10toneSilent>
  }

#ifdef TONES_VOLUME_CONTROL
  if (toneHighVol && !toneSilent) {
     f0c:	80 91 2c 01 	lds	r24, 0x012C	; 0x80012c <_ZL11toneHighVol>
     f10:	88 23       	and	r24, r24
     f12:	29 f0       	breq	.+10     	; 0xf1e <__vector_32+0x176>
     f14:	80 91 2d 01 	lds	r24, 0x012D	; 0x80012d <_ZL10toneSilent>
     f18:	88 23       	and	r24, r24
     f1a:	09 f4       	brne	.+2      	; 0xf1e <__vector_32+0x176>
     f1c:	3f c0       	rjmp	.+126    	; 0xf9c <__vector_32+0x1f4>
    // set pin 2 to the compliment of pin 1
    if (bitRead(TONE_PIN_PORT, TONE_PIN)) {
      bitClear(TONE_PIN2_PORT, TONE_PIN2);
     f1e:	47 98       	cbi	0x08, 7	; 8
  else {
    bitClear(TONE_PIN2_PORT, TONE_PIN2); // set pin 2 low for normal volume
  }
#endif

  dur = getNext(); // get tone duration
     f20:	0e 94 c6 03 	call	0x78c	; 0x78c <_ZN12ArduboyTones7getNextEv>
  if (dur != 0) {
     f24:	00 97       	sbiw	r24, 0x00	; 0
     f26:	f1 f1       	breq	.+124    	; 0xfa4 <__vector_32+0x1fc>
    // A right shift is used to divide by 512 for efficency.
    // For durations in milliseconds it should actually be a divide by 500,
    // so durations will by shorter by 2.34% of what is specified.
    toggleCount = ((long)dur * freq) >> 9;
     f28:	9c 01       	movw	r18, r24
     f2a:	de 01       	movw	r26, r28
     f2c:	0e 94 36 0b 	call	0x166c	; 0x166c <__umulhisi3>
     f30:	dc 01       	movw	r26, r24
     f32:	cb 01       	movw	r24, r22
     f34:	29 e0       	ldi	r18, 0x09	; 9
     f36:	b5 95       	asr	r27
     f38:	a7 95       	ror	r26
     f3a:	97 95       	ror	r25
     f3c:	87 95       	ror	r24
     f3e:	2a 95       	dec	r18
     f40:	d1 f7       	brne	.-12     	; 0xf36 <__vector_32+0x18e>
  }
  else {
    toggleCount = -1; // indicate infinite duration
  }

  TCCR3A = 0;
     f42:	10 92 90 00 	sts	0x0090, r1	; 0x800090 <__DATA_REGION_ORIGIN__+0x30>
#ifdef TONES_ADJUST_PRESCALER
  TCCR3B = tccrxbValue;
#else
  TCCR3B = _BV(WGM32) | _BV(CS31); // CTC mode, prescaler /8
     f46:	2a e0       	ldi	r18, 0x0A	; 10
     f48:	20 93 91 00 	sts	0x0091, r18	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
#endif
  OCR3A = ocrValue;
     f4c:	d0 92 99 00 	sts	0x0099, r13	; 0x800099 <__DATA_REGION_ORIGIN__+0x39>
     f50:	c0 92 98 00 	sts	0x0098, r12	; 0x800098 <__DATA_REGION_ORIGIN__+0x38>
  durationToggleCount = toggleCount;
     f54:	80 93 2e 01 	sts	0x012E, r24	; 0x80012e <_ZL19durationToggleCount>
     f58:	90 93 2f 01 	sts	0x012F, r25	; 0x80012f <_ZL19durationToggleCount+0x1>
     f5c:	a0 93 30 01 	sts	0x0130, r26	; 0x800130 <_ZL19durationToggleCount+0x2>
     f60:	b0 93 31 01 	sts	0x0131, r27	; 0x800131 <_ZL19durationToggleCount+0x3>
  bitWrite(TIMSK3, OCIE3A, 1); // enable the output compare match interrupt
     f64:	80 91 71 00 	lds	r24, 0x0071	; 0x800071 <__DATA_REGION_ORIGIN__+0x11>
     f68:	82 60       	ori	r24, 0x02	; 2
     f6a:	80 93 71 00 	sts	0x0071, r24	; 0x800071 <__DATA_REGION_ORIGIN__+0x11>
     f6e:	6f cf       	rjmp	.-290    	; 0xe4e <__vector_32+0xa6>
#ifdef TONES_VOLUME_CONTROL
  if (((freq & TONE_HIGH_VOLUME) || forceHighVol) && !forceNormVol) {
    toneHighVol = true;
  }
  else {
    toneHighVol = false;
     f70:	10 92 2c 01 	sts	0x012C, r1	; 0x80012c <_ZL11toneHighVol>
     f74:	b0 cf       	rjmp	.-160    	; 0xed6 <__vector_32+0x12e>
      freq = SILENT_FREQ;
      toneSilent = true;
      bitClear(TONE_PIN_PORT, TONE_PIN); // set the pin low
    }
    else {
      ocrValue = F_CPU / 8 / freq / 2 - 1;
     f76:	9e 01       	movw	r18, r28
     f78:	50 e0       	ldi	r21, 0x00	; 0
     f7a:	40 e0       	ldi	r20, 0x00	; 0
     f7c:	60 e4       	ldi	r22, 0x40	; 64
     f7e:	72 e4       	ldi	r23, 0x42	; 66
     f80:	8f e0       	ldi	r24, 0x0F	; 15
     f82:	90 e0       	ldi	r25, 0x00	; 0
     f84:	0e 94 f5 0a 	call	0x15ea	; 0x15ea <__divmodsi4>
     f88:	69 01       	movw	r12, r18
     f8a:	7a 01       	movw	r14, r20
     f8c:	81 e0       	ldi	r24, 0x01	; 1
     f8e:	c8 1a       	sub	r12, r24
     f90:	d1 08       	sbc	r13, r1
     f92:	e1 08       	sbc	r14, r1
     f94:	f1 08       	sbc	r15, r1
      toneSilent = false;
     f96:	10 92 2d 01 	sts	0x012D, r1	; 0x80012d <_ZL10toneSilent>
     f9a:	ae cf       	rjmp	.-164    	; 0xef8 <__vector_32+0x150>
  }

#ifdef TONES_VOLUME_CONTROL
  if (toneHighVol && !toneSilent) {
    // set pin 2 to the compliment of pin 1
    if (bitRead(TONE_PIN_PORT, TONE_PIN)) {
     f9c:	46 99       	sbic	0x08, 6	; 8
     f9e:	bf cf       	rjmp	.-130    	; 0xf1e <__vector_32+0x176>
      bitClear(TONE_PIN2_PORT, TONE_PIN2);
    }
    else {
      bitSet(TONE_PIN2_PORT, TONE_PIN2);
     fa0:	47 9a       	sbi	0x08, 7	; 8
     fa2:	be cf       	rjmp	.-132    	; 0xf20 <__vector_32+0x178>
    // For durations in milliseconds it should actually be a divide by 500,
    // so durations will by shorter by 2.34% of what is specified.
    toggleCount = ((long)dur * freq) >> 9;
  }
  else {
    toggleCount = -1; // indicate infinite duration
     fa4:	8f ef       	ldi	r24, 0xFF	; 255
     fa6:	9f ef       	ldi	r25, 0xFF	; 255
     fa8:	dc 01       	movw	r26, r24
     faa:	cb cf       	rjmp	.-106    	; 0xf42 <__vector_32+0x19a>

00000fac <_ZL24USB_SendStringDescriptorPKhhh>:
}

// Send a USB descriptor string. The string is stored in PROGMEM as a
// plain ASCII string but is sent out as UTF-16 with the correct 2-byte
// prefix
static bool USB_SendStringDescriptor(const u8*string_P, u8 string_len, uint8_t flags) {
     fac:	ef 92       	push	r14
     fae:	ff 92       	push	r15
     fb0:	0f 93       	push	r16
     fb2:	1f 93       	push	r17
     fb4:	cf 93       	push	r28
     fb6:	df 93       	push	r29
     fb8:	f8 2e       	mov	r15, r24
     fba:	19 2f       	mov	r17, r25
     fbc:	e6 2e       	mov	r14, r22
     fbe:	04 2f       	mov	r16, r20
        SendControl(2 + string_len * 2);
     fc0:	81 e0       	ldi	r24, 0x01	; 1
     fc2:	86 0f       	add	r24, r22
     fc4:	88 0f       	add	r24, r24
     fc6:	0e 94 57 02 	call	0x4ae	; 0x4ae <_ZL11SendControlh>
        SendControl(3);
     fca:	83 e0       	ldi	r24, 0x03	; 3
     fcc:	0e 94 57 02 	call	0x4ae	; 0x4ae <_ZL11SendControlh>
     fd0:	cf 2d       	mov	r28, r15
     fd2:	d1 2f       	mov	r29, r17
     fd4:	ec 0e       	add	r14, r28
     fd6:	fd 2e       	mov	r15, r29
     fd8:	f1 1c       	adc	r15, r1
        bool pgm = flags & TRANSFER_PGM;
        for(u8 i = 0; i < string_len; i++) {
     fda:	ce 15       	cp	r28, r14
     fdc:	df 05       	cpc	r29, r15
     fde:	b9 f0       	breq	.+46     	; 0x100e <_ZL24USB_SendStringDescriptorPKhhh+0x62>
                bool r = SendControl(pgm ? pgm_read_byte(&string_P[i]) : string_P[i]);
     fe0:	07 ff       	sbrs	r16, 7
     fe2:	13 c0       	rjmp	.+38     	; 0x100a <_ZL24USB_SendStringDescriptorPKhhh+0x5e>
     fe4:	fe 01       	movw	r30, r28
     fe6:	84 91       	lpm	r24, Z
     fe8:	0e 94 57 02 	call	0x4ae	; 0x4ae <_ZL11SendControlh>
     fec:	18 2f       	mov	r17, r24
                r &= SendControl(0); // high byte
     fee:	80 e0       	ldi	r24, 0x00	; 0
     ff0:	0e 94 57 02 	call	0x4ae	; 0x4ae <_ZL11SendControlh>
     ff4:	81 23       	and	r24, r17
     ff6:	21 96       	adiw	r28, 0x01	; 1
                if(!r) {
     ff8:	81 11       	cpse	r24, r1
     ffa:	ef cf       	rjmp	.-34     	; 0xfda <_ZL24USB_SendStringDescriptorPKhhh+0x2e>
                        return false;
                }
        }
        return true;
}
     ffc:	df 91       	pop	r29
     ffe:	cf 91       	pop	r28
    1000:	1f 91       	pop	r17
    1002:	0f 91       	pop	r16
    1004:	ff 90       	pop	r15
    1006:	ef 90       	pop	r14
    1008:	08 95       	ret
static bool USB_SendStringDescriptor(const u8*string_P, u8 string_len, uint8_t flags) {
        SendControl(2 + string_len * 2);
        SendControl(3);
        bool pgm = flags & TRANSFER_PGM;
        for(u8 i = 0; i < string_len; i++) {
                bool r = SendControl(pgm ? pgm_read_byte(&string_P[i]) : string_P[i]);
    100a:	88 81       	ld	r24, Y
    100c:	ed cf       	rjmp	.-38     	; 0xfe8 <_ZL24USB_SendStringDescriptorPKhhh+0x3c>
                r &= SendControl(0); // high byte
                if(!r) {
                        return false;
                }
        }
        return true;
    100e:	81 e0       	ldi	r24, 0x01	; 1
    1010:	f5 cf       	rjmp	.-22     	; 0xffc <_ZL24USB_SendStringDescriptorPKhhh+0x50>

00001012 <_GLOBAL__I_65535_0_CastleBoySimple.ino.cpp.o.2844>:
    1012:	e6 e5       	ldi	r30, 0x56	; 86
    1014:	f5 e0       	ldi	r31, 0x05	; 5
    1016:	13 82       	std	Z+3, r1	; 0x03
    1018:	12 82       	std	Z+2, r1	; 0x02
    101a:	88 ee       	ldi	r24, 0xE8	; 232
    101c:	93 e0       	ldi	r25, 0x03	; 3
    101e:	a0 e0       	ldi	r26, 0x00	; 0
    1020:	b0 e0       	ldi	r27, 0x00	; 0
    1022:	84 83       	std	Z+4, r24	; 0x04
    1024:	95 83       	std	Z+5, r25	; 0x05
    1026:	a6 83       	std	Z+6, r26	; 0x06
    1028:	b7 83       	std	Z+7, r27	; 0x07
    102a:	88 e1       	ldi	r24, 0x18	; 24
    102c:	91 e0       	ldi	r25, 0x01	; 1
    102e:	91 83       	std	Z+1, r25	; 0x01
    1030:	80 83       	st	Z, r24
    1032:	8f ef       	ldi	r24, 0xFF	; 255
    1034:	9f ef       	ldi	r25, 0xFF	; 255
    1036:	95 87       	std	Z+13, r25	; 0x0d
    1038:	84 87       	std	Z+12, r24	; 0x0c
    103a:	85 e7       	ldi	r24, 0x75	; 117
    103c:	91 e0       	ldi	r25, 0x01	; 1
    103e:	90 93 b5 05 	sts	0x05B5, r25	; 0x8005b5 <_ZL13outputEnabled+0x1>
    1042:	80 93 b4 05 	sts	0x05B4, r24	; 0x8005b4 <_ZL13outputEnabled>
    1046:	80 e0       	ldi	r24, 0x00	; 0
    1048:	90 e8       	ldi	r25, 0x80	; 128
    104a:	90 93 b3 05 	sts	0x05B3, r25	; 0x8005b3 <_ZL12toneSequence+0xd>
    104e:	80 93 b2 05 	sts	0x05B2, r24	; 0x8005b2 <_ZL12toneSequence+0xc>
    1052:	46 98       	cbi	0x08, 6	; 8
    1054:	3e 9a       	sbi	0x07, 6	; 7
    1056:	47 98       	cbi	0x08, 7	; 8
    1058:	3f 9a       	sbi	0x07, 7	; 7
    105a:	08 95       	ret

0000105c <main>:

void init()
{
	// this needs to be called before setup() or some functions won't
	// work there
	sei();
    105c:	78 94       	sei
	
	// on the ATmega168, timer 0 is also used for fast hardware pwm
	// (using phase-correct PWM would mean that timer 0 overflowed half as often
	// resulting in different millis() behavior on the ATmega8 and ATmega168)
#if defined(TCCR0A) && defined(WGM01)
	sbi(TCCR0A, WGM01);
    105e:	84 b5       	in	r24, 0x24	; 36
    1060:	82 60       	ori	r24, 0x02	; 2
    1062:	84 bd       	out	0x24, r24	; 36
	sbi(TCCR0A, WGM00);
    1064:	84 b5       	in	r24, 0x24	; 36
    1066:	81 60       	ori	r24, 0x01	; 1
    1068:	84 bd       	out	0x24, r24	; 36
	// this combination is for the standard atmega8
	sbi(TCCR0, CS01);
	sbi(TCCR0, CS00);
#elif defined(TCCR0B) && defined(CS01) && defined(CS00)
	// this combination is for the standard 168/328/1280/2560
	sbi(TCCR0B, CS01);
    106a:	85 b5       	in	r24, 0x25	; 37
    106c:	82 60       	ori	r24, 0x02	; 2
    106e:	85 bd       	out	0x25, r24	; 37
	sbi(TCCR0B, CS00);
    1070:	85 b5       	in	r24, 0x25	; 37
    1072:	81 60       	ori	r24, 0x01	; 1
    1074:	85 bd       	out	0x25, r24	; 37

	// enable timer 0 overflow interrupt
#if defined(TIMSK) && defined(TOIE0)
	sbi(TIMSK, TOIE0);
#elif defined(TIMSK0) && defined(TOIE0)
	sbi(TIMSK0, TOIE0);
    1076:	80 91 6e 00 	lds	r24, 0x006E	; 0x80006e <__DATA_REGION_ORIGIN__+0xe>
    107a:	81 60       	ori	r24, 0x01	; 1
    107c:	80 93 6e 00 	sts	0x006E, r24	; 0x80006e <__DATA_REGION_ORIGIN__+0xe>
	// this is better for motors as it ensures an even waveform
	// note, however, that fast pwm mode can achieve a frequency of up
	// 8 MHz (with a 16 MHz clock) at 50% duty cycle

#if defined(TCCR1B) && defined(CS11) && defined(CS10)
	TCCR1B = 0;
    1080:	10 92 81 00 	sts	0x0081, r1	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>

	// set timer 1 prescale factor to 64
	sbi(TCCR1B, CS11);
    1084:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
    1088:	82 60       	ori	r24, 0x02	; 2
    108a:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
#if F_CPU >= 8000000L
	sbi(TCCR1B, CS10);
    108e:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
    1092:	81 60       	ori	r24, 0x01	; 1
    1094:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
	sbi(TCCR1, CS10);
#endif
#endif
	// put timer 1 in 8-bit phase correct pwm mode
#if defined(TCCR1A) && defined(WGM10)
	sbi(TCCR1A, WGM10);
    1098:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
    109c:	81 60       	ori	r24, 0x01	; 1
    109e:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
//#else
	// Timer 2 not finished (may not be present on this CPU)
#endif

#if defined(TCCR3B) && defined(CS31) && defined(WGM30)
	sbi(TCCR3B, CS31);		// set timer 3 prescale factor to 64
    10a2:	80 91 91 00 	lds	r24, 0x0091	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
    10a6:	82 60       	ori	r24, 0x02	; 2
    10a8:	80 93 91 00 	sts	0x0091, r24	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
	sbi(TCCR3B, CS30);
    10ac:	80 91 91 00 	lds	r24, 0x0091	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
    10b0:	81 60       	ori	r24, 0x01	; 1
    10b2:	80 93 91 00 	sts	0x0091, r24	; 0x800091 <__DATA_REGION_ORIGIN__+0x31>
	sbi(TCCR3A, WGM30);		// put timer 3 in 8-bit phase correct pwm mode
    10b6:	80 91 90 00 	lds	r24, 0x0090	; 0x800090 <__DATA_REGION_ORIGIN__+0x30>
    10ba:	81 60       	ori	r24, 0x01	; 1
    10bc:	80 93 90 00 	sts	0x0090, r24	; 0x800090 <__DATA_REGION_ORIGIN__+0x30>
#endif

#if defined(TCCR4A) && defined(TCCR4B) && defined(TCCR4D) /* beginning of timer4 block for 32U4 and similar */
	sbi(TCCR4B, CS42);		// set timer4 prescale factor to 64
    10c0:	80 91 c1 00 	lds	r24, 0x00C1	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
    10c4:	84 60       	ori	r24, 0x04	; 4
    10c6:	80 93 c1 00 	sts	0x00C1, r24	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
	sbi(TCCR4B, CS41);
    10ca:	80 91 c1 00 	lds	r24, 0x00C1	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
    10ce:	82 60       	ori	r24, 0x02	; 2
    10d0:	80 93 c1 00 	sts	0x00C1, r24	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
	sbi(TCCR4B, CS40);
    10d4:	80 91 c1 00 	lds	r24, 0x00C1	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
    10d8:	81 60       	ori	r24, 0x01	; 1
    10da:	80 93 c1 00 	sts	0x00C1, r24	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
	sbi(TCCR4D, WGM40);		// put timer 4 in phase- and frequency-correct PWM mode	
    10de:	80 91 c3 00 	lds	r24, 0x00C3	; 0x8000c3 <__DATA_REGION_ORIGIN__+0x63>
    10e2:	81 60       	ori	r24, 0x01	; 1
    10e4:	80 93 c3 00 	sts	0x00C3, r24	; 0x8000c3 <__DATA_REGION_ORIGIN__+0x63>
	sbi(TCCR4A, PWM4A);		// enable PWM mode for comparator OCR4A
    10e8:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__DATA_REGION_ORIGIN__+0x60>
    10ec:	82 60       	ori	r24, 0x02	; 2
    10ee:	80 93 c0 00 	sts	0x00C0, r24	; 0x8000c0 <__DATA_REGION_ORIGIN__+0x60>
	sbi(TCCR4C, PWM4D);		// enable PWM mode for comparator OCR4D
    10f2:	80 91 c2 00 	lds	r24, 0x00C2	; 0x8000c2 <__DATA_REGION_ORIGIN__+0x62>
    10f6:	81 60       	ori	r24, 0x01	; 1
    10f8:	80 93 c2 00 	sts	0x00C2, r24	; 0x8000c2 <__DATA_REGION_ORIGIN__+0x62>
#endif

#if defined(ADCSRA)
	// set a2d prescaler so we are inside the desired 50-200 KHz range.
	#if F_CPU >= 16000000 // 16 MHz / 128 = 125 KHz
		sbi(ADCSRA, ADPS2);
    10fc:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
    1100:	84 60       	ori	r24, 0x04	; 4
    1102:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
		sbi(ADCSRA, ADPS1);
    1106:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
    110a:	82 60       	ori	r24, 0x02	; 2
    110c:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
		sbi(ADCSRA, ADPS0);
    1110:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
    1114:	81 60       	ori	r24, 0x01	; 1
    1116:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
		cbi(ADCSRA, ADPS2);
		cbi(ADCSRA, ADPS1);
		sbi(ADCSRA, ADPS0);
	#endif
	// enable a2d conversions
	sbi(ADCSRA, ADEN);
    111a:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
    111e:	80 68       	ori	r24, 0x80	; 128
    1120:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
{
}

void USBDevice_::attach()
{
	_usbConfiguration = 0;
    1124:	10 92 55 01 	sts	0x0155, r1	; 0x800155 <_usbConfiguration>
	_usbCurrentStatus = 0;
    1128:	10 92 45 01 	sts	0x0145, r1	; 0x800145 <_usbCurrentStatus>
	_usbSuspendState = 0;
    112c:	10 92 47 01 	sts	0x0147, r1	; 0x800147 <_usbSuspendState>
}

static inline void USB_ClockEnable()
{
#if defined(UHWCON)
	UHWCON |= (1<<UVREGE);			// power internal reg
    1130:	80 91 d7 00 	lds	r24, 0x00D7	; 0x8000d7 <__DATA_REGION_ORIGIN__+0x77>
    1134:	81 60       	ori	r24, 0x01	; 1
    1136:	80 93 d7 00 	sts	0x00D7, r24	; 0x8000d7 <__DATA_REGION_ORIGIN__+0x77>
#endif
	USBCON = (1<<USBE) | (1<<FRZCLK);	// clock frozen, usb enabled
    113a:	80 ea       	ldi	r24, 0xA0	; 160
    113c:	80 93 d8 00 	sts	0x00D8, r24	; 0x8000d8 <__DATA_REGION_ORIGIN__+0x78>

// ATmega32U4
#if defined(PINDIV)
#if F_CPU == 16000000UL
	PLLCSR |= (1<<PINDIV);                   // Need 16 MHz xtal
    1140:	89 b5       	in	r24, 0x29	; 41
    1142:	80 61       	ori	r24, 0x10	; 16
    1144:	89 bd       	out	0x29, r24	; 41
#endif
#else
#error "USB Chip not supported, please defined method of USB PLL initialization"
#endif

	PLLCSR |= (1<<PLLE);
    1146:	89 b5       	in	r24, 0x29	; 41
    1148:	82 60       	ori	r24, 0x02	; 2
    114a:	89 bd       	out	0x29, r24	; 41
	while (!(PLLCSR & (1<<PLOCK)))		// wait for lock pll
    114c:	09 b4       	in	r0, 0x29	; 41
    114e:	00 fe       	sbrs	r0, 0
    1150:	fd cf       	rjmp	.-6      	; 0x114c <main+0xf0>
	}

	// Some tests on specific versions of macosx (10.7.3), reported some
	// strange behaviors when the board is reset using the serial
	// port touch at 1200 bps. This delay fixes this behavior.
	delay(1);
    1152:	61 e0       	ldi	r22, 0x01	; 1
    1154:	70 e0       	ldi	r23, 0x00	; 0
    1156:	80 e0       	ldi	r24, 0x00	; 0
    1158:	90 e0       	ldi	r25, 0x00	; 0
    115a:	0e 94 0e 03 	call	0x61c	; 0x61c <delay>
#if defined(OTGPADE)
	USBCON = (USBCON & ~(1<<FRZCLK)) | (1<<OTGPADE);	// start USB clock, enable VBUS Pad
    115e:	80 91 d8 00 	lds	r24, 0x00D8	; 0x8000d8 <__DATA_REGION_ORIGIN__+0x78>
    1162:	8f 7c       	andi	r24, 0xCF	; 207
    1164:	80 61       	ori	r24, 0x10	; 16
    1166:	80 93 d8 00 	sts	0x00D8, r24	; 0x8000d8 <__DATA_REGION_ORIGIN__+0x78>
	USBCON &= ~(1 << FRZCLK);	// start USB clock
#endif

#if defined(RSTCPU)
#if defined(LSM)
	UDCON &= ~((1<<RSTCPU) | (1<<LSM) | (1<<RMWKUP) | (1<<DETACH));	// enable attach resistor, set full speed mode
    116a:	80 91 e0 00 	lds	r24, 0x00E0	; 0x8000e0 <__DATA_REGION_ORIGIN__+0x80>
    116e:	80 7f       	andi	r24, 0xF0	; 240
    1170:	80 93 e0 00 	sts	0x00E0, r24	; 0x8000e0 <__DATA_REGION_ORIGIN__+0x80>
	_usbConfiguration = 0;
	_usbCurrentStatus = 0;
	_usbSuspendState = 0;
	USB_ClockEnable();

	UDINT &= ~((1<<WAKEUPI) | (1<<SUSPI)); // clear already pending WAKEUP / SUSPEND requests
    1174:	80 91 e1 00 	lds	r24, 0x00E1	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
    1178:	8e 7e       	andi	r24, 0xEE	; 238
    117a:	80 93 e1 00 	sts	0x00E1, r24	; 0x8000e1 <__DATA_REGION_ORIGIN__+0x81>
	UDIEN = (1<<EORSTE) | (1<<SOFE) | (1<<SUSPE);	// Enable interrupts for EOR (End of Reset), SOF (start of frame) and SUSPEND
    117e:	8d e0       	ldi	r24, 0x0D	; 13
    1180:	80 93 e2 00 	sts	0x00E2, r24	; 0x8000e2 <__DATA_REGION_ORIGIN__+0x82>
	
	TX_RX_LED_INIT;
    1184:	55 9a       	sbi	0x0a, 5	; 10
    1186:	20 9a       	sbi	0x04, 0	; 4
  // ARDUBOY_SET_CPU_8MHZ will be set by the IDE using boards.txt
  setCPUSpeed8MHz();
  #endif

  // Select the ADC input here so a delay isn't required in generateRandomSeed()
  ADMUX = RAND_SEED_IN_ADMUX;
    1188:	81 ec       	ldi	r24, 0xC1	; 193
    118a:	80 93 7c 00 	sts	0x007C, r24	; 0x80007c <__DATA_REGION_ORIGIN__+0x1c>
void Arduboy2Core::bootPins()
{
#ifdef ARDUBOY_10

  // Port B INPUT_PULLUP or HIGH
  PORTB |= _BV(RED_LED_BIT) | _BV(GREEN_LED_BIT) | _BV(BLUE_LED_BIT) |
    118e:	85 b1       	in	r24, 0x05	; 5
    1190:	80 6f       	ori	r24, 0xF0	; 240
    1192:	85 b9       	out	0x05, r24	; 5
           _BV(B_BUTTON_BIT);
  // Port B INPUT or LOW (none)
  // Port B inputs
  DDRB &= ~(_BV(B_BUTTON_BIT) | _BV(SPI_MISO_BIT));
    1194:	84 b1       	in	r24, 0x04	; 4
    1196:	87 7e       	andi	r24, 0xE7	; 231
    1198:	84 b9       	out	0x04, r24	; 4
  // Port B outputs
  DDRB |= _BV(RED_LED_BIT) | _BV(GREEN_LED_BIT) | _BV(BLUE_LED_BIT) |
    119a:	84 b1       	in	r24, 0x04	; 4
    119c:	87 6e       	ori	r24, 0xE7	; 231
    119e:	84 b9       	out	0x04, r24	; 4

  // Port C
  // Speaker: Not set here. Controlled by audio class

  // Port D INPUT_PULLUP or HIGH
  PORTD |= _BV(CS_BIT);
    11a0:	5e 9a       	sbi	0x0b, 6	; 11
  // Port D INPUT or LOW
  PORTD &= ~(_BV(RST_BIT));
    11a2:	5f 98       	cbi	0x0b, 7	; 11
  // Port D inputs (none)
  // Port D outputs
  DDRD |= _BV(RST_BIT) | _BV(CS_BIT) | _BV(DC_BIT);
    11a4:	8a b1       	in	r24, 0x0a	; 10
    11a6:	80 6d       	ori	r24, 0xD0	; 208
    11a8:	8a b9       	out	0x0a, r24	; 10

  // Port E INPUT_PULLUP or HIGH
  PORTE |= _BV(A_BUTTON_BIT);
    11aa:	76 9a       	sbi	0x0e, 6	; 14
  // Port E INPUT or LOW (none)
  // Port E inputs
  DDRE &= ~(_BV(A_BUTTON_BIT));
    11ac:	6e 98       	cbi	0x0d, 6	; 13
  // Port E outputs (none)

  // Port F INPUT_PULLUP or HIGH
  PORTF |= _BV(LEFT_BUTTON_BIT) | _BV(RIGHT_BUTTON_BIT) |
    11ae:	81 b3       	in	r24, 0x11	; 17
    11b0:	80 6f       	ori	r24, 0xF0	; 240
    11b2:	81 bb       	out	0x11, r24	; 17
           _BV(UP_BUTTON_BIT) | _BV(DOWN_BUTTON_BIT);
  // Port F INPUT or LOW
  PORTF &= ~(_BV(RAND_SEED_IN_BIT));
    11b4:	89 98       	cbi	0x11, 1	; 17
  // Port F inputs
  DDRF &= ~(_BV(LEFT_BUTTON_BIT) | _BV(RIGHT_BUTTON_BIT) |
    11b6:	80 b3       	in	r24, 0x10	; 16
    11b8:	8d 70       	andi	r24, 0x0D	; 13
    11ba:	80 bb       	out	0x10, r24	; 16

// Initialize the SPI interface for the display
void Arduboy2Core::bootSPI()
{
// master, mode 0, MSB first, CPU clock / 2 (8MHz)
  SPCR = _BV(SPE) | _BV(MSTR);
    11bc:	80 e5       	ldi	r24, 0x50	; 80
    11be:	8c bd       	out	0x2c, r24	; 44
  SPSR = _BV(SPI2X);
    11c0:	81 e0       	ldi	r24, 0x01	; 1
    11c2:	8d bd       	out	0x2d, r24	; 45
}

void Arduboy2Core::bootOLED()
{
  // reset the display
  delayShort(5); // reset pin should be low here. let it stay low a while
    11c4:	85 e0       	ldi	r24, 0x05	; 5
    11c6:	90 e0       	ldi	r25, 0x00	; 0
    11c8:	0e 94 dc 03 	call	0x7b8	; 0x7b8 <_ZN12Arduboy2Core10delayShortEj>
  bitSet(RST_PORT, RST_BIT); // set high to come out of reset
    11cc:	5f 9a       	sbi	0x0b, 7	; 11
  delayShort(5); // wait a while
    11ce:	85 e0       	ldi	r24, 0x05	; 5
    11d0:	90 e0       	ldi	r25, 0x00	; 0
    11d2:	0e 94 dc 03 	call	0x7b8	; 0x7b8 <_ZN12Arduboy2Core10delayShortEj>

  // select the display (permanently, since nothing else is using SPI)
  bitClear(CS_PORT, CS_BIT);
    11d6:	5e 98       	cbi	0x0b, 6	; 11
  bitSet(DC_PORT, DC_BIT);
}

void Arduboy2Core::LCDCommandMode()
{
  bitClear(DC_PORT, DC_BIT);
    11d8:	5c 98       	cbi	0x0b, 4	; 11
    11da:	ec ea       	ldi	r30, 0xAC	; 172
    11dc:	f0 e0       	ldi	r31, 0x00	; 0
    11de:	89 eb       	ldi	r24, 0xB9	; 185
    11e0:	90 e0       	ldi	r25, 0x00	; 0

  // run our customized boot-up command sequence against the
  // OLED to initialize it properly for Arduboy
  LCDCommandMode();
  for (uint8_t i = 0; i < sizeof(lcdBootProgram); i++) {
    SPItransfer(pgm_read_byte(lcdBootProgram + i));
    11e2:	24 91       	lpm	r18, Z
}

// Write to the SPI bus (MOSI pin)
void Arduboy2Core::SPItransfer(uint8_t data)
{
  SPDR = data;
    11e4:	2e bd       	out	0x2e, r18	; 46
   * The following NOP introduces a small delay that can prevent the wait
   * loop from iterating when running at the maximum speed. This gives
   * about 10% more speed, even if it seems counter-intuitive. At lower
   * speeds it is unnoticed.
   */
  asm volatile("nop");
    11e6:	00 00       	nop
  while (!(SPSR & _BV(SPIF))) { } // wait
    11e8:	0d b4       	in	r0, 0x2d	; 45
    11ea:	07 fe       	sbrs	r0, 7
    11ec:	fd cf       	rjmp	.-6      	; 0x11e8 <main+0x18c>
    11ee:	31 96       	adiw	r30, 0x01	; 1
  bitClear(CS_PORT, CS_BIT);

  // run our customized boot-up command sequence against the
  // OLED to initialize it properly for Arduboy
  LCDCommandMode();
  for (uint8_t i = 0; i < sizeof(lcdBootProgram); i++) {
    11f0:	8e 17       	cp	r24, r30
    11f2:	9f 07       	cpc	r25, r31
    11f4:	b1 f7       	brne	.-20     	; 0x11e2 <main+0x186>
  LCDDataMode();
}

void Arduboy2Core::LCDDataMode()
{
  bitSet(DC_PORT, DC_BIT);
    11f6:	5c 9a       	sbi	0x0b, 4	; 11

void Arduboy2Core::bootPowerSaving()
{
  // disable Two Wire Interface (I2C) and the ADC
  // All other bits will be written with 0 so will be enabled
  PRR0 = _BV(PRTWI) | _BV(PRADC);
    11f8:	81 e8       	ldi	r24, 0x81	; 129
    11fa:	80 93 64 00 	sts	0x0064, r24	; 0x800064 <__DATA_REGION_ORIGIN__+0x4>
  // disable USART1
  PRR1 |= _BV(PRUSART1);
    11fe:	80 91 65 00 	lds	r24, 0x0065	; 0x800065 <__DATA_REGION_ORIGIN__+0x5>
    1202:	81 60       	ori	r24, 0x01	; 1
    1204:	80 93 65 00 	sts	0x0065, r24	; 0x800065 <__DATA_REGION_ORIGIN__+0x5>
  }
}

void Arduboy2Base::display()
{
  paintScreen(sBuffer);
    1208:	80 e0       	ldi	r24, 0x00	; 0
    120a:	0e 94 78 01 	call	0x2f0	; 0x2f0 <_ZN12Arduboy2Core11paintScreenEPhb.constprop.17>
  return sBuffer;
}

bool Arduboy2Base::pressed(uint8_t buttons)
{
  return (buttonsState() & buttons) == buttons;
    120e:	0e 94 e1 03 	call	0x7c2	; 0x7c2 <_ZN12Arduboy2Core12buttonsStateEv>
  audio.begin();
}

void Arduboy2Base::flashlight()
{
  if (!pressed(UP_BUTTON)) {
    1212:	87 ff       	sbrs	r24, 7
    1214:	15 c0       	rjmp	.+42     	; 0x1240 <main+0x1e4>
  bitSet(DC_PORT, DC_BIT);
}

void Arduboy2Core::LCDCommandMode()
{
  bitClear(DC_PORT, DC_BIT);
    1216:	5c 98       	cbi	0x0b, 4	; 11
}

// Write to the SPI bus (MOSI pin)
void Arduboy2Core::SPItransfer(uint8_t data)
{
  SPDR = data;
    1218:	85 ea       	ldi	r24, 0xA5	; 165
    121a:	8e bd       	out	0x2e, r24	; 46
   * The following NOP introduces a small delay that can prevent the wait
   * loop from iterating when running at the maximum speed. This gives
   * about 10% more speed, even if it seems counter-intuitive. At lower
   * speeds it is unnoticed.
   */
  asm volatile("nop");
    121c:	00 00       	nop
  while (!(SPSR & _BV(SPIF))) { } // wait
    121e:	0d b4       	in	r0, 0x2d	; 45
    1220:	07 fe       	sbrs	r0, 7
    1222:	fd cf       	rjmp	.-6      	; 0x121e <main+0x1c2>
  LCDDataMode();
}

void Arduboy2Core::LCDDataMode()
{
  bitSet(DC_PORT, DC_BIT);
    1224:	5c 9a       	sbi	0x0b, 4	; 11
}

void Arduboy2Core::digitalWriteRGB(uint8_t red, uint8_t green, uint8_t blue)
{
#ifdef ARDUBOY_10
  bitWrite(RED_LED_PORT, RED_LED_BIT, red);
    1226:	2e 98       	cbi	0x05, 6	; 5
  bitWrite(GREEN_LED_PORT, GREEN_LED_BIT, green);
    1228:	2f 98       	cbi	0x05, 7	; 5
  bitWrite(BLUE_LED_PORT, BLUE_LED_BIT, blue);
    122a:	2d 98       	cbi	0x05, 5	; 5

#ifndef ARDUBOY_CORE // for Arduboy core timer 0 should remain enabled
  // prevent the bootloader magic number from being overwritten by timer 0
  // when a timer variable overlaps the magic number location, for when
  // flashlight mode is used for upload problem recovery
  power_timer0_disable();
    122c:	80 91 64 00 	lds	r24, 0x0064	; 0x800064 <__DATA_REGION_ORIGIN__+0x4>
    1230:	80 62       	ori	r24, 0x20	; 32
    1232:	80 93 64 00 	sts	0x0064, r24	; 0x800064 <__DATA_REGION_ORIGIN__+0x4>

/* Power Management */

void Arduboy2Core::idle()
{
  SMCR = _BV(SE); // select idle mode and enable sleeping
    1236:	81 e0       	ldi	r24, 0x01	; 1
    1238:	83 bf       	out	0x33, r24	; 51
  sleep_cpu();
    123a:	88 95       	sleep
  SMCR = 0; // disable sleeping
    123c:	13 be       	out	0x33, r1	; 51
    123e:	fc cf       	rjmp	.-8      	; 0x1238 <main+0x1dc>
  return sBuffer;
}

bool Arduboy2Base::pressed(uint8_t buttons)
{
  return (buttonsState() & buttons) == buttons;
    1240:	0e 94 e1 03 	call	0x7c2	; 0x7c2 <_ZN12Arduboy2Core12buttonsStateEv>
  }
}

void Arduboy2Base::systemButtons()
{
  while (pressed(B_BUTTON)) {
    1244:	82 ff       	sbrs	r24, 2
    1246:	48 c0       	rjmp	.+144    	; 0x12d8 <main+0x27c>
  {
    bitWrite(GREEN_LED_PORT, GREEN_LED_BIT, val);
  }
  else if (color == BLUE_LED)
  {
    bitWrite(BLUE_LED_PORT, BLUE_LED_BIT, val);
    1248:	2d 98       	cbi	0x05, 5	; 5
  return sBuffer;
}

bool Arduboy2Base::pressed(uint8_t buttons)
{
  return (buttonsState() & buttons) == buttons;
    124a:	0e 94 e1 03 	call	0x7c2	; 0x7c2 <_ZN12Arduboy2Core12buttonsStateEv>
    124e:	84 78       	andi	r24, 0x84	; 132
  digitalWriteRGB(BLUE_LED, RGB_OFF); // turn off blue LED
}

void Arduboy2Base::sysCtrlSound(uint8_t buttons, uint8_t led, uint8_t eeVal)
{
  if (pressed(buttons)) {
    1250:	84 38       	cpi	r24, 0x84	; 132
    1252:	e1 f4       	brne	.+56     	; 0x128c <main+0x230>
    1254:	0e 94 da 03 	call	0x7b4	; 0x7b4 <_ZN12Arduboy2Core15digitalWriteRGBEhh.part.2>
    digitalWriteRGB(BLUE_LED, RGB_OFF); // turn off blue LED
    delayShort(200);
    1258:	88 ec       	ldi	r24, 0xC8	; 200
    125a:	90 e0       	ldi	r25, 0x00	; 0
    125c:	0e 94 dc 03 	call	0x7b8	; 0x7b8 <_ZN12Arduboy2Core10delayShortEj>
  {
    bitWrite(RED_LED_PORT, RED_LED_BIT, val);
  }
  else if (color == GREEN_LED)
  {
    bitWrite(GREEN_LED_PORT, GREEN_LED_BIT, val);
    1260:	2f 98       	cbi	0x05, 7	; 5

    EERef( const int index )
        : index( index )                 {}
    
    //Access/read members.
    uint8_t operator*() const            { return eeprom_read_byte( (uint8_t*) index ); }
    1262:	82 e0       	ldi	r24, 0x02	; 2
    1264:	90 e0       	ldi	r25, 0x00	; 0
    1266:	0e 94 df 0a 	call	0x15be	; 0x15be <eeprom_read_byte>
    EERef &operator &=( uint8_t in )     { return *this = **this & in; }
    EERef &operator |=( uint8_t in )     { return *this = **this | in; }
    EERef &operator <<=( uint8_t in )    { return *this = **this << in; }
    EERef &operator >>=( uint8_t in )    { return *this = **this >> in; }
    
    EERef &update( uint8_t in )          { return  in != *this ? *this = in : *this; }
    126a:	8f 3f       	cpi	r24, 0xFF	; 255
    126c:	29 f0       	breq	.+10     	; 0x1278 <main+0x21c>
    uint8_t operator*() const            { return eeprom_read_byte( (uint8_t*) index ); }
    operator uint8_t() const             { return **this; }
    
    //Assignment/write members.
    EERef &operator=( const EERef &ref ) { return *this = *ref; }
    EERef &operator=( uint8_t in )       { return eeprom_write_byte( (uint8_t*) index, in ), *this;  }
    126e:	6f ef       	ldi	r22, 0xFF	; 255
    1270:	82 e0       	ldi	r24, 0x02	; 2
    1272:	90 e0       	ldi	r25, 0x00	; 0
    1274:	0e 94 e7 0a 	call	0x15ce	; 0x15ce <eeprom_write_byte>
    digitalWriteRGB(led, RGB_ON); // turn on "acknowledge" LED
    EEPROM.update(eepromAudioOnOff, eeVal);
    delayShort(500);
    1278:	84 ef       	ldi	r24, 0xF4	; 244
    127a:	91 e0       	ldi	r25, 0x01	; 1
    127c:	0e 94 dc 03 	call	0x7b8	; 0x7b8 <_ZN12Arduboy2Core10delayShortEj>
    1280:	2f 9a       	sbi	0x05, 7	; 5
  return sBuffer;
}

bool Arduboy2Base::pressed(uint8_t buttons)
{
  return (buttonsState() & buttons) == buttons;
    1282:	0e 94 e1 03 	call	0x7c2	; 0x7c2 <_ZN12Arduboy2Core12buttonsStateEv>
    1286:	84 78       	andi	r24, 0x84	; 132
    digitalWriteRGB(led, RGB_ON); // turn on "acknowledge" LED
    EEPROM.update(eepromAudioOnOff, eeVal);
    delayShort(500);
    digitalWriteRGB(led, RGB_OFF); // turn off "acknowledge" LED

    while (pressed(buttons)) { } // Wait for button release
    1288:	84 38       	cpi	r24, 0x84	; 132
    128a:	d9 f3       	breq	.-10     	; 0x1282 <main+0x226>
  return sBuffer;
}

bool Arduboy2Base::pressed(uint8_t buttons)
{
  return (buttonsState() & buttons) == buttons;
    128c:	0e 94 e1 03 	call	0x7c2	; 0x7c2 <_ZN12Arduboy2Core12buttonsStateEv>
    1290:	84 71       	andi	r24, 0x14	; 20
  digitalWriteRGB(BLUE_LED, RGB_OFF); // turn off blue LED
}

void Arduboy2Base::sysCtrlSound(uint8_t buttons, uint8_t led, uint8_t eeVal)
{
  if (pressed(buttons)) {
    1292:	84 31       	cpi	r24, 0x14	; 20
    1294:	e1 f4       	brne	.+56     	; 0x12ce <main+0x272>
    1296:	0e 94 da 03 	call	0x7b4	; 0x7b4 <_ZN12Arduboy2Core15digitalWriteRGBEhh.part.2>
    digitalWriteRGB(BLUE_LED, RGB_OFF); // turn off blue LED
    delayShort(200);
    129a:	88 ec       	ldi	r24, 0xC8	; 200
    129c:	90 e0       	ldi	r25, 0x00	; 0
    129e:	0e 94 dc 03 	call	0x7b8	; 0x7b8 <_ZN12Arduboy2Core10delayShortEj>
void Arduboy2Core::digitalWriteRGB(uint8_t color, uint8_t val)
{
#ifdef ARDUBOY_10
  if (color == RED_LED)
  {
    bitWrite(RED_LED_PORT, RED_LED_BIT, val);
    12a2:	2e 98       	cbi	0x05, 6	; 5

    EERef( const int index )
        : index( index )                 {}
    
    //Access/read members.
    uint8_t operator*() const            { return eeprom_read_byte( (uint8_t*) index ); }
    12a4:	82 e0       	ldi	r24, 0x02	; 2
    12a6:	90 e0       	ldi	r25, 0x00	; 0
    12a8:	0e 94 df 0a 	call	0x15be	; 0x15be <eeprom_read_byte>
    EERef &operator &=( uint8_t in )     { return *this = **this & in; }
    EERef &operator |=( uint8_t in )     { return *this = **this | in; }
    EERef &operator <<=( uint8_t in )    { return *this = **this << in; }
    EERef &operator >>=( uint8_t in )    { return *this = **this >> in; }
    
    EERef &update( uint8_t in )          { return  in != *this ? *this = in : *this; }
    12ac:	88 23       	and	r24, r24
    12ae:	29 f0       	breq	.+10     	; 0x12ba <main+0x25e>
    uint8_t operator*() const            { return eeprom_read_byte( (uint8_t*) index ); }
    operator uint8_t() const             { return **this; }
    
    //Assignment/write members.
    EERef &operator=( const EERef &ref ) { return *this = *ref; }
    EERef &operator=( uint8_t in )       { return eeprom_write_byte( (uint8_t*) index, in ), *this;  }
    12b0:	60 e0       	ldi	r22, 0x00	; 0
    12b2:	82 e0       	ldi	r24, 0x02	; 2
    12b4:	90 e0       	ldi	r25, 0x00	; 0
    12b6:	0e 94 e7 0a 	call	0x15ce	; 0x15ce <eeprom_write_byte>
    digitalWriteRGB(led, RGB_ON); // turn on "acknowledge" LED
    EEPROM.update(eepromAudioOnOff, eeVal);
    delayShort(500);
    12ba:	84 ef       	ldi	r24, 0xF4	; 244
    12bc:	91 e0       	ldi	r25, 0x01	; 1
    12be:	0e 94 dc 03 	call	0x7b8	; 0x7b8 <_ZN12Arduboy2Core10delayShortEj>
    12c2:	2e 9a       	sbi	0x05, 6	; 5
  return sBuffer;
}

bool Arduboy2Base::pressed(uint8_t buttons)
{
  return (buttonsState() & buttons) == buttons;
    12c4:	0e 94 e1 03 	call	0x7c2	; 0x7c2 <_ZN12Arduboy2Core12buttonsStateEv>
    12c8:	84 71       	andi	r24, 0x14	; 20
    digitalWriteRGB(led, RGB_ON); // turn on "acknowledge" LED
    EEPROM.update(eepromAudioOnOff, eeVal);
    delayShort(500);
    digitalWriteRGB(led, RGB_OFF); // turn off "acknowledge" LED

    while (pressed(buttons)) { } // Wait for button release
    12ca:	84 31       	cpi	r24, 0x14	; 20
    12cc:	d9 f3       	breq	.-10     	; 0x12c4 <main+0x268>
{
  while (pressed(B_BUTTON)) {
    digitalWriteRGB(BLUE_LED, RGB_ON); // turn on blue LED
    sysCtrlSound(UP_BUTTON + B_BUTTON, GREEN_LED, 0xff);
    sysCtrlSound(DOWN_BUTTON + B_BUTTON, RED_LED, 0);
    delayShort(200);
    12ce:	88 ec       	ldi	r24, 0xC8	; 200
    12d0:	90 e0       	ldi	r25, 0x00	; 0
    12d2:	0e 94 dc 03 	call	0x7b8	; 0x7b8 <_ZN12Arduboy2Core10delayShortEj>
    12d6:	b4 cf       	rjmp	.-152    	; 0x1240 <main+0x1e4>
    12d8:	0e 94 da 03 	call	0x7b4	; 0x7b4 <_ZN12Arduboy2Core15digitalWriteRGBEhh.part.2>

    EERef( const int index )
        : index( index )                 {}
    
    //Access/read members.
    uint8_t operator*() const            { return eeprom_read_byte( (uint8_t*) index ); }
    12dc:	82 e0       	ldi	r24, 0x02	; 2
    12de:	90 e0       	ldi	r25, 0x00	; 0
    12e0:	0e 94 df 0a 	call	0x15be	; 0x15be <eeprom_read_byte>
  EEPROM.update(Arduboy2Base::eepromAudioOnOff, audio_enabled);
}

void Arduboy2Audio::begin()
{
  if (EEPROM.read(Arduboy2Base::eepromAudioOnOff))
    12e4:	88 23       	and	r24, r24
    12e6:	09 f4       	brne	.+2      	; 0x12ea <main+0x28e>
    12e8:	57 c0       	rjmp	.+174    	; 0x1398 <main+0x33c>

void Arduboy2Audio::on()
{
  // fire up audio pins by seting them as outputs
#ifdef ARDUBOY_10
  bitSet(SPEAKER_1_DDR, SPEAKER_1_BIT);
    12ea:	3e 9a       	sbi	0x07, 6	; 7
  bitSet(SPEAKER_2_DDR, SPEAKER_2_BIT);
    12ec:	3f 9a       	sbi	0x07, 7	; 7
#else
  bitSet(SPEAKER_1_DDR, SPEAKER_1_BIT);
#endif
  audio_enabled = true;
    12ee:	81 e0       	ldi	r24, 0x01	; 1
    12f0:	80 93 37 01 	sts	0x0137, r24	; 0x800137 <_ZN13Arduboy2Audio13audio_enabledE>
    12f4:	81 e0       	ldi	r24, 0x01	; 1
    12f6:	90 e0       	ldi	r25, 0x00	; 0
    12f8:	0e 94 df 0a 	call	0x15be	; 0x15be <eeprom_read_byte>
    12fc:	84 70       	andi	r24, 0x04	; 4
    12fe:	98 2e       	mov	r9, r24
    1300:	81 e0       	ldi	r24, 0x01	; 1
    1302:	90 e0       	ldi	r25, 0x00	; 0
    1304:	0e 94 df 0a 	call	0x15be	; 0x15be <eeprom_read_byte>
// if changes are made to one, equivalent changes should be made to the other
bool Arduboy2Base::bootLogoShell(void (&drawLogo)(int16_t))
{
  bool showLEDs = readShowBootLogoLEDsFlag();

  if (!readShowBootLogoFlag()) {
    1308:	81 ff       	sbrs	r24, 1
    130a:	11 c0       	rjmp	.+34     	; 0x132e <main+0x2d2>
    return false;
  }

  if (showLEDs) {
    130c:	91 10       	cpse	r9, r1
    130e:	2e 98       	cbi	0x05, 6	; 5

void setupUSB() __attribute__((weak));
void setupUSB() { }

int main(void)
{
    1310:	c1 ef       	ldi	r28, 0xF1	; 241
    1312:	df ef       	ldi	r29, 0xFF	; 255

  int yOffset = abs(y) % 8;
  int sRow = y / 8;
  if (y < 0) {
    sRow--;
    yOffset = 8 - yOffset;
    1314:	08 e0       	ldi	r16, 0x08	; 8
    1316:	10 e0       	ldi	r17, 0x00	; 0
    1318:	7c e6       	ldi	r23, 0x6C	; 108
    131a:	e7 2e       	mov	r14, r23
    131c:	f1 2c       	mov	r15, r1
  return sBuffer;
}

bool Arduboy2Base::pressed(uint8_t buttons)
{
  return (buttonsState() & buttons) == buttons;
    131e:	0e 94 e1 03 	call	0x7c2	; 0x7c2 <_ZN12Arduboy2Core12buttonsStateEv>
  if (showLEDs) {
    digitalWriteRGB(RED_LED, RGB_ON);
  }

  for (int16_t y = -15; y <= 24; y++) {
    if (pressed(RIGHT_BUTTON)) {
    1322:	86 ff       	sbrs	r24, 6
    1324:	3e c0       	rjmp	.+124    	; 0x13a2 <main+0x346>
}

void Arduboy2Core::digitalWriteRGB(uint8_t red, uint8_t green, uint8_t blue)
{
#ifdef ARDUBOY_10
  bitWrite(RED_LED_PORT, RED_LED_BIT, red);
    1326:	2e 9a       	sbi	0x05, 6	; 5
  bitWrite(GREEN_LED_PORT, GREEN_LED_BIT, green);
    1328:	2f 9a       	sbi	0x05, 7	; 5
    132a:	0e 94 da 03 	call	0x7b4	; 0x7b4 <_ZN12Arduboy2Core15digitalWriteRGBEhh.part.2>

// wait for all buttons to be released
void Arduboy2Base::waitNoButtons()
{
  do {
    delayShort(50); // simple button debounce
    132e:	82 e3       	ldi	r24, 0x32	; 50
    1330:	90 e0       	ldi	r25, 0x00	; 0
    1332:	0e 94 dc 03 	call	0x7b8	; 0x7b8 <_ZN12Arduboy2Core10delayShortEj>
  } while (buttonsState());
    1336:	0e 94 e1 03 	call	0x7c2	; 0x7c2 <_ZN12Arduboy2Core12buttonsStateEv>
    133a:	81 11       	cpse	r24, r1
    133c:	f8 cf       	rjmp	.-16     	; 0x132e <main+0x2d2>

/* Frame management */

void Arduboy2Base::setFrameRate(uint8_t rate)
{
  eachFrameMillis = 1000 / rate;
    133e:	80 e1       	ldi	r24, 0x10	; 16
    1340:	80 93 00 01 	sts	0x0100, r24	; 0x800100 <__data_start>

    return false;
  }

  // pre-render
  justRendered = true;
    1344:	66 24       	eor	r6, r6
    1346:	63 94       	inc	r6
    "brne 1b\n"
    : [color] "+d" (color),
      "+z" (bPtr)
    :
    :
  );
    1348:	c6 e5       	ldi	r28, 0x56	; 86
    134a:	d1 e0       	ldi	r29, 0x01	; 1
  unsigned int frame_offset;

  if (bitmap == NULL)
    return;

  uint8_t width = pgm_read_byte(bitmap);
    134c:	29 e6       	ldi	r18, 0x69	; 105
    134e:	a2 2e       	mov	r10, r18
    1350:	21 e0       	ldi	r18, 0x01	; 1
    1352:	b2 2e       	mov	r11, r18
  uint8_t height = pgm_read_byte(++bitmap);
    1354:	0a e6       	ldi	r16, 0x6A	; 106
    1356:	11 e0       	ldi	r17, 0x01	; 1
    1358:	3f e4       	ldi	r19, 0x4F	; 79
    135a:	73 2e       	mov	r7, r19
	
	setup();
    
	for (;;) {
		loop();
		if (serialEventRun) serialEventRun();
    135c:	40 e0       	ldi	r20, 0x00	; 0
    135e:	e4 2e       	mov	r14, r20
    1360:	40 e0       	ldi	r20, 0x00	; 0
    1362:	f4 2e       	mov	r15, r20

    return false;
  }

  // pre-render
  justRendered = true;
    1364:	99 24       	eor	r9, r9
    1366:	93 94       	inc	r9
}

unsigned long millis()
{
	unsigned long m;
	uint8_t oldSREG = SREG;
    1368:	8f b7       	in	r24, 0x3f	; 63

	// disable interrupts while we read timer0_millis or we might get an
	// inconsistent value (e.g. in the middle of a write to timer0_millis)
	cli();
    136a:	f8 94       	cli
	m = timer0_millis;
    136c:	40 91 38 01 	lds	r20, 0x0138	; 0x800138 <timer0_millis>
    1370:	50 91 39 01 	lds	r21, 0x0139	; 0x800139 <timer0_millis+0x1>
    1374:	60 91 3a 01 	lds	r22, 0x013A	; 0x80013a <timer0_millis+0x2>
    1378:	70 91 3b 01 	lds	r23, 0x013B	; 0x80013b <timer0_millis+0x3>
	SREG = oldSREG;
    137c:	8f bf       	out	0x3f, r24	; 63
bool Arduboy2Base::nextFrame()
{
  uint8_t now = (uint8_t) millis();
  uint8_t frameDurationMs = now - thisFrameStart;

  if (justRendered) {
    137e:	80 91 3e 01 	lds	r24, 0x013E	; 0x80013e <_ZN12Arduboy2Base12justRenderedE>
    1382:	88 23       	and	r24, r24
    1384:	09 f4       	brne	.+2      	; 0x1388 <main+0x32c>
    1386:	9d c0       	rjmp	.+314    	; 0x14c2 <main+0x466>
    lastFrameDurationMs = frameDurationMs;
    justRendered = false;
    1388:	10 92 3e 01 	sts	0x013E, r1	; 0x80013e <_ZN12Arduboy2Base12justRenderedE>
    138c:	e1 14       	cp	r14, r1
    138e:	f1 04       	cpc	r15, r1
    1390:	59 f3       	breq	.-42     	; 0x1368 <main+0x30c>
    1392:	0e 94 00 00 	call	0	; 0x0 <__vectors>
    1396:	e8 cf       	rjmp	.-48     	; 0x1368 <main+0x30c>
}

void Arduboy2Audio::off()
{
  audio_enabled = false;
    1398:	10 92 37 01 	sts	0x0137, r1	; 0x800137 <_ZN13Arduboy2Audio13audio_enabledE>
  // shut off audio pins by setting them as inputs
#ifdef ARDUBOY_10
  bitClear(SPEAKER_1_DDR, SPEAKER_1_BIT);
    139c:	3e 98       	cbi	0x07, 6	; 7
  bitClear(SPEAKER_2_DDR, SPEAKER_2_BIT);
    139e:	3f 98       	cbi	0x07, 7	; 7
    13a0:	a9 cf       	rjmp	.-174    	; 0x12f4 <main+0x298>
    if (pressed(RIGHT_BUTTON)) {
      digitalWriteRGB(RGB_OFF, RGB_OFF, RGB_OFF); // all LEDs off
      return false;
    }

    if (showLEDs && y == 4) {
    13a2:	99 20       	and	r9, r9
    13a4:	29 f0       	breq	.+10     	; 0x13b0 <main+0x354>
    13a6:	c4 30       	cpi	r28, 0x04	; 4
    13a8:	d1 05       	cpc	r29, r1
    13aa:	11 f4       	brne	.+4      	; 0x13b0 <main+0x354>
void Arduboy2Core::digitalWriteRGB(uint8_t color, uint8_t val)
{
#ifdef ARDUBOY_10
  if (color == RED_LED)
  {
    bitWrite(RED_LED_PORT, RED_LED_BIT, val);
    13ac:	2e 9a       	sbi	0x05, 6	; 5
  }
  else if (color == GREEN_LED)
  {
    bitWrite(GREEN_LED_PORT, GREEN_LED_BIT, val);
    13ae:	2f 98       	cbi	0x05, 7	; 5
  paintScreen(sBuffer);
}

void Arduboy2Base::display(bool clear)
{
  paintScreen(sBuffer, clear);
    13b0:	81 e0       	ldi	r24, 0x01	; 1
    13b2:	0e 94 78 01 	call	0x2f0	; 0x2f0 <_ZN12Arduboy2Core11paintScreenEPhb.constprop.17>
{
  // no need to draw at all if we're offscreen
  if (x + w <= 0 || x > WIDTH - 1 || y + h <= 0 || y > HEIGHT - 1)
    return;

  int yOffset = abs(y) % 8;
    13b6:	9e 01       	movw	r18, r28
    13b8:	d7 ff       	sbrs	r29, 7
    13ba:	04 c0       	rjmp	.+8      	; 0x13c4 <main+0x368>
    13bc:	22 27       	eor	r18, r18
    13be:	33 27       	eor	r19, r19
    13c0:	2c 1b       	sub	r18, r28
    13c2:	3d 0b       	sbc	r19, r29
    13c4:	27 70       	andi	r18, 0x07	; 7
    13c6:	33 27       	eor	r19, r19
  int sRow = y / 8;
    13c8:	ce 01       	movw	r24, r28
    13ca:	d7 fd       	sbrc	r29, 7
    13cc:	07 96       	adiw	r24, 0x07	; 7
    13ce:	63 e0       	ldi	r22, 0x03	; 3
    13d0:	95 95       	asr	r25
    13d2:	87 95       	ror	r24
    13d4:	6a 95       	dec	r22
    13d6:	e1 f7       	brne	.-8      	; 0x13d0 <main+0x374>
  if (y < 0) {
    13d8:	d7 ff       	sbrs	r29, 7
    13da:	05 c0       	rjmp	.+10     	; 0x13e6 <main+0x38a>
    sRow--;
    13dc:	01 97       	sbiw	r24, 0x01	; 1
    yOffset = 8 - yOffset;
    13de:	a8 01       	movw	r20, r16
    13e0:	42 1b       	sub	r20, r18
    13e2:	53 0b       	sbc	r21, r19
    13e4:	9a 01       	movw	r18, r20
    13e6:	bc 01       	movw	r22, r24
    13e8:	76 95       	lsr	r23
    13ea:	76 2f       	mov	r23, r22
    13ec:	66 27       	eor	r22, r22
    13ee:	77 95       	ror	r23
    13f0:	67 95       	ror	r22
    13f2:	6a 5a       	subi	r22, 0xAA	; 170
    13f4:	7e 4f       	sbci	r23, 0xFE	; 254

void setupUSB() __attribute__((weak));
void setupUSB() { }

int main(void)
{
    13f6:	b0 e0       	ldi	r27, 0x00	; 0
    13f8:	a0 e0       	ldi	r26, 0x00	; 0
            else
              sBuffer[(bRow*WIDTH) + x + iCol] ^= pgm_read_byte(bitmap+(a*w)+iCol) << yOffset;
          }
          if (yOffset && bRow<(HEIGHT/8)-1 && bRow > -2) {
            if (color == WHITE)
              sBuffer[((bRow+1)*WIDTH) + x + iCol] |= pgm_read_byte(bitmap+(a*w)+iCol) >> (8-yOffset);
    13fa:	28 01       	movw	r4, r16
    13fc:	42 1a       	sub	r4, r18
    13fe:	53 0a       	sbc	r5, r19
  int rows = h/8;
  if (h%8!=0) rows++;
  for (int a = 0; a < rows; a++) {
    int bRow = sRow + a;
    if (bRow > (HEIGHT/8)-1) break;
    if (bRow > -2) {
    1400:	8e 3f       	cpi	r24, 0xFE	; 254
    1402:	5f ef       	ldi	r21, 0xFF	; 255
    1404:	95 07       	cpc	r25, r21
    1406:	09 f4       	brne	.+2      	; 0x140a <main+0x3ae>
    1408:	3c c0       	rjmp	.+120    	; 0x1482 <main+0x426>
    140a:	48 e5       	ldi	r20, 0x58	; 88
    140c:	50 e0       	ldi	r21, 0x00	; 0
      for (int iCol = 0; iCol<w; iCol++) {
        if (iCol + x > (WIDTH-1)) break;
        if (iCol + x >= 0) {
          if (bRow >= 0) {
            if (color == WHITE)
              sBuffer[(bRow*WIDTH) + x + iCol] |= pgm_read_byte(bitmap+(a*w)+iCol) << yOffset;
    140e:	fd 01       	movw	r30, r26
    1410:	ef 5e       	subi	r30, 0xEF	; 239
    1412:	fe 4f       	sbci	r31, 0xFE	; 254
    1414:	5f 01       	movw	r10, r30
    1416:	3b 01       	movw	r6, r22
    1418:	f0 e8       	ldi	r31, 0x80	; 128
    141a:	6f 0e       	add	r6, r31
    141c:	71 1c       	adc	r7, r1
    if (bRow > (HEIGHT/8)-1) break;
    if (bRow > -2) {
      for (int iCol = 0; iCol<w; iCol++) {
        if (iCol + x > (WIDTH-1)) break;
        if (iCol + x >= 0) {
          if (bRow >= 0) {
    141e:	8f 3f       	cpi	r24, 0xFF	; 255
    1420:	98 07       	cpc	r25, r24
    1422:	a1 f0       	breq	.+40     	; 0x144c <main+0x3f0>
            if (color == WHITE)
              sBuffer[(bRow*WIDTH) + x + iCol] |= pgm_read_byte(bitmap+(a*w)+iCol) << yOffset;
    1424:	f5 01       	movw	r30, r10
    1426:	e4 1b       	sub	r30, r20
    1428:	f5 0b       	sbc	r31, r21
    142a:	e4 91       	lpm	r30, Z
    142c:	67 01       	movw	r12, r14
    142e:	c4 1a       	sub	r12, r20
    1430:	d5 0a       	sbc	r13, r21
    1432:	c6 0e       	add	r12, r22
    1434:	d7 1e       	adc	r13, r23
    1436:	f0 e0       	ldi	r31, 0x00	; 0
    1438:	1f 01       	movw	r2, r30
    143a:	02 2e       	mov	r0, r18
    143c:	01 c0       	rjmp	.+2      	; 0x1440 <main+0x3e4>
    143e:	22 0c       	add	r2, r2
    1440:	0a 94       	dec	r0
    1442:	ea f7       	brpl	.-6      	; 0x143e <main+0x3e2>
    1444:	f6 01       	movw	r30, r12
    1446:	80 80       	ld	r8, Z
    1448:	28 28       	or	r2, r8
    144a:	20 82       	st	Z, r2
            else if (color == BLACK)
              sBuffer[(bRow*WIDTH) + x + iCol] &= ~(pgm_read_byte(bitmap+(a*w)+iCol) << yOffset);
            else
              sBuffer[(bRow*WIDTH) + x + iCol] ^= pgm_read_byte(bitmap+(a*w)+iCol) << yOffset;
          }
          if (yOffset && bRow<(HEIGHT/8)-1 && bRow > -2) {
    144c:	21 15       	cp	r18, r1
    144e:	31 05       	cpc	r19, r1
    1450:	a9 f0       	breq	.+42     	; 0x147c <main+0x420>
            if (color == WHITE)
              sBuffer[((bRow+1)*WIDTH) + x + iCol] |= pgm_read_byte(bitmap+(a*w)+iCol) >> (8-yOffset);
    1452:	f5 01       	movw	r30, r10
    1454:	e4 1b       	sub	r30, r20
    1456:	f5 0b       	sbc	r31, r21
    1458:	e4 91       	lpm	r30, Z
    145a:	67 01       	movw	r12, r14
    145c:	c4 1a       	sub	r12, r20
    145e:	d5 0a       	sbc	r13, r21
    1460:	c6 0c       	add	r12, r6
    1462:	d7 1c       	adc	r13, r7
    1464:	f0 e0       	ldi	r31, 0x00	; 0
    1466:	1f 01       	movw	r2, r30
    1468:	04 2c       	mov	r0, r4
    146a:	02 c0       	rjmp	.+4      	; 0x1470 <main+0x414>
    146c:	35 94       	asr	r3
    146e:	27 94       	ror	r2
    1470:	0a 94       	dec	r0
    1472:	e2 f7       	brpl	.-8      	; 0x146c <main+0x410>
    1474:	f6 01       	movw	r30, r12
    1476:	80 80       	ld	r8, Z
    1478:	28 28       	or	r2, r8
    147a:	20 82       	st	Z, r2
    147c:	41 50       	subi	r20, 0x01	; 1
    147e:	51 09       	sbc	r21, r1
  if (h%8!=0) rows++;
  for (int a = 0; a < rows; a++) {
    int bRow = sRow + a;
    if (bRow > (HEIGHT/8)-1) break;
    if (bRow > -2) {
      for (int iCol = 0; iCol<w; iCol++) {
    1480:	71 f6       	brne	.-100    	; 0x141e <main+0x3c2>
    1482:	01 96       	adiw	r24, 0x01	; 1
    1484:	a8 5a       	subi	r26, 0xA8	; 168
    1486:	bf 4f       	sbci	r27, 0xFF	; 255
    1488:	60 58       	subi	r22, 0x80	; 128
    148a:	7f 4f       	sbci	r23, 0xFF	; 255
    sRow--;
    yOffset = 8 - yOffset;
  }
  int rows = h/8;
  if (h%8!=0) rows++;
  for (int a = 0; a < rows; a++) {
    148c:	a0 3b       	cpi	r26, 0xB0	; 176
    148e:	b1 05       	cpc	r27, r1
    1490:	09 f0       	breq	.+2      	; 0x1494 <main+0x438>
    1492:	b6 cf       	rjmp	.-148    	; 0x1400 <main+0x3a4>
  }
}

void Arduboy2Base::display()
{
  paintScreen(sBuffer);
    1494:	80 e0       	ldi	r24, 0x00	; 0
    1496:	0e 94 78 01 	call	0x2f0	; 0x2f0 <_ZN12Arduboy2Core11paintScreenEPhb.constprop.17>
    // Using display(CLEAR_BUFFER) instead of clear() may save code space.
    // The extra time it takes to repaint the previous logo isn't an issue.
    display(CLEAR_BUFFER);
    (*drawLogo)(y); // call the function that actually draws the logo
    display();
    delayShort(15);
    149a:	8f e0       	ldi	r24, 0x0F	; 15
    149c:	90 e0       	ldi	r25, 0x00	; 0
    149e:	0e 94 dc 03 	call	0x7b8	; 0x7b8 <_ZN12Arduboy2Core10delayShortEj>

  if (showLEDs) {
    digitalWriteRGB(RED_LED, RGB_ON);
  }

  for (int16_t y = -15; y <= 24; y++) {
    14a2:	21 96       	adiw	r28, 0x01	; 1
    14a4:	c9 31       	cpi	r28, 0x19	; 25
    14a6:	d1 05       	cpc	r29, r1
    14a8:	09 f0       	breq	.+2      	; 0x14ac <main+0x450>
    14aa:	39 cf       	rjmp	.-398    	; 0x131e <main+0x2c2>
    (*drawLogo)(y); // call the function that actually draws the logo
    display();
    delayShort(15);
  }

  if (showLEDs) {
    14ac:	99 20       	and	r9, r9
    14ae:	11 f0       	breq	.+4      	; 0x14b4 <main+0x458>
    14b0:	2f 9a       	sbi	0x05, 7	; 5
  }
  else if (color == BLUE_LED)
  {
    bitWrite(BLUE_LED_PORT, BLUE_LED_BIT, val);
    14b2:	2d 98       	cbi	0x05, 5	; 5
    digitalWriteRGB(GREEN_LED, RGB_OFF);  // green LED off
    digitalWriteRGB(BLUE_LED, RGB_ON);    // blue LED on
  }
  delayShort(400);
    14b4:	80 e9       	ldi	r24, 0x90	; 144
    14b6:	91 e0       	ldi	r25, 0x01	; 1
    14b8:	0e 94 dc 03 	call	0x7b8	; 0x7b8 <_ZN12Arduboy2Core10delayShortEj>
    14bc:	0e 94 da 03 	call	0x7b4	; 0x7b4 <_ZN12Arduboy2Core15digitalWriteRGBEhh.part.2>
    14c0:	36 cf       	rjmp	.-404    	; 0x132e <main+0x2d2>
}

bool Arduboy2Base::nextFrame()
{
  uint8_t now = (uint8_t) millis();
  uint8_t frameDurationMs = now - thisFrameStart;
    14c2:	90 91 3f 01 	lds	r25, 0x013F	; 0x80013f <_ZN12Arduboy2Base14thisFrameStartE>
    14c6:	f4 2f       	mov	r31, r20
    14c8:	f9 1b       	sub	r31, r25
    14ca:	9f 2f       	mov	r25, r31
  if (justRendered) {
    lastFrameDurationMs = frameDurationMs;
    justRendered = false;
    return false;
  }
  else if (frameDurationMs < eachFrameMillis) {
    14cc:	20 91 00 01 	lds	r18, 0x0100	; 0x800100 <__data_start>
    14d0:	f2 17       	cp	r31, r18
    14d2:	40 f4       	brcc	.+16     	; 0x14e4 <main+0x488>
    // Only idle if at least a full millisecond remains, since idle() may
    // sleep the processor until the next millisecond timer interrupt.
    if (++frameDurationMs < eachFrameMillis) {
    14d4:	9f 5f       	subi	r25, 0xFF	; 255
    14d6:	92 17       	cp	r25, r18
    14d8:	08 f0       	brcs	.+2      	; 0x14dc <main+0x480>
    14da:	58 cf       	rjmp	.-336    	; 0x138c <main+0x330>

/* Power Management */

void Arduboy2Core::idle()
{
  SMCR = _BV(SE); // select idle mode and enable sleeping
    14dc:	63 be       	out	0x33, r6	; 51
  sleep_cpu();
    14de:	88 95       	sleep
  SMCR = 0; // disable sleeping
    14e0:	13 be       	out	0x33, r1	; 51
    14e2:	54 cf       	rjmp	.-344    	; 0x138c <main+0x330>

    return false;
  }

  // pre-render
  justRendered = true;
    14e4:	90 92 3e 01 	sts	0x013E, r9	; 0x80013e <_ZN12Arduboy2Base12justRenderedE>
  thisFrameStart = now;
    14e8:	40 93 3f 01 	sts	0x013F, r20	; 0x80013f <_ZN12Arduboy2Base14thisFrameStartE>
    "brne 1b\n"
    : [color] "+d" (color),
      "+z" (bPtr)
    :
    :
  );
    14ec:	fe 01       	movw	r30, r28
    14ee:	81 11       	cpse	r24, r1
    14f0:	8f ef       	ldi	r24, 0xFF	; 255
    14f2:	00 24       	eor	r0, r0
    14f4:	81 93       	st	Z+, r24
    14f6:	81 93       	st	Z+, r24
    14f8:	81 93       	st	Z+, r24
    14fa:	81 93       	st	Z+, r24
    14fc:	03 94       	inc	r0
    14fe:	d1 f7       	brne	.-12     	; 0x14f4 <main+0x498>
  unsigned int frame_offset;

  if (bitmap == NULL)
    return;

  uint8_t width = pgm_read_byte(bitmap);
    1500:	f5 01       	movw	r30, r10
    1502:	84 91       	lpm	r24, Z
  uint8_t height = pgm_read_byte(++bitmap);
    1504:	f8 01       	movw	r30, r16
    1506:	24 91       	lpm	r18, Z
    1508:	9f e4       	ldi	r25, 0x4F	; 79
    150a:	59 2e       	mov	r5, r25
    150c:	87 15       	cp	r24, r7
    150e:	08 f4       	brcc	.+2      	; 0x1512 <main+0x4b6>
    1510:	58 2e       	mov	r5, r24
  }

  // pre-render
  justRendered = true;
  thisFrameStart = now;
  frameCount++;
    1512:	40 91 3c 01 	lds	r20, 0x013C	; 0x80013c <_ZN12Arduboy2Base10frameCountE>
    1516:	50 91 3d 01 	lds	r21, 0x013D	; 0x80013d <_ZN12Arduboy2Base10frameCountE+0x1>
    151a:	4f 5f       	subi	r20, 0xFF	; 255
    151c:	5f 4f       	sbci	r21, 0xFF	; 255
    151e:	50 93 3d 01 	sts	0x013D, r21	; 0x80013d <_ZN12Arduboy2Base10frameCountE+0x1>
    1522:	40 93 3c 01 	sts	0x013C, r20	; 0x80013c <_ZN12Arduboy2Base10frameCountE>
    start_h = abs(sRow) - 1;
  } else {
    start_h = 0;
  }

  loop_h = h / 8 + (h % 8 > 0 ? 1 : 0); // divide, then round up
    1526:	91 e0       	ldi	r25, 0x01	; 1
    1528:	32 2f       	mov	r19, r18
    152a:	37 70       	andi	r19, 0x07	; 7
    152c:	09 f4       	brne	.+2      	; 0x1530 <main+0x4d4>
    152e:	90 e0       	ldi	r25, 0x00	; 0
    1530:	26 95       	lsr	r18
    1532:	26 95       	lsr	r18
    1534:	26 95       	lsr	r18
    1536:	92 0f       	add	r25, r18
    1538:	98 30       	cpi	r25, 0x08	; 8
    153a:	08 f0       	brcs	.+2      	; 0x153e <main+0x4e2>
    153c:	97 e0       	ldi	r25, 0x07	; 7
    153e:	44 24       	eor	r4, r4
    1540:	43 94       	inc	r4
    1542:	49 0e       	add	r4, r25
  // instead of comparing two variables
  loop_h -= start_h;

  sRow += start_h;
  ofs = (sRow * WIDTH) + x + xOffset;
  uint8_t *bofs = (uint8_t *)bitmap + (start_h * w) + xOffset;
    1544:	6b e6       	ldi	r22, 0x6B	; 107
    1546:	71 e0       	ldi	r23, 0x01	; 1

  // prepare variables for loops later so we can compare with 0
  // instead of comparing two variables
  loop_h -= start_h;

  sRow += start_h;
    1548:	88 24       	eor	r8, r8
    154a:	83 94       	inc	r8
  ofs = (sRow * WIDTH) + x + xOffset;
    154c:	41 eb       	ldi	r20, 0xB1	; 177
    154e:	50 e0       	ldi	r21, 0x00	; 0
    1550:	90 e0       	ldi	r25, 0x00	; 0
      // we only want to mask the 8 bits of our own sprite, so we can
      // calculate the mask before the start of the loop
      mask_data = ~(0xFF * mul_amt);
      // really if yOffset = 0 you have a faster case here that could be
      // optimized
      for (uint8_t a = 0; a < loop_h; a++) {
    1552:	84 14       	cp	r8, r4
    1554:	81 f1       	breq	.+96     	; 0x15b6 <main+0x55a>
    1556:	da 01       	movw	r26, r20
    1558:	aa 5a       	subi	r26, 0xAA	; 170
    155a:	be 4f       	sbci	r27, 0xFE	; 254
    155c:	30 e0       	ldi	r19, 0x00	; 0
    155e:	20 e0       	ldi	r18, 0x00	; 0
        for (uint8_t iCol = 0; iCol < rendered_width; iCol++) {
    1560:	25 15       	cp	r18, r5
    1562:	18 f5       	brcc	.+70     	; 0x15aa <main+0x54e>
          bitmap_data = pgm_read_byte(bofs) * mul_amt;
    1564:	fb 01       	movw	r30, r22
    1566:	e2 0f       	add	r30, r18
    1568:	f3 1f       	adc	r31, r19
    156a:	24 90       	lpm	r2, Z
    156c:	f0 e4       	ldi	r31, 0x40	; 64
    156e:	2f 9e       	mul	r2, r31
    1570:	10 01       	movw	r2, r0
    1572:	11 24       	eor	r1, r1

          if (sRow >= 0) {
    1574:	87 fe       	sbrs	r8, 7
    1576:	0f c0       	rjmp	.+30     	; 0x1596 <main+0x53a>
    1578:	6d 01       	movw	r12, r26
    157a:	e0 e8       	ldi	r30, 0x80	; 128
    157c:	ce 0e       	add	r12, r30
    157e:	d1 1c       	adc	r13, r1
            data |= (uint8_t)(bitmap_data);
            Arduboy2Base::sBuffer[ofs] = data;
          }
          if (yOffset != 0 && sRow < 7) {
            const size_t index = static_cast<uint16_t>(ofs + WIDTH);
            data = Arduboy2Base::sBuffer[index];
    1580:	f6 01       	movw	r30, r12
    1582:	20 80       	ld	r2, Z
            data &= (uint8_t)(mask_data >> 8);
    1584:	e2 2d       	mov	r30, r2
    1586:	e0 7c       	andi	r30, 0xC0	; 192
            data |= (uint8_t)(bitmap_data >> 8);
    1588:	3e 2a       	or	r3, r30
            Arduboy2Base::sBuffer[index] = data;
    158a:	f6 01       	movw	r30, r12
    158c:	30 82       	st	Z, r3
    158e:	2f 5f       	subi	r18, 0xFF	; 255
    1590:	3f 4f       	sbci	r19, 0xFF	; 255
    1592:	11 96       	adiw	r26, 0x01	; 1
    1594:	e5 cf       	rjmp	.-54     	; 0x1560 <main+0x504>
      for (uint8_t a = 0; a < loop_h; a++) {
        for (uint8_t iCol = 0; iCol < rendered_width; iCol++) {
          bitmap_data = pgm_read_byte(bofs) * mul_amt;

          if (sRow >= 0) {
            data = Arduboy2Base::sBuffer[ofs];
    1596:	dc 90       	ld	r13, X
            data &= (uint8_t)(mask_data);
    1598:	fd 2d       	mov	r31, r13
    159a:	ff 73       	andi	r31, 0x3F	; 63
    159c:	df 2e       	mov	r13, r31
            data |= (uint8_t)(bitmap_data);
    159e:	d2 28       	or	r13, r2
            Arduboy2Base::sBuffer[ofs] = data;
    15a0:	dc 92       	st	X, r13
          }
          if (yOffset != 0 && sRow < 7) {
    15a2:	e6 e0       	ldi	r30, 0x06	; 6
    15a4:	e8 15       	cp	r30, r8
    15a6:	9c f3       	brlt	.-26     	; 0x158e <main+0x532>
    15a8:	e7 cf       	rjmp	.-50     	; 0x1578 <main+0x51c>
    15aa:	83 94       	inc	r8
    15ac:	68 0f       	add	r22, r24
    15ae:	79 1f       	adc	r23, r25
          ofs++;
          bofs++;
        }
        sRow++;
        bofs += w - rendered_width;
        ofs += WIDTH - rendered_width;
    15b0:	40 58       	subi	r20, 0x80	; 128
    15b2:	5f 4f       	sbci	r21, 0xFF	; 255
    15b4:	ce cf       	rjmp	.-100    	; 0x1552 <main+0x4f6>
  }
}

void Arduboy2Base::display()
{
  paintScreen(sBuffer);
    15b6:	80 e0       	ldi	r24, 0x00	; 0
    15b8:	0e 94 78 01 	call	0x2f0	; 0x2f0 <_ZN12Arduboy2Core11paintScreenEPhb.constprop.17>
    15bc:	e7 ce       	rjmp	.-562    	; 0x138c <main+0x330>

000015be <eeprom_read_byte>:
    15be:	f9 99       	sbic	0x1f, 1	; 31
    15c0:	fe cf       	rjmp	.-4      	; 0x15be <eeprom_read_byte>
    15c2:	92 bd       	out	0x22, r25	; 34
    15c4:	81 bd       	out	0x21, r24	; 33
    15c6:	f8 9a       	sbi	0x1f, 0	; 31
    15c8:	99 27       	eor	r25, r25
    15ca:	80 b5       	in	r24, 0x20	; 32
    15cc:	08 95       	ret

000015ce <eeprom_write_byte>:
    15ce:	26 2f       	mov	r18, r22

000015d0 <eeprom_write_r18>:
    15d0:	f9 99       	sbic	0x1f, 1	; 31
    15d2:	fe cf       	rjmp	.-4      	; 0x15d0 <eeprom_write_r18>
    15d4:	1f ba       	out	0x1f, r1	; 31
    15d6:	92 bd       	out	0x22, r25	; 34
    15d8:	81 bd       	out	0x21, r24	; 33
    15da:	20 bd       	out	0x20, r18	; 32
    15dc:	0f b6       	in	r0, 0x3f	; 63
    15de:	f8 94       	cli
    15e0:	fa 9a       	sbi	0x1f, 2	; 31
    15e2:	f9 9a       	sbi	0x1f, 1	; 31
    15e4:	0f be       	out	0x3f, r0	; 63
    15e6:	01 96       	adiw	r24, 0x01	; 1
    15e8:	08 95       	ret

000015ea <__divmodsi4>:
    15ea:	05 2e       	mov	r0, r21
    15ec:	97 fb       	bst	r25, 7
    15ee:	1e f4       	brtc	.+6      	; 0x15f6 <__divmodsi4+0xc>
    15f0:	00 94       	com	r0
    15f2:	0e 94 0c 0b 	call	0x1618	; 0x1618 <__negsi2>
    15f6:	57 fd       	sbrc	r21, 7
    15f8:	07 d0       	rcall	.+14     	; 0x1608 <__divmodsi4_neg2>
    15fa:	0e 94 14 0b 	call	0x1628	; 0x1628 <__udivmodsi4>
    15fe:	07 fc       	sbrc	r0, 7
    1600:	03 d0       	rcall	.+6      	; 0x1608 <__divmodsi4_neg2>
    1602:	4e f4       	brtc	.+18     	; 0x1616 <__divmodsi4_exit>
    1604:	0c 94 0c 0b 	jmp	0x1618	; 0x1618 <__negsi2>

00001608 <__divmodsi4_neg2>:
    1608:	50 95       	com	r21
    160a:	40 95       	com	r20
    160c:	30 95       	com	r19
    160e:	21 95       	neg	r18
    1610:	3f 4f       	sbci	r19, 0xFF	; 255
    1612:	4f 4f       	sbci	r20, 0xFF	; 255
    1614:	5f 4f       	sbci	r21, 0xFF	; 255

00001616 <__divmodsi4_exit>:
    1616:	08 95       	ret

00001618 <__negsi2>:
    1618:	90 95       	com	r25
    161a:	80 95       	com	r24
    161c:	70 95       	com	r23
    161e:	61 95       	neg	r22
    1620:	7f 4f       	sbci	r23, 0xFF	; 255
    1622:	8f 4f       	sbci	r24, 0xFF	; 255
    1624:	9f 4f       	sbci	r25, 0xFF	; 255
    1626:	08 95       	ret

00001628 <__udivmodsi4>:
    1628:	a1 e2       	ldi	r26, 0x21	; 33
    162a:	1a 2e       	mov	r1, r26
    162c:	aa 1b       	sub	r26, r26
    162e:	bb 1b       	sub	r27, r27
    1630:	fd 01       	movw	r30, r26
    1632:	0d c0       	rjmp	.+26     	; 0x164e <__udivmodsi4_ep>

00001634 <__udivmodsi4_loop>:
    1634:	aa 1f       	adc	r26, r26
    1636:	bb 1f       	adc	r27, r27
    1638:	ee 1f       	adc	r30, r30
    163a:	ff 1f       	adc	r31, r31
    163c:	a2 17       	cp	r26, r18
    163e:	b3 07       	cpc	r27, r19
    1640:	e4 07       	cpc	r30, r20
    1642:	f5 07       	cpc	r31, r21
    1644:	20 f0       	brcs	.+8      	; 0x164e <__udivmodsi4_ep>
    1646:	a2 1b       	sub	r26, r18
    1648:	b3 0b       	sbc	r27, r19
    164a:	e4 0b       	sbc	r30, r20
    164c:	f5 0b       	sbc	r31, r21

0000164e <__udivmodsi4_ep>:
    164e:	66 1f       	adc	r22, r22
    1650:	77 1f       	adc	r23, r23
    1652:	88 1f       	adc	r24, r24
    1654:	99 1f       	adc	r25, r25
    1656:	1a 94       	dec	r1
    1658:	69 f7       	brne	.-38     	; 0x1634 <__udivmodsi4_loop>
    165a:	60 95       	com	r22
    165c:	70 95       	com	r23
    165e:	80 95       	com	r24
    1660:	90 95       	com	r25
    1662:	9b 01       	movw	r18, r22
    1664:	ac 01       	movw	r20, r24
    1666:	bd 01       	movw	r22, r26
    1668:	cf 01       	movw	r24, r30
    166a:	08 95       	ret

0000166c <__umulhisi3>:
    166c:	a2 9f       	mul	r26, r18
    166e:	b0 01       	movw	r22, r0
    1670:	b3 9f       	mul	r27, r19
    1672:	c0 01       	movw	r24, r0
    1674:	a3 9f       	mul	r26, r19
    1676:	70 0d       	add	r23, r0
    1678:	81 1d       	adc	r24, r1
    167a:	11 24       	eor	r1, r1
    167c:	91 1d       	adc	r25, r1
    167e:	b2 9f       	mul	r27, r18
    1680:	70 0d       	add	r23, r0
    1682:	81 1d       	adc	r24, r1
    1684:	11 24       	eor	r1, r1
    1686:	91 1d       	adc	r25, r1
    1688:	08 95       	ret

0000168a <__tablejump2__>:
    168a:	ee 0f       	add	r30, r30
    168c:	ff 1f       	adc	r31, r31
    168e:	05 90       	lpm	r0, Z+
    1690:	f4 91       	lpm	r31, Z
    1692:	e0 2d       	mov	r30, r0
    1694:	09 94       	ijmp

00001696 <_exit>:
    1696:	f8 94       	cli

00001698 <__stop_program>:
    1698:	ff cf       	rjmp	.-2      	; 0x1698 <__stop_program>
