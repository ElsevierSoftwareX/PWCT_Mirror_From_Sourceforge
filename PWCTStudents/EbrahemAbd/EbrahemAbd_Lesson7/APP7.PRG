*---------------------------------------------------------------------------*
* Time : 19:05:37    Date : 03/06/2012
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


Resistance R_APP7_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_APP7_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 650 ;
HEIGHT 474 ;
ICON "PWCTICON" ;
TITLE "„—Õ»« »ﬂ„ ›Ï  ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ        PWCT " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "PICO\ABN.ANI" ;
BACKCOLOR {177,253,36} ;
NOTIFYICON "PICO\ACADMY.ICO" 

win1.Center ( )
@ -3 ,-2 IMAGE image1;
PICTURE "PICO\10.JPG";
STRETCH ;
WIDTH 647 HEIGHT 399
@ 171 ,390 LABEL lbl1 ;
VALUE "√œŒ· «·«”„ " ;
WIDTH 96 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {177,253,36} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 170 ,162 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 360 ,459 BUTTONEX btn1;
CAPTION "«· —ÕÌ» ";
ON CLICK welcome()  ;
WIDTH 74 HEIGHT 27 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 360 ,177 BUTTONEX btn2;
CAPTION "Œ—ÊÃ ";
ON CLICK exit()  ;
WIDTH 93 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
DEFINE MAIN MENU of win1
POPUP "„·› "
MENUITEM "«€·«ﬁ " Action exit()
END POPUP
END MENU
DEFINE STATUSBAR ;
BOLD 

STATUSITEM "Ã«Â“"

DATE

CLOCK

END STATUSBAR

END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

procedure exit()
win1.Release ( )
return
procedure welcome()
t := win1.text1.Value
t = ALLTRIM ( t )
t := "„—Õ»« Ì« :"+t
MyOut := MSGINFO(t," «· —ÕÌ»")


End Of Resistance

INIT PROCEDURE Init_APP7
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '„—Õ»« »ﬂ„ ›Ï  ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ        PWCT '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,15)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'PICO\10.JPG'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '√œŒ· «·«”„ '",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",23,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",32,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«· —ÕÌ» '",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action welcome",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Œ—ÊÃ '",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action exit",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",48,50)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU : WINDOW (win1)",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„·› '",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«€·«ﬁ ' )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",56,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ã«Â“' )",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Date",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",69,71)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",72,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exit ( Event : CLICK )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure welcome ( Event : CLICK )",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","t = win1.text1.Value",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","t = All Trim t",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","t = '„—Õ»« Ì« :'+t",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message t Title ' «· —ÕÌ»' Type: Message Info",82,82)
Return
*-------------------------------------------------------------------*
