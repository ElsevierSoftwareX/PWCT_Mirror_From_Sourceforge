*---------------------------------------------------------------------------*
* Time : 15:18:35    Date : 03/30/2011
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
Function Main
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
 * (Noun) *
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_IMAGEFUNCS_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_IMAGEFUNCS_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 172 ;
ICON "PWCTICON" ;
TITLE "Image To Stream & Stream To Image" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

win1.Center ( )
@ 27 ,70 BUTTONEX btn1;
CAPTION "Load Image to Stream - Then Save Stream to Image";
ON CLICK myWork()  ;
WIDTH 350 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 74 ,195 BUTTONEX btnClose;
CAPTION "Close";
ON CLICK win1.release()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myWork
GetFile := GetFile ( { {"Image","*.JPG" } } , ;
" 1 - Load Image to Stream " , ;
, ;
, ;
)
CheckFile := File(GetFile)
IF CheckFile
MyStream = ImageToStream ( GetFile )
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
Function  ImageToStream ( cFileName )
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

INIT PROCEDURE Init_IMAGEFUNCS
START DOUBLES
Return
*-------------------------------------------------------------------*
