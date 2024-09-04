subtitle "Microchip MPLAB XC8 C Compiler v2.46 (Free license) build 20240104201356 Og1 "

pagewidth 120

	opt flic

	processor	16F877A
include "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\16f877a.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
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
# 54 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\pic16f877a.h"
EECON2 equ 018Dh ;# 
	debug_source C
	FNCALL	_main,_init
	FNCALL	_main,_keyscane
	FNCALL	_keyscane,_Lcd_Command
	FNCALL	_keyscane,_Lcd_Data
	FNCALL	_keyscane,_Lcdoutput
	FNCALL	_Lcdoutput,_Lcd_Command
	FNCALL	_Lcdoutput,_Lcd_Data
	FNCALL	_Lcdoutput,___bmul
	FNCALL	_Lcdoutput,___lwdiv
	FNCALL	_Lcdoutput,___wmul
	FNCALL	_init,_Lcd_Command
	FNROOT	_main
	global	_a
	global	_k
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"Lcd_batt_check_task_program.c"
	line	28

;initializer for _a
	retlw	042h
	retlw	041h
	retlw	054h
	retlw	054h
	retlw	045h
	retlw	052h
	retlw	059h
	retlw	020h
	retlw	04Ch
	retlw	04Fh
	retlw	057h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	04Eh
	retlw	04Fh
	retlw	052h
	retlw	04Dh
	retlw	041h
	retlw	04Ch
	retlw	020h
	retlw	048h
	retlw	049h
	retlw	047h
	retlw	048h
	retlw	020h
	retlw	020h
	retlw	low(0)
	retlw	0
	retlw	0
psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	line	27

;initializer for _k
	retlw	042h
	retlw	041h
	retlw	054h
	retlw	054h
	retlw	020h
	retlw	056h
	retlw	04Fh
	retlw	04Ch
	retlw	054h
	retlw	03Ah
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	low(0)
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	global	_j
	global	_d2
	global	_d3
	global	_d4
	global	_p
	global	_value
	global	_x
	global	_PORTD
_PORTD	set	0x8
	global	_PORTC
_PORTC	set	0x7
	global	_PORTB
_PORTB	set	0x6
	global	_OPTION_REG
_OPTION_REG	set	0x81
	global	_TRISD
_TRISD	set	0x88
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FOSC = "EXTRC"
	config WDTE = "OFF"
	config PWRTE = "OFF"
	config BOREN = "OFF"
	config LVP = "OFF"
	config CPD = "OFF"
	config WRT = "OFF"
	config CP = "OFF"
	file	"dist/default/production\Lcd_batt_check_task_program.X.production.s"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_m:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_j:
       ds      2

_i:
       ds      2

_d1:
       ds      2

_d2:
       ds      2

_d3:
       ds      2

_d4:
       ds      2

_p:
       ds      1

_value:
       ds      1

_n:
       ds      1

_x:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"Lcd_batt_check_task_program.c"
	line	28
_a:
       ds      30

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"Lcd_batt_check_task_program.c"
	line	27
_k:
       ds      30

	file	"dist/default/production\Lcd_batt_check_task_program.X.production.s"
	line	#
global btemp
psect inittext,class=CODE,delta=2
global init_fetch0,btemp
;	Called with low address in FSR and high address in W
init_fetch0:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram0
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram0:
	fcall init_fetch0
	movwf indf
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram0
; Initialize objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
global init_ram0, __pidataBANK1
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK1+30)
	movwf btemp-1
	movlw high(__pidataBANK1)
	movwf btemp
	movlw low(__pidataBANK1)
	movwf btemp+1
	movlw low(__pdataBANK1)
	movwf fsr
	fcall init_ram0
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
global init_ram0, __pidataBANK0
	movlw low(__pdataBANK0+30)
	movwf btemp-1
	movlw high(__pidataBANK0)
	movwf btemp
	movlw low(__pidataBANK0)
	movwf btemp+1
	movlw low(__pdataBANK0)
	movwf fsr
	fcall init_ram0
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+010h)
	fcall	clear_ram0
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_init:	; 1 bytes @ 0x0
?_keyscane:	; 1 bytes @ 0x0
?_Lcd_Command:	; 1 bytes @ 0x0
??_Lcd_Command:	; 1 bytes @ 0x0
?_Lcd_Data:	; 1 bytes @ 0x0
??_Lcd_Data:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?___bmul:	; 1 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	ds	1
??___bmul:	; 1 bytes @ 0x1
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x1
	ds	1
	global	Lcd_Data@i
