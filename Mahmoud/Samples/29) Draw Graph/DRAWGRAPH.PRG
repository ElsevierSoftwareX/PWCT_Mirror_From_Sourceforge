*---------------------------------------------------------------------------*
* Time : 15:01:26    Date : 01/04/2013
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


Resistance R_DRAWGRAPH_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DRAWGRAPH_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 1003 ;
HEIGHT 465 ;
ON INIT work()  ;
ICON "PWCTICON" ;
TITLE "Draw Graph  " ;
MAIN ;
BACKCOLOR {255,255,255} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure work()
DRAW GRAPH IN WINDOW win1 ;
AT 50,50 ;
WIDTH 800 ;
HEIGHT 400 ;
TITLE "Number of servers used based on consolidation method" ;
TYPE BARS ;
SERIES {{100,100,100,100,100},{50,50,50,50,50},{70,80,90,60,70}} ;
YVALUES {"LP","FFD","BFD","WFD","AWFD"} ;
DEPTH 5 ;
HVALUES 10 ;
SERIENAMES {"Static consolidation","Dynamic consolidation","Dynamic consolidation with migration control"} ;
COLORS {{255,0,0},{0,255,0},{0,0,255}} ;
3DVIEW  ;
SHOWXGRID ;
SHOWXVALUES ;
SHOWYVALUES ;
SHOWLEGENDS ;
NOBORDER 

return


End Of Resistance

INIT PROCEDURE Init_DRAWGRAPH
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Draw Graph  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action work",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure work - Event : INIT",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Graph (Title : 'Number of servers used based on consolidation method')",18,36)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",37,37)
Return
*-------------------------------------------------------------------*
