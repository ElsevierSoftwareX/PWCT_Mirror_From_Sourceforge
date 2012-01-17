*---------------------------------------------------------------------------*
* Time : 21:59:04    Date : 01/16/2012
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
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "»”„ «··Â «·—Õ„‰ «·—ÕÌ„" ;
MAIN ;
BACKCOLOR {235,235,235} 

@ 101 ,296 LABEL lbl1 ;
VALUE "«·√”„" ;
WIDTH 85 ;
HEIGHT 44 ;
AUTOSIZE ;
FONT "Arial" SIZE 24  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {128,0,128}
@ 101 ,26 TEXTBOX text1;
HEIGHT 43 ;
WIDTH 244 ;
BACKCOLOR {179,138,181} ;
RIGHTALIGN ;
FONTCOLOR {255,255,255} 

@ 193 ,154 BUTTONEX btn1;
CAPTION "«· —ÕÌ» ";
ON CLICK myhello()  ;
WIDTH 186 HEIGHT 39 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
DEFINE MAIN MENU of win1
POPUP "„·›"
MENUITEM "Œ—ÊÃ" Action myexit()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ã«Â“"

END STATUSBAR

END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

procedure myhello()
mytext := win1.text1.Value
mytext = ALLTRIM ( mytext )
MyOut := MSGBOX("√Â·« Ê”Â·« Ì«  " + mytext,"«· —ÕÌ»")
return
Proc myexit
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_13
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '»”„ «··Â «·—Õ„‰ «·—ÕÌ„'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·√”„'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",22,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«· —ÕÌ» '",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myhello",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU : WINDOW (win1)",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„·›'",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Œ—ÊÃ' )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ã«Â“' )",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'win1'",47,49)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",50,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myhello ( Event : CLICK )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.text1.Value",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = All Trim mytext",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '√Â·« Ê”Â·« Ì«  ' + mytext Title '«· —ÕÌ»' Type: Message Box",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myexit",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",60,60)
Return
*-------------------------------------------------------------------*