Lcd_Data@i:	; 1 bytes @ 0x2
	global	Lcd_Command@i
Lcd_Command@i:	; 1 bytes @ 0x2
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	ds	1
??_init:	; 1 bytes @ 0x3
	ds	1
??___wmul:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	2
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x6
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x6
	ds	2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x8
	ds	2
??___lwdiv:	; 1 bytes @ 0xA
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0xA
	ds	2
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0xC
	ds	1
??_keyscane:	; 1 bytes @ 0xD
??_main:	; 1 bytes @ 0xD
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_Lcdoutput:	; 1 bytes @ 0x0
	global	Lcdoutput@i
Lcdoutput@i:	; 2 bytes @ 0x0
	ds	2
??_Lcdoutput:	; 1 bytes @ 0x2
	ds	3
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        60
;!    BSS         17
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     13      14
;!    BANK0            80      5      51
;!    BANK1            80      0      30
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _Lcdoutput->___lwdiv
;!    ___lwdiv->___wmul
;!    _init->_Lcd_Command
;!
;!Critical Paths under _main in BANK0
;!
;!    _keyscane->_Lcdoutput
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0    1434
;!                               _init
;!                           _keyscane
;! ---------------------------------------------------------------------------------
;! (1) _keyscane                                             0     0      0    1412
;!                        _Lcd_Command
;!                           _Lcd_Data
;!                          _Lcdoutput
;! ---------------------------------------------------------------------------------
;! (2) _Lcdoutput                                            5     3      2    1368
;!                                              0 BANK0      5     3      2
;!                        _Lcd_Command
;!                           _Lcd_Data
;!                             ___bmul
;!                            ___lwdiv
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (3) ___wmul                                               6     2      4     244
;!                                              0 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! (3) ___lwdiv                                              7     3      4     466
;!                                              6 COMMON     7     3      4
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___bmul                                               3     2      1     244
;!                                              0 COMMON     3     2      1
;! ---------------------------------------------------------------------------------
;! (3) _Lcd_Data                                             3     3      0      22
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _init                                                 2     2      0      22
;!                                              3 COMMON     2     2      0
;!                        _Lcd_Command
;! ---------------------------------------------------------------------------------
;! (3) _Lcd_Command                                          3     3      0      22
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _init
;!     _Lcd_Command
;!   _keyscane
;!     _Lcd_Command
;!     _Lcd_Data
;!     _Lcdoutput
;!       _Lcd_Command
;!       _Lcd_Data
;!       ___bmul
;!       ___lwdiv
;!         ___wmul (ARG)
;!       ___wmul
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60      0       0       9        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0      1E       7       37.5%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50      5      33       5       63.7%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      D       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      5F      12        0.0%
;!ABS                  0      0      5F       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 33 in file "Lcd_batt_check_task_program.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_init
;;		_keyscane
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"Lcd_batt_check_task_program.c"
	line	33
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"Lcd_batt_check_task_program.c"
	line	33
	
_main:	
;incstack = 0
	callstack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	35
	
l1147:	
	fcall	_init
	line	40
	
l1149:	
	fcall	_keyscane
	goto	l1149
	global	start
	ljmp	start
	callstack 0
	line	43
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_keyscane

;; *************** function _keyscane *****************
;; Defined at:
;;		line 67 in file "Lcd_batt_check_task_program.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
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
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_Lcd_Command
;;		_Lcd_Data
;;		_Lcdoutput
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	67
global __ptext1
__ptext1:	;psect for function _keyscane
psect	text1
	file	"Lcd_batt_check_task_program.c"
	line	67
	
_keyscane:	
;incstack = 0
	callstack 5
; Regs used in _keyscane: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	69
	
l1015:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	andlw	0F0h
	movwf	(_value)
	line	70
	goto	l1083
	line	74
	
l1017:	
	movlw	low(080h)
	fcall	_Lcd_Command
	line	75
	
l1019:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_x)
	line	77
	
l1025:	
	movf	(_x),w
	addlw	low(_k|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_Lcd_Data
	line	78
	
l1027:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_x),f
	
l1029:	
	movlw	low(0Ah)
	subwf	(_x),w
	skipc
	goto	u451
	goto	u450
u451:
	goto	l1025
u450:
	line	79
	
