#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 12:59:21    Date : 09/25/2008
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


Resistance RDYXZY1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RDYXZY1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 725 ;
HEIGHT 544 ;
ICON "PWCTICON" ;
TITLE "ActiveX (Internet.Explorer.2)" ;
MAIN ;
BACKCOLOR {236,233,216} 

Public oActiveX
oActiveX := TActiveX():New( "Win1", "Internet.Explorer.2" , 48 , 11 , 669 , 417)
oActiveX:Load()
@ 10 ,11 BUTTON btn1;
CAPTION "Google";
ON CLICK mygoogle()  ;
WIDTH 180 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1

Proc mygoogle
oactivex:OOLE:navigate ( "www.google.com" )
Return Nil


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",47)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",5,9)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActiveX )",10,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",16,18)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Procedures",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mygoogle",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.navigate ( 'www.google.com' )",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",25,25)
Return
*-------------------------------------------------------------------*
