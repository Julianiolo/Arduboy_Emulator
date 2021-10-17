
hollow.ino.elf:     file format elf32-avr

SYMBOL TABLE:
00800100 l    d  .data	00000000 .data
00000000 l    d  .text	00000000 .text
00800156 l    d  .bss	00000000 .bss
00000000 l    d  .comment	00000000 .comment
00000000 l    d  .note.gnu.avr.deviceinfo	00000000 .note.gnu.avr.deviceinfo
00000000 l    d  .debug_aranges	00000000 .debug_aranges
00000000 l    d  .debug_info	00000000 .debug_info
00000000 l    d  .debug_abbrev	00000000 .debug_abbrev
00000000 l    d  .debug_line	00000000 .debug_line
00000000 l    d  .debug_frame	00000000 .debug_frame
00000000 l    d  .debug_str	00000000 .debug_str
00000000 l    d  .debug_loc	00000000 .debug_loc
00000000 l    d  .debug_ranges	00000000 .debug_ranges
00000000 l    df *ABS*	00000000 
0000003e l       *ABS*	00000000 __SP_H__
0000003d l       *ABS*	00000000 __SP_L__
0000003f l       *ABS*	00000000 __SREG__
00000000 l       *ABS*	00000000 __tmp_reg__
00000001 l       *ABS*	00000000 __zero_reg__
000010ae l     F .text	000000c8 _ZN9MyArduboy14drawFastVLine2Eiiah.constprop.34
0080036e l     O .bss	00000420 arduboy
00001176 l     F .text	000000ec _ZN9MyArduboy9fillRect2Eiihah.constprop.30
00001262 l     F .text	00000242 _ZN7Arduboy10drawBitmapEiiPKhhhh.constprop.28
000014a4 l     F .text	0000001e _ZN7Arduboy10fillScreenEh.constprop.23
000014b4 l       .text	00000000 loopto
000014c2 l     F .text	00000054 _Z8USB_RecvhPvi.constprop.5
00800316 l     O .bss	00000001 _usbConfiguration
00800315 l     O .bss	00000001 RxLEDPulse
00001516 l     F .text	00000022 _Z13USB_SendSpaceh.constprop.3
00001538 l     F .text	00000028 _Z12PluggableUSBv
0080030d l     O .bss	00000008 _ZGVZ12PluggableUSBvE3obj
00800309 l     O .bss	00000004 _ZZ12PluggableUSBvE3obj
00001560 l     F .text	0000002c _ZN7Serial_5writeEh
0000158c l     F .text	00000016 _ZN7Serial_5flushEv
000015a2 l     F .text	00000008 _ZN7Serial_17availableForWriteEv
000015aa l     F .text	0000003c _ZN7Serial_4readEv
000015e6 l     F .text	00000048 _ZN7Serial_4peekEv
0000162e l     F .text	00000034 _ZN7Serial_9availableEv
00001662 l     F .text	0000005c _ZL11SendControlh
00800303 l     O .bss	00000002 _ZL6_cmark
00800301 l     O .bss	00000002 _ZL5_cend
000016be l     F .text	00000066 _ZL24USB_SendStringDescriptorPKhhh
00001724 l     F .text	0000004c _Z15USB_SendControlhPKvi
00001770 l     F .text	00000062 _ZL14SendInterfacesv
00000fe3 l     O .text	00000042 _cdcInterface
000017d2 l     F .text	0000001a _ZL4RecvPVhh
000017ec l     F .text	00000008 _Z8initLogov
008002fa l     O .bss	00000001 _ZL7counter.lto_priv.56
000017f4 l     F .text	0000005a _ZN5Print5writeEPKhj
0000184e l     F .text	000000e2 digitalWrite
00000f48 l     O .text	0000001f digital_pin_to_timer_PGM
00000f84 l     O .text	0000001f digital_pin_to_bit_mask_PGM
00000fb1 l     O .text	0000001f digital_pin_to_port_PGM
00000fa3 l     O .text	0000000e port_to_output_PGM
00001930 l     F .text	00000078 pinMode
00000f69 l     O .text	0000000e port_to_mode_PGM
000019a8 l     F .text	00000146 analogWrite
00001aee l     F .text	0000004a micros
008002e9 l     O .bss	00000004 timer0_overflow_count
00001b38 l     F .text	00000064 delay
00001b9c l     F .text	0000010a _ZN7Serial_5writeEPKhj
00800104 l     O .data	00000008 _ZL12_usbLineInfo
00800308 l     O .bss	00000001 _usbSuspendState
00800307 l     O .bss	00000001 TxLEDPulse
00001ca6 l     F .text	00000034 _ZN11ArduboyCore12buttonsStateEv
00001cda l     F .text	00000016 _ZN11ArduboyCore4idleEv
00001cf0 l     F .text	00000030 _ZN11ArduboyCore14LCDCommandModeEv
008002f8 l     O .bss	00000002 _ZN11ArduboyCore6csportE
008002f7 l     O .bss	00000001 _ZN11ArduboyCore9cspinmaskE
008002f5 l     O .bss	00000002 _ZN11ArduboyCore6dcportE
008002f4 l     O .bss	00000001 _ZN11ArduboyCore9dcpinmaskE
00001d20 l     F .text	00000028 _ZN11ArduboyCore11LCDDataModeEv
00001d48 l     F .text	000000e2 _ZN12ArduboyTunes8playNoteEhh.part.2
00000f67 l     O .text	00000002 _ZL21tune_pin_to_timer_PGM
00000f18 l     O .text	00000030 _ZL27_midi_byte_note_frequencies
00000e78 l     O .text	000000a0 _ZL27_midi_word_note_frequencies
008002e6 l     O .bss	00000002 wait_timer_frequency2
008002e5 l     O .bss	00000001 wait_timer_playing
00001e2a l     F .text	00000046 _ZN12ArduboyTunes8stopNoteEh
008002f0 l     O .bss	00000001 _tunes_timer1_pin_mask
008002f1 l     O .bss	00000002 _tunes_timer1_pin_port
008002ed l     O .bss	00000001 _tunes_timer3_pin_mask
008002ee l     O .bss	00000002 _tunes_timer3_pin_port
00001e70 l     F .text	000000e6 _ZN12ArduboyTunes4stepEv
00800319 l     O .bss	00000002 score_cursor
00800317 l     O .bss	00000001 _tune_num_chans
0080031b l     O .bss	00000002 score_start
00800318 l     O .bss	00000001 tune_playing
008002e1 l     O .bss	00000004 wait_toggle_count
00001f56 l     F .text	00000064 _ZN9MyArduboy10playScore2EPKhh.constprop.29
0080031d l     O .bss	00000001 _ZN12ArduboyAudio13audio_enabledE
00001fba l     F .text	0000001a _ZN12ArduboyAudio3offEv
00001fd4 l     F .text	0000001c _ZN12ArduboyAudio2onEv
00001ff0 l     F .text	00000048 _ZN7Arduboy9drawPixelEiih
00002038 l     F .text	00000232 _ZN7Arduboy5writeEh
00000978 l     O .text	00000500 _ZL4font
0000226a l     F .text	0000000a _ZL10playSound2v
00000972 l     O .text	00000006 _ZL6sound2
00002274 l     F .text	00000072 _Z10updateLogov
008002b4 l     O .bss	00000001 _ZL8signalOn
000022e6 l     F .text	0000006a _ZL15drawScoreFigureiii
00000445 l     O .text	000000a0 _ZL9imgNumber
00002350 l     F .text	000002a2 _ZN9MyArduboy5writeEh
00000147 l     O .text	00000100 _ZL7imgFont
000025f2 l     F .text	0000003e _ZN5Print5printEPK19__FlashStringHelper.constprop.36
00002630 l     F .text	000000d0 _Z8drawLogov
00000516 l     O .text	00000120 _ZL6imgOBN
000004f6 l     O .text	00000020 _ZL7imgSoft
000004e5 l     O .text	00000011 _ZZ8drawLogovE3__c
00002700 l     F .text	00000002 _ZN5Print5flushEv
00002702 l     F .text	00000006 _ZN5Print17availableForWriteEv
00002708 l     F .text	00000014 _ZN5Print5writeEPKc.part.2.constprop.38
0000271c l     F .text	0000008c _ZN5Print11printNumberEmh.constprop.27
000027a8 l     F .text	00000004 __cxa_pure_virtual
000027ac l     F .text	00000028 _ZL10eepWrite32m
008002da l     O .bss	00000002 _ZL7eepAddr
000027d4 l     F .text	00000026 _ZL10eepWrite16j
000027fa l     F .text	00000026 _ZL9eepRead32v
00002820 l     F .text	00000026 _ZL9eepRead16v
00002846 l     F .text	000004b8 _Z9drawTitlev
008002d9 l     O .bss	00000001 _ZL6toDraw
008002d8 l     O .bss	00000001 _ZL5state
008002b9 l     O .bss	00000001 _ZL8eyesWait
00000643 l     O .text	0000001e _ZL7imgEyes
008002b8 l     O .bss	00000001 _ZL10lightColor
0000063c l     O .text	00000007 _ZL12imgHeadLight
00000876 l     O .text	000000fc _ZL9imgTitle1
00000786 l     O .text	000000f0 _ZL9imgTitle2
000006be l     O .text	000000c8 _ZL6imgMan
008002d6 l     O .bss	00000002 _ZL9lastScore
000006b9 l     O .text	00000005 _ZZ9drawTitlevE3__c
000006b3 l     O .text	00000006 _ZZ9drawTitlevE3__c_0
000006ab l     O .text	00000008 _ZL10menusTable
008002d5 l     O .bss	00000001 _ZL7menuPos
000006a4 l     O .text	00000007 _ZL9menuSound
008002d4 l     O .bss	00000001 _ZL5sound
000006a1 l     O .text	00000003 _ZZ9drawTitlevE3__c_1
0000069d l     O .text	00000004 _ZZ9drawTitlevE3__c_2
0000068e l     O .text	0000000f _ZZ9drawTitlevE3__c_3
008002c0 l     O .bss	00000014 _ZL7hiScore
0000068c l     O .text	00000002 _ZZ9drawTitlevE3__c_4
00000689 l     O .text	00000003 _ZZ9drawTitlevE3__c_5
0000067d l     O .text	0000000c _ZZ9drawTitlevE3__c_6
008002be l     O .bss	00000002 _ZL9playCount
00000671 l     O .text	0000000c _ZZ9drawTitlevE3__c_7
008002ba l     O .bss	00000004 _ZL10playFrames
00000661 l     O .text	00000010 _ZL12creditsTable
00002cfe l     F .text	000005fa _Z8drawGamev
008002b2 l     O .bss	00000002 _ZL9cavePhase
008002b0 l     O .bss	00000002 _ZL11caveBaseTop
008002ae l     O .bss	00000002 _ZL14caveBaseBottom
008002ad l     O .bss	00000001 _ZL10caveOffset
0000043d l     O .text	00000008 _ZL7imgCave
00800289 l     O .bss	00000024 _ZL10caveColumn
00800169 l     O .bss	00000120 _ZL6debris
00800168 l     O .bss	00000001 _ZL12playerColumn
00800167 l     O .bss	00000001 _ZL10playerJump
00800166 l     O .bss	00000001 _ZL10playerMove
00800165 l     O .bss	00000001 _ZL6isOver
00800164 l     O .bss	00000001 _ZL9playerDir
000002b7 l     O .text	00000040 _ZL9imgPlayer
00800163 l     O .bss	00000001 _ZL7playerX
00800162 l     O .bss	00000001 _ZL8scoreTop
00800160 l     O .bss	00000002 _ZL5score
0080015f l     O .bss	00000001 _ZL7isStart
0080015d l     O .bss	00000002 _ZL7counter.lto_priv.55
000003bd l     O .text	00000080 _ZL8imgReady
0000030d l     O .text	000000b0 _ZL11imgGameOver
0080015c l     O .bss	00000001 _ZL9isHiscore
00000308 l     O .text	00000005 _ZZ8drawGamevE3__c
00000302 l     O .text	00000006 _ZZ8drawGamevE3__c_0
000002f7 l     O .text	0000000b _ZZ8drawGamevE3__c_1
000032f8 l     F .text	00000132 _Z9initTitlev
008002b5 l     O .bss	00000001 _ZL11recordState
008002b7 l     O .bss	00000001 _ZL10lightBlink
008002b6 l     O .bss	00000001 _ZL9lightWait
0000342a l     F .text	000000e0 _ZL10growColumnR6COLUMNbS0_
0000350a l     F .text	000000f8 _Z8initGamev
00800156 l     O .bss	00000001 _ZL13caveHollowCnt
00800157 l     O .bss	00000002 _ZL11caveLoopCnt
0080015b l     O .bss	00000001 _ZL10caveMaxGap
00000247 l     O .text	00000022 _ZL10soundStart
00003602 l     F .text	000001c4 _Z11updateTitlev
00000636 l     O .text	00000006 _ZL6sound1
000037c6 l     F .text	00000644 _Z10updateGamev
000002ae l     O .text	00000009 _ZL10soundCrush
00800159 l     O .bss	00000002 _ZL7caveGap
000002a0 l     O .text	0000000e _ZL9soundMove
00000269 l     O .text	00000037 _ZL13soundGameOver
00004566 l     F .text	0000006e _GLOBAL__I_65535_0_MyArduboy.cpp.o.2815
0080031e l     O .bss	00000050 Serial
0080012d l     O .data	00000012 _ZTV7Serial_
0080013f l     O .data	0000000c _ZTV9MyArduboy
00800306 l     O .bss	00000001 _usbCurrentStatus
00001047 l     O .text	00000011 STRING_PRODUCT
0000103b l     O .text	0000000c STRING_MANUFACTURER
00001025 l     O .text	00000004 STRING_LANGUAGE
00800126 l     O .data	00000007 _initEndpoints
00800100 l     O .data	00000004 _ZL10breakValue
00800305 l     O .bss	00000001 _ZL11wdtcsr_save
00001029 l     O .text	00000012 USB_DeviceDescriptorIAD
008002f3 l     O .bss	00000001 _ZN8SPIClass11initializedE
00000fd0 l     O .text	00000013 _ZL14pinBootProgram
00000f77 l     O .text	0000000d _ZL14lcdBootProgram
008002fb l     O .bss	00000004 timer0_millis
008002ff l     O .bss	00000002 _ZL4mode
00800114 l     O .data	00000012 _ZL11moduleTable
008002e8 l     O .bss	00000001 timer0_fract
008002e0 l     O .bss	00000001 tonePlaying
008002dc l     O .bss	00000004 timer1_toggle_count
000000ca l     O .text	00000011 _ZL7credit5
000000db l     O .text	0000000f _ZL7credit4
000000ea l     O .text	00000010 _ZL7credit3
000000fa l     O .text	00000014 _ZL7credit2
0000010e l     O .text	0000000e _ZL7credit1
0000011c l     O .text	00000012 _ZL7credit0
0000012e l     O .text	00000007 _ZL10menuCredit
00000135 l     O .text	00000007 _ZL10menuRecord
0000013c l     O .text	0000000b _ZL8menuGame
00000000 l    df *ABS*	00000000 rand.c
0000003e l       *ABS*	00000000 __SP_H__
0000003d l       *ABS*	00000000 __SP_L__
0000003f l       *ABS*	00000000 __SREG__
00000000 l       *ABS*	00000000 __tmp_reg__
00000001 l       *ABS*	00000000 __zero_reg__
00004b1e l     F .text	00000092 do_rand
0080010c l     O .data	00000004 next
00000000 l    df *ABS*	00000000 random.c
0000003e l       *ABS*	00000000 __SP_H__
0000003d l       *ABS*	00000000 __SP_L__
0000003f l       *ABS*	00000000 __SREG__
00000000 l       *ABS*	00000000 __tmp_reg__
00000001 l       *ABS*	00000000 __zero_reg__
00800110 l     O .data	00000004 next
00000000 l    df *ABS*	00000000 _clear_bss.o
00001086 l       .text	00000000 .do_clear_bss_start
00001084 l       .text	00000000 .do_clear_bss_loop
00000000 l    df *ABS*	00000000 _divmodsi4.o
00004df0 l       .text	00000000 __divmodsi4_neg2
00004dfe l       .text	00000000 __divmodsi4_exit
00000000 l    df *ABS*	00000000 _udivmodsi4.o
00004e5c l       .text	00000000 __udivmodsi4_ep
00004e42 l       .text	00000000 __udivmodsi4_loop
00000000 l    df *ABS*	00000000 _divmodhi4.o
00005306 l       .text	00000000 __divmodhi4_neg1
0000530e l       .text	00000000 __divmodhi4_neg2
00005314 l       .text	00000000 __divmodhi4_exit
00000000 l    df *ABS*	00000000 _udivmodhi4.o
00005338 l       .text	00000000 __udivmodhi4_ep
0000532a l       .text	00000000 __udivmodhi4_loop
00000000 l    df *ABS*	00000000 sprintf.c
0000003e l       *ABS*	00000000 __SP_H__
0000003d l       *ABS*	00000000 __SP_L__
0000003f l       *ABS*	00000000 __SREG__
00000000 l       *ABS*	00000000 __tmp_reg__
00000001 l       *ABS*	00000000 __zero_reg__
00000000 l    df *ABS*	00000000 vfprintf.c
0000003e l       *ABS*	00000000 __SP_H__
0000003d l       *ABS*	00000000 __SP_L__
0000003f l       *ABS*	00000000 __SREG__
00000000 l       *ABS*	00000000 __tmp_reg__
00000001 l       *ABS*	00000000 __zero_reg__
00000000 l    df *ABS*	00000000 fputc.c
0000003e l       *ABS*	00000000 __SP_H__
0000003d l       *ABS*	00000000 __SP_L__
0000003f l       *ABS*	00000000 __SREG__
00000000 l       *ABS*	00000000 __tmp_reg__
00000001 l       *ABS*	00000000 __zero_reg__
00000000 l    df *ABS*	00000000 _exit.o
000058f0 l       .text	00000000 __stop_program
000010aa  w      .text	00000000 __vector_38
000010aa  w      .text	00000000 __vector_22
000010aa  w      .text	00000000 __vector_28
00004d7e g       .text	00000000 eeprom_write_r18
00004e7a g       .text	0000001e .hidden __umulhisi3
000010aa  w      .text	00000000 __vector_1
00004c6e g     F .text	0000009e random
00005260 g       .text	00000000 __fp_mpack_finite
000043e0 g     F .text	000000b0 __vector_32
0000ffa0 g       *ABS*	00000000 __DATA_REGION_LENGTH__
000058b8 g       .text	00000036 .hidden __epilogue_restores__
00004da8 g     F .text	0000000a eeprom_write_word
000050e6 g     F .text	00000022 __fp_round
000010aa  w      .text	00000000 __vector_34
00004f7c g     F .text	0000000e __fixsfsi
00005130 g     F .text	00000044 __fp_split3
00005322 g       .text	00000028 .hidden __udivmodhi4
00004d64 g     F .text	0000000c eeprom_read_dword
000000ca g       .text	00000000 __trampolines_start
000058f2 g       .text	00000000 _etext
00004e98 g     F .text	0000000e __subsf3
000010aa  w      .text	00000000 __vector_24
000010aa  w      .text	00000000 __vector_12
000057c4 g     F .text	000000bc __ultoa_invert
000010aa g       .text	00000000 __bad_interrupt
00005948 g       *ABS*	00000000 __data_load_end
000010aa  w      .text	00000000 __vector_6
000010aa  w      .text	00000000 __vector_31
000010aa  w      .text	00000000 __vector_35
00004bd6 g     F .text	00000098 random_r
00005094 g     F .text	00000056 __fp_rempio2
000000ca g       .text	00000000 __trampolines_end
000010aa  w      .text	00000000 __vector_39
000010aa  w      .text	00000000 __vector_3
00005174 g     F .text	0000000e __fp_zero
0000434c g     F .text	00000094 __vector_23
000058f2 g       *ABS*	00000000 __data_load_start
0000105a g       .text	00000000 __dtors_end
0080078e g       .bss	00000000 __bss_end
00004e10 g       .text	00000016 .hidden __muluhisi3
000010aa  w      .text	00000000 __vector_30
00000400 g       *ABS*	00000000 __LOCK_REGION_LENGTH__
0000534a g     F .text	0000000a abort
000010aa  w      .text	00000000 __vector_25
00004d7c g     F .text	0000001c eeprom_write_byte
00004d3e g     F .text	00000016 strnlen
00003ee8 g     F .text	00000464 __vector_11
0000105a  w      .text	00000000 __init
00004d98 g       .text	00000000 eeprom_write_float
00000000  w      *UND*	00000000 _Z14serialEventRunv
000010aa  w      .text	00000000 __vector_13
00004bb0 g     F .text	00000006 rand_r
000051ae g       .text	00000000 __mulsf3_pse
00004490 g     F .text	000000d6 __vector_17
0000506e g     F .text	00000006 __fp_nan
000010aa  w      .text	00000000 __vector_19
000010aa  w      .text	00000000 __vector_7
00005062 g     F .text	0000000c __fp_inf
00004f72 g     F .text	0000000a cos
0000107c g       .text	00000010 .hidden __do_clear_bss
0000574e g     F .text	00000016 strnlen_P
00004d98 g     F .text	00000010 eeprom_write_dword
000010aa  w      .text	00000000 __vector_41
00810000 g       .comment	00000000 __eeprom_end
000051a8 g     F .text	000000d2 __mulsf3x
00004bb6 g     F .text	0000000a rand
00004fec g       .text	00000000 __floatsisf
00000000 g       .text	00000000 __vectors
00004d54 g     F .text	00000010 eeprom_read_byte
000010aa  w      .text	00000000 __vector_27
00800156 g       .data	00000000 __data_end
00000000  w      .text	00000000 __vector_default
000052ee g       .text	00000028 .hidden __divmodhi4
000010aa  w      .text	00000000 __vector_5
000010aa  w      .text	00000000 __vector_33
00000400 g       *ABS*	00000000 __SIGNATURE_REGION_LENGTH__
00005316 g       .text	0000000c .hidden __tablejump2__
00001058 g       .text	00000000 __ctors_start
000010aa  w      .text	00000000 __vector_37
00004db2 g     F .text	00000020 eeprom_read_block
00001066 g       .text	00000016 .hidden __do_copy_data
000052a0 g     F .text	0000004e __fp_powser
00005082 g     F .text	0000000e __fp_pscB
00005140 g       .text	00000000 __fp_splitA
00800156 g       .bss	00000000 __bss_start
000045d4 g     F .text	0000054a main
00004bc0 g     F .text	00000016 srand
000010aa  w      .text	00000000 __vector_4
00800060 g       *ABS*	00000000 __DATA_REGION_ORIGIN__
0000525c g     F .text	0000001c __fp_mpack
00005108 g     F .text	00000028 __fp_sinus
00004d64 g       .text	00000000 eeprom_read_float
00004e00 g       .text	00000010 .hidden __negsi2
00005182 g     F .text	00000008 __mulsf3
00000000  w      *ABS*	00000000 __heap_end
000010aa  w      .text	00000000 __vector_9
000010aa  w      .text	00000000 __vector_2
00004ec8 g     F .text	000000cc __addsf3x
00000400 g       *ABS*	00000000 __USER_SIGNATURE_REGION_LENGTH__
00005354 g     F .text	00000046 sprintf
00004d1e g     F .text	00000012 memcpy_P
00005278 g     F .text	00000028 __fp_powsodd
000010aa  w      .text	00000000 __vector_21
00004d0c g     F .text	00000012 srandom
000010aa  w      .text	00000000 __vector_15
000010aa  w      .text	00000000 __vector_36
00005074 g     F .text	0000000e __fp_pscA
00005764 g     F .text	00000060 fputc
000010aa  w      .text	00000000 __vector_29
00004e2c g       .text	0000000a .hidden __mulohisi3
0000105a g       .text	00000000 __dtors_start
0000105a g       .text	00000000 __ctors_end
00004dd2 g       .text	0000002e .hidden __divmodsi4
00000aff  w      *ABS*	00000000 __stack
000010aa  w      .text	00000000 __vector_40
00800156 g       .data	00000000 _edata
0080078e g       .comment	00000000 _end
00004db6 g       .text	00000000 eeprom_read_blraw
000010aa  w      .text	00000000 __vector_8
000010aa  w      .text	00000000 __vector_26
00004d30 g     F .text	0000000e strcpy_P
000058ee  w      .text	00000000 .hidden exit
00004fe8 g     F .text	0000007a __floatunsisf
000052ee g       .text	00000000 .hidden _div
00004e36 g       .text	00000044 .hidden __udivmodsi4
00004f8a g     F .text	0000005e __fixunssfsi
00010000 g       *ABS*	00000000 __EEPROM_REGION_LENGTH__
000058ee g       .text	00000000 .hidden _exit
000010aa  w      .text	00000000 __vector_14
00003e0a g     F .text	000000de __vector_10
000010aa  w      .text	00000000 __vector_16
00800100 g       .data	00000000 __data_start
000010aa  w      .text	00000000 __vector_18
00000003 g       *ABS*	00000000 __FUSE_REGION_LENGTH__
00020000 g       *ABS*	00000000 __TEXT_REGION_LENGTH__
000010aa  w      .text	00000000 __vector_20
00004e9a g       .text	00000000 __addsf3
000010aa  w      .text	00000000 __vector_42
00004d70 g     F .text	0000000c eeprom_read_word
00005880 g       .text	00000038 .hidden __prologue_saves__
0000539a g     F .text	000003b4 vfprintf
00005176 g       .text	00000000 __fp_szero
0000108c g       .text	00000016 .hidden __do_global_ctors
00004e26 g       .text	00000006 .hidden __mulshisi3


