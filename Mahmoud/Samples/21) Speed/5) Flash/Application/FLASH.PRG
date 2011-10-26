*---------------------------------------------------------------------------*
* Time : 13:42:18    Date : 10/22/2011
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


Resistance R_FLASH_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_FLASH_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 442 ;
ICON "PWCTICON" ;
TITLE "PWCT-Sample (Using Flash)" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64} 

oActiveX := TActiveX():New( "Win1", "ShockwaveFlash.ShockwaveFlash.1" , 11 , 10 , 473 , 339)
oActiveX:Load()
@ 361 ,153 BUTTONEX btn1;
CAPTION "Play";
ON CLICK mystart()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 361 ,263 BUTTONEX btn2;
CAPTION "Close";
ON CLICK myclose  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mystart
CurrentFolder := GetCurrentFolder()
oactivex:OOLE:LoadMovie ( 0,currentfolder+"\main.swf" )
Return Nil
Proc myclose
win1.Release ( )


End Of Resistance

INIT PROCEDURE Init_FLASH
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'PWCT-Sample (Using Flash)'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActiveX )",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Play'",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mystart",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",19,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close'",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myclose",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",25,27)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",30,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mystart",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","CurrentFolder := Get Current Folder",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.LoadMovie ( 0,currentfolder+'\main.swf' )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myclose",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",38,38)
Return
*-------------------------------------------------------------------*
