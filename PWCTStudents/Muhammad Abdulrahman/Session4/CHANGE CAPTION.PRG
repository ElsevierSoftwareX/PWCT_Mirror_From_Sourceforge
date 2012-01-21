*---------------------------------------------------------------------------*
* Time : 02:01:50    Date : 01/20/2012
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


Resistance R_CHANGE_CAPTION_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CHANGE_CAPTION_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 510 ;
HEIGHT 440 ;
ICON "PWCTICON" ;
TITLE "Change Control Property" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,128} 

@ 16 ,26 LABEL lbl1 ;
VALUE "PWCT Inventor" ;
WIDTH 430 ;
HEIGHT 82 ;
FONT "Bauhaus 93" SIZE 48  ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {0,0,0}
@ 244 ,33 LABEL lbl2 ;
VALUE " " ;
WIDTH 403 ;
HEIGHT 52 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {255,0,0}
@ 143 ,149 BUTTONEX btn1;
CAPTION "Click for answer";
FONTCOLOR {0,0,160};
ON CLICK Mycaption()  ;
WIDTH 189 HEIGHT 36 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 321 ,395 BUTTONEX btn2;
CAPTION "Exit";
ON CLICK Myclose()  ;
WIDTH 81 HEIGHT 31 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 368 ,323 LABEL lbl3 ;
VALUE "Muhammad A. Rahman" ;
WIDTH 167 ;
HEIGHT 25 ;
FONT "Brush Script MT" SIZE 14  ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Mycaption
win1.lbl2.Value := "Mahmoud S. Fayed"
Return Nil
Proc Myclose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_CHANGE_CAPTION
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Change Control Property'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'PWCT Inventor'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ' '",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",23,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Click for answer'",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Mycaption()",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Exit'",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Myclose()",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Muhammad A. Rahman'",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",43,47)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",50,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Mycaption",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl2.Value := 'Mahmoud S. Fayed'",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Myclose",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",58,58)
Return
*-------------------------------------------------------------------*
