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
# 2 "E:\pic program\pic controller,PIC16F877A\MATRIX INTER\keypad1.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "E:\pic program\pic controller,PIC16F877A\MATRIX INTER\keypad1.c"
	dw 0xFFFE & 0xFFFB & 0xFFF7 & 0xFFBF & 0xFF7F & 0xFFFF & 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_init
	FNCALL	_main,_disp
	FNCALL	_main,_cmd
	FNCALL	_main,_write
	FNCALL	_disp,_cmd
	FNCALL	_disp,_write
	FNCALL	_init,_cmd
	FNROOT	_main
	global	_a
	global	_m
psect	nvCOMMON,class=COMMON,space=1
global __pnvCOMMON
__pnvCOMMON:
_m:
       ds      1

	global	_PORTD
_PORTD	set	8
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
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
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_OPTION_REGbits
_OPTION_REGbits	set	129
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
	file	"keypad.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_a:
       ds      1

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_init
?_init:	; 0 bytes @ 0x0
	global	?_cmd
?_cmd:	; 0 bytes @ 0x0
	global	??_cmd
??_cmd:	; 0 bytes @ 0x0
	global	?_write
?_write:	; 0 bytes @ 0x0
	global	??_write
??_write:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	1
	global	cmd@a
cmd@a:	; 1 bytes @ 0x1
	global	write@b
write@b:	; 1 bytes @ 0x1
	ds	1
	global	??_init
??_init:	; 0 bytes @ 0x2
	global	?_disp
?_disp:	; 0 bytes @ 0x2
	global	disp@b
disp@b:	; 1 bytes @ 0x2
	ds	1
	global	disp@c
disp@c:	; 1 bytes @ 0x3
	ds	1
	global	??_disp
??_disp:	; 0 bytes @ 0x4
	global	disp@a
disp@a:	; 1 bytes @ 0x4
	ds	1
	global	disp@k
disp@k:	; 2 bytes @ 0x5
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x7
	ds	2
