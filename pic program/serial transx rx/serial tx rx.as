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
# 2 "E:\pic program\serial transx rx\serial tx rx.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "E:\pic program\serial transx rx\serial tx rx.c"
	dw 0xFFFE & 0xFFFB & 0xFFFF & 0xFFFF & 0xFFFF & 0xFF7F & 0xFFFF & 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_ser_int
	FNCALL	_main,_txstr
	FNCALL	_main,_rx
	FNCALL	_main,_tx
	FNCALL	_txstr,_tx
	FNROOT	_main
	global	_RCREG
psect	text106,local,class=CODE,delta=2
global __ptext106
__ptext106:
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_TXREG
_TXREG	set	25
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RCIF
_RCIF	set	101
	global	_TXIF
_TXIF	set	100
	global	_SPBRG
_SPBRG	set	153
	global	_TXSTA
_TXSTA	set	152
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
	file	"serial tx rx.as"
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
	global	?_ser_int
?_ser_int:	; 0 bytes @ 0x0
	global	??_ser_int
??_ser_int:	; 0 bytes @ 0x0
	global	?_txstr
?_txstr:	; 0 bytes @ 0x0
	global	?_tx
?_tx:	; 0 bytes @ 0x0
	global	??_tx
??_tx:	; 0 bytes @ 0x0
	global	??_rx
??_rx:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_rx
?_rx:	; 1 bytes @ 0x0
	global	tx@a
tx@a:	; 1 bytes @ 0x0
	ds	1
	global	??_txstr
??_txstr:	; 0 bytes @ 0x1
	ds	1
	global	txstr@s
txstr@s:	; 1 bytes @ 0x2
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x3
;;Data sizes: Strings 26, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      3       3
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; txstr@s	PTR unsigned char  size(1) Largest target is 26
;;		 -> STR_1(CODE[26]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_txstr
;;   _txstr->_tx
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0      60
;;                            _ser_int
;;                              _txstr
;;                                 _rx
;;                                 _tx
;; ---------------------------------------------------------------------------------
;; (1) _txstr                                                2     2      0      45
;;                                              1 COMMON     2     2      0
;;                                 _tx
;; ---------------------------------------------------------------------------------
;; (1) _tx                                                   1     1      0      15
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _rx                                                   0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _ser_int                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _ser_int
;;   _txstr
;;     _tx
;;   _rx
;;   _tx
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      3       3       1       21.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
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
;;		line 12 in file "E:\pic program\serial transx rx\serial tx rx.c"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ser_int
;;		_txstr
;;		_rx
;;		_tx
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\pic program\serial transx rx\serial tx rx.c"
	line	12
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	13
	
l2644:	
;serial tx rx.c: 13: TRISC6=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1086/8)^080h,(1086)&7
	line	15
;serial tx rx.c: 15: TRISC7=1;
	bsf	(1087/8)^080h,(1087)&7
	line	16
	
l2646:	
;serial tx rx.c: 16: ser_int();
	fcall	_ser_int
	line	17
	
l2648:	
;serial tx rx.c: 17: txstr("PIC16F877A SERIAL TEST\n\r\r");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_txstr
	goto	l2650
	line	18
;serial tx rx.c: 18: while(1)
	
l693:	
	line	21
	
