*---------------------------------------------------------------------------*
* Time : 00:27:43    Date : 01/31/2012
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
#include "xhb.ch"
Function Main
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
* Get parameters from command line
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


Resistance R_MAGED_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAGED_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "«· ⁄«„· „⁄ «·ﬁÊ«∆„(maged algmal)" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,128,128} 

DEFINE MAIN MENU
POPUP "„·›"
MENUITEM "Œ—ÊÃ" Action myexit()
MENUITEM "—”«·…" Action MSGINFO( "‘ﬂ—« „Â‰œ” „Õ„Êœ ›«Ìœ" )
END POPUP
END MENU
@ 51 ,126 IMAGE image1;
PICTURE "392598_10150451504985345_640625344_8856004_927473280_N.JPG";
STRETCH ;
WIDTH 219 HEIGHT 183
@ 255 ,132 LABEL lbl1 ;
VALUE "‘ﬂ—« „Â‰œ” „Õ„Êœ ›«Ìœ" ;
WIDTH 220 ;
HEIGHT 41 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {64,128,128} ;
FONTCOLOR {0,0,0}
@ 323 ,330 LABEL lbl2 ;
VALUE "by / maged algmal" ;
WIDTH 212 ;
HEIGHT 38 ;
FONT "Brush Script MT" SIZE 18  ;
BACKCOLOR {64,128,128} ;
FONTCOLOR {128,0,255}
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc myexit
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_MAGED
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«· ⁄«„· „⁄ «·ﬁÊ«∆„(maged algmal)'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„·›'",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Œ—ÊÃ' )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '—”«·…' )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : '392598_10150451504985345_640625344_8856004_927473280_N.JPG'",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '‘ﬂ—« „Â‰œ” „Õ„Êœ ›«Ìœ'",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'by / maged algmal'",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",47,47)
Return
*-------------------------------------------------------------------*
