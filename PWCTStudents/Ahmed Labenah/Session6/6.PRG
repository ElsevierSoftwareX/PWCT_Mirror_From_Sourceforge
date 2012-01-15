*---------------------------------------------------------------------------*
* Time : 13:23:21    Date : 01/10/2012
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


Resistance R_6_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_6_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Who is there??" ;
MAIN ;
BACKCOLOR {236,233,216} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "New" Action Open()
MENUITEM "Exit" Action Close()
END POPUP
END MENU
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Close
win1.Release ( )
Return Nil
Proc Open
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 291 ;
HEIGHT 135 ;
ICON "PWCTICON" ;
TITLE "What are you Doing???" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 51 ,107 BUTTONEX btn1;
CAPTION "Close";
ON CLICK close1()  ;
WIDTH 67 HEIGHT 31 ;
FONT "Arial Narrow" SIZE 16 ;
TOOLTIP ""
@ 10 ,36 LABEL lbl1 ;
VALUE "Made By / Eng. Labana" ;
WIDTH 209 ;
HEIGHT 39 ;
FONT "Arial Narrow" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win2
EndIF

procedure close1()
win2.Release ( )
return
Return Nil


End Of Resistance

INIT PROCEDURE Init_6
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Who is there??'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'New' )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",19,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Open",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'What are you Doing???'",26,30)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",31,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close'",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close1",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Made By / Eng. Labana'",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",47,51)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",54,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close1 ( Event : CLICK )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",60,60)
Return
*-------------------------------------------------------------------*
