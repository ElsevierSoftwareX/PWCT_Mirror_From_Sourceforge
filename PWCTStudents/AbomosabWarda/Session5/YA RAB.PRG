*---------------------------------------------------------------------------*
* Time : 01:36:02    Date : 01/26/2012
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


Resistance R_YA_RAB_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_YA_RAB_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 682 ;
HEIGHT 370 ;
ICON "PWCTICON" ;
TITLE "Fayed" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 96 ,6 IMAGE image1;
PICTURE "FAYED.JPG";
STRETCH ;
WIDTH 662 HEIGHT 225
@ 41 ,4 BUTTONEX btn1;
CAPTION "Who is the owner Takina  PWCT ?";
ON GOTFOCUS hide1()  ;
WIDTH 311 HEIGHT 36 ;
FONT "Baskerville Old Face" SIZE 14 ;
TOOLTIP ""
@ 40 ,340 BUTTONEX btn2;
CAPTION "ENG.MAHMOUD SAMIR FAYED";
ON GOTFOCUS hide2()  ;
WIDTH 316 HEIGHT 39 ;
FONT "Bernard MT Condensed" SIZE 18 ;
TOOLTIP ""
END WINDOW

win1.btn2.Hide ( )
ACTIVATE WINDOW win1
EndIF

Proc hide1
win1.btn1.Hide ( )
win1.btn2.Show ( )
Return Nil
Proc hide2
win1.btn2.Hide ( )
win1.btn1.Show ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_YA_RAB
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Fayed'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'FAYED.JPG'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Who is the owner Takina  PWCT ?'",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON GOTFOCUS : Action hide1()",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",18,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'ENG.MAHMOUD SAMIR FAYED'",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON GOTFOCUS : Action hide2()",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Hide ( )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",30,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hide1",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Hide ( )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Show ( )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hide2",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Hide ( )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Show ( )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",40,40)
Return
*-------------------------------------------------------------------*
