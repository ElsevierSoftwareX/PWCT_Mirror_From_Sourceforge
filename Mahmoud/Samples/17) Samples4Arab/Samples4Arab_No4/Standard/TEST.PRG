#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 00:53:43    Date : 01/14/2009
*---------------------------------------------------------------------------*
* Programming without coding technology 1.1 (Magic)   
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance RPEPPI1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RPEPPI1() code
mywin2 := false
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 350 ;
HEIGHT 235 ;
ICON "PWCTICON" ;
TITLE "‰«›–…  ” œ⁄Ï ‰«›–… «Œ—Ï" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 78 ,81 BUTTONEX btn1;
CAPTION "≈” œ⁄«¡ «·‰«›–… «·À«‰Ì…";
ON CLICK myform()  ;
WIDTH 178 HEIGHT 32 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1

Proc myform
IF mywin2 = false
mywin2 := true
DEFINE WINDOW win2 ;
AT 50 ,50 ;
WIDTH 500 ;
HEIGHT 216 ;
ICON "PWCTICON" ;
TITLE "‰«›–… ›—⁄Ì…" ;
CHILD ;
BACKCOLOR {255,255,255} 

@ 73 ,195 BUTTONEX btn1;
CAPTION "≈€·«ﬁ";
ON CLICK closewin2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win2"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win2"), -20),0x400000,0x100000))
ACTIVATE WINDOW win2

ELSE
MyOut := MSGBOX("«·‰«›–… „› ÊÕ… «’·«","⁄›Ê«")
win2.SetFocus ( )
ENDIF
Return Nil
Proc closewin2
mywin2 := false
win2.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","mywin2 = false",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",2,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",19,21)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Procedures",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myform",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mywin2 = false )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","mywin2 = true",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win2 )",27,30)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",31,35)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win2'",44,46)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '«·‰«›–… „› ÊÕ… «’·«' Title '⁄›Ê«' Type: Message Box",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","win2.SetFocus ( )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closewin2",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","mywin2 = false",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",57,57)
Return
*-------------------------------------------------------------------*
