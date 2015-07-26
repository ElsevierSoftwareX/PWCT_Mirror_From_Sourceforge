*---------------------------------------------------------------------------*
* Time : 12:24:39    Date : 07/22/2015
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2015.06.20
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


Resistance R_main_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_main_19art1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 503 ;
HEIGHT 469 ;
ICON "PWCTICON" ;
TITLE "Cursor  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 10 ,122 LABEL lbl1 ;
VALUE "Cursor " ;
ON MOUSEHOVER filecursor("write.cur")  ;
WIDTH 287 ;
HEIGHT 61 ;
FONT "Arial" SIZE 36  ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,255}
@ 86 ,8 IMAGE image1;
PICTURE "shot1.jpg";
ON MOUSEHOVER filecursor("write.cur")  ;
STRETCH ;
WIDTH 474 HEIGHT 328
END WINDOW

ACTIVATE WINDOW win1
EndIF



End Of Resistance

INIT PROCEDURE Init_main
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Cursor  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Cursor '",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSEHOVER : Action filecursor('write.cur')",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",17,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'shot1.jpg'",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSEHOVER : Action filecursor('write.cur')",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",29,31)
Return
*-------------------------------------------------------------------*
