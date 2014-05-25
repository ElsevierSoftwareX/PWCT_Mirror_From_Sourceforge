*---------------------------------------------------------------------------*
* Time : 19:41:55    Date : 05/24/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.04.15
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
SET CONTEXTMENU OFF


if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 519 ;
HEIGHT 400 ;
ON MOUSEMOVE pMove()  ;
ON MOUSECLICK pClick()  ;
ICON "PWCTICON" ;
TITLE "Mouse Information  " ;
MAIN ;
BACKCOLOR {236,233,216} 

win1.Center ( )
@ 102 ,159 LABEL lbl1 ;
VALUE " X : " ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 143 ,159 LABEL lbl2 ;
VALUE " Y : " ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 102 ,269 TEXTBOX textX;
HEIGHT 30 ;
WIDTH 80 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 143 ,269 TEXTBOX textY;
HEIGHT 30 ;
WIDTH 80 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 314 ,382 BUTTONEX btn1;
CAPTION "Close ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pClose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 23 ,114 LABEL lbl3 ;
VALUE "Try pressing the left or the right mouse button ! " ;
WIDTH 280 ;
HEIGHT 30 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pClose()
win1.Release ( )
return
procedure pMove()
Local aData
aData = GetCursorPos()
win1.textX.Value := aData[2]
win1.textY.Value := aData[1]
return
procedure pClick()
IF _HMG_MouseState == 1
MyOut := MSGBOX("Left Mouse Button !"," ")
ELSEIF _HMG_MouseState == 2
MyOut := MSGBOX("Right Mouse Button !"," ")
ENDIF
return


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Activate Mouse Right Click Event",1,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Mouse Information  '",3,7)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSEMOVE : Action pMove",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSECLICK : Action pClick",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",11,15)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center( )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : ' X : '",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",19,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ' Y : '",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",26,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textX  )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",32,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textY  )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",40,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close '",47,50)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pClose",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",52,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Try pressing the left or the right mouse button ! '",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",58,62)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",65,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pClose ( Event : CLICK )",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release( )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pMove - Event : MOUSEMOVE",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Local aData",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","aData = Call Function GetCursorPos",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textX.Value = aData[2]",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textY.Value = aData[1]",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pClick - Event : MOUSECLICK",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( _HMG_MouseState == 1 )",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message 'Left Mouse Button !' Title ' ' Type: Message Box",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( _HMG_MouseState == 2 )",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message 'Right Mouse Button !' Title ' ' Type: Message Box",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",83,83)
Return
*-------------------------------------------------------------------*
