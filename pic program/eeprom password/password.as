opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 9453"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 3 "E:\pic program\eeprom password\password.c"
	psect config,class=CONFIG,delta=2 ;#
# 3 "E:\pic program\eeprom password\password.c"
	dw 0xFFFE & 0xFFFB & 0xFFF7 & 0xFFBF & 0xFF7F & 0xFFFF & 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_Lcd8_Init
	FNCALL	_main,_Lcd8_Display
	FNCALL	_main,_cmd
	FNCALL	_main,_write
	FNCALL	_Lcd8_Display,_Lcd8_Write
	FNCALL	_Lcd8_Write,_Lcd8_Command
	FNCALL	_Lcd8_Write,_Delay
	FNCALL	_Lcd8_Init,_Lcd8_Command
	FNCALL	_Lcd8_Command,_Delay
	FNROOT	_main
	global	_b
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"E:\pic program\eeprom password\password.c"
	line	14

;initializer for _b
	retlw	032h
	retlw	030h
	retlw	030h
	retlw	034h
	retlw	0
	global	_key
	global	_m
	global	_a
	global	_PORTD
_PORTD	set	8
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_Lcd_en
_Lcd_en	set	61
	global	_Lcd_rs
_Lcd_rs	set	60
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_1:	
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	75	;'K'
	retlw	69	;'E'
	retlw	89	;'Y'
	retlw	58	;':'
	retlw	0
psect	strings
	file	"password.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_a:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_key:
       ds      1

_m:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"E:\pic program\eeprom password\password.c"
_b:
       ds      5

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
	fcall	__pidataBANK0+3		;fetch initializer
	movwf	__pdataBANK0+3&07fh		
	fcall	__pidataBANK0+4		;fetch initializer
	movwf	__pdataBANK0+4&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_Lcd8_Command
?_Lcd8_Command:	; 0 bytes @ 0x0
	global	?_Delay
?_Delay:	; 0 bytes @ 0x0
	global	?_Lcd8_Init
?_Lcd8_Init:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_cmd
?_cmd:	; 2 bytes @ 0x0
	global	?_write
?_write:	; 2 bytes @ 0x0
	global	Delay@del
Delay@del:	; 2 bytes @ 0x0
	ds	2
	global	??_Lcd8_Command
??_Lcd8_Command:	; 0 bytes @ 0x2
	global	??_Delay
??_Delay:	; 0 bytes @ 0x2
	global	??_cmd
??_cmd:	; 0 bytes @ 0x2
	global	??_write
??_write:	; 0 bytes @ 0x2
	global	Lcd8_Command@com
Lcd8_Command@com:	; 1 bytes @ 0x2
	ds	1
	global	??_Lcd8_Init
??_Lcd8_Init:	; 0 bytes @ 0x3
	global	?_Lcd8_Write
?_Lcd8_Write:	; 0 bytes @ 0x3
	global	Lcd8_Write@lr
Lcd8_Write@lr:	; 1 bytes @ 0x3
	ds	1
	global	??_Lcd8_Write
??_Lcd8_Write:	; 0 bytes @ 0x4
	global	Lcd8_Write@com
Lcd8_Write@com:	; 1 bytes @ 0x4
	ds	1
	global	?_Lcd8_Display
?_Lcd8_Display:	; 0 bytes @ 0x5
	global	Lcd8_Display@word
Lcd8_Display@word:	; 1 bytes @ 0x5
	ds	1
	global	Lcd8_Display@n
Lcd8_Display@n:	; 2 bytes @ 0x6
	ds	2
	global	??_Lcd8_Display
??_Lcd8_Display:	; 0 bytes @ 0x8
	ds	2
	global	Lcd8_Display@com
Lcd8_Display@com:	; 1 bytes @ 0xA
	ds	1
	global	Lcd8_Display@Lcd_i
Lcd8_Display@Lcd_i:	; 1 bytes @ 0xB
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0xC
	ds	1
