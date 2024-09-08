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
	FNCALL	_main,_Lcd8_Init
	FNCALL	_main,_Lcd8_Display
	FNCALL	_main,_Delay
	FNCALL	_Lcd8_Display,_Lcd8_Write
	FNCALL	_Lcd8_Write,_Lcd8_Command
	FNCALL	_Lcd8_Write,_Delay
	FNCALL	_Lcd8_Init,_Lcd8_Command
	FNCALL	_Lcd8_Command,_Delay
	FNROOT	_main
	global	_PORTD
psect	text109,local,class=CODE,delta=2
global __ptext109
__ptext109:
_PORTD	set	8
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_Lcd_en
_Lcd_en	set	61
	global	_Lcd_rs
_Lcd_rs	set	60
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RA2
_RA2	set	42
	global	_RA3
_RA3	set	43
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RC3
_RC3	set	59
	global	_TRISA
_TRISA	set	133
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
	retlw	32	;' '
	retlw	82	;'R'
	retlw	111	;'o'
	retlw	98	;'b'
	retlw	111	;'o'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_10:	
	retlw	32	;' '
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	102	;'f'
	retlw	116	;'t'
	retlw	119	;'w'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_8:	
	retlw	32	;' '
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	103	;'g'
	retlw	104	;'h'
	retlw	116	;'t'
	retlw	119	;'w'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_6:	
	retlw	32	;' '
	retlw	82	;'R'
	retlw	101	;'e'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	115	;'s'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_4:	
	retlw	32	;' '
	retlw	102	;'f'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	100	;'d'
	retlw	119	;'w'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	100	;'d'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_2:	
	retlw	32	;' '
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	108	;'l'
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
STR_3	equ	STR_1+0
STR_5	equ	STR_1+0
STR_7	equ	STR_1+0
STR_9	equ	STR_1+0
	file	"lcd display.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

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
;;Data sizes: Strings 102, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      13
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; Lcd8_Display@word	PTR const unsigned char  size(1) Largest target is 17
;;		 -> STR_10(CODE[17]), STR_9(CODE[17]), STR_8(CODE[17]), STR_7(CODE[17]), 
;;		 -> STR_6(CODE[17]), STR_5(CODE[17]), STR_4(CODE[17]), STR_3(CODE[17]), 
;;		 -> STR_2(CODE[17]), STR_1(CODE[17]), 
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
;; (0) _main                                                 1     1      0     210
;;                                             12 COMMON     1     1      0
;;                          _Lcd8_Init
;;                       _Lcd8_Display
;;                              _Delay
;; ---------------------------------------------------------------------------------
;; (1) _Lcd8_Display                                         7     4      3     165
;;                                              5 COMMON     7     4      3
;;                         _Lcd8_Write
;; ---------------------------------------------------------------------------------
;; (2) _Lcd8_Write                                           2     1      1      75
;;                                              3 COMMON     2     1      1
;;                       _Lcd8_Command
;;                              _Delay
;; ---------------------------------------------------------------------------------
;; (1) _Lcd8_Init                                            0     0      0      30
;;                       _Lcd8_Command
;; ---------------------------------------------------------------------------------
;; (3) _Lcd8_Command                                         1     1      0      30
;;                                              2 COMMON     1     1      0
;;                              _Delay
;; ---------------------------------------------------------------------------------
;; (1) _Delay                                                2     0      2      15
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
;;   _Delay
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
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 14 in file "E:\pic program\lcd 7 segment display\lcd display.c"
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
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\pic program\lcd 7 segment display\lcd display.c"
	line	14
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	15
	
