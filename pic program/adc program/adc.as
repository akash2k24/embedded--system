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
# 2 "E:\pic program\adc program\adc.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "E:\pic program\adc program\adc.c"
	dw 0xFFFE & 0xFFFB & 0xFFF7 & 0xFFBF & 0xFF7F & 0xFFFF & 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_Lcd8_Init
	FNCALL	_main,_Delay
	FNCALL	_main,_Lcd8_Display
	FNCALL	_main,_Lcd8_Command
	FNCALL	_main,_Adc8_Cha
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
	FNCALL	_Adc8_Cha,___lwdiv
	FNCALL	_Lcd8_Command,_Delay
	FNROOT	_main
	global	_adc_hbit
	global	_adc_lbit
	global	_adc_temp
	global	_adc_temp0
	global	_adc_val1
	global	_x
	global	_y
	global	_z
	global	_adc_del
	global	_adc_j
	global	_adc_val
	global	_ADCON0
psect	text260,local,class=CODE,delta=2
global __ptext260
__ptext260:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTD
_PORTD	set	8
	global	_ADON
_ADON	set	248
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_Lcd_en
_Lcd_en	set	61
	global	_Lcd_rs
_Lcd_rs	set	60
	global	_ADRESL
_ADRESL	set	158
	global	_TRISA
_TRISA	set	133
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_ADFM
_ADFM	set	1279
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
	
STR_4:	
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
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_3:	
	retlw	88	;'X'
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	89	;'Y'
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	90	;'Z'
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_2:	
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	0
psect	strings
	
STR_1:	
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	65	;'A'
	retlw	78	;'N'
	retlw	79	;'O'
	retlw	76	;'L'
	retlw	65	;'A'
	retlw	71	;'G'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	0
psect	strings
	file	"adc.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_adc_hbit:
       ds      2

_adc_lbit:
       ds      2

_adc_temp:
       ds      2

_adc_temp0:
       ds      2

_adc_val1:
       ds      2

_x:
       ds      2

_y:
       ds      2

_z:
       ds      2

_adc_del:
       ds      1

_adc_j:
       ds      1

_adc_val:
       ds      1

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+013h)
	fcall	clear_ram
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
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
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
	ds	2
	global	??_Lcd8_Command
??_Lcd8_Command:	; 0 bytes @ 0x2
	global	??_Delay
??_Delay:	; 0 bytes @ 0x2
	global	Lcd8_Command@com
Lcd8_Command@com:	; 1 bytes @ 0x2
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
	global	?_Adc8_Cha
?_Adc8_Cha:	; 2 bytes @ 0x8
	ds	1
	global	?_Lcd8_Decimal3
?_Lcd8_Decimal3:	; 0 bytes @ 0x9
	global	Lcd8_Decimal3@val
Lcd8_Decimal3@val:	; 1 bytes @ 0x9
	ds	1
	global	??_Lcd8_Decimal3
??_Lcd8_Decimal3:	; 0 bytes @ 0xA
	global	??_Adc8_Cha
??_Adc8_Cha:	; 0 bytes @ 0xA
	global	Lcd8_Display@com
Lcd8_Display@com:	; 1 bytes @ 0xA
	ds	1
	global	Lcd8_Display@Lcd_i
Lcd8_Display@Lcd_i:	; 1 bytes @ 0xB
	ds	1
	global	Adc8_Cha@val
Adc8_Cha@val:	; 1 bytes @ 0xC
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0xD
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
;;Data sizes: Strings 68, constant 0, data 0, bss 19, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80      9      28
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_Adc8_Cha	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; Lcd8_Display@word	PTR const unsigned char  size(1) Largest target is 17
;;		 -> STR_4(CODE[17]), STR_3(CODE[17]), STR_2(CODE[17]), STR_1(CODE[17]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_Adc8_Cha
;;   _Lcd8_Decimal3->___awdiv
;;   _Lcd8_Display->_Lcd8_Write
;;   _Lcd8_Write->_Lcd8_Command
;;   _Lcd8_Init->_Lcd8_Command
;;   _Adc8_Cha->___lwdiv
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
;; (0) _main                                                 1     1      0    1943
;;                                             13 COMMON     1     1      0
;;                          _Lcd8_Init
;;                              _Delay
;;                       _Lcd8_Display
;;                       _Lcd8_Command
;;                           _Adc8_Cha
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
;; (1) _Adc8_Cha                                             5     3      2     338
;;                                              8 COMMON     5     3      2
;;                            ___lwdiv
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
;;   _Delay
;;   _Lcd8_Display
;;     _Lcd8_Write
;;       _Lcd8_Command
;;         _Delay
;;       _Delay
;;   _Lcd8_Command
;;     _Delay
;;   _Adc8_Cha
;;     ___lwdiv
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
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       4       2        0.0%
;;ABS                  0      0      2A       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      9      1C       5       35.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      2E      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 11 in file "E:\pic program\adc program\adc.c"
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
;;		_Delay
;;		_Lcd8_Display
;;		_Lcd8_Command
;;		_Adc8_Cha
;;		_Lcd8_Decimal3
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\pic program\adc program\adc.c"
	line	11
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	12
	
l4267:	
;adc.c: 12: TRISC=0XC0;
	movlw	(0C0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	13
	
l4269:	
;adc.c: 13: TRISD=0X00;
	clrf	(136)^080h	;volatile
	line	14
	
l4271:	
;adc.c: 14: TRISA=0X0f;
	movlw	(0Fh)
	movwf	(133)^080h	;volatile
	line	15
	
l4273:	
;adc.c: 15: Lcd8_Init();
	fcall	_Lcd8_Init
	line	16
	
l4275:	
;adc.c: 16: Delay(6500);
	movlw	low(01964h)
	movwf	(?_Delay)
	movlw	high(01964h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	17
	
l4277:	
;adc.c: 17: Lcd8_Display(0x80,"-----ANOLAG-----",16);
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
	line	18
	
l4279:	
;adc.c: 18: Lcd8_Display(0xC0,"------TEST------",16);
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
	line	19
	
l4281:	
;adc.c: 19: Delay(65000);Delay(65000);
	movlw	low(0FDE8h)
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	
l4283:	
	movlw	low(0FDE8h)
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	20
	
l4285:	
;adc.c: 20: Lcd8_Command(1);
	movlw	(01h)
	fcall	_Lcd8_Command
	line	21
	
l4287:	
;adc.c: 21: Lcd8_Display(0x80,"X:    Y:   Z:   ",16);
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
	line	22
	
l4289:	
;adc.c: 22: Lcd8_Display(0xC0,"                ",16);
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
	goto	l4291
	line	23
;adc.c: 23: while(1)
	
l909:	
	line	25
	
l4291:	
;adc.c: 24: {
;adc.c: 25: x=Adc8_Cha(0);
	movlw	(0)
	fcall	_Adc8_Cha
	movf	(1+(?_Adc8_Cha)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_x+1)
	addwf	(_x+1)
	movf	(0+(?_Adc8_Cha)),w
	clrf	(_x)
	addwf	(_x)

	line	26
	
l4293:	
;adc.c: 26: y=Adc8_Cha(1);
	movlw	(01h)
	fcall	_Adc8_Cha
	movf	(1+(?_Adc8_Cha)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_y+1)
	addwf	(_y+1)
	movf	(0+(?_Adc8_Cha)),w
	clrf	(_y)
	addwf	(_y)

	line	27
	
l4295:	
;adc.c: 27: z=Adc8_Cha(2);
	movlw	(02h)
	fcall	_Adc8_Cha
	movf	(1+(?_Adc8_Cha)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_z+1)
	addwf	(_z+1)
	movf	(0+(?_Adc8_Cha)),w
	clrf	(_z)
	addwf	(_z)

	line	29
	
l4297:	
;adc.c: 29: Lcd8_Decimal3(0x82,x);
	movf	(_x),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Decimal3)
	movlw	(082h)
	fcall	_Lcd8_Decimal3
	line	30
	
l4299:	
;adc.c: 30: Lcd8_Decimal3(0x88,y);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Decimal3)
	movlw	(088h)
	fcall	_Lcd8_Decimal3
	line	31
	
l4301:	
;adc.c: 31: Lcd8_Decimal3(0x8D,z);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_z),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Decimal3)
	movlw	(08Dh)
	fcall	_Lcd8_Decimal3
	goto	l4291
	line	32
	
