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
	FNCALL	_main,_seq
	FNCALL	_seq,_timer0delay
	FNROOT	_main
	global	_PORTD
psect	text82,local,class=CODE,delta=2
global __ptext82
__ptext82:
_PORTD	set	8
	global	_TMR0
_TMR0	set	1
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RC0
_RC0	set	56
	global	_TMR0IF
_TMR0IF	set	90
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_TRISD
_TRISD	set	136
	global	_TRISC0
_TRISC0	set	1080
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
	file	"tm0.as"
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
	global	?_timer0delay
?_timer0delay:	; 0 bytes @ 0x0
	global	??_timer0delay
??_timer0delay:	; 0 bytes @ 0x0
	global	?_seq
?_seq:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	timer0delay@i
timer0delay@i:	; 2 bytes @ 0x0
	ds	2
	global	??_seq
??_seq:	; 0 bytes @ 0x2
	ds	1
	global	seq@get
seq@get:	; 1 bytes @ 0x3
	ds	1
	global	seq@j
seq@j:	; 2 bytes @ 0x4
	ds	2
	global	seq@j_1233
seq@j_1233:	; 2 bytes @ 0x6
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x8
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8       8
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_seq
;;   _seq->_timer0delay
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
;; (0) _main                                                 0     0      0     150
;;                                _seq
;; ---------------------------------------------------------------------------------
;; (1) _seq                                                  6     6      0     150
;;                                              2 COMMON     6     6      0
;;                        _timer0delay
;; ---------------------------------------------------------------------------------
;; (2) _timer0delay                                          2     2      0      30
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _seq
;;     _timer0delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      8       8       1       57.1%
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
;;		line 24 in file "D:\pic program\timer 0 and 1\tm0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
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
;;		_seq
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\pic program\timer 0 and 1\tm0.c"
	line	24
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	25
	
l2654:	
;tm0.c: 25: TRISC0 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1080/8)^080h,(1080)&7
	line	26
	
l2656:	
;tm0.c: 26: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	27
;tm0.c: 27: PORTD=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	28
	
l2658:	
;tm0.c: 28: OPTION_REG=0b00000111;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	29
	
