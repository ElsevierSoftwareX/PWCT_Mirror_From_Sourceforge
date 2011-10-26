*---------------------------------------------------------------------------*
* Time : 11:56:55    Date : 10/22/2011
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


Resistance R_MAIN_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAIN_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "The First Window (MAIN)" ;
MAIN ;
BACKCOLOR {64,0,64} 

END WINDOW
EndIF

if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 100 ,100 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "The Second Window (CHILD)" ;
CHILD ;
BACKCOLOR {252,190,242} 

END WINDOW
EndIF

if !iswindowdefined( win3 )
DEFINE WINDOW win3 ;
AT 200 ,200 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "The Third Window (CHILD)" ;
CHILD ;
BACKCOLOR {238,183,142} 

END WINDOW
EndIF

Activate Window win1 nowait
Activate Window win2 nowait
Activate Window win3 nowait
DO WHILE  True
DO EVENTS
ENDDO


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'The First Window (MAIN)'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",11,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'The Second Window (CHILD)'",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",19,23)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win3 ) , Title : 'The Third Window (CHILD)'",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",37,39)
SS_ESASTEP("Circuits\Main\Main\Main","Activate Window/Form win1 No Wait",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Activate Window/Form win2 No Wait",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Activate Window/Form win3 No Wait",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","WHILE ( True )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","DO Events",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","END OF While Loop",45,45)
Return
*-------------------------------------------------------------------*
