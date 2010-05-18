#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 15:48:30    Date : 09/26/2008
*---------------------------------------------------------------------------*
* Programming without coding technology 1.0 (Final)   
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
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


Resistance RUZSLC1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RUZSLC1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 600 ;
HEIGHT 400 ;
ON INIT opendb()  ;
TITLE "Browse" ;
MAIN 

TRANS_TEMP = "tel"
@ 10 ,10 ;
BROWSE browse1 ;
WIDTH 500 ;
HEIGHT 300 ;
HEADERS {"Name","Address","Telephone"} ;
WIDTHS {100,100,150} ;
WORKAREA &TRANS_TEMP ;
FIELDS {'name','address','telephone'} ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BOLD ;
Edit InPlace ;
IMAGE "" 

END WINDOW

win1.browse1.FontSize := 8
ACTIVATE WINDOW win1

Proc opendb
Use tel
Goto Top
Return Nil


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",47)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,8)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Browse ( browse1 )",9,20)
SS_ESASTEP("Circuits\Main\Main\Main","Browse Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Browse Properties",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.FontSize := 8",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure opendb",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Open Table tel",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Goto First Record",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",32,32)
Return
*-------------------------------------------------------------------*
