*---------------------------------------------------------------------------*
* Time : 02:10:39    Date : 05/05/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 18/04/2013
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


Resistance R_START_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_START_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 778 ;
HEIGHT 581 ;
ON RELEASE End()  ;
ICON "PWCTICON" ;
TITLE "Show PowerPoint Document  " ;
MAIN ;
BACKCOLOR {236,233,216} 
@ 13 ,657 BUTTONEX btn1;
CAPTION "Show ";
ON CLICK Show()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 54 ,657 BUTTONEX btn2;
CAPTION "Close ";
ON CLICK Close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW
ACTIVATE WINDOW win1
EndIF
procedure Show()
Public oPP,oPresentation
StartUpFolder := GetStartUpFolder()
oPP := TOLEAUTO():NEW( "PowerPoint.Application" )
oPresentation := oPP:Presentations:Open ( StartUpFolder+"\test.ppt", , , False )
oPresentation:SlideShowSettings:ShowType := 1
oPresentation:SlideShowSettings:run:Width := 400
oPresentation:SlideShowSettings:run:Height := 400
winHandle = CALLDLL32("FindWindowA","user32.dll","screenClass", 0)
output = CALLDLL32("SetParent","user32.dll",winhandle, GetFormHandle("win1"))
return
procedure Close()
win1.Release ( )
return
procedure End()
BEGIN SEQUENCE WITH { |e| break(e) }
oPresentation:Close ( )
oPP:Quit ( )
RECOVER
END SEQUENCE
return

End Of Resistance

INIT PROCEDURE Init_START
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Show PowerPoint Document  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action End",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Show '",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Show",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",15,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close '",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Close",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",26,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Show ( Event : CLICK )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Public oPP,oPresentation",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","StartUpFolder := Get StartUp Folder",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Create OLE Object oPP of Type 'PowerPoint.Application'",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","oPresentation = oPP.Presentations:Open ( StartUpFolder+'\test.ppt', , , False )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","oPresentation.SlideShowSettings:ShowType := 1",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","oPresentation.SlideShowSettings:run:Width := 400",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","oPresentation.SlideShowSettings:run:Height := 400",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","winHandle = Call DLL 'user32.dll' , Function 'FindWindowA' , Parameters 'screenClass', 0",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","output = Call DLL 'user32.dll' , Function 'SetParent' , Parameters winhandle, GetFormHandle('win1')",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close ( Event : CLICK )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure End - Event : RELEASE",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Error Handling, Try",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","oPresentation.Close ( )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","oPP.Quit ( )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Catch",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","End Try",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",49,49)
Return
*-------------------------------------------------------------------*
