*---------------------------------------------------------------------------*
* Time : 20:04:18    Date : 10/17/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.09.30
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


Resistance R_main_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_main_19art1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 504 ;
HEIGHT 464 ;
ON INIT pStart()  ;
ICON "PWCTICON" ;
TITLE "Processes  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win1.Center ( )
@ 20 ,10 GRID Grid1;
WIDTH 465 ;
HEIGHT 351 ;
HEADERS {"ID","Name"};
WIDTHS {100,400} ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 384 ,375 BUTTONEX btn1;
CAPTION "Close ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK win1.Release()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pStart()
Local aInfo
IF IsWinNT()
aInfo := GetProcessesNT()
ELSE
aInfo := GetProcessesW9x()
ENDIF
FOR x = 1 TO len(aInfo) STEP 2
IF !empty(aInfo[x])
win1.Grid1.AddItem ( {str(aInfo[x]),aInfo[x+1]} )
ENDIF
Next
return


End Of Resistance

INIT PROCEDURE Init_main
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Processes  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action pStart",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,14)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center( )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'ID','Name'}",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Grid Properties",17,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close '",25,28)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action win1.Release",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",30,33)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",36,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pStart - Event : INIT",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Local aInfo",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( IsWinNT() )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","aInfo = GetProcessesNT()",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","aInfo = GetProcessesW9x()",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To len(aInfo) Step 2)",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( !empty(aInfo[x]) )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {str(aInfo[x]),aInfo[x+1]} )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",51,51)
Return
*-------------------------------------------------------------------*
