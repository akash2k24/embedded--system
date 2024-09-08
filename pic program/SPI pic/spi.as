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
# 2 "E:\pic program\SPI pic\spi.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "E:\pic program\SPI pic\spi.c"
	dw 0xFFFE & 0xFFFB & 0xFFF7 & 0xFFBF & 0xFF7F & 0xFFFF & 0xFFFF & 0xFFFF ;#
	FNROOT	_main
	global	_SSPBUF
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_SSPBUF	set	19
	global	_SSPCON
_SSPCON	set	20
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RB0
_RB0	set	48
	global	_SSPIF
_SSPIF	set	99
	global	_SSPSTAT
_SSPSTAT	set	148
	global	_TRISB0
_TRISB0	set	1072
	global	_TRISC3
_TRISC3	set	1083
	global	_TRISC4
_TRISC4	set	1084
	global	_TRISC5
_TRISC5	set	1085
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
	file	"spi.as"
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
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
	ds	2
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
;;   None.
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
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
;;STACK                0      0       0       2        0.0%
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
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 18 in file "E:\pic program\SPI pic\spi.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\pic program\SPI pic\spi.c"
	line	18
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2]
	line	19
	
l2610:	
;spi.c: 19: TRISC5=TRISC3=TRISB0=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1072/8)^080h,(1072)&7
	bcf	(1083/8)^080h,(1083)&7
	bcf	(1085/8)^080h,(1085)&7
	line	20
;spi.c: 20: TRISC4=1;
	bsf	(1084/8)^080h,(1084)&7
	line	21
	
l2612:	
;spi.c: 21: SSPCON=0X20;
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	22
	
l2614:	
;spi.c: 22: SSPSTAT=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(148)^080h	;volatile
	line	23
	
l2616:	
;spi.c: 23: RB0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	line	24
	
l2618:	
;spi.c: 24: _delay((unsigned long)((10)*(20000000UL/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u2277:
	decfsz	((??_main+0)+0),f
	goto	u2277
	decfsz	((??_main+0)+0+1),f
	goto	u2277
	clrwdt
opt asmopt_on

	line	26
	
l2620:	
;spi.c: 26: RB0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	line	27
	
l2622:	
;spi.c: 27: SSPBUF=0X06;
	movlw	(06h)
	movwf	(19)	;volatile
	line	28
;spi.c: 28: while(SSPIF==0);
	goto	l687
	
l688:	
	
l687:	
	btfss	(99/8),(99)&7
	goto	u2221
	goto	u2220
u2221:
	goto	l687
u2220:
	
l689:	
	line	29
;spi.c: 29: SSPIF=0;
	bcf	(99/8),(99)&7
	line	30
;spi.c: 30: RB0=1;
	bsf	(48/8),(48)&7
	line	32
;spi.c: 32: RB0=0;
	bcf	(48/8),(48)&7
	line	33
	
l2624:	
;spi.c: 33: SSPBUF=0X02;
	movlw	(02h)
	movwf	(19)	;volatile
	line	34
;spi.c: 34: while(SSPIF==0);
	goto	l690
	
l691:	
	
l690:	
	btfss	(99/8),(99)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l690
u2230:
	
l692:	
	line	35
;spi.c: 35: SSPIF=0;
	bcf	(99/8),(99)&7
	line	37
	
l2626:	
;spi.c: 37: SSPBUF=0X01;
	movlw	(01h)
	movwf	(19)	;volatile
	line	38
;spi.c: 38: while(SSPIF==0);
	goto	l693
	
l694:	
	
l693:	
	btfss	(99/8),(99)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l693
u2240:
	
l695:	
	line	39
;spi.c: 39: SSPIF=0;
	bcf	(99/8),(99)&7
	line	41
	
l2628:	
;spi.c: 41: SSPBUF=0X00;
	clrf	(19)	;volatile
	line	42
;spi.c: 42: while(SSPIF==0);
	goto	l696
	
l697:	
	
l696:	
	btfss	(99/8),(99)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l696
u2250:
	
l698:	
	line	43
;spi.c: 43: SSPIF=0;
	bcf	(99/8),(99)&7
	line	45
	
l2630:	
;spi.c: 45: SSPBUF='b';
	movlw	(062h)
	movwf	(19)	;volatile
	line	46
;spi.c: 46: while(SSPIF==0);
	goto	l699
	
l700:	
	
l699:	
	btfss	(99/8),(99)&7
	goto	u2261
	goto	u2260
u2261:
	goto	l699
u2260:
	
l701:	
	line	47
;spi.c: 47: SSPIF=0;
	bcf	(99/8),(99)&7
	line	48
;spi.c: 48: RB0=1;
	bsf	(48/8),(48)&7
	goto	l2632
	line	50
;spi.c: 50: while(1)
	
l702:	
	line	53
	
l2632:	
;spi.c: 51: {
;spi.c: 53: _delay((unsigned long)((10)*(20000000UL/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u2287:
	decfsz	((??_main+0)+0),f
	goto	u2287
	decfsz	((??_main+0)+0+1),f
	goto	u2287
	clrwdt
opt asmopt_on

	goto	l2632
	line	54
	
l703:	
	line	50
	goto	l2632
	
l704:	
	line	55
	
l705:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
psect	maintext
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