l2893:	
;lcd display.c: 15: TRISC=0xC0;
	movlw	(0C0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	16
	
l2895:	
;lcd display.c: 16: TRISD=0x00;
	clrf	(136)^080h	;volatile
	line	17
	
l2897:	
;lcd display.c: 17: TRISA=0xff;
	movlw	(0FFh)
	movwf	(133)^080h	;volatile
	line	19
	
l2899:	
;lcd display.c: 19: RC0=0,RC1=0,RC2=0,RC3=0,RA0=0,RA1=0,RA2=0,RA3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	
l2901:	
	bcf	(57/8),(57)&7
	
l2903:	
	bcf	(58/8),(58)&7
	
l2905:	
	bcf	(59/8),(59)&7
	
l2907:	
	bcf	(40/8),(40)&7
	
l2909:	
	bcf	(41/8),(41)&7
	
l2911:	
	bcf	(42/8),(42)&7
	
l2913:	
	bcf	(43/8),(43)&7
	line	20
	
l2915:	
;lcd display.c: 20: Lcd8_Init();
	fcall	_Lcd8_Init
	line	21
	
l2917:	
;lcd display.c: 21: Lcd8_Display(0x80," Robot          ",16);
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
	line	22
	
l2919:	
;lcd display.c: 22: Lcd8_Display(0xC0," controlling    ",16);
	movlw	((STR_2-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(010h)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(010h)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(0C0h)
	fcall	_Lcd8_Display
	line	23
	
l2921:	
;lcd display.c: 23: Delay(6500);
	movlw	low(01964h)
	movwf	(?_Delay)
	movlw	high(01964h)
	movwf	((?_Delay))+1
	fcall	_Delay
	goto	l2923
	line	24
;lcd display.c: 24: while(1){
	
l723:	
	line	25
	
l2923:	
;lcd display.c: 25: if( RA0 == 1 && RA1 ==0 && RA2 ==0 && RA3 ==0 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l724
u2240:
	
l2925:	
	btfsc	(41/8),(41)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l724
u2250:
	
l2927:	
	btfsc	(42/8),(42)&7
	goto	u2261
	goto	u2260
u2261:
	goto	l724
u2260:
	
l2929:	
	btfsc	(43/8),(43)&7
	goto	u2271
	goto	u2270
u2271:
	goto	l724
u2270:
	line	27
	
l2931:	
;lcd display.c: 26: {
;lcd display.c: 27: RC0=0;
	bcf	(56/8),(56)&7
	line	28
;lcd display.c: 28: RC1=1;
	bsf	(57/8),(57)&7
	line	29
;lcd display.c: 29: RC2=0;
	bcf	(58/8),(58)&7
	line	30
;lcd display.c: 30: RC3=1;
	bsf	(59/8),(59)&7
	line	31
	
l2933:	
;lcd display.c: 31: Lcd8_Display(0x80," Robot          ",16);
	movlw	((STR_3-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(010h)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(010h)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(080h)
	fcall	_Lcd8_Display
	line	32
;lcd display.c: 32: Lcd8_Display(0xC0," fordwarding    ",16);
	movlw	((STR_4-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(010h)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(010h)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(0C0h)
	fcall	_Lcd8_Display
	line	33
;lcd display.c: 33: }
	goto	l2923
	line	34
	
l724:	
;lcd display.c: 34: else if(RA1 == 1 && RA0 ==0 && RA2 ==0 && RA3 ==0 )
	btfss	(41/8),(41)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l726
u2280:
	
l2935:	
	btfsc	(40/8),(40)&7
	goto	u2291
	goto	u2290
u2291:
	goto	l726
u2290:
	
l2937:	
	btfsc	(42/8),(42)&7
	goto	u2301
	goto	u2300
u2301:
	goto	l726
u2300:
	
l2939:	
	btfsc	(43/8),(43)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l726
u2310:
	line	35
	
l2941:	
;lcd display.c: 35: { RC0=1;
	bsf	(56/8),(56)&7
	line	36
;lcd display.c: 36: RC1=0;
	bcf	(57/8),(57)&7
	line	37
;lcd display.c: 37: RC2=1;
	bsf	(58/8),(58)&7
	line	38
;lcd display.c: 38: RC3=0;
	bcf	(59/8),(59)&7
	line	39
	
l2943:	
;lcd display.c: 39: Lcd8_Display(0x80," Robot          ",16);
	movlw	((STR_5-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(010h)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(010h)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(080h)
	fcall	_Lcd8_Display
	line	40
;lcd display.c: 40: Lcd8_Display(0xC0," Reversing      ",16);
	movlw	((STR_6-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(010h)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(010h)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(0C0h)
	fcall	_Lcd8_Display
	line	42
;lcd display.c: 42: }
	goto	l2923
	line	43
	
l726:	
;lcd display.c: 43: else if(RA2 == 1 && RA0 ==0 && RA1 ==0 && RA3 ==0 )
	btfss	(42/8),(42)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l728
u2320:
	
l2945:	
	btfsc	(40/8),(40)&7
	goto	u2331
	goto	u2330
u2331:
	goto	l728
u2330:
	
l2947:	
	btfsc	(41/8),(41)&7
	goto	u2341
	goto	u2340
u2341:
	goto	l728
u2340:
	
l2949:	
	btfsc	(43/8),(43)&7
	goto	u2351
	goto	u2350
u2351:
	goto	l728
u2350:
	line	45
	
l2951:	
;lcd display.c: 44: {
;lcd display.c: 45: RC0=1;
	bsf	(56/8),(56)&7
	line	46
;lcd display.c: 46: RC1=0;
	bcf	(57/8),(57)&7
	line	47
;lcd display.c: 47: RC2=0;
	bcf	(58/8),(58)&7
	line	48
;lcd display.c: 48: RC3=1;
	bsf	(59/8),(59)&7
	line	49
	
l2953:	
;lcd display.c: 49: Lcd8_Display(0x80," Robot          ",16);
	movlw	((STR_7-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(010h)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(010h)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(080h)
	fcall	_Lcd8_Display
	line	50
;lcd display.c: 50: Lcd8_Display(0xC0," rightward      ",16);
	movlw	((STR_8-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(010h)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(010h)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(0C0h)
	fcall	_Lcd8_Display
	line	51
;lcd display.c: 51: }
	goto	l2923
	line	52
	
l728:	
;lcd display.c: 52: else if(RA3 == 1 && RA0 ==0 && RA2 ==0 && RA1 ==0 )
	btfss	(43/8),(43)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l730
u2360:
	
l2955:	
	btfsc	(40/8),(40)&7
	goto	u2371
	goto	u2370
u2371:
	goto	l730
u2370:
	
l2957:	
	btfsc	(42/8),(42)&7
	goto	u2381
	goto	u2380
u2381:
	goto	l730
u2380:
	
l2959:	
	btfsc	(41/8),(41)&7
	goto	u2391
	goto	u2390
u2391:
	goto	l730
u2390:
	line	54
	
l2961:	
;lcd display.c: 53: {
;lcd display.c: 54: RC0=0;
	bcf	(56/8),(56)&7
	line	55
;lcd display.c: 55: RC1=1;
	bsf	(57/8),(57)&7
	line	56
;lcd display.c: 56: RC2=1;
	bsf	(58/8),(58)&7
	line	57
;lcd display.c: 57: RC3=0;
	bcf	(59/8),(59)&7
	line	58
	
l2963:	
;lcd display.c: 58: Lcd8_Display(0x80," Robot          ",16);
	movlw	((STR_9-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(010h)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(010h)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(080h)
	fcall	_Lcd8_Display
	line	59
;lcd display.c: 59: Lcd8_Display(0xC0," leftward       ",16);
	movlw	((STR_10-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(010h)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(010h)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(0C0h)
	fcall	_Lcd8_Display
	line	60
;lcd display.c: 60: }
	goto	l2923
	line	61
	
l730:	
	line	63
;lcd display.c: 61: else
;lcd display.c: 62: {
;lcd display.c: 63: RC0=0;
	bcf	(56/8),(56)&7
	line	64
;lcd display.c: 64: RC1=0;
	bcf	(57/8),(57)&7
	line	65
;lcd display.c: 65: RC2=0;
	bcf	(58/8),(58)&7
	line	66
;lcd display.c: 66: RC3=0;
	bcf	(59/8),(59)&7
	goto	l2923
	line	67
	
l731:	
	goto	l2923
	
l729:	
	goto	l2923
	
l727:	
	goto	l2923
	
l725:	
	goto	l2923
	line	68
	
l732:	
	line	24
	goto	l2923
	
l733:	
	line	70
	
l734:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Lcd8_Display
psect	text110,local,class=CODE,delta=2
global __ptext110
__ptext110:

;; *************** function _Lcd8_Display *****************
;; Defined at:
;;		line 52 in file "E:\pic program\lcd 7 segment display\pic_lcd8.h"
;; Parameters:    Size  Location     Type
;;  com             1    wreg     unsigned char 
;;  word            1    5[COMMON] PTR const unsigned char 
;;		 -> STR_10(17), STR_9(17), STR_8(17), STR_7(17), 
;;		 -> STR_6(17), STR_5(17), STR_4(17), STR_3(17), 
;;		 -> STR_2(17), STR_1(17), 
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
psect	text110
	file	"E:\pic program\lcd 7 segment display\pic_lcd8.h"
	line	52
	global	__size_of_Lcd8_Display
	__size_of_Lcd8_Display	equ	__end_of_Lcd8_Display-_Lcd8_Display
	
_Lcd8_Display:	
	opt	stack 4
; Regs used in _Lcd8_Display: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Lcd8_Display@com stored from wreg
	line	55
	movwf	(Lcd8_Display@com)
	
l2885:	
;pic_lcd8.h: 53: unsigned char Lcd_i;
;pic_lcd8.h: 55: for(Lcd_i=0;Lcd_i<n;Lcd_i++)
	clrf	(Lcd8_Display@Lcd_i)
	goto	l2891
	line	56
	
l703:	
	line	57
	
l2887:	
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
	
l2889:	
	movlw	(01h)
	movwf	(??_Lcd8_Display+0)+0
	movf	(??_Lcd8_Display+0)+0,w
	addwf	(Lcd8_Display@Lcd_i),f
	goto	l2891
	
l702:	
	
l2891:	
	movf	(Lcd8_Display@Lcd_i),w
	movwf	(??_Lcd8_Display+0)+0
	clrf	(??_Lcd8_Display+0)+0+1
	movf	(Lcd8_Display@n+1),w
	subwf	1+(??_Lcd8_Display+0)+0,w
	skipz
	goto	u2235
	movf	(Lcd8_Display@n),w
	subwf	0+(??_Lcd8_Display+0)+0,w
u2235:
	skipc
	goto	u2231
	goto	u2230
u2231:
	goto	l2887
u2230:
	goto	l705
	
l704:	
	line	59
	
l705:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Display
	__end_of_Lcd8_Display:
;; =============== function _Lcd8_Display ends ============

	signat	_Lcd8_Display,12408
	global	_Lcd8_Write
psect	text111,local,class=CODE,delta=2
global __ptext111
__ptext111:

;; *************** function _Lcd8_Write *****************
;; Defined at:
;;		line 40 in file "E:\pic program\lcd 7 segment display\pic_lcd8.h"
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
psect	text111
	file	"E:\pic program\lcd 7 segment display\pic_lcd8.h"
	line	40
	global	__size_of_Lcd8_Write
	__size_of_Lcd8_Write	equ	__end_of_Lcd8_Write-_Lcd8_Write
	
_Lcd8_Write:	
	opt	stack 4
; Regs used in _Lcd8_Write: [wreg+status,2+status,0+pclath+cstack]
;Lcd8_Write@com stored from wreg
	movwf	(Lcd8_Write@com)
	line	41
	
l2871:	
;pic_lcd8.h: 41: Lcd8_Command(com);
	movf	(Lcd8_Write@com),w
	fcall	_Lcd8_Command
	line	43
	
l2873:	
;pic_lcd8.h: 43: PORTD=lr;
	movf	(Lcd8_Write@lr),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	44
	
l2875:	
;pic_lcd8.h: 44: Lcd_en=1;
	bsf	(61/8),(61)&7
	line	45
	
l2877:	
;pic_lcd8.h: 45: Lcd_rs=1;
	bsf	(60/8),(60)&7
	line	46
	
l2879:	
;pic_lcd8.h: 46: Delay(125);
	movlw	low(07Dh)
	movwf	(?_Delay)
	movlw	high(07Dh)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	47
	
l2881:	
;pic_lcd8.h: 47: Lcd_en=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	line	48
	
l2883:	
;pic_lcd8.h: 48: Delay(125);
	movlw	low(07Dh)
	movwf	(?_Delay)
	movlw	high(07Dh)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	49
	
l699:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Write
	__end_of_Lcd8_Write:
;; =============== function _Lcd8_Write ends ============

	signat	_Lcd8_Write,8312
	global	_Lcd8_Init
psect	text112,local,class=CODE,delta=2
global __ptext112
__ptext112:

;; *************** function _Lcd8_Init *****************
;; Defined at:
;;		line 22 in file "E:\pic program\lcd 7 segment display\pic_lcd8.h"
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
psect	text112
	file	"E:\pic program\lcd 7 segment display\pic_lcd8.h"
	line	22
	global	__size_of_Lcd8_Init
	__size_of_Lcd8_Init	equ	__end_of_Lcd8_Init-_Lcd8_Init
	
_Lcd8_Init:	
	opt	stack 5
; Regs used in _Lcd8_Init: [wreg+status,2+status,0+pclath+cstack]
	line	23
	
l2869:	
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
	
l693:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Init
	__end_of_Lcd8_Init:
;; =============== function _Lcd8_Init ends ============

	signat	_Lcd8_Init,88
	global	_Lcd8_Command
psect	text113,local,class=CODE,delta=2
global __ptext113
__ptext113:

;; *************** function _Lcd8_Command *****************
;; Defined at:
;;		line 30 in file "E:\pic program\lcd 7 segment display\pic_lcd8.h"
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
psect	text113
	file	"E:\pic program\lcd 7 segment display\pic_lcd8.h"
	line	30
	global	__size_of_Lcd8_Command
	__size_of_Lcd8_Command	equ	__end_of_Lcd8_Command-_Lcd8_Command
	
_Lcd8_Command:	
	opt	stack 4
; Regs used in _Lcd8_Command: [wreg+status,2+status,0+pclath+cstack]
;Lcd8_Command@com stored from wreg
	movwf	(Lcd8_Command@com)
	line	31
	
l2857:	
;pic_lcd8.h: 31: PORTD=com;
	movf	(Lcd8_Command@com),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	32
	
l2859:	
;pic_lcd8.h: 32: Lcd_en=1;
	bsf	(61/8),(61)&7
	line	33
	
l2861:	
;pic_lcd8.h: 33: Lcd_rs=0;
	bcf	(60/8),(60)&7
	line	34
	
l2863:	
;pic_lcd8.h: 34: Delay(125);
	movlw	low(07Dh)
	movwf	(?_Delay)
	movlw	high(07Dh)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	35
	
l2865:	
;pic_lcd8.h: 35: Lcd_en=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	line	36
	
l2867:	
;pic_lcd8.h: 36: Delay(125);
	movlw	low(07Dh)
	movwf	(?_Delay)
	movlw	high(07Dh)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	37
	
l696:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Command
	__end_of_Lcd8_Command:
;; =============== function _Lcd8_Command ends ============

	signat	_Lcd8_Command,4216
	global	_Delay
psect	text114,local,class=CODE,delta=2
global __ptext114
__ptext114:

;; *************** function _Delay *****************
;; Defined at:
;;		line 107 in file "E:\pic program\lcd 7 segment display\pic_lcd8.h"
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
psect	text114
	file	"E:\pic program\lcd 7 segment display\pic_lcd8.h"
	line	107
	global	__size_of_Delay
	__size_of_Delay	equ	__end_of_Delay-_Delay
	
_Delay:	
	opt	stack 7
; Regs used in _Delay: [wreg]
	line	108
	
l1977:	
;pic_lcd8.h: 108: while(del--);
	goto	l1979
	
l718:	
	goto	l1979
	
l717:	
	
l1979:	
	movlw	low(01h)
	subwf	(Delay@del),f
	movlw	high(01h)
	skipc
	decf	(Delay@del+1),f
	subwf	(Delay@del+1),f
	movlw	high(0FFFFh)
	xorwf	((Delay@del+1)),w
	skipz
	goto	u15
	movlw	low(0FFFFh)
	xorwf	((Delay@del)),w
u15:

	skipz
	goto	u11
	goto	u10
u11:
	goto	l1979
u10:
	goto	l720
	
l719:	
	line	109
	
l720:	
	return
	opt stack 0
GLOBAL	__end_of_Delay
	__end_of_Delay:
;; =============== function _Delay ends ============

	signat	_Delay,4216
psect	text115,local,class=CODE,delta=2
global __ptext115
__ptext115:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
