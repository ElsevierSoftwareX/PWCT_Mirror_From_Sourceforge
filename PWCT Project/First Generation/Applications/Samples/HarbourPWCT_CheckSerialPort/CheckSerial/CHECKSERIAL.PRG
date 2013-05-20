*---------------------------------------------------------------------------*
* Time : 13:40:35    Date : 05/20/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2013.05.15
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


Resistance R_CHECKSERIAL_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CHECKSERIAL_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT Check()  ;
ICON "PWCTICON" ;
TITLE "Check Serial  " ;
MAIN ;
BACKCOLOR {236,233,216} 
@ 10 ,10 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW
ACTIVATE WINDOW win1
EndIF
procedure Check()
FOR x = 1 TO 20 STEP 1
cNum = STR ( x )
cNum = ALLTRIM ( cNum )
nHandle := INIT_PORT( "COM" + cNum, 1920 , 8 , 0, 1, 8000 )
lWork = ISWORKING( nHandle )
IF lWork
Win1.List1.Additem ( "COM" + cNum + " is working " )
ENDIF
Next
return

End Of Resistance

INIT PROCEDURE Init_CHECKSERIAL
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Check Serial  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action Check",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Check - Event : INIT",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 20 Step 1)",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","cNum = CONVERT x TO STRING",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","cNum = All Trim cNum",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","nHandle = Serial - Init Port ( 'COM' + cNum )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","lWork = Serial - Is Working ( Handle : nHandle )",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lWork )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('COM' + cNum + ' is working ') to Listbox (List1) of Window (Win1)",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",33,33)
Return
*-------------------------------------------------------------------*
