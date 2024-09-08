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
	FNROOT	_main
	FNCALL	intlevel1,__T0_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_cnt
	global	_PORTB
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_PORTB	set	6
	global	_TMR0
_TMR0	set	1
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RB0
_RB0	set	48
	global	_T0IE
_T0IE	set	93
	global	_T0IF
_T0IF	set	90
	global	_PS0
_PS0	set	1032
	global	_PS1
_PS1	set	1033
	global	_PS2
_PS2	set	1034
	global	_PSA
_PSA	set	1035
	global	_T0CS
_T0CS	set	1037
	global	_TRISB0
_TRISB0	set	1072
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
	file	"timer0.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_cnt:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?__T0_ISR
?__T0_ISR:	; 0 bytes @ 0x0
	global	??__T0_ISR
??__T0_ISR:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	ds	4
	global	??_main
??_main:	; 0 bytes @ 0x4
;;Data sizes: Strings 0, constant 0, data 0, bss 2, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      4       6
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
;; Critical Paths under __T0_ISR in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under __T0_ISR in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under __T0_ISR in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under __T0_ISR in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under __T0_ISR in BANK2
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
;; (0) _main                                                 0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (1) __T0_ISR                                              4     4      0       0
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;
;; __T0_ISR (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      4       6       1       42.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       0       2        0.0%
;;ABS                  0      0       6       3        0.0%
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
;;DATA                 0      0       6      12        0.0%

	global	_main
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 6 in file "D:\pic program\Timer0\timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  686[COMMON] int 
;; Registers used:
;;		status,2
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
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\pic program\Timer0\timer0.c"
	line	6
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [status,2]
	line	8
	
l1742:	
;timer0.c: 8: PORTB=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	9
	
l1744:	
;timer0.c: 9: TRISB0=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1072/8)^080h,(1072)&7
	line	10
	
l1746:	
;timer0.c: 10: T0CS=0;
	bcf	(1037/8)^080h,(1037)&7
	line	11
	
l1748:	
;timer0.c: 11: PSA=0;
	bcf	(1035/8)^080h,(1035)&7
	line	12
	
l1750:	
;timer0.c: 12: PS0=1;
	bsf	(1032/8)^080h,(1032)&7
	line	13
	
l1752:	
;timer0.c: 13: PS1=1;
	bsf	(1033/8)^080h,(1033)&7
	line	14
	
l1754:	
;timer0.c: 14: PS2=1;
	bsf	(1034/8)^080h,(1034)&7
	line	15
	
l1756:	
;timer0.c: 15: T0IE=1;
	bsf	(93/8),(93)&7
	line	16
	
l1758:	
;timer0.c: 16: GIE=1;
	bsf	(95/8),(95)&7
	line	17
;timer0.c: 17: TMR0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(1)	;volatile
	goto	l688
	line	18
;timer0.c: 18: while(1);
	
l687:	
	
l688:	
	goto	l688
	
l689:	
	line	19
	
l690:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	__T0_ISR
psect	text71,local,class=CODE,delta=2
global __ptext71
__ptext71:

;; *************** function __T0_ISR *****************
;; Defined at:
;;		line 22 in file "D:\pic program\Timer0\timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text71
	file	"D:\pic program\Timer0\timer0.c"
	line	22
	global	__size_of__T0_ISR
	__size_of__T0_ISR	equ	__end_of__T0_ISR-__T0_ISR
	
__T0_ISR:	
	opt	stack 7
; Regs used in __T0_ISR: [wreg+status,2]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??__T0_ISR+0)
	movf	fsr0,w
	movwf	(??__T0_ISR+1)
	movf	pclath,w
	movwf	(??__T0_ISR+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??__T0_ISR+3)
	ljmp	__T0_ISR
psect	text71
	line	23
	
i1l1760:	
;timer0.c: 23: if(T0IF&&T0IE)
	btfss	(90/8),(90)&7
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l693
u1_20:
	
i1l1762:	
	btfss	(93/8),(93)&7
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l693
u2_20:
	line	25
	
i1l1764:	
;timer0.c: 24: {
;timer0.c: 25: cnt+=1;
	movlw	low(01h)
	addwf	(_cnt),f
	skipnc
	incf	(_cnt+1),f
	movlw	high(01h)
	addwf	(_cnt+1),f
	line	26
;timer0.c: 26: TMR0=-207;
	movlw	(031h)
	movwf	(1)	;volatile
	line	27
	
i1l1766:	
;timer0.c: 27: T0IF=0;
	bcf	(90/8),(90)&7
	line	28
	
i1l693:	
	line	29
;timer0.c: 28: }
;timer0.c: 29: if(cnt>=10)
	movlw	high(0Ah)
	subwf	(_cnt+1),w
	movlw	low(0Ah)
	skipnz
	subwf	(_cnt),w
	skipc
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l695
u3_20:
	line	32
	
i1l1768:	
;timer0.c: 30: {
;timer0.c: 32: RB0^=1;
	movlw	1<<((48)&7)
	xorwf	((48)/8),f
	line	34
	
i1l1770:	
;timer0.c: 34: cnt=0;
	clrf	(_cnt)
	clrf	(_cnt+1)
	goto	i1l695
	line	35
	
i1l694:	
	line	36
	
i1l695:	
	movf	(??__T0_ISR+3),w
	movwf	btemp+1
	movf	(??__T0_ISR+2),w
	movwf	pclath
	movf	(??__T0_ISR+1),w
	movwf	fsr0
	swapf	(??__T0_ISR+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of__T0_ISR
	__end_of__T0_ISR:
;; =============== function __T0_ISR ends ============

	signat	__T0_ISR,88
psect	text72,local,class=CODE,delta=2
global __ptext72
__ptext72:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
