*---------------------------------------------------------------------------*
* Time : 20:47:21    Date : 03/13/2013
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2013]  
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


Resistance R_NAHIM_1_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_NAHIM_1_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON MOUSECLICK add()  ;
ICON "PWCTICON" ;
TITLE "«·√»Ì÷   " ;
MAIN ;
BACKCOLOR {255,255,255} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure add()
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON MOUSECLICK addd()  ;
ICON "PWCTICON" ;
TITLE "«·√’›—  " ;
CHILD ;
BACKCOLOR {255,255,0} 

END WINDOW

ACTIVATE WINDOW win2
EndIF

return
procedure addd()
if !iswindowdefined( win3 )
DEFINE WINDOW win3 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "«·√Õ÷—  " ;
CHILD ;
BACKCOLOR {128,255,0} 

END WINDOW

ACTIVATE WINDOW win3
EndIF

return


End Of Resistance

INIT PROCEDURE Init_NAHIM_1
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·√»Ì÷   '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSECLICK : Action add",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure add - Event : MOUSECLICK",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '«·√’›—  '",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON MOUSECLICK : Action addd",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",24,28)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addd - Event : MOUSECLICK",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win3 ) , Title : '«·√Õ÷—  '",36,40)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",41,45)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",48,50)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",51,51)
Return
*-------------------------------------------------------------------*
