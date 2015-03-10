*---------------------------------------------------------------------------*
* Time : 00:16:10    Date : 03/11/2015
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.11.15
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


Resistance R_todaydate_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_todaydate_19art1() code
set century on
Today = DATE()
Today = DTOC ( Today )
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 305 ;
HEIGHT 189 ;
ICON "PWCTICON" ;
TITLE "Today Date  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,10 DATEPICKER datepicker1;
WIDTH 100 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
win1.datepicker1.Enabled := False
@ 71 ,10 TEXTBOX textDate;
HEIGHT 30 ;
WIDTH 200 ;
VALUE Today ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win1
EndIF



End Of Resistance

INIT PROCEDURE Init_todaydate
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Today = System Date of today",1,2)
SS_ESASTEP("Circuits\Main\Main\Main","Today = CONVERT Date Today TO String",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Today Date  '",4,8)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",9,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New DatePicker ( datepicker1 )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","DatePicker Properties",15,18)
SS_ESASTEP("Circuits\Main\Main\Main","win1.datepicker1.Enabled := False",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textDate  )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",21,27)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",30,32)
Return
*-------------------------------------------------------------------*
