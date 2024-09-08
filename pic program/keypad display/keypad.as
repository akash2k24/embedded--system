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
# 3 "E:\pic program\keypad display\keypad.c"
	psect config,class=CONFIG,delta=2 ;#
# 3 "E:\pic program\keypad display\keypad.c"
	dw 0xFFFE & 0xFFFB & 0xFFF7 & 0xFFBF & 0xFF7F & 0xFFFF & 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_Lcd8_Init
	FNCALL	_main,_Lcd8_Display
	FNCALL	_main,_Delay
	FNCALL	_main,_Lcd8_Command
	FNCALL	_Lcd8_Display,_Lcd8_Write
	FNCALL	_Lcd8_Write,_Lcd8_Command
	FNCALL	_Lcd8_Write,_Delay
	FNCALL	_Lcd8_Init,_Lcd8_Command
	FNCALL	_Lcd8_Command,_Delay
	FNROOT	_main
	global	_c1
	global	_c2
	global	_c3
	global	_r1
	global	_r2
	global	_r3
	global	_r4
	global	_PORTD
psect	text166,local,class=CODE,delta=2
global __ptext166
__ptext166:
_PORTD	set	8
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_Lcd_en
_Lcd_en	set	61
	global	_Lcd_rs
_Lcd_rs	set	60
	global	_TRISB
_TRISB	set	134
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
	retlw	42	;'*'
	retlw	42	;'*'
	retlw	75	;'K'
	retlw	69	;'E'
	retlw	89	;'Y'
	retlw	80	;'P'
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	32	;' '
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	42	;'*'
	retlw	42	;'*'
	retlw	0
psect	strings
	
STR_10:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	57	;'9'
	retlw	0
psect	strings
	
STR_9:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	56	;'8'
	retlw	0
psect	strings
	
STR_8:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	55	;'7'
	retlw	0
psect	strings
	
STR_7:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	54	;'6'
	retlw	0
psect	strings
	
STR_6:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	53	;'5'
	retlw	0
psect	strings
	
STR_13:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	35	;'#'
	retlw	0
psect	strings
	
STR_5:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	52	;'4'
	retlw	0
psect	strings
	
STR_12:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_4:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	51	;'3'
	retlw	0
psect	strings
	
STR_11:	
	retlw	32	;' '
	retlw	42	;'*'
	retlw	0
psect	strings
	
STR_3:	
	retlw	32	;' '
	retlw	50	;'2'
	retlw	0
psect	strings
	
STR_2:	
	retlw	49	;'1'
	retlw	0
psect	strings
	file	"keypad.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_c1:
       ds      2

_c2:
       ds      2

_c3:
       ds      2

_r1:
       ds      2

_r2:
       ds      2

_r3:
       ds      2

_r4:
       ds      2

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
	clrf	((__pbssBANK0)+10)&07Fh
	clrf	((__pbssBANK0)+11)&07Fh
	clrf	((__pbssBANK0)+12)&07Fh
	clrf	((__pbssBANK0)+13)&07Fh
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
	global	Delay@del
Delay@del:	; 2 bytes @ 0x0
	ds	2
	global	??_Lcd8_Command
??_Lcd8_Command:	; 0 bytes @ 0x2
	global	??_Delay
??_Delay:	; 0 bytes @ 0x2
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
;;Data sizes: Strings 83, constant 0, data 0, bss 14, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      13
;; BANK0           80      0      14
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; Lcd8_Display@word	PTR const unsigned char  size(1) Largest target is 17
;;		 -> STR_13(CODE[5]), STR_12(CODE[4]), STR_11(CODE[3]), STR_10(CODE[10]), 
;;		 -> STR_9(CODE[9]), STR_8(CODE[8]), STR_7(CODE[7]), STR_6(CODE[6]), 
;;		 -> STR_5(CODE[5]), STR_4(CODE[4]), STR_3(CODE[3]), STR_2(CODE[2]), 
;;		 -> STR_1(CODE[17]), 
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
;; (0) _main                                                 1     1      0     354
;;                                             12 COMMON     1     1      0
;;                          _Lcd8_Init
;;                       _Lcd8_Display
;;                              _Delay
;;                       _Lcd8_Command
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
;; (1) _Lcd8_Command                                         1     1      0      44
;;                                              2 COMMON     1     1      0
;;                              _Delay
;; ---------------------------------------------------------------------------------
;; (2) _Delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
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
;;   _Delay
;;   _Lcd8_Command
;;     _Delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      D       D       1       92.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       4       2        0.0%
;;ABS                  0      0      1B       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       E       5       17.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      1F      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 20 in file "E:\pic program\keypad display\keypad.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;;		_Delay
;;		_Lcd8_Command
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\pic program\keypad display\keypad.c"
	line	20
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	22
	