l1031:	
	movlw	low(08Bh)
	fcall	_Lcd_Command
	line	80
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_j+1),w
	movwf	(Lcdoutput@i+1)
	movf	(_j),w
	movwf	(Lcdoutput@i)
	fcall	_Lcdoutput
	line	82
	movlw	low(0C0h)
	fcall	_Lcd_Command
	line	83
	
l1033:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_p)
	line	85
	
l1039:	
	movf	(_p),w
	addlw	low(_a|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_Lcd_Data
	line	86
	
l1041:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_p),f
	
l1043:	
	movlw	low(07h)
	subwf	(_p),w
	skipc
	goto	u461
	goto	u460
u461:
	goto	l1039
u460:
	goto	l1085
	line	91
	
l1045:	
	movlw	01h
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	0
	addwf	(_j+1),f
	line	92
	movlw	0
	subwf	(_j+1),w
	movlw	0E1h
	skipnz
	subwf	(_j),w
	skipc
	goto	u471
	goto	u470
u471:
	goto	l1049
u470:
	line	93
	
l1047:	
	movlw	0E1h
	movwf	(_j)
	movlw	0
	movwf	((_j))+1
	line	94
	
l1049:	
	movlw	low(08Bh)
	fcall	_Lcd_Command
	line	95
	
l1051:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_j+1),w
	movwf	(Lcdoutput@i+1)
	movf	(_j),w
	movwf	(Lcdoutput@i)
	fcall	_Lcdoutput
	line	97
	goto	l1085
	line	100
	
l1053:	
	movlw	01h
	subwf	(_j),f
	movlw	0
	skipc
	decf	(_j+1),f
	subwf	(_j+1),f
	line	101
	movlw	0
	subwf	(_j+1),w
	movlw	09Ch
	skipnz
	subwf	(_j),w
	skipnc
	goto	u481
	goto	u480
u481:
	goto	l1057
u480:
	line	102
	
l1055:	
	movlw	09Bh
	movwf	(_j)
	movlw	0
	movwf	((_j))+1
	line	103
	
l1057:	
	movlw	low(08Bh)
	fcall	_Lcd_Command
	goto	l1051
	line	109
	
l1061:	
	movlw	09Bh
	movwf	(_j)
	movlw	0
	movwf	((_j))+1
	line	110
	
l1063:	
	movlw	low(08Bh)
	fcall	_Lcd_Command
	line	111
	
l1065:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_j+1),w
	movwf	(Lcdoutput@i+1)
	movf	(_j),w
	movwf	(Lcdoutput@i)
	fcall	_Lcdoutput
	line	112
	
l1067:	
	movlw	low(0C8h)
	fcall	_Lcd_Command
	line	113
	
l1069:	
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_p)
	line	115
	
l1075:	
	movf	(_p),w
	addlw	low(_a|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_Lcd_Data
	line	116
	
l1077:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_p),f
	
l1079:	
	movlw	low(0Eh)
	subwf	(_p),w
	skipc
	goto	u491
	goto	u490
u491:
	goto	l1075
u490:
	goto	l1085
	line	120
	
l1083:	
	movf	(_value),w
	; Switch size 1, requested type "simple"
; Number of cases is 4, Range of values is 112 to 224
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	asmopt push
	asmopt off
	xorlw	112^0	; case 112
	skipnz
	goto	l1061
	xorlw	176^112	; case 176
	skipnz
	goto	l1053
	xorlw	208^176	; case 208
	skipnz
	goto	l1045
	xorlw	224^208	; case 224
	skipnz
	goto	l1017
	goto	l1085
	asmopt pop

	line	121
	
l1085:	
		movlw	224
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((_value)),w
	btfsc	status,2
	goto	u501
	goto	u500
u501:
	goto	l1093
u500:
	
l1087:	
		movlw	208
	xorwf	((_value)),w
	btfsc	status,2
	goto	u511
	goto	u510
u511:
	goto	l1093
u510:
	
l1089:	
		movlw	176
	xorwf	((_value)),w
	btfsc	status,2
	goto	u521
	goto	u520
u521:
	goto	l1093
u520:
	
l1091:	
		movlw	112
	xorwf	((_value)),w
	btfss	status,2
	goto	u531
	goto	u530
u531:
	goto	l94
u530:
	line	123
	
l1093:	
	movlw	0
	subwf	(_j+1),w
	movlw	09Bh
	skipnz
	subwf	(_j),w
	skipc
	goto	u541
	goto	u540
