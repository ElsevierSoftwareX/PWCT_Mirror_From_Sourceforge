*---------------------------------------------------------------------------*
* Time : 12:24:11    Date : 10/21/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2012]  
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


Resistance R_03_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_03_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 665 ;
HEIGHT 235 ;
ON MOUSECLICK RedWindow()  ;
ICON "PWCTICON" ;
TITLE "White «··Ê‰ «·√»Ì÷" ;
MAIN ;
BACKCOLOR {255,255,255} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure RedWindow()
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 327 ;
HEIGHT 178 ;
ICON "PWCTICON" ;
TITLE " Red Window «··Ê‰ «·√Õ„— " ;
CHILD ;
BACKCOLOR {255,0,0} 

END WINDOW

ACTIVATE WINDOW win2
EndIF

return


End Of Resistance

INIT PROCEDURE Init_03
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'White «··Ê‰ «·√»Ì÷'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSECLICK : Action RedWindow",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure RedWindow - Event : MOUSECLICK",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : ' Red Window «··Ê‰ «·√Õ„— '",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",23,27)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",30,32)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",33,33)
Return
*-------------------------------------------------------------------*
