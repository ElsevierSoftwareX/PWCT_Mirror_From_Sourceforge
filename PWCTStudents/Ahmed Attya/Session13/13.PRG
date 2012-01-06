*---------------------------------------------------------------------------*
* Time : 14:14:57    Date : 12/29/2011
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


Resistance R_13_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_13_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 452 ;
HEIGHT 255 ;
ICON "PWCTICON" ;
TITLE "«·œ—” «·À«·À ⁄‘—" ;
MAIN ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 50 ,314 LABEL lbl1 ;
VALUE "«”„ ”Ì«œ ﬂ " ;
WIDTH 111 ;
HEIGHT 45 ;
AUTOSIZE ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 49 ,84 TEXTBOX text1;
HEIGHT 48 ;
WIDTH 209 ;
FONT "Arial" SIZE 20 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 125 ,118 BUTTONEX btn1;
CAPTION "√Â·« Ê ”Â·«";
FONTCOLOR {255,0,0};
ON CLICK myhello()  ;
WIDTH 154 HEIGHT 54 ;
FONT "Arial" SIZE 20 ;
TOOLTIP ""
DEFINE STATUSBAR 

STATUSITEM "Ã«Â“Ì‰ Ê Õ  «„—ﬂ"

DATE

CLOCK

END STATUSBAR

DEFINE MAIN MENU
POPUP "„·›"
MENUITEM "„⁄ «·”·«„Â" Action myexit()
END POPUP
END MENU
calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("win1"), -20),0x400000,0x100000))
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myexit
win1.Release ( )
Return Nil
Proc myhello
mytext := win1.text1.Value
mytext = ALLTRIM ( mytext )
mytext := "„‰Ê—‰« Ì«" + " " + mytext + "»«‘«"
MyOut := MSGBOX(mytext,"Â·« Ê€·« »Ìﬂ")
Return Nil


End Of Resistance

INIT PROCEDURE Init_13
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·œ—” «·À«·À ⁄‘—'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«”„ ”Ì«œ ﬂ '",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",17,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",25,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '√Â·« Ê ”Â·«'",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myhello()",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",36,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ã«Â“Ì‰ Ê Õ  «„—ﬂ' )",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Date",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„·›'",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '„⁄ «·”·«„Â' )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'win1'",54,56)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myexit",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myhello",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.text1.Value",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = All Trim mytext",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = '„‰Ê—‰« Ì«' + ' ' + mytext + '»«‘«'",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mytext Title 'Â·« Ê€·« »Ìﬂ' Type: Message Box",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",70,70)
Return
*-------------------------------------------------------------------*
