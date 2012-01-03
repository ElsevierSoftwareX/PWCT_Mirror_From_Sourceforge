*---------------------------------------------------------------------------*
* Time : 19:34:38    Date : 12/30/2011
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


Resistance R_5_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_5_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 473 ;
HEIGHT 424 ;
ICON "PWCTICON" ;
TITLE "√Ì‰ √‰«" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,0,0} 

@ 259 ,171 BUTTONEX btn1;
CAPTION "»· √‰« Â‰«";
ON GOTFOCUS hide1()  ;
WIDTH 109 HEIGHT 36 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 109 ,171 BUTTONEX btn2;
CAPTION "√‰« Â‰« ";
ON GOTFOCUS hide2()  ;
WIDTH 110 HEIGHT 38 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure hide1()
win1.btn1.Hide ( )
win1.btn2.Show ( )
return
procedure hide2()
win1.btn2.Hide ( )
win1.btn1.Show ( )
return


End Of Resistance

INIT PROCEDURE Init_5
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '√Ì‰ √‰«'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '»· √‰« Â‰«'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON GOTFOCUS : Action hide1",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",16,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '√‰« Â‰« '",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON GOTFOCUS : Action hide2",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",22,24)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hide1 ( Event : GOTFOCUS )",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Hide ( )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Show ( )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hide2 ( Event : GOTFOCUS )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Hide ( )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Show ( )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",37,37)
Return
*-------------------------------------------------------------------*
