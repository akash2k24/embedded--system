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
# 3 "E:\pic program\serial tx rx\serial tx rx.c"
	psect config,class=CONFIG,delta=2 ;#
# 3 "E:\pic program\serial tx rx\serial tx rx.c"
	dw 0xFFFE & 0xFFFB & 0xFFF7 & 0xFFBF & 0xFF7F & 0xFFFF & 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_ser_int
	FNCALL	_main,_txstr
	FNCALL	_main,_Lcd8_Init
	FNCALL	_main,_Lcd8_Display
	FNCALL	_main,_Delay
	FNCALL	_main,_Lcd8_Command
	FNCALL	_main,_receiveChar
	FNCALL	_main,_tx
	FNCALL	_main,_Lcd8_Decimal3
	FNCALL	_Lcd8_Decimal3,___awdiv
	FNCALL	_Lcd8_Decimal3,___awmod
	FNCALL	_Lcd8_Decimal3,___lwdiv
	FNCALL	_Lcd8_Decimal3,___lwmod
	FNCALL	_Lcd8_Decimal3,_Lcd8_Write
	FNCALL	_Lcd8_Display,_Lcd8_Write
	FNCALL	_Lcd8_Write,_Lcd8_Command
	FNCALL	_Lcd8_Write,_Delay
	FNCALL	_Lcd8_Init,_Lcd8_Command
	FNCALL	_txstr,_tx
	FNCALL	_Lcd8_Command,_Delay
	FNROOT	_main
	global	_led
	global	_receiveData
	global	_PORTD
psect	text309,local,class=CODE,delta=2
global __ptext309
__ptext309:
_PORTD	set	8
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_TXREG
_TXREG	set	25
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_Lcd_en
_Lcd_en	set	61
	global	_Lcd_rs
_Lcd_rs	set	60
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RCIF
_RCIF	set	101
	global	_TXIF
_TXIF	set	100
	global	_SPBRG
_SPBRG	set	153
	global	_TRISA
_TRISA	set	133
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TXSTA
_TXSTA	set	152
	global	_TRISB1
_TRISB1	set	1073
	global	_TRISB2
_TRISB2	set	1074
	global	_TRISC6
_TRISC6	set	1086
	global	_TRISC7
_TRISC7	set	1087
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
	retlw	80	;'P'
	retlw	73	;'I'
	retlw	67	;'C'
	retlw	49	;'1'
	retlw	54	;'6'
	retlw	70	;'F'
	retlw	56	;'8'
	retlw	55	;'7'
	retlw	55	;'7'
	retlw	65	;'A'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	73	;'I'
	retlw	65	;'A'
	retlw	76	;'L'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	10
	retlw	13
	retlw	13
	retlw	0
psect	strings
	
STR_2:	
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	73	;'I'
	retlw	65	;'A'
	retlw	76	;'L'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	0
psect	strings
	
STR_4:	
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	70	;'F'
	retlw	0
psect	strings
	
STR_5:	
	retlw	65	;'A'
	retlw	76	;'L'
	retlw	76	;'L'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	70	;'F'
	retlw	0
psect	strings
	
STR_3:	
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	0
psect	strings
	file	"serial tx rx.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_receiveData:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_led:
       ds      1

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
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
	global	?_ser_int
?_ser_int:	; 0 bytes @ 0x0
	global	??_ser_int
??_ser_int:	; 0 bytes @ 0x0
	global	?_txstr
?_txstr:	; 0 bytes @ 0x0
	global	??_receiveChar
??_receiveChar:	; 0 bytes @ 0x0
	global	?_tx
?_tx:	; 0 bytes @ 0x0
	global	??_tx
??_tx:	; 0 bytes @ 0x0
	global	?_Lcd8_Init
?_Lcd8_Init:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_receiveChar
?_receiveChar:	; 1 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	tx@a
tx@a:	; 1 bytes @ 0x0
	global	Delay@del
Delay@del:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	1
	global	??_txstr
??_txstr:	; 0 bytes @ 0x1
	ds	1
	global	??_Lcd8_Command
??_Lcd8_Command:	; 0 bytes @ 0x2
	global	??_Delay
??_Delay:	; 0 bytes @ 0x2
	global	Lcd8_Command@com
Lcd8_Command@com:	; 1 bytes @ 0x2
	global	txstr@s
txstr@s:	; 1 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
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
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	Lcd8_Write@com
Lcd8_Write@com:	; 1 bytes @ 0x4
	ds	1
	global	?_Lcd8_Display
?_Lcd8_Display:	; 0 bytes @ 0x5
	global	Lcd8_Display@word
Lcd8_Display@word:	; 1 bytes @ 0x5
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x5
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	global	Lcd8_Display@n
Lcd8_Display@n:	; 2 bytes @ 0x6
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	1
	global	??_Lcd8_Display
??_Lcd8_Display:	; 0 bytes @ 0x8
	ds	1
	global	?_Lcd8_Decimal3
?_Lcd8_Decimal3:	; 0 bytes @ 0x9
	global	Lcd8_Decimal3@val
Lcd8_Decimal3@val:	; 1 bytes @ 0x9
	ds	1
	global	??_Lcd8_Decimal3