u541:
	goto	l1111
u540:
	
l1095:	
	movlw	0
	subwf	(_j+1),w
	movlw	0B0h
	skipnz
	subwf	(_j),w
	skipnc
	goto	u551
	goto	u550
u551:
	goto	l1111
u550:
	line	125
	
l1097:	
	movlw	low(0C8h)
	fcall	_Lcd_Command
	line	126
	
l1099:	
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_p)
	line	128
	
l1105:	
	movf	(_p),w
	addlw	low(_a|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_Lcd_Data
	line	129
	
l1107:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_p),f
	
l1109:	
	movlw	low(0Eh)
	subwf	(_p),w
	skipc
	goto	u561
	goto	u560
u561:
	goto	l1105
u560:
	goto	l94
	line	131
	
l1111:	
	movlw	0
	subwf	(_j+1),w
	movlw	0B0h
	skipnz
	subwf	(_j),w
	skipc
	goto	u571
	goto	u570
u571:
	goto	l1129
u570:
	
l1113:	
	movlw	0
	subwf	(_j+1),w
	movlw	0CEh
	skipnz
	subwf	(_j),w
	skipnc
	goto	u581
	goto	u580
u581:
	goto	l1129
u580:
	line	133
	
l1115:	
	movlw	low(0C8h)
	fcall	_Lcd_Command
	line	134
	
l1117:	
	movlw	low(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_p)
	line	136
	
l1123:	
	movf	(_p),w
	addlw	low(_a|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_Lcd_Data
	line	137
	
l1125:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_p),f
	
l1127:	
	movlw	low(014h)
	subwf	(_p),w
	skipc
	goto	u591
	goto	u590
u591:
	goto	l1123
u590:
	goto	l94
	line	139
	
l1129:	
	movlw	0
	subwf	(_j+1),w
	movlw	0CEh
	skipnz
	subwf	(_j),w
	skipc
	goto	u601
	goto	u600
u601:
	goto	l86
u600:
	
l1131:	
	movlw	0
	subwf	(_j+1),w
	movlw	0E2h
	skipnz
	subwf	(_j),w
	skipnc
	goto	u611
	goto	u610
u611:
	goto	l86
u610:
	line	141
	
l1133:	
	movlw	low(0C8h)
	fcall	_Lcd_Command
	line	142
	
l1135:	
	movlw	low(015h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_p)
	line	144
	
l1141:	
	movf	(_p),w
	addlw	low(_a|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_Lcd_Data
	line	145
	
l1143:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_p),f
	
l1145:	
	movlw	low(01Bh)
	subwf	(_p),w
	skipc
	goto	u621
	goto	u620
u621:
	goto	l1141
u620:
	goto	l94
	line	146
	
l86:	
	line	149
	
l94:	
	return
	callstack 0
GLOBAL	__end_of_keyscane
	__end_of_keyscane:
	signat	_keyscane,89
	global	_Lcdoutput

