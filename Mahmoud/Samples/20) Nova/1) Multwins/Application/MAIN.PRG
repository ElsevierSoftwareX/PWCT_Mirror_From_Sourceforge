#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 17:29:20    Date : 08/28/2009
*---------------------------------------------------------------------------*
* Programming without coding technology 1.4 (Nova) [2006-2009]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
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


Resistance R2695626219_1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R2695626219_1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "The First Window (MAIN)" ;
MAIN ;
BACKCOLOR {64,0,64} 

END WINDOW

DEFINE WINDOW win2 ;
AT 100 ,100 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "The Second Window (CHILD)" ;
CHILD ;
BACKCOLOR {252,190,242} 

END WINDOW

DEFINE WINDOW win3 ;
AT 200 ,200 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "The Third Window (CHILD)" ;
CHILD ;
BACKCOLOR {238,183,142} 

END WINDOW

Activate Window win1 nowait
Activate Window win2 nowait
Activate Window win3 nowait
DO WHILE  True
DO EVENTS
ENDDO


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",53)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",5,9)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",10,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win2 )",12,15)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win3 )",23,26)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Activate Window/Form win1 No Wait",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Activate Window/Form win2 No Wait",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Activate Window/Form win3 No Wait",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","WHILE ( True )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","DO Events",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","END OF While Loop",39,39)
Return
*-------------------------------------------------------------------*
