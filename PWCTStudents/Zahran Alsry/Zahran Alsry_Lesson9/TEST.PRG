*---------------------------------------------------------------------------*
* Time : 04:27:35    Date : 05/29/2012
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


Resistance R_TEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 616 ;
HEIGHT 259 ;
ICON "PWCTICON" ;
TITLE "»”„ «··Â «·—Õ„‰ «·—ÕÌ„" ;
MAIN ;
BACKCOLOR {255,255,255} 

DEFINE MAIN MENU
POPUP "„·›"
MENUITEM "Œ—ÊÃ" Action myexit()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ã«Â“"

DATE

CLOCK

END STATUSBAR

@ 23 ,109 TEXTBOX text1;
HEIGHT 33 ;
WIDTH 255 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 22 ,388 LABEL lbl1 ;
VALUE ": «·«”„ " ;
WIDTH 79 ;
HEIGHT 38 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 102 ,230 BUTTONEX btn1;
CAPTION "«· —ÕÌ»";
ON CLICK myhello()  ;
WIDTH 141 HEIGHT 36 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc myexit
win1.Release ( )
Return Nil
Proc myhello
mytext := win1.text1.Value
mytext = ALLTRIM ( mytext )
mytext := "«Â·« Ê ”Â·« Ì« :  " + mytext
MyOut := MSGBOX(mytext,"«· —ÕÌ»")
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '»”„ «··Â «·—Õ„‰ «·—ÕÌ„'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„·›'",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Œ—ÊÃ' )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ã«Â“' )",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Date",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",27,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : ': «·«”„ '",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",36,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«· —ÕÌ»'",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myhello",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",46,48)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'win1'",51,53)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",54,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myexit",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myhello",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.text1.Value",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = All Trim mytext",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = '«Â·« Ê ”Â·« Ì« :  ' + mytext",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message mytext Title '«· —ÕÌ»' Type: Message Box",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",65,65)
Return
*-------------------------------------------------------------------*
