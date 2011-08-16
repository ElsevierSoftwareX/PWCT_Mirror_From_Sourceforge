*---------------------------------------------------------------------------*
* Time : 00:27:56    Date : 08/16/2011
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


Resistance R_NOTE_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_NOTE_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 466 ;
HEIGHT 366 ;
ICON "PWCTICON" ;
TITLE " ”ÃÌ· «·„·«ÕŸ« " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 73 ,44 EDITBOX edit1;
WIDTH 368 ;
HEIGHT 223;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 30 ,269 BUTTONEX btn1;
CAPTION "Õ›Ÿ «·„Õ ÊÏ ›Ì „·›";
ON CLICK mysave()  ;
WIDTH 143 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 30 ,44 BUTTONEX btn2;
CAPTION " Õ„Ì· «·„Õ ÊÏ „‰ „·›";
ON CLICK myloade()  ;
WIDTH 154 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc mysave
ss := win1.edit1.Value
PutFile := PutFile ( { {"Text","*.txt"} } , ;
"Õ›Ÿ «·„Õ ÊÏ ›Ì „·› " , ;
, ;
, ;
)
CheckFile := File(PutFile)
IF CheckFile
MyOut := MSGOKCANCEL("Â·  —Ìœ «·ﬂ «»… ›Êﬁ «·„·›","«·„·› „ÊÃÊœ „”»ﬁ«")
IF MyOut==false
Return o
ENDIF
ENDIF
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,ss)
FCLOSE(RPWI_TH)
Return Nil
Proc myloade
GetFile := GetFile (  , ;
"  Õ„Ì· „·› " , ;
, ;
, ;
)
CheckFile := File(GetFile)
IF CheckFile==false
Return 0
ENDIF
ss = MEMOREAD ( GetFile )
win1.edit1.Value := ss
Return Nil


End Of Resistance

INIT PROCEDURE Init_NOTE
START DOUBLES
Return
*-------------------------------------------------------------------*