l910:	
	line	23
	goto	l4291
	
l911:	
	line	33
	
l912:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Lcd8_Decimal3
psect	text261,local,class=CODE,delta=2
global __ptext261
__ptext261:

;; *************** function _Lcd8_Decimal3 *****************
;; Defined at:
;;		line 75 in file "E:\pic program\adc program\pic_lcd8.h"
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
psect	text261
	file	"E:\pic program\adc program\pic_lcd8.h"
	line	75
	global	__size_of_Lcd8_Decimal3
	__size_of_Lcd8_Decimal3	equ	__end_of_Lcd8_Decimal3-_Lcd8_Decimal3
	
_Lcd8_Decimal3:	
	opt	stack 4
; Regs used in _Lcd8_Decimal3: [wreg+status,2+status,0+pclath+cstack]
;Lcd8_Decimal3@com stored from wreg
	line	78
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Lcd8_Decimal3@com)
	
l4265:	
;pic_lcd8.h: 76: unsigned int Lcd_h,Lcd_hr,Lcd_t,Lcd_o;
;pic_lcd8.h: 78: Lcd_h=val/100;
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

	line	79
;pic_lcd8.h: 79: Lcd_hr=val%100;
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

	line	80
;pic_lcd8.h: 80: Lcd_t=Lcd_hr/10;
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

	line	81
;pic_lcd8.h: 81: Lcd_o=Lcd_hr%10;
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

	line	83
;pic_lcd8.h: 83: Lcd8_Write(com,Lcd_h+0x30);
	movf	(Lcd8_Decimal3@Lcd_h),w
	addlw	030h
	movwf	(??_Lcd8_Decimal3+0)+0
	movf	(??_Lcd8_Decimal3+0)+0,w
	movwf	(?_Lcd8_Write)
	movf	(Lcd8_Decimal3@com),w
	fcall	_Lcd8_Write
	line	84
;pic_lcd8.h: 84: Lcd8_Write(com+1,Lcd_t+0x30);
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
	line	85
;pic_lcd8.h: 85: Lcd8_Write(com+2,Lcd_o+0x30);
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
	line	86
	
l733:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Decimal3
	__end_of_Lcd8_Decimal3:
;; =============== function _Lcd8_Decimal3 ends ============

	signat	_Lcd8_Decimal3,8312
	global	_Lcd8_Display
psect	text262,local,class=CODE,delta=2
global __ptext262
__ptext262:

;; *************** function _Lcd8_Display *****************
;; Defined at:
;;		line 52 in file "E:\pic program\adc program\pic_lcd8.h"
;; Parameters:    Size  Location     Type
;;  com             1    wreg     unsigned char 
;;  word            1    5[COMMON] PTR const unsigned char 
;;		 -> STR_4(17), STR_3(17), STR_2(17), STR_1(17), 
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
psect	text262
	file	"E:\pic program\adc program\pic_lcd8.h"
	line	52
	global	__size_of_Lcd8_Display
	__size_of_Lcd8_Display	equ	__end_of_Lcd8_Display-_Lcd8_Display
	
_Lcd8_Display:	
	opt	stack 4
; Regs used in _Lcd8_Display: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Lcd8_Display@com stored from wreg
	line	55
	movwf	(Lcd8_Display@com)
	
l4257:	
;pic_lcd8.h: 53: unsigned char Lcd_i;
;pic_lcd8.h: 55: for(Lcd_i=0;Lcd_i<n;Lcd_i++)
	clrf	(Lcd8_Display@Lcd_i)
	goto	l4263
	line	56
	
l725:	
	line	57
	
l4259:	
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
	
l4261:	
	movlw	(01h)
	movwf	(??_Lcd8_Display+0)+0
	movf	(??_Lcd8_Display+0)+0,w
	addwf	(Lcd8_Display@Lcd_i),f
	goto	l4263
	
l724:	
	
l4263:	
	movf	(Lcd8_Display@Lcd_i),w
	movwf	(??_Lcd8_Display+0)+0
	clrf	(??_Lcd8_Display+0)+0+1
	movf	(Lcd8_Display@n+1),w
	subwf	1+(??_Lcd8_Display+0)+0,w
	skipz
	goto	u4175
	movf	(Lcd8_Display@n),w
	subwf	0+(??_Lcd8_Display+0)+0,w