l2650:	
;serial tx rx.c: 19: {
;serial tx rx.c: 21: tx(rx());
	fcall	_rx
	fcall	_tx
	goto	l2650
	line	22
	
l694:	
	line	18
	goto	l2650
	
l695:	
	line	23
	
l696:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_txstr
psect	text107,local,class=CODE,delta=2
global __ptext107
__ptext107:

;; *************** function _txstr *****************
;; Defined at:
;;		line 55 in file "E:\pic program\serial transx rx\serial tx rx.c"
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
psect	text107
	file	"E:\pic program\serial transx rx\serial tx rx.c"
	line	55
	global	__size_of_txstr
	__size_of_txstr	equ	__end_of_txstr-_txstr
	
_txstr:	
	opt	stack 6
; Regs used in _txstr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;txstr@s stored from wreg
	movwf	(txstr@s)
	line	56
	
l2636:	
;serial tx rx.c: 56: while(*s) {
	goto	l2642
	
l715:	
	line	57
	
l2638:	
;serial tx rx.c: 57: tx(*s++);
	movf	(txstr@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_tx
	
l2640:	
	movlw	(01h)
	movwf	(??_txstr+0)+0
	movf	(??_txstr+0)+0,w
	addwf	(txstr@s),f
	goto	l2642
	line	58
	
l714:	
	line	56
	
l2642:	
	movf	(txstr@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2241
	goto	u2240
u2241:
	goto	l2638
u2240:
	goto	l717
	
l716:	
	line	59
	
l717:	
	return
	opt stack 0
GLOBAL	__end_of_txstr
	__end_of_txstr:
;; =============== function _txstr ends ============

	signat	_txstr,4216
	global	_tx
psect	text108,local,class=CODE,delta=2
global __ptext108
__ptext108:

;; *************** function _tx *****************
;; Defined at:
;;		line 41 in file "E:\pic program\serial transx rx\serial tx rx.c"
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
psect	text108
	file	"E:\pic program\serial transx rx\serial tx rx.c"
	line	41
	global	__size_of_tx
	__size_of_tx	equ	__end_of_tx-_tx
	
_tx:	
	opt	stack 7
; Regs used in _tx: [wreg]
;tx@a stored from wreg
	movwf	(tx@a)
	line	42
	
l1776:	
;serial tx rx.c: 42: TXREG=a;
	movf	(tx@a),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	43
;serial tx rx.c: 43: while(!TXIF);
	goto	l702
	
l703:	
	
l702:	
	btfss	(100/8),(100)&7
	goto	u21
	goto	u20
u21:
	goto	l702
u20:
	
l704:	
	line	44
;serial tx rx.c: 44: TXIF = 0;
	bcf	(100/8),(100)&7
	line	45
	
l705:	
	return
	opt stack 0
GLOBAL	__end_of_tx
	__end_of_tx:
;; =============== function _tx ends ============

	signat	_tx,4216
	global	_rx
psect	text109,local,class=CODE,delta=2
global __ptext109
__ptext109:

;; *************** function _rx *****************
;; Defined at:
;;		line 48 in file "E:\pic program\serial transx rx\serial tx rx.c"
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
psect	text109
	file	"E:\pic program\serial transx rx\serial tx rx.c"
	line	48
	global	__size_of_rx
	__size_of_rx	equ	__end_of_rx-_rx
	
_rx:	
	opt	stack 7
; Regs used in _rx: [wreg]
	line	49
	
l1770:	
;serial tx rx.c: 49: while(!RCIF);
	goto	l708
	
l709:	
	
l708:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u11
	goto	u10
u11:
	goto	l708
u10:
	
l710:	
	line	50
;serial tx rx.c: 50: RCIF=0;
	bcf	(101/8),(101)&7
	line	51
	
l1772:	
;serial tx rx.c: 51: return RCREG;
	movf	(26),w	;volatile
	goto	l711
	
l1774:	
	line	52
	
l711:	
	return
	opt stack 0
GLOBAL	__end_of_rx
	__end_of_rx:
;; =============== function _rx ends ============

	signat	_rx,89
	global	_ser_int
psect	text110,local,class=CODE,delta=2
global __ptext110
__ptext110:

;; *************** function _ser_int *****************
;; Defined at:
;;		line 26 in file "E:\pic program\serial transx rx\serial tx rx.c"
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
psect	text110
	file	"E:\pic program\serial transx rx\serial tx rx.c"
	line	26
	global	__size_of_ser_int
	__size_of_ser_int	equ	__end_of_ser_int-_ser_int
	
_ser_int:	
	opt	stack 7
; Regs used in _ser_int: [wreg]
	line	27
	
l1764:	
;serial tx rx.c: 27: TXSTA=0x20;
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	30
;serial tx rx.c: 30: RCSTA=0b10010000;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	34
;serial tx rx.c: 34: SPBRG=31;
	movlw	(01Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	36
	
l1766:	
;serial tx rx.c: 36: TXIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(100/8),(100)&7
	line	37
	
l1768:	
;serial tx rx.c: 37: RCIF=0;
	bcf	(101/8),(101)&7
	line	38
	
l699:	
	return
	opt stack 0
GLOBAL	__end_of_ser_int
	__end_of_ser_int:
;; =============== function _ser_int ends ============

	signat	_ser_int,88
psect	text111,local,class=CODE,delta=2
global __ptext111
__ptext111:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