;;Data sizes: Strings 13, constant 0, data 5, bss 3, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      14
;; BANK0           80      0       7
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; Lcd8_Display@word	PTR const unsigned char  size(1) Largest target is 13
;;		 -> STR_1(CODE[13]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_Lcd8_Display
;;   _Lcd8_Display->_Lcd8_Write
;;   _Lcd8_Write->_Lcd8_Command
;;   _Lcd8_Init->_Lcd8_Command
;;   _Lcd8_Command->_Delay
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 1     1      0     288
;;                                             12 COMMON     1     1      0
;;                          _Lcd8_Init
;;                       _Lcd8_Display
;;                                _cmd
;;                              _write
;; ---------------------------------------------------------------------------------
;; (1) _Lcd8_Display                                         7     4      3     244
;;                                              5 COMMON     7     4      3
;;                         _Lcd8_Write
;; ---------------------------------------------------------------------------------
;; (2) _Lcd8_Write                                           2     1      1     110
;;                                              3 COMMON     2     1      1
;;                       _Lcd8_Command
;;                              _Delay
;; ---------------------------------------------------------------------------------
;; (1) _Lcd8_Init                                            0     0      0      44
;;                       _Lcd8_Command
;; ---------------------------------------------------------------------------------
;; (3) _Lcd8_Command                                         1     1      0      44
;;                                              2 COMMON     1     1      0
;;                              _Delay
;; ---------------------------------------------------------------------------------
;; (1) _write                                                2     0      2       0
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; (1) _cmd                                                  2     0      2       0
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; (3) _Delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Lcd8_Init
;;     _Lcd8_Command
;;       _Delay
;;   _Lcd8_Display
;;     _Lcd8_Write
;;       _Lcd8_Command
;;         _Delay
;;       _Delay
;;   _cmd
;;   _write
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      19      12        0.0%
;;ABS                  0      0      15       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       4       2        0.0%
;;BANK0               50      0       7       5        8.8%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      D       E       1      100.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 18 in file "E:\pic program\eeprom password\password.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Lcd8_Init
;;		_Lcd8_Display
;;		_cmd
;;		_write
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\pic program\eeprom password\password.c"
	line	18
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [allreg]
	line	19
	
l3128:	
;password.c: 19: TRISC = 0xC0;
	movlw	(0C0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	20
	
l3130:	
;password.c: 20: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	21
	
l3132:	
;password.c: 21: TRISB = 0xff;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	line	22
	
l3134:	
;password.c: 22: Lcd8_Init();
	fcall	_Lcd8_Init
	line	23
	
l3136:	
;password.c: 23: Lcd8_Display(0x80,"ENTERED KEY:",12);
	movlw	((STR_1-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(0Ch)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(0Ch)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(080h)
	fcall	_Lcd8_Display
	goto	l3138
	line	25
;password.c: 25: while(1)
	
l735:	
	line	27
	
l3138:	
;password.c: 26: {
;password.c: 27: cmd(0x8c);
	movlw	low(08Ch)
	movwf	(?_cmd)
	movlw	high(08Ch)
	movwf	((?_cmd))+1
	fcall	_cmd
	line	28
	
l3140:	
;password.c: 28: RB0 = 0; RB1 = 1; RB2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	
l3142:	
	bsf	(49/8),(49)&7
	
l3144:	
	bsf	(50/8),(50)&7
	line	29
	
l3146:	
;password.c: 29: if(!RB3){while(!RB3);write('1');}
	btfsc	(51/8),(51)&7
	goto	u2501
	goto	u2500
u2501:
	goto	l3152
u2500:
	goto	l737
	
l3148:	
	goto	l737
	
l738:	
	
l737:	
	btfss	(51/8),(51)&7
	goto	u2511
	goto	u2510
u2511:
	goto	l737
u2510:
	goto	l3150
	
l739:	
	
l3150:	
	movlw	low(031h)
	movwf	(?_write)
	movlw	high(031h)
	movwf	((?_write))+1
	fcall	_write
	goto	l3152
	
l736:	
	line	30
	
l3152:	
;password.c: 30: if(!RB4){while(!RB4);write('4');}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(52/8),(52)&7
	goto	u2521
	goto	u2520
u2521:
	goto	l3158
u2520:
	goto	l741
	
l3154:	
	goto	l741
	
l742:	
	
l741:	
	btfss	(52/8),(52)&7
	goto	u2531
	goto	u2530
u2531:
	goto	l741
u2530:
	goto	l3156
	
l743:	
	
l3156:	
	movlw	low(034h)
	movwf	(?_write)
	movlw	high(034h)
	movwf	((?_write))+1
	fcall	_write
	goto	l3158
	
l740:	
	line	31
	
l3158:	
;password.c: 31: if(!RB5){while(!RB5);write('7');}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(53/8),(53)&7
	goto	u2541
	goto	u2540
u2541:
	goto	l3164
u2540:
	goto	l745
	
l3160:	
	goto	l745
	
l746:	
	
l745:	
	btfss	(53/8),(53)&7
	goto	u2551
	goto	u2550
u2551:
	goto	l745
u2550:
	goto	l3162
	
l747:	
	
l3162:	
	movlw	low(037h)
	movwf	(?_write)
	movlw	high(037h)
	movwf	((?_write))+1
	fcall	_write
	goto	l3164
	
l744:	
	line	32
	
l3164:	
;password.c: 32: if(!RB6){while(!RB6);write('*');}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(54/8),(54)&7
	goto	u2561
	goto	u2560
u2561:
	goto	l3170
u2560:
	goto	l749
	
l3166:	
	goto	l749
	
l750:	
	
l749:	
	btfss	(54/8),(54)&7
	goto	u2571
	goto	u2570
u2571:
	goto	l749
u2570:
	goto	l3168
	
l751:	
	
l3168:	
	movlw	low(02Ah)
	movwf	(?_write)
	movlw	high(02Ah)
	movwf	((?_write))+1
	fcall	_write
	goto	l3170
	
l748:	
	line	33
	
l3170:	
;password.c: 33: RB0 = 1; RB1 = 0; RB2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	
l3172:	
	bcf	(49/8),(49)&7
	
l3174:	
	bsf	(50/8),(50)&7
	line	34
	
l3176:	
;password.c: 34: if(!RB3){while(!RB3);write('2');}
	btfsc	(51/8),(51)&7
	goto	u2581
	goto	u2580
u2581:
	goto	l3182
u2580:
	goto	l753
	
l3178:	
	goto	l753
	
l754:	
	
l753:	
	btfss	(51/8),(51)&7
	goto	u2591
	goto	u2590
u2591:
	goto	l753
u2590:
	goto	l3180
	
l755:	
	
l3180:	
	movlw	low(032h)
	movwf	(?_write)
	movlw	high(032h)
	movwf	((?_write))+1
	fcall	_write
	goto	l3182
	
l752:	
	line	35
	
l3182:	
;password.c: 35: if(!RB4){while(!RB4);write('5');}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(52/8),(52)&7
	goto	u2601
	goto	u2600
u2601:
	goto	l3188
u2600:
	goto	l757
	
l3184:	
	goto	l757
	
l758:	
	
l757:	
	btfss	(52/8),(52)&7
	goto	u2611
	goto	u2610
u2611:
	goto	l757
u2610:
	goto	l3186
	
l759:	
	
l3186:	
	movlw	low(035h)
	movwf	(?_write)
	movlw	high(035h)
	movwf	((?_write))+1
	fcall	_write
	goto	l3188
	
l756:	
	line	36
	
l3188:	
;password.c: 36: if(!RB5){while(!RB5);write('8');}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(53/8),(53)&7
	goto	u2621
	goto	u2620
u2621:
	goto	l3194
u2620:
	goto	l761
	
l3190:	
	goto	l761
	
l762:	
	
l761:	
	btfss	(53/8),(53)&7
	goto	u2631
	goto	u2630
u2631:
	goto	l761
u2630:
	goto	l3192
	
l763:	
	
l3192:	
	movlw	low(038h)
	movwf	(?_write)
	movlw	high(038h)
	movwf	((?_write))+1
	fcall	_write
	goto	l3194
	
l760:	
	line	37
	
l3194:	
;password.c: 37: if(!RB6){while(!RB6);write('0');}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(54/8),(54)&7
	goto	u2641
	goto	u2640
u2641:
	goto	l3200
u2640:
	goto	l765
	
l3196:	
	goto	l765
	
l766:	
	
l765:	
	btfss	(54/8),(54)&7
	goto	u2651
	goto	u2650
u2651:
	goto	l765
u2650:
	goto	l3198
	
l767:	
	
l3198:	
	movlw	low(030h)
	movwf	(?_write)
	movlw	high(030h)
	movwf	((?_write))+1
	fcall	_write
	goto	l3200
	
l764:	
	line	38
	
l3200:	
;password.c: 38: RB0 = 1; RB1 = 1; RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	
l3202:	
	bsf	(49/8),(49)&7
	
l3204:	
	bcf	(50/8),(50)&7
	line	39
	
l3206:	
;password.c: 39: if(!RB3){while(!RB3);write('3');}
	btfsc	(51/8),(51)&7
	goto	u2661
	goto	u2660
u2661:
	goto	l3212
u2660:
	goto	l769
	
l3208:	
	goto	l769
	
l770:	
	
l769:	
	btfss	(51/8),(51)&7
	goto	u2671
	goto	u2670
u2671:
	goto	l769
u2670:
	goto	l3210
	
l771:	
	
l3210:	
	movlw	low(033h)
	movwf	(?_write)
	movlw	high(033h)
	movwf	((?_write))+1
	fcall	_write
	goto	l3212
	
l768:	
	line	40
	
l3212:	
;password.c: 40: if(!RB4){while(!RB4);write('6');}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(52/8),(52)&7
	goto	u2681
	goto	u2680
u2681:
	goto	l3218
u2680:
	goto	l773
	
l3214:	
	goto	l773
	
l774:	
	
l773:	
	btfss	(52/8),(52)&7
	goto	u2691
	goto	u2690
u2691:
	goto	l773
u2690:
	goto	l3216
	
l775:	
	
l3216:	
	movlw	low(036h)
	movwf	(?_write)
	movlw	high(036h)
	movwf	((?_write))+1
	fcall	_write
	goto	l3218
	
l772:	
	line	41
	
l3218:	
;password.c: 41: if(!RB5){while(!RB5);write('9');}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(53/8),(53)&7
	goto	u2701
	goto	u2700
u2701:
	goto	l3224
u2700:
	goto	l777
	
l3220:	
	goto	l777
	
l778:	
	
l777:	
	btfss	(53/8),(53)&7
	goto	u2711
	goto	u2710
u2711:
	goto	l777
u2710:
	goto	l3222
	
l779:	
	
l3222:	
	movlw	low(039h)
	movwf	(?_write)
	movlw	high(039h)
	movwf	((?_write))+1
	fcall	_write
	goto	l3224
	
l776:	
	line	42
	
l3224:	
;password.c: 42: if(!RB6){while(!RB6);write('#');}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(54/8),(54)&7
	goto	u2721
	goto	u2720
u2721:
	goto	l3138
u2720:
	goto	l781
	
l3226:	
	goto	l781
	
l782:	
	
l781:	
	btfss	(54/8),(54)&7
	goto	u2731
	goto	u2730
u2731:
	goto	l781
u2730:
	goto	l3228
	
l783:	
	
l3228:	
	movlw	low(023h)
	movwf	(?_write)
	movlw	high(023h)
	movwf	((?_write))+1
	fcall	_write
	goto	l3138
	
l780:	
	goto	l3138
	line	43
	
l784:	
	line	25
	goto	l3138
	
l785:	
	line	44
;password.c: 43: }
;password.c: 44: for(a=0; b[a]=4; a++)
	clrf	(_a)
	goto	l3232
	line	45
	
l787:	
	line	44
	
l3230:	
;password.c: 45: {
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_a),f
	goto	l3232
	
l786:	
	
l3232:	
	movlw	(04h)
	movwf	(??_main+0)+0
	movf	(_a),w
	addlw	_b&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	goto	l3230
	
l788:	
	line	48
	
l789:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Lcd8_Display
psect	text167,local,class=CODE,delta=2
global __ptext167
__ptext167:

;; *************** function _Lcd8_Display *****************
;; Defined at:
;;		line 52 in file "E:\pic program\eeprom password\pic_lcd8.h"
;; Parameters:    Size  Location     Type
;;  com             1    wreg     unsigned char 
;;  word            1    5[COMMON] PTR const unsigned char 
;;		 -> STR_1(13), 
;;  n               2    6[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  com             1   10[COMMON] unsigned char 
;;  Lcd_i           1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Lcd8_Write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text167
	file	"E:\pic program\eeprom password\pic_lcd8.h"
	line	52
	global	__size_of_Lcd8_Display
	__size_of_Lcd8_Display	equ	__end_of_Lcd8_Display-_Lcd8_Display
	
_Lcd8_Display:	
	opt	stack 4
; Regs used in _Lcd8_Display: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Lcd8_Display@com stored from wreg
	line	55
	movwf	(Lcd8_Display@com)
	
l3120:	
;pic_lcd8.h: 53: unsigned char Lcd_i;
;pic_lcd8.h: 55: for(Lcd_i=0;Lcd_i<n;Lcd_i++)
	clrf	(Lcd8_Display@Lcd_i)
	goto	l3126
	line	56
	
l715:	
	line	57
	
l3122:	
;pic_lcd8.h: 56: {
;pic_lcd8.h: 57: Lcd8_Write(com+Lcd_i,word[Lcd_i]);
	movf	(Lcd8_Display@Lcd_i),w
	addwf	(Lcd8_Display@word),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_Lcd8_Display+0)+0
	movf	(??_Lcd8_Display+0)+0,w
	movwf	(?_Lcd8_Write)
	movf	(Lcd8_Display@Lcd_i),w
	addwf	(Lcd8_Display@com),w
	fcall	_Lcd8_Write
	line	55
	
l3124:	
	movlw	(01h)
	movwf	(??_Lcd8_Display+0)+0
	movf	(??_Lcd8_Display+0)+0,w
	addwf	(Lcd8_Display@Lcd_i),f
	goto	l3126
	
l714:	
	
l3126:	
	movf	(Lcd8_Display@Lcd_i),w
	movwf	(??_Lcd8_Display+0)+0
	clrf	(??_Lcd8_Display+0)+0+1
	movf	(Lcd8_Display@n+1),w
	subwf	1+(??_Lcd8_Display+0)+0,w
	skipz
	goto	u2495
	movf	(Lcd8_Display@n),w
	subwf	0+(??_Lcd8_Display+0)+0,w
u2495:
	skipc
	goto	u2491
	goto	u2490
u2491:
	goto	l3122
u2490:
	goto	l717
	
l716:	
	line	59
	
l717:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Display
	__end_of_Lcd8_Display:
;; =============== function _Lcd8_Display ends ============

	signat	_Lcd8_Display,12408
	global	_Lcd8_Write
psect	text168,local,class=CODE,delta=2
global __ptext168
__ptext168:

;; *************** function _Lcd8_Write *****************
;; Defined at:
;;		line 40 in file "E:\pic program\eeprom password\pic_lcd8.h"
;; Parameters:    Size  Location     Type
;;  com             1    wreg     unsigned char 
;;  lr              1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  com             1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Lcd8_Command
;;		_Delay
;; This function is called by:
;;		_Lcd8_Display
;;		_Lcd8_Decimal2
;;		_Lcd8_Decimal3
;;		_Lcd8_Decimal4
;; This function uses a non-reentrant model
;;
psect	text168
	file	"E:\pic program\eeprom password\pic_lcd8.h"
	line	40
	global	__size_of_Lcd8_Write
	__size_of_Lcd8_Write	equ	__end_of_Lcd8_Write-_Lcd8_Write
	
_Lcd8_Write:	
	opt	stack 4
; Regs used in _Lcd8_Write: [wreg+status,2+status,0+pclath+cstack]
;Lcd8_Write@com stored from wreg
	movwf	(Lcd8_Write@com)
	line	41
	
l3106:	
;pic_lcd8.h: 41: Lcd8_Command(com);
	movf	(Lcd8_Write@com),w
	fcall	_Lcd8_Command
	line	43
	
l3108:	
;pic_lcd8.h: 43: PORTD=lr;
	movf	(Lcd8_Write@lr),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	44
	
l3110:	
;pic_lcd8.h: 44: Lcd_en=1;
	bsf	(61/8),(61)&7
	line	45
	
l3112:	
;pic_lcd8.h: 45: Lcd_rs=1;
	bsf	(60/8),(60)&7
	line	46
	
l3114:	
;pic_lcd8.h: 46: Delay(125);
	movlw	low(07Dh)
	movwf	(?_Delay)
	movlw	high(07Dh)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	47
	
l3116:	
;pic_lcd8.h: 47: Lcd_en=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	line	48
	
l3118:	
;pic_lcd8.h: 48: Delay(125);
	movlw	low(07Dh)
	movwf	(?_Delay)
	movlw	high(07Dh)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	49
	
l711:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Write
	__end_of_Lcd8_Write:
;; =============== function _Lcd8_Write ends ============

	signat	_Lcd8_Write,8312
	global	_Lcd8_Init
psect	text169,local,class=CODE,delta=2
global __ptext169
__ptext169:

;; *************** function _Lcd8_Init *****************
;; Defined at:
;;		line 22 in file "E:\pic program\eeprom password\pic_lcd8.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Lcd8_Command
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text169
	file	"E:\pic program\eeprom password\pic_lcd8.h"
	line	22
	global	__size_of_Lcd8_Init
	__size_of_Lcd8_Init	equ	__end_of_Lcd8_Init-_Lcd8_Init
	
_Lcd8_Init:	
	opt	stack 5
; Regs used in _Lcd8_Init: [wreg+status,2+status,0+pclath+cstack]
	line	23
	
l3104:	
;pic_lcd8.h: 23: Lcd8_Command(0x38);
	movlw	(038h)
	fcall	_Lcd8_Command
	line	24
;pic_lcd8.h: 24: Lcd8_Command(0x06);
	movlw	(06h)
	fcall	_Lcd8_Command
	line	25
;pic_lcd8.h: 25: Lcd8_Command(0x0c);
	movlw	(0Ch)
	fcall	_Lcd8_Command
	line	26
;pic_lcd8.h: 26: Lcd8_Command(0x01);
	movlw	(01h)
	fcall	_Lcd8_Command
	line	27
	
l705:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Init
	__end_of_Lcd8_Init:
;; =============== function _Lcd8_Init ends ============

	signat	_Lcd8_Init,88
	global	_Lcd8_Command
psect	text170,local,class=CODE,delta=2
global __ptext170
__ptext170:

;; *************** function _Lcd8_Command *****************
;; Defined at:
;;		line 30 in file "E:\pic program\eeprom password\pic_lcd8.h"
;; Parameters:    Size  Location     Type
;;  com             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  com             1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Delay
;; This function is called by:
;;		_Lcd8_Init
;;		_Lcd8_Write
;; This function uses a non-reentrant model
;;
psect	text170
	file	"E:\pic program\eeprom password\pic_lcd8.h"
	line	30
	global	__size_of_Lcd8_Command
	__size_of_Lcd8_Command	equ	__end_of_Lcd8_Command-_Lcd8_Command
	
_Lcd8_Command:	
	opt	stack 4
; Regs used in _Lcd8_Command: [wreg+status,2+status,0+pclath+cstack]
;Lcd8_Command@com stored from wreg
	movwf	(Lcd8_Command@com)
	line	31
	
l3092:	
;pic_lcd8.h: 31: PORTD=com;
	movf	(Lcd8_Command@com),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	32
	
l3094:	
;pic_lcd8.h: 32: Lcd_en=1;
	bsf	(61/8),(61)&7
	line	33
	
l3096:	
;pic_lcd8.h: 33: Lcd_rs=0;
	bcf	(60/8),(60)&7
	line	34
	
l3098:	
;pic_lcd8.h: 34: Delay(125);
	movlw	low(07Dh)
	movwf	(?_Delay)
	movlw	high(07Dh)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	35
	
l3100:	
;pic_lcd8.h: 35: Lcd_en=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	line	36
	
l3102:	
;pic_lcd8.h: 36: Delay(125);
	movlw	low(07Dh)
	movwf	(?_Delay)
	movlw	high(07Dh)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	37
	
l708:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Command
	__end_of_Lcd8_Command:
;; =============== function _Lcd8_Command ends ============

	signat	_Lcd8_Command,4216
	global	_write
	global	_cmd
	global	_Delay
psect	text171,local,class=CODE,delta=2
global __ptext171
__ptext171:

;; *************** function _Delay *****************
;; Defined at:
;;		line 107 in file "E:\pic program\eeprom password\pic_lcd8.h"
;; Parameters:    Size  Location     Type
;;  del             2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd8_Command
;;		_Lcd8_Write
;; This function uses a non-reentrant model
;;
psect	text171
	file	"E:\pic program\eeprom password\pic_lcd8.h"
	line	107
	global	__size_of_Delay
	__size_of_Delay	equ	__end_of_Delay-_Delay
	
_Delay:	
	opt	stack 5
; Regs used in _Delay: [wreg]
	line	108
	
l3082:	
;pic_lcd8.h: 108: while(del--);
	goto	l3084
	
l730:	
	goto	l3084
	
l729:	
	
l3084:	
	movlw	low(01h)
	subwf	(Delay@del),f
	movlw	high(01h)
	skipc
	decf	(Delay@del+1),f
	subwf	(Delay@del+1),f
	movlw	high(0FFFFh)
	xorwf	((Delay@del+1)),w
	skipz
	goto	u2485
	movlw	low(0FFFFh)
	xorwf	((Delay@del)),w
u2485:

	skipz
	goto	u2481
	goto	u2480
u2481:
	goto	l3084
u2480:
	goto	l732
	
l731:	
	line	109
	
l732:	
	return
	opt stack 0
GLOBAL	__end_of_Delay
	__end_of_Delay:
;; =============== function _Delay ends ============

	signat	_Delay,4216
psect	text172,local,class=CODE,delta=2
global __ptext172
__ptext172:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