;; *************** function _Lcdoutput *****************
;; Defined at:
;;		line 166 in file "Lcd_batt_check_task_program.c"
;; Parameters:    Size  Location     Type
;;  i               2    0[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_Lcd_Command
;;		_Lcd_Data
;;		___bmul
;;		___lwdiv
;;		___wmul
;; This function is called by:
;;		_keyscane
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	166
global __ptext2
__ptext2:	;psect for function _Lcdoutput
psect	text2
	file	"Lcd_batt_check_task_program.c"
	line	166
	
_Lcdoutput:	
;incstack = 0
	callstack 5
; Regs used in _Lcdoutput: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	168
	
l973:	
	movlw	064h
	movwf	(___lwdiv@divisor)
	movlw	0
	movwf	((___lwdiv@divisor))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Lcdoutput@i+1),w
	movwf	(___lwdiv@dividend+1)
	movf	(Lcdoutput@i),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Lcdoutput+0)+0
	clrf	(??_Lcdoutput+0)+0+1
	movf	0+(??_Lcdoutput+0)+0,w
	movwf	(_d4)
	movf	1+(??_Lcdoutput+0)+0,w
	movwf	(_d4+1)
	line	169
	movlw	0Ah
	movwf	(___lwdiv@divisor)
	movlw	0
	movwf	((___lwdiv@divisor))+1
	movf	(_d4+1),w
	movwf	(___wmul@multiplier+1)
	movf	(_d4),w
	movwf	(___wmul@multiplier)
	movlw	09Ch
	movwf	(___wmul@multiplicand)
	movlw	0FFh
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Lcdoutput@i),w
	addwf	(0+(?___wmul)),w
	movwf	(___lwdiv@dividend)
	movf	(Lcdoutput@i+1),w
	skipnc
	incf	(Lcdoutput@i+1),w
	addwf	(1+(?___wmul)),w
	movwf	1+(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Lcdoutput+0)+0
	clrf	(??_Lcdoutput+0)+0+1
	movf	0+(??_Lcdoutput+0)+0,w
	movwf	(_d3)
	movf	1+(??_Lcdoutput+0)+0,w
	movwf	(_d3+1)
	line	170
	movlw	low(09Ch)
	movwf	(___bmul@multiplicand)
	movf	(_d4),w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Lcdoutput+0)+0
	movlw	low(0F6h)
	movwf	(___bmul@multiplicand)
	movf	(_d3),w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(??_Lcdoutput+0)+0,w
	addwf	(Lcdoutput@i),w
	movwf	(??_Lcdoutput+1)+0
	clrf	(??_Lcdoutput+1)+0+1
	movf	0+(??_Lcdoutput+1)+0,w
	movwf	(_d2)
	movf	1+(??_Lcdoutput+1)+0,w
	movwf	(_d2+1)
	line	171
	movlw	low(08Bh)
	fcall	_Lcd_Command
	line	172
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_d4),w
	addlw	030h
	fcall	_Lcd_Data
	line	173
	movlw	low(08Ch)
	fcall	_Lcd_Command
	line	174
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_d3),w
	addlw	030h
	fcall	_Lcd_Data
	line	175
	movlw	low(08Dh)
	fcall	_Lcd_Command
	line	176
	movlw	low(02Eh)
	fcall	_Lcd_Data
	line	177
	movlw	low(08Eh)
	fcall	_Lcd_Command
	line	178
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_d2),w
	addlw	030h
	fcall	_Lcd_Data
	line	181
	
l103:	
	return
	callstack 0
GLOBAL	__end_of_Lcdoutput
	__end_of_Lcdoutput:
	signat	_Lcdoutput,4217
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcdoutput
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\Umul16.c"
	line	15
global __ptext3
__ptext3:	;psect for function ___wmul
psect	text3
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\Umul16.c"
	line	15
	
___wmul:	
;incstack = 0
	callstack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l917:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	45
	
l919:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u321
	goto	u320
u321:
	goto	l189
u320:
	line	46
	
l921:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l189:	
	line	47
	movlw	01h
	
u335:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u335
	line	48
	
l923:	
	movlw	01h
	
u345:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u345
	line	49
	
l925:	
	movf	((___wmul@multiplier)),w
iorwf	((___wmul@multiplier+1)),w
	btfss	status,2
	goto	u351
	goto	u350
u351:
	goto	l919
u350:
	line	52
	
l927:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	53
	
l191:	
	return
	callstack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    6[COMMON] unsigned int 