u4175:
	skipc
	goto	u4171
	goto	u4170
u4171:
	goto	l4259
u4170:
	goto	l727
	
l726:	
	line	59
	
l727:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Display
	__end_of_Lcd8_Display:
;; =============== function _Lcd8_Display ends ============

	signat	_Lcd8_Display,12408
	global	_Lcd8_Write
psect	text263,local,class=CODE,delta=2
global __ptext263
__ptext263:

;; *************** function _Lcd8_Write *****************
;; Defined at:
;;		line 40 in file "E:\pic program\adc program\pic_lcd8.h"
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
psect	text263
	file	"E:\pic program\adc program\pic_lcd8.h"
	line	40
	global	__size_of_Lcd8_Write
	__size_of_Lcd8_Write	equ	__end_of_Lcd8_Write-_Lcd8_Write
	
_Lcd8_Write:	
	opt	stack 4
; Regs used in _Lcd8_Write: [wreg+status,2+status,0+pclath+cstack]
;Lcd8_Write@com stored from wreg
	movwf	(Lcd8_Write@com)
	line	41
	
l4243:	
;pic_lcd8.h: 41: Lcd8_Command(com);
	movf	(Lcd8_Write@com),w
	fcall	_Lcd8_Command
	line	43
	
l4245:	
;pic_lcd8.h: 43: PORTD=lr;
	movf	(Lcd8_Write@lr),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	44
	
l4247:	
;pic_lcd8.h: 44: Lcd_en=1;
	bsf	(61/8),(61)&7
	line	45
	
l4249:	
;pic_lcd8.h: 45: Lcd_rs=1;
	bsf	(60/8),(60)&7
	line	46
	
l4251:	
;pic_lcd8.h: 46: Delay(125);
	movlw	low(07Dh)
	movwf	(?_Delay)
	movlw	high(07Dh)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	47
	
l4253:	
;pic_lcd8.h: 47: Lcd_en=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	line	48
	
l4255:	
;pic_lcd8.h: 48: Delay(125);
	movlw	low(07Dh)
	movwf	(?_Delay)
	movlw	high(07Dh)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	49
	
l721:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Write
	__end_of_Lcd8_Write:
;; =============== function _Lcd8_Write ends ============

	signat	_Lcd8_Write,8312
	global	_Lcd8_Init
psect	text264,local,class=CODE,delta=2
global __ptext264
__ptext264:

;; *************** function _Lcd8_Init *****************
;; Defined at:
;;		line 22 in file "E:\pic program\adc program\pic_lcd8.h"
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
psect	text264
	file	"E:\pic program\adc program\pic_lcd8.h"
	line	22
	global	__size_of_Lcd8_Init
	__size_of_Lcd8_Init	equ	__end_of_Lcd8_Init-_Lcd8_Init
	
_Lcd8_Init:	
	opt	stack 5
; Regs used in _Lcd8_Init: [wreg+status,2+status,0+pclath+cstack]
	line	23
	
l4241:	
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
	
l715:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Init
	__end_of_Lcd8_Init:
;; =============== function _Lcd8_Init ends ============

	signat	_Lcd8_Init,88
	global	_Adc8_Cha
psect	text265,local,class=CODE,delta=2
global __ptext265
__ptext265:

;; *************** function _Adc8_Cha *****************
;; Defined at:
;;		line 10 in file "E:\pic program\adc program\pic_adc.h"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             1   12[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___lwdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text265
	file	"E:\pic program\adc program\pic_adc.h"
	line	10
	global	__size_of_Adc8_Cha
	__size_of_Adc8_Cha	equ	__end_of_Adc8_Cha-_Adc8_Cha
	
_Adc8_Cha:	
	opt	stack 6
; Regs used in _Adc8_Cha: [wreg+status,2+status,0+pclath+cstack]
;Adc8_Cha@val stored from wreg
	movwf	(Adc8_Cha@val)
	line	11
	
l4023:	
;pic_adc.h: 11: ADFM=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1279/8)^080h,(1279)&7
	line	12
	
l4025:	
;pic_adc.h: 12: adc_del=25;
	movlw	(019h)
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_adc_del)
	line	14
	
l4027:	
;pic_adc.h: 14: if(val==0)
	movf	(Adc8_Cha@val),f
	skipz
	goto	u3771
	goto	u3770
u3771:
	goto	l4053
u3770:
	line	16
	
l4029:	
;pic_adc.h: 15: {
;pic_adc.h: 16: adc_temp0=0;
	clrf	(_adc_temp0)
	clrf	(_adc_temp0+1)
	line	17
	
l4031:	
;pic_adc.h: 17: for(adc_j=0;adc_j<10;adc_j++)
	clrf	(_adc_j)
	
l4033:	
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u3781
	goto	u3780
u3781:
	goto	l4037
u3780:
	goto	l4235
	
l4035:	
	goto	l4235
	line	18
	
l746:	
	line	19
	
l4037:	
;pic_adc.h: 18: {
;pic_adc.h: 19: ADCON0=0x00;
	clrf	(31)	;volatile
	line	20
	
l4039:	
;pic_adc.h: 20: ADON=1;
	bsf	(248/8),(248)&7
	line	21
;pic_adc.h: 21: while(adc_del--);
	goto	l4041
	
l749:	
	goto	l4041
	
l748:	
	
l4041:	
	movlw	low(01h)
	subwf	(_adc_del),f
	movf	((_adc_del)),w
	xorlw	0FFh
	skipz
	goto	u3791
	goto	u3790
u3791:
	goto	l4041
u3790:
	goto	l4043
	
l750:	
	line	22
	
l4043:	
;pic_adc.h: 22: ADCON0 =0x05;
	movlw	(05h)
	movwf	(31)	;volatile
	line	23
;pic_adc.h: 23: while(ADCON0!=0X01);
	goto	l4045
	
l752:	
	goto	l4045
	
l751:	
	
l4045:	
	movf	(31),w	;volatile
	xorlw	01h
	skipz
	goto	u3801
	goto	u3800
u3801:
	goto	l4045
u3800:
	goto	l4047
	
l753:	
	line	24
	
l4047:	
;pic_adc.h: 24: adc_temp=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp+1)
	line	25
	
l4049:	
;pic_adc.h: 25: adc_temp0=adc_temp0+adc_temp;
	movf	(_adc_temp),w
	addwf	(_adc_temp0),w
	movwf	(_adc_temp0)
	movf	(_adc_temp+1),w
	skipnc
	incf	(_adc_temp+1),w
	addwf	(_adc_temp0+1),w
	movwf	1+(_adc_temp0)
	line	17
	
l4051:	
	movlw	(01h)
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	addwf	(_adc_j),f
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u3811
	goto	u3810
u3811:
	goto	l4037
u3810:
	goto	l4235
	
l747:	
	line	27
;pic_adc.h: 26: }
;pic_adc.h: 27: }
	goto	l4235
	line	28
	
