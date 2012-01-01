*---------------------------------------------------------------------------*
* Time : 13:57:54    Date : 12/30/2011
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


Resistance R_SSF_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SSF_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 503 ;
HEIGHT 205 ;
ICON "PWCTICON" ;
TITLE "saisaban" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,0,0} 

@ 112 ,180 BUTTONEX btn1;
CAPTION "«÷€ÿ Â‰« ··Œ—ÊÃ";
BACKCOLOR {128,0,0};
ON CLICK saisabansa()  ;
TOOLTIP ""
@ 28 ,105 LABEL lbl1 ;
VALUE "Â–« «·»—‰«„Ã „‰ ’‰⁄ „»—„Ã… «·„” ﬁ»· " ;
WIDTH 277 ;
HEIGHT 29 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,0}
@ 67 ,187 LABEL lbl2 ;
VALUE "”Ì”»«‰ „Õ„œ ”⁄Ìœ" ;
WIDTH 118 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc saisabansa
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_SSF
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'saisaban'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«÷€ÿ Â‰« ··Œ—ÊÃ'",13,15)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action saisabansa()",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Â–« «·»—‰«„Ã „‰ ’‰⁄ „»—„Ã… «·„” ﬁ»· '",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '”Ì”»«‰ „Õ„œ ”⁄Ìœ'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",34,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure saisabansa",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",39,39)
Return
*-------------------------------------------------------------------*
