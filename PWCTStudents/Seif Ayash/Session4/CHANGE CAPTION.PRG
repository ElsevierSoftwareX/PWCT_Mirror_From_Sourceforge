*---------------------------------------------------------------------------*
* Time : 08:51:05    Date : 01/05/2012
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
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "«· Õﬂ„ ›Ì Œ’«∆’ «·√œÊ« " ;
MAIN ;
NOMAXIMIZE ;
BACKCOLOR {64,128,128} 

@ 51 ,124 LABEL lbl1 ;
VALUE "„‰ ÂÊ „’„„ Â–« «·»—‰«„Ã" ;
WIDTH 218 ;
HEIGHT 44 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,0}
@ 168 ,124 LABEL lbl2 ;
VALUE "" ;
WIDTH 218 ;
HEIGHT 48 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {64,128,128} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 272 ,124 BUTTONEX btn1;
CAPTION "«·ÃÊ«»";
ON CLICK mycaption()  ;
WIDTH 218 HEIGHT 37 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mycaption
win1.lbl2.Value := "”Ì› «·œÌ‰ ⁄Ì¯«‘"
Return Nil


End Of Resistance

INIT PROCEDURE Init_CHANGE_CAPTION
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«· Õﬂ„ ›Ì Œ’«∆’ «·√œÊ« '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '„‰ ÂÊ „’„„ Â–« «·»—‰«„Ã'",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ''",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",21,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«·ÃÊ«»'",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mycaption",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",30,32)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mycaption",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl2.Value := '”Ì› «·œÌ‰ ⁄Ì¯«‘'",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",40,40)
Return
*-------------------------------------------------------------------*