l745:	
	
l4053:	
;pic_adc.h: 28: else if(val==1)
	movf	(Adc8_Cha@val),w
	xorlw	01h
	skipz
	goto	u3821
	goto	u3820
u3821:
	goto	l4079
u3820:
	line	30
	
l4055:	
;pic_adc.h: 29: {
;pic_adc.h: 30: adc_temp0=0;
	clrf	(_adc_temp0)
	clrf	(_adc_temp0+1)
	line	31
	
l4057:	
;pic_adc.h: 31: for(adc_j=0;adc_j<10;adc_j++)
	clrf	(_adc_j)
	
l4059:	
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u3831
	goto	u3830
u3831:
	goto	l4063
u3830:
	goto	l4235
	
l4061:	
	goto	l4235
	line	32
	
l756:	
	line	33
	
l4063:	
;pic_adc.h: 32: {
;pic_adc.h: 33: ADCON0=0x08;
	movlw	(08h)
	movwf	(31)	;volatile
	line	34
	
l4065:	
;pic_adc.h: 34: ADON=1;
	bsf	(248/8),(248)&7
	line	35
;pic_adc.h: 35: while(adc_del--);
	goto	l4067
	
l759:	
	goto	l4067
	
l758:	
	
l4067:	
	movlw	low(01h)
	subwf	(_adc_del),f
	movf	((_adc_del)),w
	xorlw	0FFh
	skipz
	goto	u3841
	goto	u3840
u3841:
	goto	l4067
u3840:
	goto	l4069
	
l760:	
	line	36
	
l4069:	
;pic_adc.h: 36: ADCON0 =0x0d;
	movlw	(0Dh)
	movwf	(31)	;volatile
	line	37
;pic_adc.h: 37: while(ADCON0!=0X09);
	goto	l4071
	
l762:	
	goto	l4071
	
l761:	
	
l4071:	
	movf	(31),w	;volatile
	xorlw	09h
	skipz
	goto	u3851
	goto	u3850
u3851:
	goto	l4071
u3850:
	goto	l4073
	
l763:	
	line	38
	
l4073:	
;pic_adc.h: 38: adc_temp=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp+1)
	line	39
	
l4075:	
;pic_adc.h: 39: adc_temp0=adc_temp0+adc_temp;
	movf	(_adc_temp),w
	addwf	(_adc_temp0),w
	movwf	(_adc_temp0)
	movf	(_adc_temp+1),w
	skipnc
	incf	(_adc_temp+1),w
	addwf	(_adc_temp0+1),w
	movwf	1+(_adc_temp0)
	line	31
	
l4077:	
	movlw	(01h)
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	addwf	(_adc_j),f
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u3861
	goto	u3860
u3861:
	goto	l4063
u3860:
	goto	l4235
	
l757:	
	line	41
;pic_adc.h: 40: }
;pic_adc.h: 41: }
	goto	l4235
	line	42
	
l755:	
	
l4079:	
;pic_adc.h: 42: else if(val==2)
	movf	(Adc8_Cha@val),w
	xorlw	02h
	skipz
	goto	u3871
	goto	u3870
u3871:
	goto	l4105
u3870:
	line	44
	
l4081:	
;pic_adc.h: 43: {
;pic_adc.h: 44: adc_temp0=0;
	clrf	(_adc_temp0)
	clrf	(_adc_temp0+1)
	line	45
	
l4083:	
;pic_adc.h: 45: for(adc_j=0;adc_j<10;adc_j++)
	clrf	(_adc_j)
	
l4085:	
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u3881
	goto	u3880
u3881:
	goto	l4089
u3880:
	goto	l4235
	
l4087:	
	goto	l4235
	line	46
	
l766:	
	line	47
	
l4089:	
;pic_adc.h: 46: {
;pic_adc.h: 47: ADCON0=0x10;
	movlw	(010h)
	movwf	(31)	;volatile
	line	48
	
l4091:	
;pic_adc.h: 48: ADON=1;
	bsf	(248/8),(248)&7
	line	49
;pic_adc.h: 49: while(adc_del--);
	goto	l4093
	
l769:	
	goto	l4093
	
l768:	
	
l4093:	
	movlw	low(01h)
	subwf	(_adc_del),f
	movf	((_adc_del)),w
	xorlw	0FFh
	skipz
	goto	u3891
	goto	u3890
u3891:
	goto	l4093
u3890:
	goto	l4095
	
l770:	
	line	50
	
l4095:	
;pic_adc.h: 50: ADCON0 =0x15;
	movlw	(015h)
	movwf	(31)	;volatile
	line	51
;pic_adc.h: 51: while(ADCON0!=0x11);
	goto	l4097
	
l772:	
	goto	l4097
	
l771:	
	
l4097:	
	movf	(31),w	;volatile
	xorlw	011h
	skipz
	goto	u3901
	goto	u3900
u3901:
	goto	l4097
u3900:
	goto	l4099
	
l773:	
	line	52
	
l4099:	
;pic_adc.h: 52: adc_temp=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp+1)
	line	53
	
l4101:	
;pic_adc.h: 53: adc_temp0=adc_temp0+adc_temp;
	movf	(_adc_temp),w
	addwf	(_adc_temp0),w
	movwf	(_adc_temp0)
	movf	(_adc_temp+1),w
	skipnc
	incf	(_adc_temp+1),w
	addwf	(_adc_temp0+1),w
	movwf	1+(_adc_temp0)
	line	45
	
l4103:	
	movlw	(01h)
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	addwf	(_adc_j),f
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u3911
	goto	u3910
u3911:
	goto	l4089
u3910:
	goto	l4235
	
l767:	
	line	55
;pic_adc.h: 54: }
;pic_adc.h: 55: }
	goto	l4235
	line	56
	
