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
	FNCALL	_main,_timer1delay
	FNROOT	_main
	global	_PORTD
psect	text78,local,class=CODE,delta=2
global __ptext78
__ptext78:
_PORTD	set	8
	global	_T1CON
_T1CON	set	16
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_PEIE
_PEIE	set	94
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_TMR1IF
_TMR1IF	set	96
	global	_TMR1ON
_TMR1ON	set	128
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
	file	"attempt1.as"
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
	global	?_timer1delay
?_timer1delay:	; 0 bytes @ 0x0
	global	??_timer1delay
??_timer1delay:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	timer1delay@i
timer1delay@i:	; 2 bytes @ 0x0
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      2       2
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_timer1delay
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
;; (0) _main                                                 0     0      0      30
;;                        _timer1delay
;; ---------------------------------------------------------------------------------
;; (1) _timer1delay                                          2     2      0      30
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _timer1delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      2       2       1       14.3%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
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
;;		line 25 in file "D:\pic program\star delta\unconfiguration.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_timer1delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\pic program\star delta\unconfiguration.c"
	line	25
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	26
	
l2658:	
;unconfiguration.c: 26: TRISC0 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1080/8)^080h,(1080)&7
	line	27
	
l2660:	
;unconfiguration.c: 27: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	28
;unconfiguration.c: 28: PORTD=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	goto	l2662
	line	29
;unconfiguration.c: 29: while(1)
	
l694:	
	line	31
	
l2662:	
;unconfiguration.c: 30: {
;unconfiguration.c: 31: if (RD0 ==1 && RD1 ==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(64/8),(64)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l695
u2310:
	
l2664:	
	btfsc	(65/8),(65)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l695
u2320:
	line	33
	
l2666:	
;unconfiguration.c: 32: {
;unconfiguration.c: 33: RD0=1;
	bsf	(64/8),(64)&7
	line	34
;unconfiguration.c: 34: RD1=0;
	bcf	(65/8),(65)&7
	line	35
	
l2668:	
;unconfiguration.c: 35: timer1delay();
	fcall	_timer1delay
	line	36
;unconfiguration.c: 36: }
	goto	l2662
	line	37
	
l695:	
;unconfiguration.c: 37: else if( RD1 ==1&& RD0 ==0)
	btfss	(65/8),(65)&7
	goto	u2331
	goto	u2330
u2331:
	goto	l697
u2330:
	
l2670:	
	btfsc	(64/8),(64)&7
	goto	u2341
	goto	u2340
u2341:
	goto	l697
u2340:
	line	39
	
l2672:	
;unconfiguration.c: 38: {
;unconfiguration.c: 39: RD0 =0;
	bcf	(64/8),(64)&7
	line	40
;unconfiguration.c: 40: RD1 =1;
	bsf	(65/8),(65)&7
	line	41
	
l2674:	
;unconfiguration.c: 41: timer1delay();
	fcall	_timer1delay
	line	42
;unconfiguration.c: 42: }
	goto	l2662
	line	43
	
l697:	
	line	45
;unconfiguration.c: 43: else
;unconfiguration.c: 44: {
;unconfiguration.c: 45: RD0=0;
	bcf	(64/8),(64)&7
	line	46
;unconfiguration.c: 46: RD1=0;
	bcf	(65/8),(65)&7
	line	47
	
l2676:	
;unconfiguration.c: 47: timer1delay();
	fcall	_timer1delay
	goto	l2662
	line	48
	
l698:	
	goto	l2662
	
l696:	
	goto	l2662
	line	49
	
l699:	
	line	29
	goto	l2662
	
l700:	
	line	50
	
l701:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_timer1delay
psect	text79,local,class=CODE,delta=2
global __ptext79
__ptext79:

;; *************** function _timer1delay *****************
;; Defined at:
;;		line 53 in file "D:\pic program\star delta\unconfiguration.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, btemp+1
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
;;		_main
;;		_seq
;; This function uses a non-reentrant model
;;
psect	text79
	file	"D:\pic program\star delta\unconfiguration.c"
	line	53
	global	__size_of_timer1delay
	__size_of_timer1delay	equ	__end_of_timer1delay-_timer1delay
	
_timer1delay:	
	opt	stack 7
; Regs used in _timer1delay: [wreg+btemp+1]
	line	54
	
l1784:	
;unconfiguration.c: 54: T1CON=0x31;
	movlw	(031h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(16)	;volatile
	line	55
;unconfiguration.c: 55: TMR1H=0x0B;
	movlw	(0Bh)
	movwf	(15)	;volatile
	line	56
;unconfiguration.c: 56: TMR1L=0xDB;
	movlw	(0DBh)
	movwf	(14)	;volatile
	line	57
	
l1786:	
;unconfiguration.c: 57: GIE=1;
	bsf	(95/8),(95)&7
	line	58
	
l1788:	
;unconfiguration.c: 58: PEIE=1;
	bsf	(94/8),(94)&7
	line	59
	
l1790:	
;unconfiguration.c: 59: TMR1ON =1;
	bsf	(128/8),(128)&7
	line	60
;unconfiguration.c: 60: for(int i=1; i<=5;i++){
	movlw	low(01h)
	movwf	(timer1delay@i)
	movlw	high(01h)
	movwf	((timer1delay@i))+1
	
l1792:	
	movf	(timer1delay@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(06h))^80h
	subwf	btemp+1,w
	skipz
	goto	u75
	movlw	low(06h)
	subwf	(timer1delay@i),w
u75:

	skipc
	goto	u71
	goto	u70
u71:
	goto	l706
u70:
	goto	l709
	
l1794:	
	goto	l709
	
l704:	
	line	61
;unconfiguration.c: 61: while(!TMR1IF);
	goto	l706
	
l707:	
	
l706:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(96/8),(96)&7
	goto	u81
	goto	u80
u81:
	goto	l706
u80:
	
l708:	
	line	62
;unconfiguration.c: 62: TMR1IF = 0;
	bcf	(96/8),(96)&7
	line	60
	
l1796:	
	movlw	low(01h)
	addwf	(timer1delay@i),f
	skipnc
	incf	(timer1delay@i+1),f
	movlw	high(01h)
	addwf	(timer1delay@i+1),f
	
l1798:	
	movf	(timer1delay@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(06h))^80h
	subwf	btemp+1,w
	skipz
	goto	u95
	movlw	low(06h)
	subwf	(timer1delay@i),w
u95:

	skipc
	goto	u91
	goto	u90
u91:
	goto	l706
u90:
	goto	l709
	
l705:	
	line	64
	
l709:	
	return
	opt stack 0
GLOBAL	__end_of_timer1delay
	__end_of_timer1delay:
;; =============== function _timer1delay ends ============

	signat	_timer1delay,88
psect	text80,local,class=CODE,delta=2
global __ptext80
__ptext80:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
