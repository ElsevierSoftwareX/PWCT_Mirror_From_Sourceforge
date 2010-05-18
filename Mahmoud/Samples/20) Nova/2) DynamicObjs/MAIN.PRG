#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 17:39:57    Date : 08/28/2009
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


Resistance R142871158_1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R142871158_1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Create 10 buttons using a For Loop" ;
MAIN ;
BACKCOLOR {236,233,216} 

FOR x = 1 TO 10 STEP 1
contname := "btn"
x2 = STR ( x )
x2 = ALLTRIM ( x2 )
contname := contname + x2
@ x*30 ,180 BUTTONEX &contname;
CAPTION x2;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
Next
END WINDOW

ACTIVATE WINDOW win1



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
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 10 Step 1)",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","contname = 'btn'",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","contname = contname + x2",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( &contname )",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",17,19)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",23,24)
Return
*-------------------------------------------------------------------*