;;  dividend        2    8[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   10[COMMON] unsigned int 
;;  counter         1   12[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    6[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcdoutput
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\lwdiv.c"
	line	5
global __ptext4
__ptext4:	;psect for function ___lwdiv
psect	text4
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\lwdiv.c"
	line	5
	
___lwdiv:	
;incstack = 0
	callstack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0+btemp+1]
	line	13
	
l947:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	14
	
l949:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u381
	goto	u380
u381:
	goto	l969
u380:
	line	15
	
l951:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	16
	goto	l957
	line	17
	
l953:	
	movlw	01h
	
u395:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u395
	line	18
	
l955:	
	movlw	low(01h)
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(___lwdiv@counter),f
	line	16
	
l957:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u401
	goto	u400
u401:
	goto	l953
u400:
	line	21
	
l959:	
	movlw	01h
	
u415:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u415
	line	22
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u425
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u425:
	skipc
	goto	u421
	goto	u420
u421:
	goto	l965
u420:
	line	23
	
l961:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	24
	
l963:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	26
	
l965:	
	movlw	01h
	
u435:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u435
	line	27
	
l967:	
	movlw	01h
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u441
	goto	u440
u441:
	goto	l959
u440:
	line	29
	
l969:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	30
	
l469:	
	return
	callstack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	___bmul

;; *************** function ___bmul *****************
;; Defined at:
;;		line 4 in file "C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\Umul8.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    2[COMMON] unsigned char 
;;  product         1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcdoutput
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\Umul8.c"
	line	4
global __ptext5
__ptext5:	;psect for function ___bmul
psect	text5
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\Umul8.c"
	line	4
	
___bmul:	
;incstack = 0
	callstack 5
; Regs used in ___bmul: [wreg+status,2+status,0+btemp+1]
	movwf	(___bmul@multiplier)
	line	6
	
l931:	
	clrf	(___bmul@product)
	line	43
	
l933:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u361
	goto	u360
u361:
	goto	l937
u360:
	line	44
	
l935:	
	movf	(___bmul@multiplicand),w
	movwf	btemp+1
	movf	btemp+1,w
	addwf	(___bmul@product),f
	line	45
	
l937:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	46
	
l939:	
	clrc
	rrf	(___bmul@multiplier),f

	line	47
	
l941:	
	movf	((___bmul@multiplier)),w
	btfss	status,2
	goto	u371
	goto	u370
u371:
	goto	l933
u370:
	line	50
	
l943:	
	movf	(___bmul@product),w
	line	51
	
l215:	
	return
	callstack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
	global	_Lcd_Data

;; *************** function _Lcd_Data *****************
;; Defined at:
;;		line 150 in file "Lcd_batt_check_task_program.c"
;; Parameters:    Size  Location     Type
;;  i               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  i               1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_keyscane
;;		_Lcdoutput
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	file	"Lcd_batt_check_task_program.c"
	line	150
global __ptext6
__ptext6:	;psect for function _Lcd_Data
psect	text6
	file	"Lcd_batt_check_task_program.c"
	line	150
	
_Lcd_Data:	
;incstack = 0
	callstack 5
; Regs used in _Lcd_Data: [wreg+status,2+status,0+btemp+1]
	movwf	(Lcd_Data@i)
	line	152
	
l907:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7)+(3/8),(3)&7	;volatile
	line	153
	
l909:	
	movf	(Lcd_Data@i),w
	movwf	(8)	;volatile
	line	154
	
l911:	
	bsf	(7)+(0/8),(0)&7	;volatile
	line	155
	
l913:	
	movlw	low(0FEh)
	movwf	btemp+1
	movf	btemp+1,w
	andwf	(7),f	;volatile
	line	156
	
l915:	
	asmopt push
asmopt off
movlw	98
movwf	((??_Lcd_Data+0)+0+1)
	movlw	101
movwf	((??_Lcd_Data+0)+0)
	u637:
decfsz	((??_Lcd_Data+0)+0),f
	goto	u637
	decfsz	((??_Lcd_Data+0)+0+1),f
	goto	u637
	nop2
asmopt pop

	line	157
	
l97:	
	return
	callstack 0
GLOBAL	__end_of_Lcd_Data
	__end_of_Lcd_Data:
	signat	_Lcd_Data,4217
	global	_init

;; *************** function _init *****************
;; Defined at:
;;		line 44 in file "Lcd_batt_check_task_program.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_Lcd_Command
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	44
global __ptext7
__ptext7:	;psect for function _init
psect	text7
	file	"Lcd_batt_check_task_program.c"
	line	44
	
_init:	
;incstack = 0
	callstack 6
; Regs used in _init: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	46
	
l975:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	47
	
l977:	
	movlw	low(0F0h)
	movwf	(134)^080h	;volatile
	line	48
	
l979:	
	clrf	(136)^080h	;volatile
	line	49
	
l981:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	50
	
l983:	
	movlw	low(07Fh)
	movwf	btemp+1
	movf	btemp+1,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(129)^080h,f	;volatile
	line	51
	
l985:	
	movlw	low(030h)
	fcall	_Lcd_Command
	line	52
	
l987:	
	asmopt push
asmopt off
movlw	98
movwf	((??_init+0)+0+1)
	movlw	101
movwf	((??_init+0)+0)
	u647:
decfsz	((??_init+0)+0),f
	goto	u647
	decfsz	((??_init+0)+0+1),f
	goto	u647
	nop2
asmopt pop

	line	53
	
l989:	
	movlw	low(030h)
	fcall	_Lcd_Command
	line	54
	
l991:	
	asmopt push
asmopt off
movlw	98
movwf	((??_init+0)+0+1)
	movlw	101
movwf	((??_init+0)+0)
	u657:
decfsz	((??_init+0)+0),f
	goto	u657
	decfsz	((??_init+0)+0+1),f
	goto	u657
	nop2
asmopt pop

	line	55
	
l993:	
	movlw	low(030h)
	fcall	_Lcd_Command
	line	56
	
l995:	
	asmopt push
asmopt off
movlw	98
movwf	((??_init+0)+0+1)
	movlw	101
movwf	((??_init+0)+0)
	u667:
decfsz	((??_init+0)+0),f
	goto	u667
	decfsz	((??_init+0)+0+1),f
	goto	u667
	nop2
asmopt pop

	line	57
	
l997:	
	movlw	low(038h)
	fcall	_Lcd_Command
	line	58
	
l999:	
	asmopt push
asmopt off
movlw	98
movwf	((??_init+0)+0+1)
	movlw	101
movwf	((??_init+0)+0)
	u677:
decfsz	((??_init+0)+0),f
	goto	u677
	decfsz	((??_init+0)+0+1),f
	goto	u677
	nop2
asmopt pop

	line	59
	
l1001:	
	movlw	low(06h)
	fcall	_Lcd_Command
	line	60
	
l1003:	
	asmopt push
asmopt off
movlw	98
movwf	((??_init+0)+0+1)
	movlw	101
movwf	((??_init+0)+0)
	u687:
decfsz	((??_init+0)+0),f
	goto	u687
	decfsz	((??_init+0)+0+1),f
	goto	u687
	nop2
asmopt pop

	line	61
	
l1005:	
	movlw	low(0Ch)
	fcall	_Lcd_Command
	line	62
	
l1007:	
	asmopt push
asmopt off
movlw	98
movwf	((??_init+0)+0+1)
	movlw	101
movwf	((??_init+0)+0)
	u697:
decfsz	((??_init+0)+0),f
	goto	u697
	decfsz	((??_init+0)+0+1),f
	goto	u697
	nop2
asmopt pop

	line	63
	
l1009:	
	movlw	low(01h)
	fcall	_Lcd_Command
	line	64
	
l1011:	
	asmopt push
asmopt off
movlw	98
movwf	((??_init+0)+0+1)
	movlw	101
movwf	((??_init+0)+0)
	u707:
decfsz	((??_init+0)+0),f
	goto	u707
	decfsz	((??_init+0)+0+1),f
	goto	u707
	nop2
asmopt pop

	line	65
	
l1013:	
	movlw	09Bh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_j)
	movlw	0
	movwf	((_j))+1
	line	66
	
