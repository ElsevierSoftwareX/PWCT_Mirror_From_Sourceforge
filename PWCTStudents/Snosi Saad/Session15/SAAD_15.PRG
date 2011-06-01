*---------------------------------------------------------------------------*
* Time : 15:36:55    Date : 05/31/2011
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


Resistance R_SAAD_15_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SAAD_15_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 522 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "„”Ã· «·„·«Õ÷« " ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {215,217,176} 

@ 314 ,385 BUTTONEX btn1;
CAPTION "Õ›Ÿ";
ON CLICK mysave()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Tahoma" SIZE 12 ;
TOOLTIP ""
@ 314 ,25 BUTTONEX btn2;
CAPTION "≈” Ì—«œ";
ON CLICK myload()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Tahoma" SIZE 12 ;
TOOLTIP ""
@ 33 ,25 EDITBOX edit1;
WIDTH 460 ;
HEIGHT 276;
FONT "Tahoma" SIZE 11 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DO RightToLeftControl WITH "win1","edit1"
DEFINE MAIN MENU
POPUP "„·›"
MENUITEM "Õ›Ÿ" Action mysave()
MENUITEM "≈” Ì—«œ" Action myload()
MENUITEM "Œ—ÊÃ" Action myclose()
END POPUP
END MENU
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc mysave
mystr := win1.edit1.Value
PutFile := PutFile ( { {"Text","*.txt"}} , ;
" Õ›Ÿ «·‰’ ›Ì „·› " , ;
, ;
, ;
)
CheckFile := File(PutFile)
IF checkfile
MyOut := MSGOKCANCEL("Â·  —Ìœ «·Õ›Ÿ ›Êﬁ «·„·›","«·„·› „ÊÃÊœ „”»ﬁ« ")
IF myout == false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,mystr)
FCLOSE(RPWI_TH)
Return Nil
Proc myload
GetFile := GetFile ( { {"Text","*.txt"}} , ;
" ≈” Ì—«œ ‰’ „‰ „·› " , ;
, ;
, ;
)
CheckFile := File(getfile)
IF checkfile == false
Return 0
ENDIF
mystr = MEMOREAD ( getfile )
win1.edit1.Value := mystr
Return Nil
Proc RightToLeftControl( p1,p2 )
Local v1,myhandle
myhandle = GetControlHandle ( p2,p1 )
v1 = CALLDLL32("GetWindowLong","USER32.DLL",myhandle,-20)
myout = CALLDLL32("SetWindowLong","USER32.DLL",myhandle,-20,NUMOR(v1,0x400000,0x100000))
Return Nil
Proc myclose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_SAAD_15
START DOUBLES
Return
*-------------------------------------------------------------------*
