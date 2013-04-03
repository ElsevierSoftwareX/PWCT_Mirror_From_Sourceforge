*---------------------------------------------------------------------------*
* Time : 08:14:08    Date : 05/10/2010
*---------------------------------------------------------------------------*
* Programming without coding technology 1.6 (Ready) [2006-2010]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function SCANNER
Public True,False 
True = .T. 
False = .F. 
 Details :
 * (Noun) *
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Scanner                       
	VetoUnit :

Resistance R_SCANNER_15speed1() address Code Unit : Circuits\Main\Main\Scanner


Return 

* Resistance Code Unit : Circuits\Main\Main\Scanner
Resistance R_SCANNER_15speed1() code
Proc myscanner
Local scanx,mymax
mymax  = LEN(FilesList)
scanx := 1
DO WHILE  scanx <= mymax
srccodefile := FilesList[scanx]
srccodeline := 1
cFileName := FilesList[scanx]
TMP_M1 = 0
TMP_M2 = 0
myFile = FOPEN( cFileName , TMP_M1 + TMP_M2 )
myerror := 1
DO WHILE  myerror = 1
mychar := " "
myerror = FREAD( myFile,@mychar,1)
myrealstack := myrealstack+mychar
IF mychar != chr(13) .and. mychar != chr(10) .and. myerror = 1
mychar = ALLTRIM ( mychar )
myChar = LOWER ( myChar )
mystack := mystack + mychar
DO mySyntax
ENDIF
IF mychar = chr(13)
srccodeline := srccodeline + 1
ENDIF
ENDDO
mymax  = LEN(FilesList)
myopproc := "baseproc"
myoplevel := 0
myopcode := 0
myopdata := {}
myactiveproc := "baseproc"
myactivelevel := 0
scanx := scanx+1
ENDDO
DO RTE_Check
Return Nil


End Of Resistance

*-------------------------------------------------------------------*