l3111:	
;keypad.c: 22: TRISD=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	23
	
l3113:	
;keypad.c: 23: TRISB=0xff;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	line	25
	
l3115:	
;keypad.c: 25: Lcd8_Init();
	fcall	_Lcd8_Init
	line	26
	
l3117:	
;keypad.c: 26: Lcd8_Display(0x80,"**KEYPAD  TEST**",16);
	movlw	((STR_1-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(010h)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(010h)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(080h)
	fcall	_Lcd8_Display
	line	27
	
l3119:	
;keypad.c: 27: Delay(65000);Delay(65000);
	movlw	low(0FDE8h)
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	
l3121:	
	movlw	low(0FDE8h)
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	28
	
l3123:	
;keypad.c: 28: Lcd8_Command(0x01);
	movlw	(01h)
	fcall	_Lcd8_Command
	goto	l3125
	line	29
;keypad.c: 29: while(1)
	
l737:	
	line	31
	
l3125:	
;keypad.c: 30: {
;keypad.c: 31: r1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_r1)
	clrf	(_r1+1)
	line	32
	
l3127:	
;keypad.c: 32: if(c1==0)
	movf	((_c1+1)),w
	iorwf	((_c1)),w
	skipz
	goto	u2381
	goto	u2380
u2381:
	goto	l3135
u2380:
	line	34
	
l3129:	
;keypad.c: 33: {
;keypad.c: 34: Lcd8_Display(0x80,"1",1);
	movlw	((STR_2-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(01h)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(01h)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(080h)
	fcall	_Lcd8_Display
	line	35
	
l3131:	
;keypad.c: 35: Delay(65000);Delay(65000);
	movlw	low(0FDE8h)
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	
l3133:	
	movlw	low(0FDE8h)
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	goto	l3135
	line	36
	
l738:	
	line	37
	
l3135:	
;keypad.c: 36: }
;keypad.c: 37: if(c2==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_c2+1)),w
	iorwf	((_c2)),w
	skipz
	goto	u2391
	goto	u2390
u2391:
	goto	l3143
u2390:
	line	39
	
l3137:	
;keypad.c: 38: {
;keypad.c: 39: Lcd8_Display(0x80," 2",2);
	movlw	((STR_3-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(02h)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(02h)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(080h)
	fcall	_Lcd8_Display
	line	40
	
l3139:	
;keypad.c: 40: Delay(65000);Delay(65000);
	movlw	low(0FDE8h)
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	
l3141:	
	movlw	low(0FDE8h)
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	goto	l3143
	line	41
	
l739:	
	line	42
	
l3143:	
;keypad.c: 41: }
;keypad.c: 42: if(c3==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_c3+1)),w
	iorwf	((_c3)),w
	skipz
	goto	u2401
	goto	u2400
u2401:
	goto	l3151
u2400:
	line	44
	
l3145:	
;keypad.c: 43: {
;keypad.c: 44: Lcd8_Display(0x80,"  3",3);
	movlw	((STR_4-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(03h)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(03h)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(080h)
	fcall	_Lcd8_Display
	line	45
	
l3147:	
;keypad.c: 45: Delay(65000);Delay(65000);
	movlw	low(0FDE8h)
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	
l3149:	
	movlw	low(0FDE8h)
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	goto	l3151
	line	46
	
l740:	
	line	47
	
l3151:	
;keypad.c: 46: }
;keypad.c: 47: r1=1;r2=0;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_r1)
	movlw	high(01h)
	movwf	((_r1))+1
	
l3153:	
	clrf	(_r2)
	clrf	(_r2+1)
	line	48
	
l3155:	
;keypad.c: 48: if(c1==0)
	movf	((_c1+1)),w
	iorwf	((_c1)),w
	skipz
	goto	u2411
	goto	u2410
u2411:
	goto	l3163
u2410:
	line	50
	
l3157:	
;keypad.c: 49: {
;keypad.c: 50: Lcd8_Display(0x80,"   4",4);
	movlw	((STR_5-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(04h)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(04h)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(080h)
	fcall	_Lcd8_Display
	line	51
	
l3159:	
;keypad.c: 51: Delay(65000);Delay(65000);
	movlw	low(0FDE8h)
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	
l3161:	
	movlw	low(0FDE8h)
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	goto	l3163
	line	52
	
l741:	
	line	53
	
l3163:	
;keypad.c: 52: }
;keypad.c: 53: if(c2==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_c2+1)),w
	iorwf	((_c2)),w
	skipz
	goto	u2421
	goto	u2420
u2421:
	goto	l3171
u2420:
	line	55
	
l3165:	
;keypad.c: 54: {
;keypad.c: 55: Lcd8_Display(0x80,"    5",5);
	movlw	((STR_6-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(05h)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(05h)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(080h)
	fcall	_Lcd8_Display
	line	56
	
l3167:	
;keypad.c: 56: Delay(65000);Delay(65000);
	movlw	low(0FDE8h)
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	
l3169:	
	movlw	low(0FDE8h)
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	goto	l3171
	line	57
	
l742:	
	line	58
	
l3171:	
;keypad.c: 57: }
;keypad.c: 58: if(c3==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_c3+1)),w
	iorwf	((_c3)),w
	skipz
	goto	u2431
	goto	u2430
u2431:
	goto	l3179
u2430:
	line	60
	
l3173:	
;keypad.c: 59: {
;keypad.c: 60: Lcd8_Display(0x80,"     6",6);
	movlw	((STR_7-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(06h)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(06h)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(080h)
	fcall	_Lcd8_Display
	line	61
	
l3175:	
;keypad.c: 61: Delay(65000);Delay(65000);
	movlw	low(0FDE8h)
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	
l3177:	
	movlw	low(0FDE8h)
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	goto	l3179
	line	62
	
l743:	
	line	63
	
l3179:	
;keypad.c: 62: }
;keypad.c: 63: r2=1;r3=0;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_r2)
	movlw	high(01h)
	movwf	((_r2))+1
	
l3181:	
	clrf	(_r3)
	clrf	(_r3+1)
	line	64
	
l3183:	
;keypad.c: 64: if(c1==0)
	movf	((_c1+1)),w
	iorwf	((_c1)),w
	skipz
	goto	u2441
	goto	u2440
u2441:
	goto	l3191
u2440:
	line	66
	
l3185:	
;keypad.c: 65: {
;keypad.c: 66: Lcd8_Display(0x80,"      7",7);
	movlw	((STR_8-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(07h)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(07h)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(080h)
	fcall	_Lcd8_Display
	line	67
	
l3187:	
;keypad.c: 67: Delay(65000);Delay(65000);
	movlw	low(0FDE8h)
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	
l3189:	
	movlw	low(0FDE8h)
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	goto	l3191
	line	68
	
l744:	
	line	69
	
l3191:	
;keypad.c: 68: }
;keypad.c: 69: if(c2==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_c2+1)),w
	iorwf	((_c2)),w
	skipz
	goto	u2451
	goto	u2450
u2451:
	goto	l3199
u2450:
	line	71
	
l3193:	
;keypad.c: 70: {
;keypad.c: 71: Lcd8_Display(0x80,"       8",8);
	movlw	((STR_9-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(08h)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(08h)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(080h)
	fcall	_Lcd8_Display
	line	72
	
l3195:	
;keypad.c: 72: Delay(65000);Delay(65000);
	movlw	low(0FDE8h)
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	
l3197:	
	movlw	low(0FDE8h)
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	goto	l3199
	line	73
	
l745:	
	line	74
	
l3199:	
;keypad.c: 73: }
;keypad.c: 74: if(c3==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_c3+1)),w
	iorwf	((_c3)),w
	skipz
	goto	u2461
	goto	u2460
u2461:
	goto	l3207
u2460:
	line	76
	
l3201:	
;keypad.c: 75: {
;keypad.c: 76: Lcd8_Display(0x80,"        9",9);
	movlw	((STR_10-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(09h)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(09h)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(080h)
	fcall	_Lcd8_Display
	line	77
	
l3203:	
;keypad.c: 77: Delay(65000);Delay(65000);
	movlw	low(0FDE8h)
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	
l3205:	
	movlw	low(0FDE8h)
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	goto	l3207
	line	78
	
l746:	
	line	79
	
l3207:	
;keypad.c: 78: }
;keypad.c: 79: r3=1;r4=0;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_r3)
	movlw	high(01h)
	movwf	((_r3))+1
	
l3209:	
	clrf	(_r4)
	clrf	(_r4+1)
	line	80
	
l3211:	
;keypad.c: 80: if(c1==0)
	movf	((_c1+1)),w
	iorwf	((_c1)),w
	skipz
	goto	u2471
	goto	u2470
u2471:
	goto	l3219
u2470:
	line	82
	
l3213:	
;keypad.c: 81: {
;keypad.c: 82: Lcd8_Display(0xc0," *",2);
	movlw	((STR_11-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(02h)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(02h)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(0C0h)
	fcall	_Lcd8_Display
	line	83
	
l3215:	
;keypad.c: 83: Delay(65000);Delay(65000);
	movlw	low(0FDE8h)
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	
l3217:	
	movlw	low(0FDE8h)
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	goto	l3219
	line	84
	
l747:	
	line	85
	
l3219:	
;keypad.c: 84: }
;keypad.c: 85: if(c2==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_c2+1)),w
	iorwf	((_c2)),w
	skipz
	goto	u2481
	goto	u2480
u2481:
	goto	l3227
u2480:
	line	87
	
l3221:	
;keypad.c: 86: {
;keypad.c: 87: Lcd8_Display(0xc0,"  0",3);
	movlw	((STR_12-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(03h)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(03h)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(0C0h)
	fcall	_Lcd8_Display
	line	88
	
l3223:	
;keypad.c: 88: Delay(65000);Delay(65000);
	movlw	low(0FDE8h)
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	
l3225:	
	movlw	low(0FDE8h)
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	goto	l3227
	line	89
	
l748:	
	line	90
	
l3227:	
;keypad.c: 89: }
;keypad.c: 90: if(c3==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_c3+1)),w
	iorwf	((_c3)),w
	skipz
	goto	u2491
	goto	u2490
u2491:
	goto	l3235
u2490:
	line	92
	
l3229:	
;keypad.c: 91: {
;keypad.c: 92: Lcd8_Display(0xc0,"   #",4);
	movlw	((STR_13-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(04h)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(04h)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(0C0h)
	fcall	_Lcd8_Display
	line	93
	
l3231:	
;keypad.c: 93: Delay(65000);Delay(65000);
	movlw	low(0FDE8h)
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	
l3233:	
	movlw	low(0FDE8h)
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	goto	l3235
	line	94
	
l749:	
	line	95
	
l3235:	
;keypad.c: 94: }
;keypad.c: 95: r4=1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_r4)
	movlw	high(01h)
	movwf	((_r4))+1
	goto	l3125
	line	96
	
l750:	
	line	29
	goto	l3125
	
l751:	
	line	97
	
l752:	
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
;;		line 52 in file "E:\pic program\keypad display\pic_lcd8.h"
;; Parameters:    Size  Location     Type
;;  com             1    wreg     unsigned char 
;;  word            1    5[COMMON] PTR const unsigned char 
;;		 -> STR_13(5), STR_12(4), STR_11(3), STR_10(10), 
;;		 -> STR_9(9), STR_8(8), STR_7(7), STR_6(6), 
;;		 -> STR_5(5), STR_4(4), STR_3(3), STR_2(2), 
;;		 -> STR_1(17), 
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
	file	"E:\pic program\keypad display\pic_lcd8.h"
	line	52
	global	__size_of_Lcd8_Display
	__size_of_Lcd8_Display	equ	__end_of_Lcd8_Display-_Lcd8_Display
	
_Lcd8_Display:	
	opt	stack 4
; Regs used in _Lcd8_Display: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Lcd8_Display@com stored from wreg
	line	55
	movwf	(Lcd8_Display@com)
	
l3103:	
;pic_lcd8.h: 53: unsigned char Lcd_i;
;pic_lcd8.h: 55: for(Lcd_i=0;Lcd_i<n;Lcd_i++)
	clrf	(Lcd8_Display@Lcd_i)
	goto	l3109
	line	56
	
l717:	
	line	57
	
l3105:	
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
	
l3107:	
	movlw	(01h)
	movwf	(??_Lcd8_Display+0)+0
	movf	(??_Lcd8_Display+0)+0,w
	addwf	(Lcd8_Display@Lcd_i),f
	goto	l3109
	
l716:	
	
l3109:	
	movf	(Lcd8_Display@Lcd_i),w
	movwf	(??_Lcd8_Display+0)+0
	clrf	(??_Lcd8_Display+0)+0+1
	movf	(Lcd8_Display@n+1),w
	subwf	1+(??_Lcd8_Display+0)+0,w
	skipz
	goto	u2375
	movf	(Lcd8_Display@n),w
	subwf	0+(??_Lcd8_Display+0)+0,w
u2375:
	skipc
	goto	u2371
	goto	u2370
u2371:
	goto	l3105
u2370:
	goto	l719
	
l718:	
	line	59
	
l719:	
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
;;		line 40 in file "E:\pic program\keypad display\pic_lcd8.h"
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
	file	"E:\pic program\keypad display\pic_lcd8.h"
	line	40
	global	__size_of_Lcd8_Write
	__size_of_Lcd8_Write	equ	__end_of_Lcd8_Write-_Lcd8_Write
	
_Lcd8_Write:	
	opt	stack 4
; Regs used in _Lcd8_Write: [wreg+status,2+status,0+pclath+cstack]
;Lcd8_Write@com stored from wreg
	movwf	(Lcd8_Write@com)
	line	41
	
l3089:	
;pic_lcd8.h: 41: Lcd8_Command(com);
	movf	(Lcd8_Write@com),w
	fcall	_Lcd8_Command
	line	43
	
l3091:	
;pic_lcd8.h: 43: PORTD=lr;
	movf	(Lcd8_Write@lr),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	44
	
l3093:	
;pic_lcd8.h: 44: Lcd_en=1;
	bsf	(61/8),(61)&7
	line	45
	
l3095:	
;pic_lcd8.h: 45: Lcd_rs=1;
	bsf	(60/8),(60)&7
	line	46
	
l3097:	
;pic_lcd8.h: 46: Delay(125);
	movlw	low(07Dh)
	movwf	(?_Delay)
	movlw	high(07Dh)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	47
	
l3099:	
;pic_lcd8.h: 47: Lcd_en=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	line	48
	
l3101:	
;pic_lcd8.h: 48: Delay(125);
	movlw	low(07Dh)
	movwf	(?_Delay)
	movlw	high(07Dh)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	49
	
l713:	
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
;;		line 22 in file "E:\pic program\keypad display\pic_lcd8.h"
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
	file	"E:\pic program\keypad display\pic_lcd8.h"
	line	22
	global	__size_of_Lcd8_Init
	__size_of_Lcd8_Init	equ	__end_of_Lcd8_Init-_Lcd8_Init
	
_Lcd8_Init:	
	opt	stack 5
; Regs used in _Lcd8_Init: [wreg+status,2+status,0+pclath+cstack]
	line	23
	
l3087:	
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
	
l707:	
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
;;		line 30 in file "E:\pic program\keypad display\pic_lcd8.h"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text170
	file	"E:\pic program\keypad display\pic_lcd8.h"
	line	30
	global	__size_of_Lcd8_Command
	__size_of_Lcd8_Command	equ	__end_of_Lcd8_Command-_Lcd8_Command
	
_Lcd8_Command:	
	opt	stack 6
; Regs used in _Lcd8_Command: [wreg+status,2+status,0+pclath+cstack]
;Lcd8_Command@com stored from wreg
	movwf	(Lcd8_Command@com)
	line	31
	
l3075:	
;pic_lcd8.h: 31: PORTD=com;
	movf	(Lcd8_Command@com),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	32
	
l3077:	
;pic_lcd8.h: 32: Lcd_en=1;
	bsf	(61/8),(61)&7
	line	33
	
l3079:	
;pic_lcd8.h: 33: Lcd_rs=0;
	bcf	(60/8),(60)&7
	line	34
	
l3081:	
;pic_lcd8.h: 34: Delay(125);
	movlw	low(07Dh)
	movwf	(?_Delay)
	movlw	high(07Dh)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	35
	
l3083:	
;pic_lcd8.h: 35: Lcd_en=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	line	36
	
l3085:	
;pic_lcd8.h: 36: Delay(125);
	movlw	low(07Dh)
	movwf	(?_Delay)
	movlw	high(07Dh)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	37
	
l710:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Command
	__end_of_Lcd8_Command:
;; =============== function _Lcd8_Command ends ============

	signat	_Lcd8_Command,4216
	global	_Delay
psect	text171,local,class=CODE,delta=2
global __ptext171
__ptext171:

;; *************** function _Delay *****************
;; Defined at:
;;		line 107 in file "E:\pic program\keypad display\pic_lcd8.h"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text171
	file	"E:\pic program\keypad display\pic_lcd8.h"
	line	107
	global	__size_of_Delay
	__size_of_Delay	equ	__end_of_Delay-_Delay
	
_Delay:	
	opt	stack 6
; Regs used in _Delay: [wreg]
	line	108
	
l3065:	
;pic_lcd8.h: 108: while(del--);
	goto	l3067
	
l732:	
	goto	l3067
	
l731:	
	
l3067:	
	movlw	low(01h)
	subwf	(Delay@del),f
	movlw	high(01h)
	skipc
	decf	(Delay@del+1),f
	subwf	(Delay@del+1),f
	movlw	high(0FFFFh)
	xorwf	((Delay@del+1)),w
	skipz
	goto	u2365
	movlw	low(0FFFFh)
	xorwf	((Delay@del)),w
u2365:

	skipz
	goto	u2361
	goto	u2360
u2361:
	goto	l3067
u2360:
	goto	l734
	
l733:	
	line	109
	
l734:	
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