l2660:	
;tm0.c: 29: TMR0=237;
	movlw	(0EDh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	goto	l2662
	line	30
;tm0.c: 30: while(1)
	
l694:	
	line	32
	
l2662:	
;tm0.c: 31: {
;tm0.c: 32: if (RC0==0)
	btfsc	(56/8),(56)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l2662
u2310:
	line	35
	
l2664:	
;tm0.c: 33: {
;tm0.c: 35: seq(1);
	movlw	(01h)
	fcall	_seq
	line	36
;tm0.c: 36: seq(3);
	movlw	(03h)
	fcall	_seq
	line	37
;tm0.c: 37: seq(7);
	movlw	(07h)
	fcall	_seq
	line	38
;tm0.c: 38: seq(15);
	movlw	(0Fh)
	fcall	_seq
	line	40
;tm0.c: 40: while(RC0==1)
	goto	l2668
	
l697:	
	line	42
	
l2666:	
;tm0.c: 41: {
;tm0.c: 42: PORTD=0xFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	goto	l2668
	line	43
	
l696:	
	line	40
	
l2668:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(56/8),(56)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l2666
u2320:
	goto	l2662
	
l698:	
	goto	l2662
	line	44
	
l695:	
	goto	l2662
	line	45
	
l699:	
	line	30
	goto	l2662
	
l700:	
	line	46
	
l701:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_seq
psect	text83,local,class=CODE,delta=2
global __ptext83
__ptext83:

;; *************** function _seq *****************
;; Defined at:
;;		line 8 in file "D:\pic program\timer 0 and 1\tm0.c"
;; Parameters:    Size  Location     Type
;;  get             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  get             1    3[COMMON] unsigned char 
;;  j               2    6[COMMON] int 
;;  j               2    4[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         5       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_timer0delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text83
	file	"D:\pic program\timer 0 and 1\tm0.c"
	line	8
	global	__size_of_seq
	__size_of_seq	equ	__end_of_seq-_seq
	
_seq:	
	opt	stack 6
; Regs used in _seq: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;seq@get stored from wreg
	line	10
	movwf	(seq@get)
	
l2626:	
;tm0.c: 9: {
;tm0.c: 10: for (int j=0; j<=7; j++)
	clrf	(seq@j)
	clrf	(seq@j+1)
	
l2628:	
	movf	(seq@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2255
	movlw	low(08h)
	subwf	(seq@j),w
u2255:

	skipc
	goto	u2251
	goto	u2250
u2251:
	goto	l2632
u2250:
	goto	l2640
	
l2630:	
	goto	l2640
	line	11
	
l687:	
	line	12
	
l2632:	
;tm0.c: 11: {
;tm0.c: 12: PORTD = get << j;
	movf	(seq@get),w
	movwf	(??_seq+0)+0
	incf	(seq@j),w
	goto	u2264
u2265:
	clrc
	rlf	(??_seq+0)+0,f
u2264:
	addlw	-1
	skipz
	goto	u2265
	movf	0+(??_seq+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	13
	
l2634:	
;tm0.c: 13: timer0delay();
	fcall	_timer0delay
	line	10
	
l2636:	
	movlw	low(01h)
	addwf	(seq@j),f
	skipnc
	incf	(seq@j+1),f
	movlw	high(01h)
	addwf	(seq@j+1),f
	
l2638:	
	movf	(seq@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2275
	movlw	low(08h)
	subwf	(seq@j),w
u2275:

	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l2632
u2270:
	goto	l2640
	
l688:	
	line	15
	
l2640:	
;tm0.c: 14: }
;tm0.c: 15: for (int j=7; j>=0; j--)
	movlw	low(07h)
	movwf	(seq@j_1233)
	movlw	high(07h)
	movwf	((seq@j_1233))+1
	
l2642:	
	btfss	(seq@j_1233+1),7
	goto	u2281
	goto	u2280
u2281:
	goto	l2646
u2280:
	goto	l691
	
l2644:	
	goto	l691
	line	16
	
l689:	
	line	17
	
l2646:	
;tm0.c: 16: {
;tm0.c: 17: PORTD = get << j;
	movf	(seq@get),w
	movwf	(??_seq+0)+0
	incf	(seq@j_1233),w
	goto	u2294
u2295:
	clrc
	rlf	(??_seq+0)+0,f
u2294:
	addlw	-1
	skipz
	goto	u2295
	movf	0+(??_seq+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	18
	
l2648:	
;tm0.c: 18: timer0delay();
	fcall	_timer0delay
	line	15
	
l2650:	
	movlw	low(-1)
	addwf	(seq@j_1233),f
	skipnc
	incf	(seq@j_1233+1),f
	movlw	high(-1)
	addwf	(seq@j_1233+1),f
	
l2652:	
	btfss	(seq@j_1233+1),7
	goto	u2301
	goto	u2300
u2301:
	goto	l2646
u2300:
	goto	l691
	
l690:	
	line	21
	
l691:	
	return
	opt stack 0
GLOBAL	__end_of_seq
	__end_of_seq:
;; =============== function _seq ends ============

	signat	_seq,4216
	global	_timer0delay
psect	text84,local,class=CODE,delta=2
global __ptext84
__ptext84:

;; *************** function _timer0delay *****************
;; Defined at:
;;		line 48 in file "D:\pic program\timer 0 and 1\tm0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_seq
;; This function uses a non-reentrant model
;;
psect	text84
	file	"D:\pic program\timer 0 and 1\tm0.c"
	line	48
	global	__size_of_timer0delay
	__size_of_timer0delay	equ	__end_of_timer0delay-_timer0delay
	
_timer0delay:	
	opt	stack 6
; Regs used in _timer0delay: [wreg+status,2+btemp+1]
	line	50
	
l1756:	
;tm0.c: 49: int i;
;tm0.c: 50: for (i=0;i <1000 ; i++);{
	clrf	(timer0delay@i)
	clrf	(timer0delay@i+1)
	
l1758:	
	movf	(timer0delay@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u15
	movlw	low(03E8h)
	subwf	(timer0delay@i),w
u15:

	skipc
	goto	u11
	goto	u10
u11:
	goto	l1762
u10:
	goto	l706
	
l1760:	
	goto	l706
	
l704:	
	
l1762:	
	movlw	low(01h)
	addwf	(timer0delay@i),f
	skipnc
	incf	(timer0delay@i+1),f
	movlw	high(01h)
	addwf	(timer0delay@i+1),f
	
l1764:	
	movf	(timer0delay@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u25
	movlw	low(03E8h)
	subwf	(timer0delay@i),w
u25:

	skipc
	goto	u21
	goto	u20
u21:
	goto	l1762
u20:
	goto	l706
	
l705:	
	line	51
;tm0.c: 51: while(!TMR0IF);
	goto	l706
	
l707:	
	
l706:	
	btfss	(90/8),(90)&7
	goto	u31
	goto	u30
u31:
	goto	l706
u30:
	
l708:	
	line	52
;tm0.c: 52: TMR0IF=0;i=0;
	bcf	(90/8),(90)&7
	
l1766:	
	clrf	(timer0delay@i)
	clrf	(timer0delay@i+1)
	line	55
	
l709:	
	return
	opt stack 0
GLOBAL	__end_of_timer0delay
	__end_of_timer0delay:
;; =============== function _timer0delay ends ============

	signat	_timer0delay,88
psect	text85,local,class=CODE,delta=2
global __ptext85
__ptext85:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
