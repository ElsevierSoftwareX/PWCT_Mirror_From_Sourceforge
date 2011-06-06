*---------------------------------------------------------------------------*
* Time : 23:49:51    Date : 05/31/2011
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


Resistance R_LESSON15_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON15_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Õ›Ÿ „·«ÕŸ« " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 54 ,14 EDITBOX edit1;
WIDTH 463 ;
HEIGHT 294;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 15 ,377 BUTTONEX SaveBtn;
CAPTION "Õ›Ÿ ›Ì „·›";
FONTCOLOR {0,0,255};
ON CLICK MySave()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
@ 15 ,15 BUTTONEX LoadBtn;
CAPTION " Õ„Ì· „‰ „·›";
ON CLICK MyLoad()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
BOLD ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc MySave
MyText := win1.edit1.Value
PutFile := PutFile ( { {"Text","*.txt"} } , ;
" Õ›Ÿ «·„Õ ÊÏ ›Ì „·› " , ;
, ;
, ;
)
CheckFile := File(PutFile)
IF CheckFile
MyOut := MSGOKCANCEL("Â·  —Ìœ «·ﬂ «»… ›Ì Â–« «·„·›","«·„·› „ÊÃÊœ „”»ﬁ«")
IF myout == false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,MyText)
FCLOSE(RPWI_TH)
Return Nil
Proc MyLoad
GetFile := GetFile ( { {"Text","*.txt"} } , ;
"  Õ„Ì· «·„Õ ÊÏ „‰ „·› " , ;
, ;
, ;
)
CheckFile := File(GetFile)
IF checkfile == false
Return 0
ENDIF
MyRead = MEMOREAD ( GetFile )
win1.edit1.Value := Myread
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON15
START DOUBLES
Return
*-------------------------------------------------------------------*
