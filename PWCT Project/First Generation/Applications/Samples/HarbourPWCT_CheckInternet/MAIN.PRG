*---------------------------------------------------------------------------*
* Time : 10:16:47    Date : 09/02/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.05.28
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
WIDTH 339 ;
HEIGHT 147 ;
ICON "PWCTICON" ;
TITLE "Check Internet  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win1.Center ( )
@ 16 ,74 BUTTONEX btn1;
CAPTION "Check ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pCheck()  ;
WIDTH 180 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 61 ,74 BUTTONEX btn2;
CAPTION "Close ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pClose()  ;
WIDTH 180 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pClose()
win1.Release ( )
return
procedure pCheck()
oSocket = tHttp():new()
IF oSocket:connect("google.com",80)
MyOut := MSGBOX("Connected "," ")
ELSE
MyOut := MSGBOX("Disconnected "," ")
ENDIF
out = oSocket:Close()
return


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Check Internet  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center( )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Check '",15,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pCheck",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",20,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close '",24,27)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pClose",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",29,32)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pClose ( Event : CLICK )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release( )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pCheck ( Event : CLICK )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oSocket of Class tHttp():new",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( oSocket:connect('google.com',80) )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message 'Connected ' Title ' ' Type: Message Box",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message 'Disconnected ' Title ' ' Type: Message Box",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","out = oSocket.Close()",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",49,49)
Return
*-------------------------------------------------------------------*