;;Data sizes: Strings 13, constant 0, data 0, bss 1, persistent 1 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      9      11
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; disp@b	PTR const unsigned char  size(1) Largest target is 13
;;		 -> STR_1(CODE[13]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_disp
;;   _disp->_cmd
;;   _disp->_write
;;   _init->_cmd
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
;; (0) _main                                                 2     2      0     240
;;                                              7 COMMON     2     2      0
;;                               _init
;;                               _disp
;;                                _cmd
;;                              _write
;; ---------------------------------------------------------------------------------
;; (1) _disp                                                 5     3      2     150
;;                                              2 COMMON     5     3      2
;;                                _cmd
;;                              _write
;; ---------------------------------------------------------------------------------
;; (1) _init                                                 0     0      0      30
;;                                _cmd
;; ---------------------------------------------------------------------------------
;; (1) _write                                                2     2      0      30
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _cmd                                                  2     2      0      30
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _init
;;     _cmd
;;   _disp
;;     _cmd
;;     _write
;;   _cmd
;;   _write
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      9       B       1       78.6%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       B       3        0.0%
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
;;DATA                 0      0       D      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 15 in file "E:\pic program\pic controller,PIC16F877A\MATRIX INTER\keypad1.c"
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
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_init
;;		_disp
;;		_cmd
;;		_write
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\pic program\pic controller,PIC16F877A\MATRIX INTER\keypad1.c"
	line	15
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	16
	
l2730:	
;keypad1.c: 16: TRISD = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	17
	
l2732:	
;keypad1.c: 17: TRISB = 0xf8;
	movlw	(0F8h)
	movwf	(134)^080h	;volatile
	line	18
	
l2734:	
;keypad1.c: 18: OPTION_REGbits.nRBPU = 0;
	bcf	(129)^080h,7	;volatile
	line	19
	
l2736:	
;keypad1.c: 19: init();
	fcall	_init
	line	20
	
l2738:	
;keypad1.c: 20: disp(0x80,"ENTERED KEY:",12);
	movlw	((STR_1-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_disp)
	movlw	(0Ch)
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	0+(?_disp)+01h
	movlw	(080h)
	fcall	_disp
	goto	l2740
	line	21
;keypad1.c: 21: while(1)
	
l699:	
	line	23
	
l2740:	
;keypad1.c: 22: {
;keypad1.c: 23: cmd(0x8c);
	movlw	(08Ch)
	fcall	_cmd
	line	24
	
l2742:	
;keypad1.c: 24: RB0 = 0; RB1 = 1; RB2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	
l2744:	
	bsf	(49/8),(49)&7
	
l2746:	
	bsf	(50/8),(50)&7
	line	25
	
l2748:	
;keypad1.c: 25: if(!RB3){while(!RB3);write('1');}
	btfsc	(51/8),(51)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l2754
u2250:
	goto	l701
	
l2750:	
	goto	l701
	
l702:	
	
l701:	
	btfss	(51/8),(51)&7
	goto	u2261
	goto	u2260
u2261:
	goto	l701
u2260:
	goto	l2752
	
l703:	
	
l2752:	
	movlw	(031h)
	fcall	_write
	goto	l2754
	
l700:	
	line	26
	
l2754:	
;keypad1.c: 26: if(!RB4){while(!RB4);write('4');}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(52/8),(52)&7
	goto	u2271
	goto	u2270
u2271:
	goto	l2760
u2270:
	goto	l705
	
l2756:	
	goto	l705
	
l706:	
	
l705:	
	btfss	(52/8),(52)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l705
u2280:
	goto	l2758
	
l707:	
	
l2758:	
	movlw	(034h)
	fcall	_write
	goto	l2760
	
l704:	
	line	27
	
l2760:	
;keypad1.c: 27: if(!RB5){while(!RB5);write('7');}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(53/8),(53)&7
	goto	u2291
	goto	u2290
u2291:
	goto	l2766
u2290:
	goto	l709
	
l2762:	
	goto	l709
	
l710:	
	
l709:	
	btfss	(53/8),(53)&7
	goto	u2301
	goto	u2300
u2301:
	goto	l709
u2300:
	goto	l2764
	
l711:	
	
l2764:	
	movlw	(037h)
	fcall	_write
	goto	l2766
	
l708:	
	line	28
	
l2766:	
;keypad1.c: 28: if(!RB6){while(!RB6);write('*');}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(54/8),(54)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l2772
u2310:
	goto	l713
	
l2768:	
	goto	l713
	
l714:	
	
l713:	
	btfss	(54/8),(54)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l713
u2320:
	goto	l2770
	
l715:	
	
l2770:	
	movlw	(02Ah)
	fcall	_write
	goto	l2772
	
l712:	
	line	29
	
l2772:	
;keypad1.c: 29: RB0 = 1; RB1 = 0; RB2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	
l2774:	
	bcf	(49/8),(49)&7
	
l2776:	
	bsf	(50/8),(50)&7
	line	30
	
l2778:	
;keypad1.c: 30: if(!RB3){while(!RB3);write('2');}
	btfsc	(51/8),(51)&7
	goto	u2331
	goto	u2330
u2331:
	goto	l2784
u2330:
	goto	l717
	
l2780:	
	goto	l717
	
l718:	
	
l717:	
	btfss	(51/8),(51)&7
	goto	u2341
	goto	u2340
u2341:
	goto	l717
u2340:
	goto	l2782
	
l719:	
	
l2782:	
	movlw	(032h)
	fcall	_write
	goto	l2784
	
l716:	
	line	31
	
l2784:	
;keypad1.c: 31: if(!RB4){while(!RB4);write('5');}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(52/8),(52)&7
	goto	u2351
	goto	u2350
u2351:
	goto	l2790
u2350:
	goto	l721
	
l2786:	
	goto	l721
	
l722:	
	
l721:	
	btfss	(52/8),(52)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l721
u2360:
	goto	l2788
	
l723:	
	
l2788:	
	movlw	(035h)
	fcall	_write
	goto	l2790
	
l720:	
	line	32
	
l2790:	
;keypad1.c: 32: if(!RB5){while(!RB5);write('8');}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(53/8),(53)&7
	goto	u2371
	goto	u2370
u2371:
	goto	l2796
u2370:
	goto	l725
	
l2792:	
	goto	l725
	
l726:	
	
l725:	
	btfss	(53/8),(53)&7
	goto	u2381
	goto	u2380
u2381:
	goto	l725
u2380:
	goto	l2794
	
l727:	
	
l2794:	
	movlw	(038h)
	fcall	_write
	goto	l2796
	
l724:	
	line	33
	
l2796:	
;keypad1.c: 33: if(!RB6){while(!RB6);write('0');}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(54/8),(54)&7
	goto	u2391
	goto	u2390
u2391:
	goto	l2802
u2390:
	goto	l729
	
l2798:	
	goto	l729
	
l730:	
	
l729:	
	btfss	(54/8),(54)&7
	goto	u2401
	goto	u2400
u2401:
	goto	l729
u2400:
	goto	l2800
	
l731:	
	
l2800:	
	movlw	(030h)
	fcall	_write
	goto	l2802
	
l728:	
	line	34
	
l2802:	
;keypad1.c: 34: RB0 = 1; RB1 = 1; RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	
l2804:	
	bsf	(49/8),(49)&7
	
l2806:	
	bcf	(50/8),(50)&7
	line	35
	
l2808:	
;keypad1.c: 35: if(!RB3){while(!RB3);write('3');}
	btfsc	(51/8),(51)&7
	goto	u2411
	goto	u2410
u2411:
	goto	l2814
u2410:
	goto	l733
	
l2810:	
	goto	l733
	
l734:	
	
l733:	
	btfss	(51/8),(51)&7
	goto	u2421
	goto	u2420
u2421:
	goto	l733
u2420:
	goto	l2812
	
l735:	
	
l2812:	
	movlw	(033h)
	fcall	_write
	goto	l2814
	
l732:	
	line	36
	
l2814:	
;keypad1.c: 36: if(!RB4){while(!RB4);write('6');}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(52/8),(52)&7
	goto	u2431
	goto	u2430
u2431:
	goto	l2820
u2430:
	goto	l737
	
l2816:	
	goto	l737
	
l738:	
	
l737:	
	btfss	(52/8),(52)&7
	goto	u2441
	goto	u2440
u2441:
	goto	l737
u2440:
	goto	l2818
	
l739:	
	
l2818:	
	movlw	(036h)
	fcall	_write
	goto	l2820
	
l736:	
	line	37
	
l2820:	
;keypad1.c: 37: if(!RB5){while(!RB5);write('9');}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(53/8),(53)&7
	goto	u2451
	goto	u2450
u2451:
	goto	l2826
u2450:
	goto	l741
	
l2822:	
	goto	l741
	
l742:	
	
l741:	
	btfss	(53/8),(53)&7
	goto	u2461
	goto	u2460
u2461:
	goto	l741
u2460:
	goto	l2824
	
l743:	
	
l2824:	
	movlw	(039h)
	fcall	_write
	goto	l2826
	
l740:	
	line	38
	
l2826:	
;keypad1.c: 38: if(!RB6){while(!RB6);write('#');}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(54/8),(54)&7
	goto	u2471
	goto	u2470
u2471:
	goto	l2740
u2470:
	goto	l745
	
l2828:	
	goto	l745
	
l746:	
	
l745:	
	btfss	(54/8),(54)&7
	goto	u2481
	goto	u2480
u2481:
	goto	l745
u2480:
	goto	l2830
	
l747:	
	
l2830:	
	movlw	(023h)
	fcall	_write
	goto	l2740
	
l744:	
	goto	l2740
	line	39
	
l748:	
	line	21
	goto	l2740
	
l749:	
	line	40
	
l750:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_disp
psect	text101,local,class=CODE,delta=2
global __ptext101
__ptext101:

;; *************** function _disp *****************
;; Defined at:
;;		line 78 in file "E:\pic program\pic controller,PIC16F877A\MATRIX INTER\keypad1.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;;  b               1    2[COMMON] PTR const unsigned char 
;;		 -> STR_1(13), 
;;  c               1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    4[COMMON] unsigned char 
;;  k               2    5[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_cmd
;;		_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text101
	file	"E:\pic program\pic controller,PIC16F877A\MATRIX INTER\keypad1.c"
	line	78
	global	__size_of_disp
	__size_of_disp	equ	__end_of_disp-_disp
	
_disp:	
	opt	stack 6
; Regs used in _disp: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;disp@a stored from wreg
	movwf	(disp@a)
	line	79
	
l2720:	
;keypad1.c: 79: for(int k=0;k<=c;k++)
	clrf	(disp@k)
	clrf	(disp@k+1)
	goto	l2728
	line	80
	
l763:	
	line	81
	
l2722:	
;keypad1.c: 80: {
;keypad1.c: 81: cmd(a+k);
	movf	(disp@k),w
	addwf	(disp@a),w
	fcall	_cmd
	line	82
	
l2724:	
;keypad1.c: 82: write(b[k]);
	movf	(disp@k),w
	addwf	(disp@b),w
	movwf	fsr0
	fcall	stringdir
	fcall	_write
	line	79
	
l2726:	
	movlw	low(01h)
	addwf	(disp@k),f
	skipnc
	incf	(disp@k+1),f
	movlw	high(01h)
	addwf	(disp@k+1),f
	goto	l2728
	
l762:	
	
l2728:	
	movf	(disp@k+1),w
	xorlw	80h
	sublw	080h
	skipz
	goto	u2245
	movf	(disp@k),w
	subwf	(disp@c),w
u2245:

	skipnc
	goto	u2241
	goto	u2240
u2241:
	goto	l2722
u2240:
	goto	l765
	
l764:	
	line	84
	
l765:	
	return
	opt stack 0
GLOBAL	__end_of_disp
	__end_of_disp:
;; =============== function _disp ends ============

	signat	_disp,12408
	global	_init
psect	text102,local,class=CODE,delta=2
global __ptext102
__ptext102:

;; *************** function _init *****************
;; Defined at:
;;		line 43 in file "E:\pic program\pic controller,PIC16F877A\MATRIX INTER\keypad1.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text102
	file	"E:\pic program\pic controller,PIC16F877A\MATRIX INTER\keypad1.c"
	line	43
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
	opt	stack 6
; Regs used in _init: [wreg+status,2+status,0+pclath+cstack]
	line	44
	
l2718:	
;keypad1.c: 44: cmd(0x02);
	movlw	(02h)
	fcall	_cmd
	line	45
;keypad1.c: 45: cmd(0x28);
	movlw	(028h)
	fcall	_cmd
	line	46
;keypad1.c: 46: cmd(0x06);
	movlw	(06h)
	fcall	_cmd
	line	47
;keypad1.c: 47: cmd(0x0C);
	movlw	(0Ch)
	fcall	_cmd
	line	48
;keypad1.c: 48: cmd(0x01);
	movlw	(01h)
	fcall	_cmd
	line	49
	
l753:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
;; =============== function _init ends ============

	signat	_init,88
	global	_write
psect	text103,local,class=CODE,delta=2
global __ptext103
__ptext103:

;; *************** function _write *****************
;; Defined at:
;;		line 65 in file "E:\pic program\pic controller,PIC16F877A\MATRIX INTER\keypad1.c"
;; Parameters:    Size  Location     Type
;;  b               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  b               1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_disp
;; This function uses a non-reentrant model
;;
psect	text103
	file	"E:\pic program\pic controller,PIC16F877A\MATRIX INTER\keypad1.c"
	line	65
	global	__size_of_write
	__size_of_write	equ	__end_of_write-_write
	
_write:	
	opt	stack 7
; Regs used in _write: [wreg+status,2+status,0]
;write@b stored from wreg
	movwf	(write@b)
	line	66
	
l2692:	
;keypad1.c: 66: m = PORTD & 0x0f;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w
	andlw	0Fh
	movwf	(??_write+0)+0
	movf	(??_write+0)+0,w
	movwf	(_m)
	line	67
	
l2694:	
;keypad1.c: 67: PORTD = (b & 0xf0)|m;
	movf	(write@b),w
	andlw	0F0h
	iorwf	(_m),w
	movwf	(8)	;volatile
	line	68
	
l2696:	
;keypad1.c: 68: RD1=1;RD0=1;
	bsf	(65/8),(65)&7
	
l2698:	
	bsf	(64/8),(64)&7
	line	69
	
l2700:	
;keypad1.c: 69: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_write+0)+0,f
u2497:
	clrwdt
decfsz	(??_write+0)+0,f
	goto	u2497
	nop2	;nop
	clrwdt
opt asmopt_on

	line	70
	
l2702:	
;keypad1.c: 70: RD1=0;RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	
l2704:	
	bcf	(64/8),(64)&7
	line	71
	
l2706:	
;keypad1.c: 71: PORTD = ((b<<4) & 0xf0)|m;
	movf	(write@b),w
	movwf	(??_write+0)+0
	movlw	(04h)-1
u2235:
	clrc
	rlf	(??_write+0)+0,f
	addlw	-1
	skipz
	goto	u2235
	clrc
	rlf	(??_write+0)+0,w
	andlw	0F0h
	iorwf	(_m),w
	movwf	(8)	;volatile
	line	72
	
l2708:	
;keypad1.c: 72: RD1=1;RD0=1;
	bsf	(65/8),(65)&7
	
l2710:	
	bsf	(64/8),(64)&7
	line	73
	
l2712:	
;keypad1.c: 73: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_write+0)+0,f
u2507:
	clrwdt
decfsz	(??_write+0)+0,f
	goto	u2507
	nop2	;nop
	clrwdt
opt asmopt_on

	line	74
	
l2714:	
;keypad1.c: 74: RD1=0;RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	
l2716:	
	bcf	(64/8),(64)&7
	line	75
	
l759:	
	return
	opt stack 0
GLOBAL	__end_of_write
	__end_of_write:
;; =============== function _write ends ============

	signat	_write,4216
	global	_cmd
psect	text104,local,class=CODE,delta=2
global __ptext104
__ptext104:

;; *************** function _cmd *****************
;; Defined at:
;;		line 52 in file "E:\pic program\pic controller,PIC16F877A\MATRIX INTER\keypad1.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_init
;;		_disp
;; This function uses a non-reentrant model
;;
psect	text104
	file	"E:\pic program\pic controller,PIC16F877A\MATRIX INTER\keypad1.c"
	line	52
	global	__size_of_cmd
	__size_of_cmd	equ	__end_of_cmd-_cmd
	
_cmd:	
	opt	stack 7
; Regs used in _cmd: [wreg+status,2+status,0]
;cmd@a stored from wreg
	movwf	(cmd@a)
	line	53
	
l2670:	
;keypad1.c: 53: m = PORTD & 0x0f;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w
	andlw	0Fh
	movwf	(??_cmd+0)+0
	movf	(??_cmd+0)+0,w
	movwf	(_m)
	line	54
	
l2672:	
;keypad1.c: 54: PORTD = (a & 0xf0)|m;
	movf	(cmd@a),w
	andlw	0F0h
	iorwf	(_m),w
	movwf	(8)	;volatile
	line	55
	
l2674:	
;keypad1.c: 55: RD1=1;RD0=0;
	bsf	(65/8),(65)&7
	
l2676:	
	bcf	(64/8),(64)&7
	line	56
	
l2678:	
;keypad1.c: 56: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_cmd+0)+0,f
u2517:
	clrwdt
decfsz	(??_cmd+0)+0,f
	goto	u2517
	nop2	;nop
	clrwdt
opt asmopt_on

	line	57
	
l2680:	
;keypad1.c: 57: RD1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	line	58
	
l2682:	
;keypad1.c: 58: PORTD = ((a<<4) & 0xf0)|m;
	movf	(cmd@a),w
	movwf	(??_cmd+0)+0
	movlw	(04h)-1
u2225:
	clrc
	rlf	(??_cmd+0)+0,f
	addlw	-1
	skipz
	goto	u2225
	clrc
	rlf	(??_cmd+0)+0,w
	andlw	0F0h
	iorwf	(_m),w
	movwf	(8)	;volatile
	line	59
	
l2684:	
;keypad1.c: 59: RD1=1;RD0=0;
	bsf	(65/8),(65)&7
	
l2686:	
	bcf	(64/8),(64)&7
	line	60
	
l2688:	
;keypad1.c: 60: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_cmd+0)+0,f
u2527:
	clrwdt
decfsz	(??_cmd+0)+0,f
	goto	u2527
	nop2	;nop
	clrwdt
opt asmopt_on

	line	61
	
l2690:	
;keypad1.c: 61: RD1=0;;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	line	62
	
l756:	
	return
	opt stack 0
GLOBAL	__end_of_cmd
	__end_of_cmd:
;; =============== function _cmd ends ============

	signat	_cmd,4216
psect	text105,local,class=CODE,delta=2
global __ptext105
__ptext105:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
