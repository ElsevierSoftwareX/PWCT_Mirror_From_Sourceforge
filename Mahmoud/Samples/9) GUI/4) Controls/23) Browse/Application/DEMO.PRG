*---------------------------------------------------------------------------*
* Time : 01:25:50    Date : 10/22/2011
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
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_DEMO_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DEMO_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 600 ;
HEIGHT 400 ;
ON INIT opendb()  ;
ICON "PWCTICON" ;
TITLE "Browse" ;
MAIN ;
BACKCOLOR {255,255,255} 

TRANS_TEMP = "tel"
@ 8 ,10 ;
BROWSE browse1 ;
WIDTH 500 ;
HEIGHT 300 ;
HEADERS {"Name","Address","Telephone"} ;
WIDTHS {100,100,150} ;
WORKAREA &TRANS_TEMP ;
FIELDS {'name','address','telephone'} ;
VALUE 1 ;
FONT "Arial" SIZE 8 ;
BOLD ;
BACKCOLOR {255,255,255} ;
Edit InPlace ;
IMAGE "" 

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc opendb
Use tel
Goto Top
Return Nil


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Browse'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action opendb",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Browse ( browse1 )",12,24)
SS_ESASTEP("Circuits\Main\Main\Main","Browse Properties",25,27)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",30,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure opendb",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Open Table tel",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Goto First Record",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",36,36)
Return
*-------------------------------------------------------------------*
