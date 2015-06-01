*---------------------------------------------------------------------------*
* Time : 10:21:52    Date : 06/01/2015
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2015.04.28
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
WIDTH 448 ;
HEIGHT 246 ;
ICON "PWCTICON" ;
TITLE "Random number between 50 & 100  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 68 ,62 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 67 ,265 BUTTONEX btn1;
CAPTION "Generate ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pRandom()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pRandom()
nValue := rand()*100
IF nValue < 50
nValue := nValue + 50
ELSEIF nValue > 100
nValue := nValue - 50
ENDIF
win1.text1.Value := nValue
return


End Of Resistance

INIT PROCEDURE Init_main
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Random number between 50 & 100  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",15,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Generate '",22,25)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pRandom",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",27,30)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pRandom ( Event : CLICK )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","nValue = rand()*100",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nValue < 50 )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","nValue = nValue + 50",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nValue > 100 )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","nValue = nValue - 50",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value = nValue",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",44,44)
Return
*-------------------------------------------------------------------*