??_Lcd8_Decimal3:	; 0 bytes @ 0xA
	global	Lcd8_Display@com
Lcd8_Display@com:	; 1 bytes @ 0xA
	ds	1
	global	Lcd8_Display@Lcd_i
Lcd8_Display@Lcd_i:	; 1 bytes @ 0xB
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0xC
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	Lcd8_Decimal3@Lcd_h
Lcd8_Decimal3@Lcd_h:	; 2 bytes @ 0x0
	ds	2
	global	Lcd8_Decimal3@Lcd_t
Lcd8_Decimal3@Lcd_t:	; 2 bytes @ 0x2
	ds	2
	global	Lcd8_Decimal3@Lcd_o
Lcd8_Decimal3@Lcd_o:	; 2 bytes @ 0x4
	ds	2
	global	Lcd8_Decimal3@Lcd_hr
Lcd8_Decimal3@Lcd_hr:	; 2 bytes @ 0x6
	ds	2
	global	Lcd8_Decimal3@com
Lcd8_Decimal3@com:	; 1 bytes @ 0x8
	ds	1
;;Data sizes: Strings 61, constant 0, data 0, bss 2, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      14
;; BANK0           80      9      10
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; txstr@s	PTR unsigned char  size(1) Largest target is 26
;;		 -> STR_1(CODE[26]), 
;;
;; Lcd8_Display@word	PTR const unsigned char  size(1) Largest target is 12
;;		 -> STR_5(CODE[8]), STR_4(CODE[8]), STR_3(CODE[7]), STR_2(CODE[12]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_Lcd8_Display
;;   _main->_Lcd8_Decimal3
;;   _Lcd8_Decimal3->___awdiv
;;   _Lcd8_Display->_Lcd8_Write
;;   _Lcd8_Write->_Lcd8_Command
;;   _Lcd8_Init->_Lcd8_Command
;;   _txstr->_tx
;;   _Lcd8_Command->_Delay
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_Lcd8_Decimal3
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
;; (0) _main                                                 1     1      0    1665
;;                                             12 COMMON     1     1      0
;;                            _ser_int
;;                              _txstr
;;                          _Lcd8_Init
;;                       _Lcd8_Display
;;                              _Delay
;;                       _Lcd8_Command
;;                        _receiveChar
;;                                 _tx
;;                      _Lcd8_Decimal3
;; ---------------------------------------------------------------------------------
;; (1) _Lcd8_Decimal3                                       12    11      1    1251
;;                                              9 COMMON     3     2      1
;;                                              0 BANK0      9     9      0
;;                            ___awdiv
;;                            ___awmod
;;                            ___lwdiv
;;                            ___lwmod
;;                         _Lcd8_Write
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
;; (1) _txstr                                                2     2      0      45
;;                                              1 COMMON     2     2      0
;;                                 _tx
;; ---------------------------------------------------------------------------------
;; (3) _Lcd8_Command                                         1     1      0      44
;;                                              2 COMMON     1     1      0
;;                              _Delay
;; ---------------------------------------------------------------------------------
;; (2) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              6     2      4     159
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              8     4      4     162
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; (1) _tx                                                   1     1      0      15
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _receiveChar                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _ser_int                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _Delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _ser_int
;;   _txstr
;;     _tx
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
;;   _receiveChar
;;   _tx
;;   _Lcd8_Decimal3
;;     ___awdiv
;;     ___awmod
;;     ___lwdiv
;;     ___lwmod
;;     _Lcd8_Write
;;       _Lcd8_Command
;;         _Delay
;;       _Delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      D       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       4       2        0.0%
;;ABS                  0      0      18       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      9       A       5       12.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      1C      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 17 in file "E:\pic program\serial tx rx\serial tx rx.c"
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
;;		_ser_int
;;		_txstr
;;		_Lcd8_Init
;;		_Lcd8_Display
;;		_Delay
;;		_Lcd8_Command
;;		_receiveChar
;;		_tx
;;		_Lcd8_Decimal3
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\pic program\serial tx rx\serial tx rx.c"
	line	17
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	18
	
l3194:	
;serial tx rx.c: 18: TRISC=0XC0;
	movlw	(0C0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	19
	
l3196:	
;serial tx rx.c: 19: TRISB1=0;
	bcf	(1073/8)^080h,(1073)&7
	line	20
	
l3198:	
;serial tx rx.c: 20: TRISB2=0;
	bcf	(1074/8)^080h,(1074)&7
	line	21
	
l3200:	
;serial tx rx.c: 21: TRISD=0X00;
	clrf	(136)^080h	;volatile
	line	22
	
l3202:	
;serial tx rx.c: 22: TRISA=0X0f;
	movlw	(0Fh)
	movwf	(133)^080h	;volatile
	line	23
	
l3204:	
;serial tx rx.c: 23: TRISC6=0;
	bcf	(1086/8)^080h,(1086)&7
	line	24
	
l3206:	
;serial tx rx.c: 24: TRISC7=1;
	bsf	(1087/8)^080h,(1087)&7
	line	25
	
l3208:	
;serial tx rx.c: 25: RB1=RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	bcf	(49/8),(49)&7
	line	26
	
l3210:	
;serial tx rx.c: 26: ser_int();
	fcall	_ser_int
	line	27
	
l3212:	
;serial tx rx.c: 27: txstr("PIC16F877A SERIAL TEST\n\r\r");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_txstr
	line	29
	
l3214:	
;serial tx rx.c: 29: Lcd8_Init();
	fcall	_Lcd8_Init
	line	30
	
l3216:	
;serial tx rx.c: 30: Lcd8_Display(0x80,"SERIAL TEST",11);
	movlw	((STR_2-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(0Bh)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(0Bh)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(080h)
	fcall	_Lcd8_Display
	line	31
	
l3218:	
;serial tx rx.c: 31: Delay(65000);Delay(65000);
	movlw	low(0FDE8h)
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	
l3220:	
	movlw	low(0FDE8h)
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	33
	
l3222:	
;serial tx rx.c: 33: Lcd8_Command(0x01);
	movlw	(01h)
	fcall	_Lcd8_Command
	goto	l3224
	line	34
;serial tx rx.c: 34: while(1)
	
l735:	
	line	37
	
l3224:	
;serial tx rx.c: 35: {
;serial tx rx.c: 37: receiveData =receiveChar();
	fcall	_receiveChar
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_receiveData)
	line	38
	
l3226:	
;serial tx rx.c: 38: tx(receiveData);
	movf	(_receiveData),w
	fcall	_tx
	line	39
	
l3228:	
;serial tx rx.c: 39: Lcd8_Decimal3(0xc0,receiveData);
	movf	(_receiveData),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Decimal3)
	movlw	(0C0h)
	fcall	_Lcd8_Decimal3
	line	40
	
l3230:	
;serial tx rx.c: 40: Lcd8_Command(0x01);
	movlw	(01h)
	fcall	_Lcd8_Command
	line	42
	
l3232:	
;serial tx rx.c: 42: if(receiveData==119)
	movf	(_receiveData),w
	xorlw	077h
	skipz
	goto	u2631
	goto	u2630
u2631:
	goto	l3240
u2630:
	line	44
	
l3234:	
;serial tx rx.c: 43: {
;serial tx rx.c: 44: RB1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	45
;serial tx rx.c: 45: RB2=0;
	bcf	(50/8),(50)&7
	line	46
	
l3236:	
;serial tx rx.c: 46: Lcd8_Display(0x80,"LED ON",6);
	movlw	((STR_3-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(06h)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(06h)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(080h)
	fcall	_Lcd8_Display
	line	47
	
l3238:	
;serial tx rx.c: 47: Delay(6500);
	movlw	low(01964h)
	movwf	(?_Delay)
	movlw	high(01964h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	48
;serial tx rx.c: 48: }
	goto	l3224
	line	49
	
l736:	
	
l3240:	
;serial tx rx.c: 49: else if(receiveData==101)
	movf	(_receiveData),w
	xorlw	065h
	skipz
	goto	u2641
	goto	u2640
u2641:
	goto	l738
u2640:
	line	51
	
l3242:	
;serial tx rx.c: 50: {
;serial tx rx.c: 51: RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	52
;serial tx rx.c: 52: RB2=1;
	bsf	(50/8),(50)&7
	line	53
	
l3244:	
;serial tx rx.c: 53: Lcd8_Display(0x80,"LED OFF",7);
	movlw	((STR_4-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(07h)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(07h)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(080h)
	fcall	_Lcd8_Display
	line	54
	
l3246:	
;serial tx rx.c: 54: Delay(6500);
	movlw	low(01964h)
	movwf	(?_Delay)
	movlw	high(01964h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	55
;serial tx rx.c: 55: }
	goto	l3224
	line	56
	
l738:	
	line	58
;serial tx rx.c: 56: else
;serial tx rx.c: 57: {
;serial tx rx.c: 58: RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	59
;serial tx rx.c: 59: RB2=0;
	bcf	(50/8),(50)&7
	line	60
	
l3248:	
;serial tx rx.c: 60: Lcd8_Display(0x80,"ALL OFF",7);
	movlw	((STR_5-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(07h)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(07h)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(080h)
	fcall	_Lcd8_Display
	goto	l3224
	line	62
	
l739:	
	goto	l3224
	
l737:	
	goto	l3224
	line	63
	
l740:	
	line	34
	goto	l3224
	
l741:	
	line	64
	
l742:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Lcd8_Decimal3
psect	text310,local,class=CODE,delta=2
global __ptext310
__ptext310:

;; *************** function _Lcd8_Decimal3 *****************
;; Defined at:
;;		line 76 in file "E:\pic program\serial tx rx\pic_lcd8.h"
;; Parameters:    Size  Location     Type
;;  com             1    wreg     unsigned char 
;;  val             1    9[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  com             1    8[BANK0 ] unsigned char 
;;  Lcd_hr          2    6[BANK0 ] unsigned int 
;;  Lcd_o           2    4[BANK0 ] unsigned int 
;;  Lcd_t           2    2[BANK0 ] unsigned int 
;;  Lcd_h           2    0[BANK0 ] unsigned int 
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
;;      Locals:         0       9       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       9       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awdiv
;;		___awmod
;;		___lwdiv
;;		___lwmod
;;		_Lcd8_Write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text310
	file	"E:\pic program\serial tx rx\pic_lcd8.h"
	line	76
	global	__size_of_Lcd8_Decimal3
	__size_of_Lcd8_Decimal3	equ	__end_of_Lcd8_Decimal3-_Lcd8_Decimal3
	
_Lcd8_Decimal3:	
	opt	stack 4
; Regs used in _Lcd8_Decimal3: [wreg+status,2+status,0+pclath+cstack]
;Lcd8_Decimal3@com stored from wreg
	line	79
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Lcd8_Decimal3@com)
	
l3192:	
;pic_lcd8.h: 77: unsigned int Lcd_h,Lcd_hr,Lcd_t,Lcd_o;
;pic_lcd8.h: 79: Lcd_h=val/100;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(Lcd8_Decimal3@val),w
	movwf	(??_Lcd8_Decimal3+0)+0
	clrf	(??_Lcd8_Decimal3+0)+0+1
	movf	0+(??_Lcd8_Decimal3+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_Lcd8_Decimal3+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Lcd8_Decimal3@Lcd_h+1)
	addwf	(Lcd8_Decimal3@Lcd_h+1)
	movf	(0+(?___awdiv)),w
	clrf	(Lcd8_Decimal3@Lcd_h)
	addwf	(Lcd8_Decimal3@Lcd_h)

	line	80
;pic_lcd8.h: 80: Lcd_hr=val%100;
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(Lcd8_Decimal3@val),w
	movwf	(??_Lcd8_Decimal3+0)+0
	clrf	(??_Lcd8_Decimal3+0)+0+1
	movf	0+(??_Lcd8_Decimal3+0)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_Lcd8_Decimal3+0)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Lcd8_Decimal3@Lcd_hr+1)
	addwf	(Lcd8_Decimal3@Lcd_hr+1)
	movf	(0+(?___awmod)),w
	clrf	(Lcd8_Decimal3@Lcd_hr)
	addwf	(Lcd8_Decimal3@Lcd_hr)

	line	81
;pic_lcd8.h: 81: Lcd_t=Lcd_hr/10;
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	movf	(Lcd8_Decimal3@Lcd_hr+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(Lcd8_Decimal3@Lcd_hr),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Lcd8_Decimal3@Lcd_t+1)
	addwf	(Lcd8_Decimal3@Lcd_t+1)
	movf	(0+(?___lwdiv)),w
	clrf	(Lcd8_Decimal3@Lcd_t)
	addwf	(Lcd8_Decimal3@Lcd_t)

	line	82
;pic_lcd8.h: 82: Lcd_o=Lcd_hr%10;
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	movf	(Lcd8_Decimal3@Lcd_hr+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(Lcd8_Decimal3@Lcd_hr),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Lcd8_Decimal3@Lcd_o+1)
	addwf	(Lcd8_Decimal3@Lcd_o+1)
	movf	(0+(?___lwmod)),w
	clrf	(Lcd8_Decimal3@Lcd_o)
	addwf	(Lcd8_Decimal3@Lcd_o)

	line	84
;pic_lcd8.h: 84: Lcd8_Write(com,Lcd_h+0x30);
	movf	(Lcd8_Decimal3@Lcd_h),w
	addlw	030h
	movwf	(??_Lcd8_Decimal3+0)+0
	movf	(??_Lcd8_Decimal3+0)+0,w
	movwf	(?_Lcd8_Write)
	movf	(Lcd8_Decimal3@com),w
	fcall	_Lcd8_Write
	line	85
;pic_lcd8.h: 85: Lcd8_Write(com+1,Lcd_t+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Lcd8_Decimal3@Lcd_t),w
	addlw	030h
	movwf	(??_Lcd8_Decimal3+0)+0
	movf	(??_Lcd8_Decimal3+0)+0,w
	movwf	(?_Lcd8_Write)
	movf	(Lcd8_Decimal3@com),w
	addlw	01h
	fcall	_Lcd8_Write
	line	86
;pic_lcd8.h: 86: Lcd8_Write(com+2,Lcd_o+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Lcd8_Decimal3@Lcd_o),w
	addlw	030h
	movwf	(??_Lcd8_Decimal3+0)+0
	movf	(??_Lcd8_Decimal3+0)+0,w
	movwf	(?_Lcd8_Write)
	movf	(Lcd8_Decimal3@com),w
	addlw	02h
	fcall	_Lcd8_Write
	line	87
	
l723:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Decimal3
	__end_of_Lcd8_Decimal3:
;; =============== function _Lcd8_Decimal3 ends ============

	signat	_Lcd8_Decimal3,8312
	global	_Lcd8_Display
psect	text311,local,class=CODE,delta=2
global __ptext311
__ptext311:

;; *************** function _Lcd8_Display *****************
;; Defined at:
;;		line 53 in file "E:\pic program\serial tx rx\pic_lcd8.h"
;; Parameters:    Size  Location     Type
;;  com             1    wreg     unsigned char 
;;  word            1    5[COMMON] PTR const unsigned char 
;;		 -> STR_5(8), STR_4(8), STR_3(7), STR_2(12), 
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
psect	text311
	file	"E:\pic program\serial tx rx\pic_lcd8.h"
	line	53
	global	__size_of_Lcd8_Display
	__size_of_Lcd8_Display	equ	__end_of_Lcd8_Display-_Lcd8_Display
	
_Lcd8_Display:	
	opt	stack 4
; Regs used in _Lcd8_Display: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Lcd8_Display@com stored from wreg
	line	56
	movwf	(Lcd8_Display@com)
	
l3184:	
;pic_lcd8.h: 54: unsigned char Lcd_i;
;pic_lcd8.h: 56: for(Lcd_i=0;Lcd_i<n;Lcd_i++)
	clrf	(Lcd8_Display@Lcd_i)
	goto	l3190
	line	57
	
l715:	
	line	58
	
l3186:	
;pic_lcd8.h: 57: {
;pic_lcd8.h: 58: Lcd8_Write(com+Lcd_i,word[Lcd_i]);
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
	line	56
	
l3188:	
	movlw	(01h)
	movwf	(??_Lcd8_Display+0)+0
	movf	(??_Lcd8_Display+0)+0,w
	addwf	(Lcd8_Display@Lcd_i),f
	goto	l3190
	
l714:	
	
l3190:	
	movf	(Lcd8_Display@Lcd_i),w
	movwf	(??_Lcd8_Display+0)+0
	clrf	(??_Lcd8_Display+0)+0+1
	movf	(Lcd8_Display@n+1),w
	subwf	1+(??_Lcd8_Display+0)+0,w
	skipz
	goto	u2625
	movf	(Lcd8_Display@n),w
	subwf	0+(??_Lcd8_Display+0)+0,w
u2625:
	skipc
	goto	u2621
	goto	u2620
u2621:
	goto	l3186
u2620:
	goto	l717
	
l716:	
	line	60
	
l717:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Display
	__end_of_Lcd8_Display:
;; =============== function _Lcd8_Display ends ============

	signat	_Lcd8_Display,12408
	global	_Lcd8_Write
psect	text312,local,class=CODE,delta=2
global __ptext312
__ptext312:

;; *************** function _Lcd8_Write *****************
;; Defined at:
;;		line 41 in file "E:\pic program\serial tx rx\pic_lcd8.h"
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
;;		_Lcd8_Decimal3
;;		_Lcd8_Decimal2
;;		_Lcd8_Decimal4
;; This function uses a non-reentrant model
;;
psect	text312
	file	"E:\pic program\serial tx rx\pic_lcd8.h"
	line	41
	global	__size_of_Lcd8_Write
	__size_of_Lcd8_Write	equ	__end_of_Lcd8_Write-_Lcd8_Write
	
_Lcd8_Write:	
	opt	stack 4
; Regs used in _Lcd8_Write: [wreg+status,2+status,0+pclath+cstack]
;Lcd8_Write@com stored from wreg
	movwf	(Lcd8_Write@com)
	line	42
	
l3170:	
;pic_lcd8.h: 42: Lcd8_Command(com);
	movf	(Lcd8_Write@com),w
	fcall	_Lcd8_Command
	line	44
	
l3172:	
;pic_lcd8.h: 44: PORTD=lr;
	movf	(Lcd8_Write@lr),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	45
	
l3174:	
;pic_lcd8.h: 45: Lcd_en=1;
	bsf	(61/8),(61)&7
	line	46
	
l3176:	
;pic_lcd8.h: 46: Lcd_rs=1;
	bsf	(60/8),(60)&7
	line	47
	
l3178:	
;pic_lcd8.h: 47: Delay(125);
	movlw	low(07Dh)
	movwf	(?_Delay)
	movlw	high(07Dh)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	48
	
l3180:	
;pic_lcd8.h: 48: Lcd_en=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	line	49
	
l3182:	
;pic_lcd8.h: 49: Delay(125);
	movlw	low(07Dh)
	movwf	(?_Delay)
	movlw	high(07Dh)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	50
	
l711:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Write
	__end_of_Lcd8_Write:
;; =============== function _Lcd8_Write ends ============

	signat	_Lcd8_Write,8312
	global	_Lcd8_Init
psect	text313,local,class=CODE,delta=2
global __ptext313
__ptext313:

;; *************** function _Lcd8_Init *****************
;; Defined at:
;;		line 23 in file "E:\pic program\serial tx rx\pic_lcd8.h"
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
psect	text313
	file	"E:\pic program\serial tx rx\pic_lcd8.h"
	line	23
	global	__size_of_Lcd8_Init
	__size_of_Lcd8_Init	equ	__end_of_Lcd8_Init-_Lcd8_Init
	
_Lcd8_Init:	
	opt	stack 5
; Regs used in _Lcd8_Init: [wreg+status,2+status,0+pclath+cstack]
	line	24
	
l3168:	
;pic_lcd8.h: 24: Lcd8_Command(0x38);
	movlw	(038h)
	fcall	_Lcd8_Command
	line	25
;pic_lcd8.h: 25: Lcd8_Command(0x06);
	movlw	(06h)
	fcall	_Lcd8_Command
	line	26
;pic_lcd8.h: 26: Lcd8_Command(0x0c);
	movlw	(0Ch)
	fcall	_Lcd8_Command
	line	27
;pic_lcd8.h: 27: Lcd8_Command(0x01);
	movlw	(01h)
	fcall	_Lcd8_Command
	line	28
	
l705:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Init
	__end_of_Lcd8_Init:
;; =============== function _Lcd8_Init ends ============

	signat	_Lcd8_Init,88
	global	_txstr
psect	text314,local,class=CODE,delta=2
global __ptext314
__ptext314:

;; *************** function _txstr *****************
;; Defined at:
;;		line 86 in file "E:\pic program\serial tx rx\serial tx rx.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR unsigned char 
;;		 -> STR_1(26), 
;; Auto vars:     Size  Location     Type
;;  s               1    2[COMMON] PTR unsigned char 
;;		 -> STR_1(26), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_tx
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text314
	file	"E:\pic program\serial tx rx\serial tx rx.c"
	line	86
	global	__size_of_txstr
	__size_of_txstr	equ	__end_of_txstr-_txstr
	
_txstr:	
	opt	stack 6
; Regs used in _txstr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;txstr@s stored from wreg
	movwf	(txstr@s)
	line	87
	
l2908:	
;serial tx rx.c: 87: while(*s){
	goto	l2914
	
l761:	
	line	88
	
l2910:	
;serial tx rx.c: 88: tx(*s++);
	movf	(txstr@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_tx
	
l2912:	
	movlw	(01h)
	movwf	(??_txstr+0)+0
	movf	(??_txstr+0)+0,w
	addwf	(txstr@s),f
	goto	l2914
	line	89
	
l760:	
	line	87
	
l2914:	
	movf	(txstr@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2251
	goto	u2250
u2251:
	goto	l2910
u2250:
	goto	l763
	
l762:	
	line	90
	
l763:	
	return
	opt stack 0
GLOBAL	__end_of_txstr
	__end_of_txstr:
;; =============== function _txstr ends ============

	signat	_txstr,4216
	global	_Lcd8_Command
psect	text315,local,class=CODE,delta=2
global __ptext315
__ptext315:

;; *************** function _Lcd8_Command *****************
;; Defined at:
;;		line 31 in file "E:\pic program\serial tx rx\pic_lcd8.h"
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
psect	text315
	file	"E:\pic program\serial tx rx\pic_lcd8.h"
	line	31
	global	__size_of_Lcd8_Command
	__size_of_Lcd8_Command	equ	__end_of_Lcd8_Command-_Lcd8_Command
	
_Lcd8_Command:	
	opt	stack 4
; Regs used in _Lcd8_Command: [wreg+status,2+status,0+pclath+cstack]
;Lcd8_Command@com stored from wreg
	movwf	(Lcd8_Command@com)
	line	32
	
l3156:	
;pic_lcd8.h: 32: PORTD=com;
	movf	(Lcd8_Command@com),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	33
	
l3158:	
;pic_lcd8.h: 33: Lcd_en=1;
	bsf	(61/8),(61)&7
	line	34
	
l3160:	
;pic_lcd8.h: 34: Lcd_rs=0;
	bcf	(60/8),(60)&7
	line	35
	
l3162:	
;pic_lcd8.h: 35: Delay(125);
	movlw	low(07Dh)
	movwf	(?_Delay)
	movlw	high(07Dh)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	36
	
l3164:	
;pic_lcd8.h: 36: Lcd_en=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	line	37
	
l3166:	
;pic_lcd8.h: 37: Delay(125);
	movlw	low(07Dh)
	movwf	(?_Delay)
	movlw	high(07Dh)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	38
	
l708:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Command
	__end_of_Lcd8_Command:
;; =============== function _Lcd8_Command ends ============

	signat	_Lcd8_Command,4216
	global	___awmod
psect	text316,local,class=CODE,delta=2
global __ptext316
__ptext316:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd8_Decimal3
;;		_Lcd8_Decimal2
;; This function uses a non-reentrant model
;;
psect	text316
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l3122:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u2531
	goto	u2530
u2531:
	goto	l3126
u2530:
	line	10
	
l3124:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l3126
	line	12
	
l1654:	
	line	13
	
l3126:	
	btfss	(___awmod@divisor+1),7
	goto	u2541
	goto	u2540
u2541:
	goto	l3130
u2540:
	line	14
	
l3128:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l3130
	
l1655:	
	line	15
	
l3130:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2551
	goto	u2550
u2551:
	goto	l3148
u2550:
	line	16
	
l3132:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l3138
	
l1658:	
	line	18
	
l3134:	
	movlw	01h
	
u2565:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2565
	line	19
	
l3136:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l3138
	line	20
	
l1657:	
	line	17
	
l3138:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2571
	goto	u2570
u2571:
	goto	l3134
u2570:
	goto	l3140
	
l1659:	
	goto	l3140
	line	21
	
l1660:	
	line	22
	
l3140:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2585
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2585:
	skipc
	goto	u2581
	goto	u2580
u2581:
	goto	l3144
u2580:
	line	23
	
l3142:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l3144
	
l1661:	
	line	24
	
l3144:	
	movlw	01h
	
u2595:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2595
	line	25
	
l3146:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2601
	goto	u2600
u2601:
	goto	l3140
u2600:
	goto	l3148
	
l1662:	
	goto	l3148
	line	26
	
l1656:	
	line	27
	
l3148:	
	movf	(___awmod@sign),w
	skipz
	goto	u2610
	goto	l3152
u2610:
	line	28
	
l3150:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l3152
	
l1663:	
	line	29
	
l3152:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1664
	
l3154:	
	line	30
	
l1664:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text317,local,class=CODE,delta=2
global __ptext317
__ptext317:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd8_Decimal3
;; This function uses a non-reentrant model
;;
psect	text317
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l3082:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2431
	goto	u2430
u2431:
	goto	l3086
u2430:
	line	11
	
l3084:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l3086
	line	13
	
l1586:	
	line	14
	
l3086:	
	btfss	(___awdiv@dividend+1),7
	goto	u2441
	goto	u2440
u2441:
	goto	l3092
u2440:
	line	15
	
l3088:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l3090:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l3092
	line	17
	
l1587:	
	line	18
	
l3092:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l3094:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2451
	goto	u2450
u2451:
	goto	l3114
u2450:
	line	20
	
l3096:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l3102
	
l1590:	
	line	22
	
l3098:	
	movlw	01h
	
u2465:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2465
	line	23
	
l3100:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l3102
	line	24
	
l1589:	
	line	21
	
l3102:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2471
	goto	u2470
u2471:
	goto	l3098
u2470:
	goto	l3104
	
l1591:	
	goto	l3104
	line	25
	
l1592:	
	line	26
	
l3104:	
	movlw	01h
	
u2485:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2485
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2495
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2495:
	skipc
	goto	u2491
	goto	u2490
u2491:
	goto	l3110
u2490:
	line	28
	
l3106:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l3108:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l3110
	line	30
	
l1593:	
	line	31
	
l3110:	
	movlw	01h
	
u2505:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2505
	line	32
	
l3112:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2511
	goto	u2510
u2511:
	goto	l3104
u2510:
	goto	l3114
	
l1594:	
	goto	l3114
	line	33
	
l1588:	
	line	34
	
l3114:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2520
	goto	l3118
u2520:
	line	35
	
l3116:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l3118
	
l1595:	
	line	36
	
l3118:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1596
	
l3120:	
	line	37
	
l1596:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___lwmod
psect	text318,local,class=CODE,delta=2
global __ptext318
__ptext318:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd8_Decimal3
;;		_Lcd8_Decimal2
;;		_Lcd8_Decimal4
;; This function uses a non-reentrant model
;;
psect	text318
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 6
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l3060:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2371
	goto	u2370
u2371:
	goto	l3078
u2370:
	line	9
	
l3062:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l3068
	
l1464:	
	line	11
	
l3064:	
	movlw	01h
	
u2385:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2385
	line	12
	
l3066:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l3068
	line	13
	
l1463:	
	line	10
	
l3068:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2391
	goto	u2390
u2391:
	goto	l3064
u2390:
	goto	l3070
	
l1465:	
	goto	l3070
	line	14
	
l1466:	
	line	15
	
l3070:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2405
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2405:
	skipc
	goto	u2401
	goto	u2400
u2401:
	goto	l3074
u2400:
	line	16
	
l3072:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l3074
	
l1467:	
	line	17
	
l3074:	
	movlw	01h
	
u2415:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2415
	line	18
	
l3076:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2421
	goto	u2420
u2421:
	goto	l3070
u2420:
	goto	l3078
	
l1468:	
	goto	l3078
	line	19
	
l1462:	
	line	20
	
l3078:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l1469
	
l3080:	
	line	21
	
l1469:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text319,local,class=CODE,delta=2
global __ptext319
__ptext319:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[COMMON] unsigned int 
;;  counter         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd8_Decimal3
;;		_Lcd8_Decimal2
;;		_Lcd8_Decimal4
;; This function uses a non-reentrant model
;;
psect	text319
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l3034:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l3036:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2301
	goto	u2300
u2301:
	goto	l3056
u2300:
	line	11
	
l3038:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l3044
	
l1454:	
	line	13
	
l3040:	
	movlw	01h
	
u2315:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2315
	line	14
	
l3042:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l3044
	line	15
	
l1453:	
	line	12
	
l3044:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l3040
u2320:
	goto	l3046
	
l1455:	
	goto	l3046
	line	16
	
l1456:	
	line	17
	
l3046:	
	movlw	01h
	
u2335:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2335
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2345
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2345:
	skipc
	goto	u2341
	goto	u2340
u2341:
	goto	l3052
u2340:
	line	19
	
l3048:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l3050:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l3052
	line	21
	
l1457:	
	line	22
	
l3052:	
	movlw	01h
	
u2355:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2355
	line	23
	
l3054:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2361
	goto	u2360
u2361:
	goto	l3046
u2360:
	goto	l3056
	
l1458:	
	goto	l3056
	line	24
	
l1452:	
	line	25
	
l3056:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l1459
	
l3058:	
	line	26
	
l1459:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_tx
psect	text320,local,class=CODE,delta=2
global __ptext320
__ptext320:

;; *************** function _tx *****************
;; Defined at:
;;		line 74 in file "E:\pic program\serial tx rx\serial tx rx.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_txstr
;; This function uses a non-reentrant model
;;
psect	text320
	file	"E:\pic program\serial tx rx\serial tx rx.c"
	line	74
	global	__size_of_tx
	__size_of_tx	equ	__end_of_tx-_tx
	
_tx:	
	opt	stack 7
; Regs used in _tx: [wreg]
;tx@a stored from wreg
	movwf	(tx@a)
	line	75
	
l2024:	
;serial tx rx.c: 75: TXREG=a;
	movf	(tx@a),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	76
;serial tx rx.c: 76: while(!TXIF);
	goto	l748
	
l749:	
	
l748:	
	btfss	(100/8),(100)&7
	goto	u31
	goto	u30
u31:
	goto	l748
u30:
	
l750:	
	line	77
;serial tx rx.c: 77: TXIF=0;
	bcf	(100/8),(100)&7
	line	78
	
l751:	
	return
	opt stack 0
GLOBAL	__end_of_tx
	__end_of_tx:
;; =============== function _tx ends ============

	signat	_tx,4216
	global	_receiveChar
psect	text321,local,class=CODE,delta=2
global __ptext321
__ptext321:

;; *************** function _receiveChar *****************
;; Defined at:
;;		line 80 in file "E:\pic program\serial tx rx\serial tx rx.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text321
	file	"E:\pic program\serial tx rx\serial tx rx.c"
	line	80
	global	__size_of_receiveChar
	__size_of_receiveChar	equ	__end_of_receiveChar-_receiveChar
	
_receiveChar:	
	opt	stack 7
; Regs used in _receiveChar: [wreg]
	line	81
	
l2018:	
;serial tx rx.c: 81: while(!RCIF);
	goto	l754
	
l755:	
	
l754:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u21
	goto	u20
u21:
	goto	l754
u20:
	
l756:	
	line	82
;serial tx rx.c: 82: RCIF=0;
	bcf	(101/8),(101)&7
	line	83
	
l2020:	
;serial tx rx.c: 83: return RCREG;
	movf	(26),w	;volatile
	goto	l757
	
l2022:	
	line	84
	
l757:	
	return
	opt stack 0
GLOBAL	__end_of_receiveChar
	__end_of_receiveChar:
;; =============== function _receiveChar ends ============

	signat	_receiveChar,89
	global	_ser_int
psect	text322,local,class=CODE,delta=2
global __ptext322
__ptext322:

;; *************** function _ser_int *****************
;; Defined at:
;;		line 66 in file "E:\pic program\serial tx rx\serial tx rx.c"
;; Parameters:    Size  Location     Type
;;		None
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
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text322
	file	"E:\pic program\serial tx rx\serial tx rx.c"
	line	66
	global	__size_of_ser_int
	__size_of_ser_int	equ	__end_of_ser_int-_ser_int
	
_ser_int:	
	opt	stack 7
; Regs used in _ser_int: [wreg]
	line	67
	
l2014:	
;serial tx rx.c: 67: TXSTA=0x20;
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	68
;serial tx rx.c: 68: RCSTA=0b10010000;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	69
;serial tx rx.c: 69: SPBRG=31;
	movlw	(01Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	70
	
l2016:	
;serial tx rx.c: 70: TXIF=RCIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(101/8),(101)&7
	bcf	(100/8),(100)&7
	line	71
	
l745:	
	return
	opt stack 0
GLOBAL	__end_of_ser_int
	__end_of_ser_int:
;; =============== function _ser_int ends ============

	signat	_ser_int,88
	global	_Delay
psect	text323,local,class=CODE,delta=2
global __ptext323
__ptext323:

;; *************** function _Delay *****************
;; Defined at:
;;		line 108 in file "E:\pic program\serial tx rx\pic_lcd8.h"
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
psect	text323
	file	"E:\pic program\serial tx rx\pic_lcd8.h"
	line	108
	global	__size_of_Delay
	__size_of_Delay	equ	__end_of_Delay-_Delay
	
_Delay:	
	opt	stack 5
; Regs used in _Delay: [wreg]
	line	109
	
l3026:	
;pic_lcd8.h: 109: while(del--);
	goto	l3028
	
l730:	
	goto	l3028
	
l729:	
	
l3028:	
	movlw	low(01h)
	subwf	(Delay@del),f
	movlw	high(01h)
	skipc
	decf	(Delay@del+1),f
	subwf	(Delay@del+1),f
	movlw	high(0FFFFh)
	xorwf	((Delay@del+1)),w
	skipz
	goto	u2295
	movlw	low(0FFFFh)
	xorwf	((Delay@del)),w
u2295:

	skipz
	goto	u2291
	goto	u2290
u2291:
	goto	l3028
u2290:
	goto	l732
	
l731:	
	line	110
	
l732:	
	return
	opt stack 0
GLOBAL	__end_of_Delay
	__end_of_Delay:
;; =============== function _Delay ends ============

	signat	_Delay,4216
psect	text324,local,class=CODE,delta=2
global __ptext324
__ptext324:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
