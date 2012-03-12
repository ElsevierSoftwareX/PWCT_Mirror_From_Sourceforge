*---------------------------------------------------------------------------*
* Time : 20:33:55    Date : 02/23/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2012]  
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


Resistance R_TEST01_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST01_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 380 ;
HEIGHT 205 ;
ICON "PWCTICON" ;
TITLE "„—Õ»« »ﬂ„ " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 16 ,144 LABEL lbl1 ;
VALUE "„—Õ»« »ﬂ„ Ã„Ì⁄« " ;
WIDTH 202 ;
HEIGHT 43 ;
FONT "Arial Narrow" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,64,64}
@ 106 ,203 BUTTONEX btn1;
CAPTION "ﬁ· : „—Õ»« ";
ON CLICK MSGINFO( "„—Õ»«" ) ;
WIDTH 126 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 107 ,52 BUTTONEX btn2;
CAPTION "≈‰Â«¡ «·»—‰«„Ã ";
ON CLICK Close()  ;
WIDTH 148 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure Close()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_TEST01
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '„—Õ»« »ﬂ„ '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '„—Õ»« »ﬂ„ Ã„Ì⁄« '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'ﬁ· : „—Õ»« '",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action '„—Õ»«'",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '≈‰Â«¡ «·»—‰«„Ã '",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Close",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close ( Event : CLICK )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",37,37)
Return
*-------------------------------------------------------------------*
