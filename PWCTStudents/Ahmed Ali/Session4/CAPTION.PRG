*---------------------------------------------------------------------------*
* Time : 01:00:35    Date : 10/12/2011
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


Resistance R_CAPTION_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CAPTION_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Caption" ;
MAIN ;
BACKCOLOR {64,128,128} 

@ 50 ,109 LABEL lbl1 ;
VALUE "„‰ ÂÊ «·—”Ê· «·Œ« „ " ;
WIDTH 253 ;
HEIGHT 46 ;
FONT "Arial" SIZE 26  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 222 ,70 LABEL lbl2 ;
VALUE "" ;
WIDTH 306 ;
HEIGHT 40 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {64,128,128} ;
FONTCOLOR {0,0,0}
@ 142 ,127 BUTTONEX btn1;
CAPTION "«÷€ÿ Â‰«  ’· «·Ï «·«Ã«»…";
ON CLICK mycaption()  ;
WIDTH 212 HEIGHT 29 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 302 ,40 BUTTONEX btn2;
CAPTION "«€·ﬁ";
ON CLICK Myclose()  ;
WIDTH 75 HEIGHT 31 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mycaption
win1.lbl2.Value := "ÂÊ ”Ìœ‰« „Õ„œ ⁄·ÌÂ «·’·«… Ê «·”·«„"
Return Nil
Proc Myclose
win1.Release ( )


End Of Resistance

INIT PROCEDURE Init_CAPTION
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Caption'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '„‰ ÂÊ «·—”Ê· «·Œ« „ '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ''",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«÷€ÿ Â‰«  ’· «·Ï «·«Ã«»…'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mycaption()",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '«€·ﬁ'",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Myclose()",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",34,36)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mycaption",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl2.Value := 'ÂÊ ”Ìœ‰« „Õ„œ ⁄·ÌÂ «·’·«… Ê «·”·«„'",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Myclose",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",46,46)
Return
*-------------------------------------------------------------------*
