*---------------------------------------------------------------------------*
* Time : 11:42:17    Date : 01/12/2012
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
#include "xhb.ch"
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


Resistance R_NEW_FOLDER_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_NEW_FOLDER_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 439 ;
HEIGHT 271 ;
ICON "PWCTICON" ;
TITLE "Window " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSYSMENU ;
BACKCOLOR {0,128,64} 

@ 164 ,132 BUTTONEX btn1;
CAPTION "CLOSE";
ON CLICK XX()  ;
WIDTH 161 HEIGHT 55 ;
FONT "Arial" SIZE 30 ;
TOOLTIP ""
@ 27 ,160 BUTTONEX btn2;
CAPTION "NEXT";
ON CLICK YY()  ;
WIDTH 103 HEIGHT 42 ;
FONT "Arial" SIZE 28 ;
TOOLTIP ""
@ 86 ,18 LISTBOX list1;
WIDTH 393 ;
HEIGHT 66 ;
FONT "Andalus" SIZE 36 ;
BACKCOLOR {128,255,128} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc XX
WIN1.Release ( )
Return Nil
procedure YY()
Win1.List1.Additem ( " SUCCESSFULLY" )
return


End Of Resistance

INIT PROCEDURE Init_NEW_FOLDER
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Window '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'CLOSE'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action XX",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",17,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'NEXT'",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action YY",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",23,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",34,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure XX",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","WIN1.Release ( )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure YY ( Event : CLICK )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (' SUCCESSFULLY') to Listbox (List1) of Window (Win1)",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",42,42)
Return
*-------------------------------------------------------------------*