l765:	
	
l4105:	
;pic_adc.h: 56: else if(val==3)
	movf	(Adc8_Cha@val),w
	xorlw	03h
	skipz
	goto	u3921
	goto	u3920
u3921:
	goto	l4131
u3920:
	line	58
	
l4107:	
;pic_adc.h: 57: {
;pic_adc.h: 58: adc_temp0=0;
	clrf	(_adc_temp0)
	clrf	(_adc_temp0+1)
	line	59
	
l4109:	
;pic_adc.h: 59: for(adc_j=0;adc_j<10;adc_j++)
	clrf	(_adc_j)
	
l4111:	
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u3931
	goto	u3930
u3931:
	goto	l4115
u3930:
	goto	l4235
	
l4113:	
	goto	l4235
	line	60
	
l776:	
	line	61
	
l4115:	
;pic_adc.h: 60: {
;pic_adc.h: 61: ADCON0=0x18;
	movlw	(018h)
	movwf	(31)	;volatile
	line	62
	
l4117:	
;pic_adc.h: 62: ADON=1;
	bsf	(248/8),(248)&7
	line	63
;pic_adc.h: 63: while(adc_del--);
	goto	l4119
	
l779:	
	goto	l4119
	
l778:	
	
l4119:	
	movlw	low(01h)
	subwf	(_adc_del),f
	movf	((_adc_del)),w
	xorlw	0FFh
	skipz
	goto	u3941
	goto	u3940
u3941:
	goto	l4119
u3940:
	goto	l4121
	
l780:	
	line	64
	
l4121:	
;pic_adc.h: 64: ADCON0 =0x1d;
	movlw	(01Dh)
	movwf	(31)	;volatile
	line	65
;pic_adc.h: 65: while(ADCON0!=0x19);
	goto	l4123
	
l782:	
	goto	l4123
	
l781:	
	
l4123:	
	movf	(31),w	;volatile
	xorlw	019h
	skipz
	goto	u3951
	goto	u3950
u3951:
	goto	l4123
u3950:
	goto	l4125
	
l783:	
	line	66
	
l4125:	
;pic_adc.h: 66: adc_temp=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp+1)
	line	67
	
l4127:	
;pic_adc.h: 67: adc_temp0=adc_temp0+adc_temp;
	movf	(_adc_temp),w
	addwf	(_adc_temp0),w
	movwf	(_adc_temp0)
	movf	(_adc_temp+1),w
	skipnc
	incf	(_adc_temp+1),w
	addwf	(_adc_temp0+1),w
	movwf	1+(_adc_temp0)
	line	59
	
l4129:	
	movlw	(01h)
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	addwf	(_adc_j),f
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u3961
	goto	u3960
u3961:
	goto	l4115
u3960:
	goto	l4235
	
l777:	
	line	69
;pic_adc.h: 68: }
;pic_adc.h: 69: }
	goto	l4235
	line	70
	
l775:	
	
l4131:	
;pic_adc.h: 70: else if(val==4)
	movf	(Adc8_Cha@val),w
	xorlw	04h
	skipz
	goto	u3971
	goto	u3970
u3971:
	goto	l4157
u3970:
	line	72
	
l4133:	
;pic_adc.h: 71: {
;pic_adc.h: 72: adc_temp0=0;
	clrf	(_adc_temp0)
	clrf	(_adc_temp0+1)
	line	73
	
l4135:	
;pic_adc.h: 73: for(adc_j=0;adc_j<10;adc_j++)
	clrf	(_adc_j)
	
l4137:	
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u3981
	goto	u3980
u3981:
	goto	l4141
u3980:
	goto	l4235
	
l4139:	
	goto	l4235
	line	74
	
l786:	
	line	75
	
l4141:	
;pic_adc.h: 74: {
;pic_adc.h: 75: ADCON0=0x20;
	movlw	(020h)
	movwf	(31)	;volatile
	line	76
	
l4143:	
;pic_adc.h: 76: ADON=1;
	bsf	(248/8),(248)&7
	line	77
;pic_adc.h: 77: while(adc_del--);
	goto	l4145
	
l789:	
	goto	l4145
	
l788:	
	
l4145:	
	movlw	low(01h)
	subwf	(_adc_del),f
	movf	((_adc_del)),w
	xorlw	0FFh
	skipz
	goto	u3991
	goto	u3990
u3991:
	goto	l4145
u3990:
	goto	l4147
	
l790:	
	line	78
	
l4147:	
;pic_adc.h: 78: ADCON0 =0x25;
	movlw	(025h)
	movwf	(31)	;volatile
	line	79
;pic_adc.h: 79: while(ADCON0!=0x21);
	goto	l4149
	
l792:	
	goto	l4149
	
l791:	
	
l4149:	
	movf	(31),w	;volatile
	xorlw	021h
	skipz
	goto	u4001
	goto	u4000
u4001:
	goto	l4149
u4000:
	goto	l4151
	
l793:	
	line	80
	
l4151:	
;pic_adc.h: 80: adc_temp=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp+1)
	line	81
	
l4153:	
;pic_adc.h: 81: adc_temp0=adc_temp0+adc_temp;
	movf	(_adc_temp),w
	addwf	(_adc_temp0),w
	movwf	(_adc_temp0)
	movf	(_adc_temp+1),w
	skipnc
	incf	(_adc_temp+1),w
	addwf	(_adc_temp0+1),w
	movwf	1+(_adc_temp0)
	line	73
	
l4155:	
	movlw	(01h)
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	addwf	(_adc_j),f
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u4011
	goto	u4010
u4011:
	goto	l4141
u4010:
	goto	l4235
	
l787:	
	line	83
;pic_adc.h: 82: }
;pic_adc.h: 83: }
	goto	l4235
	line	84
	
l785:	
	
l4157:	
;pic_adc.h: 84: else if(val==5)
	movf	(Adc8_Cha@val),w
	xorlw	05h
	skipz
	goto	u4021
	goto	u4020
u4021:
	goto	l4183
u4020:
	line	86
	
