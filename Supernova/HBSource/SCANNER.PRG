*---------------------------------------------------------------------------*
* Time : 11:28:56    Date : 11/04/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
* Compilers                   : Borland C/C++ & Harbour
* GUI Framework               : HarbourMiniGUI Extended
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

Resistance R_SCANNER_18smart1() address Code Unit : Circuits\Main\Main\Scanner


Return 

* Resistance Code Unit : Circuits\Main\Main\Scanner
Resistance R_SCANNER_18smart1() code
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
ELSEIF mychar = chr(13)
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


End Of Resistance

*-------------------------------------------------------------------*
