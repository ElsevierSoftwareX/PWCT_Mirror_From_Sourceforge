*---------------------------------------------------------------------------*
* Time : 23:45:12    Date : 01/13/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2012]  
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


Resistance R_W_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_W_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "»”„ «··Â «·Ê«Õœ «·«Õœ" ;
MAIN ;
NOMAXIMIZE ;
BACKCOLOR {0,0,255} 

DEFINE MAIN MENU
POPUP "„·›"
MENUITEM "„‰’… «·»—„Ã… " Action MSGINFO( "«·»—„Ã… »œÊ‰ ﬂÊœ ··„Â‰œ” „Õ„Êœ" )
MENUITEM "Êœ«⁄«" Action closesystem()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ã«Â“";
RAISED

KEYBOARD

CLOCK

END STATUSBAR

@ 71 ,322 LABEL lbl1 ;
VALUE "«·«”„ " ;
WIDTH 40 ;
HEIGHT 38 ;
AUTOSIZE ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 66 ,100 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 130 ,175 BUTTONEX btn1;
CAPTION " —ÕÌ» ";
ON CLICK XXX()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc closesystem
win1.Release ( )
Return Nil
procedure XXX()
T1 := win1.text1.Value
MyOut := MSGBOX(T1+ "„—Õ»« »ﬂ  "," «Â·« Ê ”Â·«")
return


End Of Resistance

INIT PROCEDURE Init_W
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '»”„ «··Â «·Ê«Õœ «·«Õœ'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,11)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„·›'",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '„‰’… «·»—„Ã… ' )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Êœ«⁄«' )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ã«Â“' )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·«”„ '",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",31,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : ' —ÕÌ» '",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action XXX",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",47,49)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",52,54)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",55,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure XXX ( Event : CLICK )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","T1 = win1.text1.Value",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message T1+ '„—Õ»« »ﬂ  ' Title ' «Â·« Ê ”Â·«' Type: Message Box",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",64,64)
Return
*-------------------------------------------------------------------*
