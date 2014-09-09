*---------------------------------------------------------------------------*
* Time : 14:46:39    Date : 09/09/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.05.28
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


Resistance R_MAIN_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAIN_19art1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT pStart()  ;
ICON "PWCTICON" ;
TITLE "Stars  " ;
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

procedure pStart()
FOR x = 1 TO 10 STEP 1
cStr := ""
FOR y = 1 TO x STEP 1
cStr := cStr + "*"
Next
Win1.List1.Additem ( cStr )
Next
return


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Stars  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action pStart",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pStart - Event : INIT",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 10 Step 1)",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","cStr = ''",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From y = 1 To x Step 1)",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","cStr = cStr + '*'",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cStr) to Listbox (List1) of Window (Win1)",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",31,31)
Return
*-------------------------------------------------------------------*