l4159:	
;pic_adc.h: 85: {
;pic_adc.h: 86: adc_temp0=0;
	clrf	(_adc_temp0)
	clrf	(_adc_temp0+1)
	line	87
	
l4161:	
;pic_adc.h: 87: for(adc_j=0;adc_j<10;adc_j++)
	clrf	(_adc_j)
	
l4163:	
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u4031
	goto	u4030
u4031:
	goto	l4167
u4030:
	goto	l4235
	
l4165:	
	goto	l4235
	line	88
	
l796:	
	line	89
	
l4167:	
;pic_adc.h: 88: {
;pic_adc.h: 89: ADCON0=0x28;
	movlw	(028h)
	movwf	(31)	;volatile
	line	90
	
l4169:	
;pic_adc.h: 90: ADON=1;
	bsf	(248/8),(248)&7
	line	91
;pic_adc.h: 91: while(adc_del--);
	goto	l4171
	
l799:	
	goto	l4171
	
l798:	
	
l4171:	
	movlw	low(01h)
	subwf	(_adc_del),f
	movf	((_adc_del)),w
	xorlw	0FFh
	skipz
	goto	u4041
	goto	u4040
u4041:
	goto	l4171
u4040:
	goto	l4173
	
l800:	
	line	92
	
l4173:	
;pic_adc.h: 92: ADCON0 =0x2d;
	movlw	(02Dh)
	movwf	(31)	;volatile
	line	93
;pic_adc.h: 93: while(ADCON0!=0x29);
	goto	l4175
	
l802:	
	goto	l4175
	
l801:	
	
l4175:	
	movf	(31),w	;volatile
	xorlw	029h
	skipz
	goto	u4051
	goto	u4050
u4051:
	goto	l4175
u4050:
	goto	l4177
	
l803:	
	line	94
	
l4177:	
;pic_adc.h: 94: adc_temp=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp+1)
	line	95
	
l4179:	
;pic_adc.h: 95: adc_temp0=adc_temp0+adc_temp;
	movf	(_adc_temp),w
	addwf	(_adc_temp0),w
	movwf	(_adc_temp0)
	movf	(_adc_temp+1),w
	skipnc
	incf	(_adc_temp+1),w
	addwf	(_adc_temp0+1),w
	movwf	1+(_adc_temp0)
	line	87
	
l4181:	
	movlw	(01h)
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	addwf	(_adc_j),f
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u4061
	goto	u4060
u4061:
	goto	l4167
u4060:
	goto	l4235
	
l797:	
	line	97
;pic_adc.h: 96: }
;pic_adc.h: 97: }
	goto	l4235
	line	98
	
l795:	
	
l4183:	
;pic_adc.h: 98: else if(val==6)
	movf	(Adc8_Cha@val),w
	xorlw	06h
	skipz
	goto	u4071
	goto	u4070
u4071:
	goto	l4209
u4070:
	line	100
	
l4185:	
;pic_adc.h: 99: {
;pic_adc.h: 100: adc_temp0=0;
	clrf	(_adc_temp0)
	clrf	(_adc_temp0+1)
	line	101
	
l4187:	
;pic_adc.h: 101: for(adc_j=0;adc_j<10;adc_j++)
	clrf	(_adc_j)
	
l4189:	
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u4081
	goto	u4080
u4081:
	goto	l4193
u4080:
	goto	l4235
	
l4191:	
	goto	l4235
	line	102
	
l806:	
	line	103
	
l4193:	
;pic_adc.h: 102: {
;pic_adc.h: 103: ADCON0=0x30;
	movlw	(030h)
	movwf	(31)	;volatile
	line	104
	
l4195:	
;pic_adc.h: 104: ADON=1;
	bsf	(248/8),(248)&7
	line	105
;pic_adc.h: 105: while(adc_del--);
	goto	l4197
	
l809:	
	goto	l4197
	
l808:	
	
l4197:	
	movlw	low(01h)
	subwf	(_adc_del),f
	movf	((_adc_del)),w
	xorlw	0FFh
	skipz
	goto	u4091
	goto	u4090
u4091:
	goto	l4197
u4090:
	goto	l4199
	
l810:	
	line	106
	
l4199:	
;pic_adc.h: 106: ADCON0 =0x35;
	movlw	(035h)
	movwf	(31)	;volatile
	line	107
;pic_adc.h: 107: while(ADCON0!=0x31);
	goto	l4201
	
l812:	
	goto	l4201
	
l811:	
	
l4201:	
	movf	(31),w	;volatile
	xorlw	031h
	skipz
	goto	u4101
	goto	u4100
u4101:
	goto	l4201
u4100:
	goto	l4203
	
l813:	
	line	108
	
l4203:	
;pic_adc.h: 108: adc_temp=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp+1)
	line	109
	
l4205:	
;pic_adc.h: 109: adc_temp0=adc_temp0+adc_temp;
	movf	(_adc_temp),w
	addwf	(_adc_temp0),w
	movwf	(_adc_temp0)
	movf	(_adc_temp+1),w
	skipnc
	incf	(_adc_temp+1),w
	addwf	(_adc_temp0+1),w
	movwf	1+(_adc_temp0)
	line	101
	
l4207:	
	movlw	(01h)
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	addwf	(_adc_j),f
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u4111
	goto	u4110
u4111:
	goto	l4193
u4110:
	goto	l4235
	
l807:	
	line	111
;pic_adc.h: 110: }
;pic_adc.h: 111: }
	goto	l4235
	line	112
	
l805:	
	
l4209:	
;pic_adc.h: 112: else if(val==7)
	movf	(Adc8_Cha@val),w
	xorlw	07h
	skipz
	goto	u4121
	goto	u4120
u4121:
	goto	l4235
u4120:
	line	114
	
