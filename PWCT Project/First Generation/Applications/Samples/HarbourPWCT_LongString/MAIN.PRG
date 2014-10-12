*---------------------------------------------------------------------------*
* Time : 17:50:28    Date : 10/12/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.09.30
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
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


Resistance R_MAIN_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAIN_19art1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 465 ;
HEIGHT 180 ;
ON INIT pStart()  ;
ICON "PWCTICON" ;
TITLE "Long String  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,10 EDITBOX edit1;
WIDTH 427 ;
HEIGHT 56;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 87 ,335 BUTTONEX btn1;
CAPTION "Close ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK win1.Release()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pStart()
cStr := " The first part of the string "
cStr := cStr + " The second part of the string "
cStr := cStr + " The last part of the string"
MyOut := MSGBOX(cStr," Long String ")
win1.edit1.Value := cStr
return


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Long String  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action pStart",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close '",18,21)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action win1.Release",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",23,26)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",29,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pStart - Event : INIT",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","cStr = ' The first part of the string '",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","cStr = cStr + ' The second part of the string '",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","cStr = cStr + ' The last part of the string'",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message cStr Title ' Long String ' Type: Message Box",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value = cStr",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",38,38)
Return
*-------------------------------------------------------------------*
