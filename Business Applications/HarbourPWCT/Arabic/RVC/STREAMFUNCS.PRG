*---------------------------------------------------------------------------*
* Time : 14:22:04    Date : 07/05/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.7 (Sharp) [2006-2010]  
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
Function STREAMFUNCS
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
					Resistance Main                          
	VetoUnit :

Resistance R_STREAMFUNCS_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_STREAMFUNCS_15speed1() code
Proc streamtest
GetFile := GetFile ( { {"Image","*.JPG" } } , ;
" 1 - Load Image to Stream " , ;
, ;
, ;
)
CheckFile := File(GetFile)
IF CheckFile
MyStream = FileToStream ( GetFile )
PutFile := PutFile ( { {"Image","*.JPG" } } , ;
" Save Stream to Image " , ;
, ;
, ;
)
IF .not. PutFile == ""
StreamToFile ( MyStream,PutFile )
ENDIF
ENDIF
Return Nil
Function  FileToStream ( cFileName )
Local sStream,oMyObj
oMyObj := TOLEAUTO():NEW( "adodb.stream" )
oMyObj:type := 1
oMyObj:open ( )
oMyObj:LoadFromFile ( cFileName )
sStream := oMyObj:Read (  )
oMyObj:close ( )
Return sStream
Function  StreamToFile ( sStream,cFileName )
Local oMyObj
oMyObj := TOLEAUTO():NEW( "adodb.stream" )
oMyObj:type := 1
oMyObj:open ( )
oMyObj:write ( sStream )
oMyObj:SaveToFile ( cFileName,1 )
oMyObj:close ( )
Return


End Of Resistance

*-------------------------------------------------------------------*