l4211:	
;pic_adc.h: 113: {
;pic_adc.h: 114: adc_temp0=0;
	clrf	(_adc_temp0)
	clrf	(_adc_temp0+1)
	line	115
	
l4213:	
;pic_adc.h: 115: for(adc_j=0;adc_j<10;adc_j++)
	clrf	(_adc_j)
	
l4215:	
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u4131
	goto	u4130
u4131:
	goto	l4219
u4130:
	goto	l4235
	
l4217:	
	goto	l4235
	line	116
	
l816:	
	line	117
	
l4219:	
;pic_adc.h: 116: {
;pic_adc.h: 117: ADCON0=0x38;
	movlw	(038h)
	movwf	(31)	;volatile
	line	118
	
l4221:	
;pic_adc.h: 118: ADON=1;
	bsf	(248/8),(248)&7
	line	119
;pic_adc.h: 119: while(adc_del--);
	goto	l4223
	
l819:	
	goto	l4223
	
l818:	
	
l4223:	
	movlw	low(01h)
	subwf	(_adc_del),f
	movf	((_adc_del)),w
	xorlw	0FFh
	skipz
	goto	u4141
	goto	u4140
u4141:
	goto	l4223
u4140:
	goto	l4225
	
l820:	
	line	120
	
l4225:	
;pic_adc.h: 120: ADCON0 =0x3d;
	movlw	(03Dh)
	movwf	(31)	;volatile
	line	121
;pic_adc.h: 121: while(ADCON0!=0x39);
	goto	l4227
	
l822:	
	goto	l4227
	
l821:	
	
l4227:	
	movf	(31),w	;volatile
	xorlw	039h
	skipz
	goto	u4151
	goto	u4150
u4151:
	goto	l4227
u4150:
	goto	l4229
	
l823:	
	line	122
	
l4229:	
;pic_adc.h: 122: adc_temp=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp+1)
	line	123
	
l4231:	
;pic_adc.h: 123: adc_temp0=adc_temp0+adc_temp;
	movf	(_adc_temp),w
	addwf	(_adc_temp0),w
	movwf	(_adc_temp0)
	movf	(_adc_temp+1),w
	skipnc
	incf	(_adc_temp+1),w
	addwf	(_adc_temp0+1),w
	movwf	1+(_adc_temp0)
	line	115
	
l4233:	
	movlw	(01h)
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	addwf	(_adc_j),f
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u4161
	goto	u4160
u4161:
	goto	l4219
u4160:
	goto	l4235
	
l817:	
	goto	l4235
	line	125
	
l815:	
	goto	l4235
	line	126
	
l814:	
	goto	l4235
	
l804:	
	goto	l4235
	
l794:	
	goto	l4235
	
l784:	
	goto	l4235
	
l774:	
	goto	l4235
	
l764:	
	goto	l4235
	
l754:	
	
l4235:	
;pic_adc.h: 124: }
;pic_adc.h: 125: }
;pic_adc.h: 126: adc_val=adc_temp0/10;
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	movf	(_adc_temp0+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(_adc_temp0),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_adc_val)
	line	127
	
l4237:	
;pic_adc.h: 127: return adc_val;
	movf	(_adc_val),w
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(?_Adc8_Cha)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(?_Adc8_Cha+1)
	goto	l824
	
l4239:	
	line	128
	
l824:	
	return
	opt stack 0
GLOBAL	__end_of_Adc8_Cha
	__end_of_Adc8_Cha:
;; =============== function _Adc8_Cha ends ============

	signat	_Adc8_Cha,4218
	global	_Lcd8_Command
psect	text266,local,class=CODE,delta=2
global __ptext266
__ptext266:

;; *************** function _Lcd8_Command *****************
;; Defined at:
;;		line 30 in file "E:\pic program\adc program\pic_lcd8.h"
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
psect	text266
	file	"E:\pic program\adc program\pic_lcd8.h"
	line	30
	global	__size_of_Lcd8_Command
	__size_of_Lcd8_Command	equ	__end_of_Lcd8_Command-_Lcd8_Command
	
_Lcd8_Command:	
	opt	stack 4
; Regs used in _Lcd8_Command: [wreg+status,2+status,0+pclath+cstack]
;Lcd8_Command@com stored from wreg
	movwf	(Lcd8_Command@com)
	line	31
	
l4011:	
;pic_lcd8.h: 31: PORTD=com;
	movf	(Lcd8_Command@com),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	32
	
l4013:	
;pic_lcd8.h: 32: Lcd_en=1;
	bsf	(61/8),(61)&7
	line	33
	
l4015:	
;pic_lcd8.h: 33: Lcd_rs=0;
	bcf	(60/8),(60)&7
	line	34
	
l4017:	
;pic_lcd8.h: 34: Delay(125);
	movlw	low(07Dh)
	movwf	(?_Delay)
	movlw	high(07Dh)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	35
	
l4019:	
;pic_lcd8.h: 35: Lcd_en=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	line	36
	
l4021:	
;pic_lcd8.h: 36: Delay(125);
	movlw	low(07Dh)
	movwf	(?_Delay)
	movlw	high(07Dh)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	37
	
l718:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Command
	__end_of_Lcd8_Command:
;; =============== function _Lcd8_Command ends ============

	signat	_Lcd8_Command,4216
	global	___awmod
psect	text267,local,class=CODE,delta=2
global __ptext267
__ptext267:

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
psect	text267
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l3977:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u3681
	goto	u3680
u3681:
	goto	l3981
u3680:
	line	10
	
l3979:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l3981
	line	12
	
l1803:	
	line	13
	
l3981:	
	btfss	(___awmod@divisor+1),7
	goto	u3691
	goto	u3690
u3691:
	goto	l3985
u3690:
	line	14
	
l3983:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l3985
	
l1804:	
	line	15
	
l3985:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u3701
	goto	u3700
u3701:
	goto	l4003
u3700:
	line	16
	
l3987:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l3993
	
l1807:	
	line	18
	
l3989:	
	movlw	01h
	
u3715:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3715
	line	19
	
l3991:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l3993
	line	20
	
l1806:	
	line	17
	
l3993:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u3721
	goto	u3720
u3721:
	goto	l3989
u3720:
	goto	l3995
	
l1808:	
	goto	l3995
	line	21
	
l1809:	
	line	22
	
l3995:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u3735
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u3735:
	skipc
	goto	u3731
	goto	u3730
u3731:
	goto	l3999
u3730:
	line	23
	
l3997:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l3999
	
l1810:	
	line	24
	
l3999:	
	movlw	01h
	
u3745:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u3745
	line	25
	
l4001:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u3751
	goto	u3750
u3751:
	goto	l3995
u3750:
	goto	l4003
	
l1811:	
	goto	l4003
	line	26
	
l1805:	
	line	27
	
