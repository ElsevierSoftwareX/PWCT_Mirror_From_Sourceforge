*---------------------------------------------------------------------------*
* Time : 15:13:47    Date : 10/23/2011
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


Resistance R_SELECTWINDOWBACKCOLOR_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SELECTWINDOWBACKCOLOR_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Select Window Back Color" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,10 BUTTONEX btn1;
CAPTION "Select Color";
ON CLICK mywork()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mywork
GetColor := GetColor ()
win1.Backcolor := getcolor
win1.SetFocus ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_SELECTWINDOWBACKCOLOR
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Select Window Back Color'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Select Color'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mywork()",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",19,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mywork",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","GetColor := Get Color",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Backcolor := getcolor",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","win1.SetFocus ( )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",26,26)
Return
*-------------------------------------------------------------------*
