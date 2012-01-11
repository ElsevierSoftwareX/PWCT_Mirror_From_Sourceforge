*---------------------------------------------------------------------------*
* Time : 18:21:21    Date : 01/02/2012
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


Resistance R_»«‰«_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_»«‰«_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 148 ,221 LABEL lbl1 ;
VALUE "›·‰ ⁄·„ „⁄«" ;
WIDTH 70 ;
HEIGHT 26 ;
FONT "" SIZE 14  ;
BOLD ;
BACKCOLOR {255,255,0} ;
FONTCOLOR {255,128,0}
@ 10 ,10 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
VALUE ptyu ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win1
EndIF



End Of Resistance

INIT PROCEDURE Init_»«‰«
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Window Title'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '›·‰ ⁄·„ „⁄«'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",20,25)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",28,30)
Return
*-------------------------------------------------------------------*