l4003:	
	movf	(___awmod@sign),w
	skipz
	goto	u3760
	goto	l4007
u3760:
	line	28
	
l4005:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l4007
	
l1812:	
	line	29
	
l4007:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1813
	
l4009:	
	line	30
	
l1813:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text268,local,class=CODE,delta=2
global __ptext268
__ptext268:

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
psect	text268
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l3937:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u3581
	goto	u3580
u3581:
	goto	l3941
u3580:
	line	11
	
l3939:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l3941
	line	13
	
l1735:	
	line	14
	
l3941:	
	btfss	(___awdiv@dividend+1),7
	goto	u3591
	goto	u3590
u3591:
	goto	l3947
u3590:
	line	15
	
l3943:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l3945:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l3947
	line	17
	
l1736:	
	line	18
	
l3947:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l3949:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u3601
	goto	u3600
u3601:
	goto	l3969
u3600:
	line	20
	
l3951:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l3957
	
l1739:	
	line	22
	
l3953:	
	movlw	01h
	
u3615:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3615
	line	23
	
l3955:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l3957
	line	24
	
l1738:	
	line	21
	
l3957:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3621
	goto	u3620
u3621:
	goto	l3953
u3620:
	goto	l3959
	
l1740:	
	goto	l3959
	line	25
	
l1741:	
	line	26
	
l3959:	
	movlw	01h
	
u3635:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3635
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3645
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3645:
	skipc
	goto	u3641
	goto	u3640
u3641:
	goto	l3965
u3640:
	line	28
	
l3961:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l3963:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l3965
	line	30
	
l1742:	
	line	31
	
l3965:	
	movlw	01h
	
u3655:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u3655
	line	32
	
l3967:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u3661
	goto	u3660
u3661:
	goto	l3959
u3660:
	goto	l3969
	
l1743:	
	goto	l3969
	line	33
	
l1737:	
	line	34
	
l3969:	
	movf	(___awdiv@sign),w
	skipz
	goto	u3670
	goto	l3973
u3670:
	line	35
	
l3971:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l3973
	
l1744:	
	line	36
	
l3973:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1745
	
l3975:	
	line	37
	
l1745:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___lwmod
psect	text269,local,class=CODE,delta=2
global __ptext269
__ptext269:

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
psect	text269
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 6
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l3915:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u3521
	goto	u3520
u3521:
	goto	l3933
u3520:
	line	9
	
l3917:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l3923
	
l1613:	
	line	11
	
l3919:	
	movlw	01h
	
u3535:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3535
	line	12
	
l3921:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l3923
	line	13
	
l1612:	
	line	10
	
l3923:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u3541
	goto	u3540
u3541:
	goto	l3919
u3540:
	goto	l3925
	
l1614:	
	goto	l3925
	line	14
	
l1615:	
	line	15
	
l3925:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u3555
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u3555:
	skipc
	goto	u3551
	goto	u3550
u3551:
	goto	l3929
u3550:
	line	16
	
l3927:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l3929
	
l1616:	
	line	17
	
l3929:	
	movlw	01h
	
u3565:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u3565
	line	18
	
l3931:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u3571
	goto	u3570
u3571:
	goto	l3925
u3570:
	goto	l3933
	
l1617:	
	goto	l3933
	line	19
	
l1611:	
	line	20
	
l3933:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l1618
	
l3935:	
	line	21
	
l1618:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text270,local,class=CODE,delta=2
global __ptext270
__ptext270:

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
;;		_Adc8_Cha
;;		_Lcd8_Decimal2
;;		_Lcd8_Decimal4
;;		_Adc10_Cha
;; This function uses a non-reentrant model
;;
psect	text270
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l3889:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l3891:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u3451
	goto	u3450
u3451:
	goto	l3911
u3450:
	line	11
	
l3893:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l3899
	
l1603:	
	line	13
	
l3895:	
	movlw	01h
	
u3465:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3465
	line	14
	
l3897:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l3899
	line	15
	
l1602:	
	line	12
	
l3899:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u3471
	goto	u3470
u3471:
	goto	l3895
u3470:
	goto	l3901
	
l1604:	
	goto	l3901
	line	16
	
l1605:	
	line	17
	
l3901:	
	movlw	01h
	
u3485:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3485
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u3495
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u3495:
	skipc
	goto	u3491
	goto	u3490
u3491:
	goto	l3907
u3490:
	line	19
	
l3903:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l3905:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l3907
	line	21
	
l1606:	
	line	22
	
l3907:	
	movlw	01h
	
u3505:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u3505
	line	23
	
l3909:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u3511
	goto	u3510
u3511:
	goto	l3901
u3510:
	goto	l3911
	
l1607:	
	goto	l3911
	line	24
	
l1601:	
	line	25
	
l3911:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l1608
	
l3913:	
	line	26
	
l1608:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_Delay
psect	text271,local,class=CODE,delta=2
global __ptext271
__ptext271:

;; *************** function _Delay *****************
;; Defined at:
;;		line 107 in file "E:\pic program\adc program\pic_lcd8.h"
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
psect	text271
	file	"E:\pic program\adc program\pic_lcd8.h"
	line	107
	global	__size_of_Delay
	__size_of_Delay	equ	__end_of_Delay-_Delay
	
_Delay:	
	opt	stack 5
; Regs used in _Delay: [wreg]
	line	108
	
l3633:	
;pic_lcd8.h: 108: while(del--);
	goto	l3635
	
l740:	
	goto	l3635
	
l739:	
	
l3635:	
	movlw	low(01h)
	subwf	(Delay@del),f
	movlw	high(01h)
	skipc
	decf	(Delay@del+1),f
	subwf	(Delay@del+1),f
	movlw	high(0FFFFh)
	xorwf	((Delay@del+1)),w
	skipz
	goto	u3045
	movlw	low(0FFFFh)
	xorwf	((Delay@del)),w
u3045:

	skipz
	goto	u3041
	goto	u3040
u3041:
	goto	l3635
u3040:
	goto	l742
	
l741:	
	line	109
	
l742:	
	return
	opt stack 0
GLOBAL	__end_of_Delay
	__end_of_Delay:
;; =============== function _Delay ends ============

	signat	_Delay,4216
psect	text272,local,class=CODE,delta=2
global __ptext272
__ptext272:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