l63:	
	return
	callstack 0
GLOBAL	__end_of_init
	__end_of_init:
	signat	_init,89
	global	_Lcd_Command

;; *************** function _Lcd_Command *****************
;; Defined at:
;;		line 158 in file "Lcd_batt_check_task_program.c"
;; Parameters:    Size  Location     Type
;;  i               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  i               1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init
;;		_keyscane
;;		_Lcdoutput
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	158
global __ptext8
__ptext8:	;psect for function _Lcd_Command
psect	text8
	file	"Lcd_batt_check_task_program.c"
	line	158
	
_Lcd_Command:	
;incstack = 0
	callstack 5
; Regs used in _Lcd_Command: [wreg+status,2+status,0+btemp+1]
	movwf	(Lcd_Command@i)
	line	160
	
l899:	
	movlw	low(0F7h)
	movwf	btemp+1
	movf	btemp+1,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(7),f	;volatile
	line	161
	
l901:	
	movf	(Lcd_Command@i),w
	movwf	(8)	;volatile
	line	162
	
l903:	
	bsf	(7)+(0/8),(0)&7	;volatile
	line	163
	
l905:	
	movlw	low(0FEh)
	movwf	btemp+1
	movf	btemp+1,w
	andwf	(7),f	;volatile
	line	164
	asmopt push
asmopt off
movlw	98
movwf	((??_Lcd_Command+0)+0+1)
	movlw	101
movwf	((??_Lcd_Command+0)+0)
	u717:
decfsz	((??_Lcd_Command+0)+0),f
	goto	u717
	decfsz	((??_Lcd_Command+0)+0+1),f
	goto	u717
	nop2
asmopt pop

	line	165
	
l100:	
	return
	callstack 0
GLOBAL	__end_of_Lcd_Command
	__end_of_Lcd_Command:
	signat	_Lcd_Command,4217
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
