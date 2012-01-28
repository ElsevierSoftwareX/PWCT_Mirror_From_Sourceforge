*---------------------------------------------------------------------------*
* Time : 01:06:34    Date : 01/28/2012
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


Resistance R_M_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_M_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "«· Õﬂ„ ›Ï Œ’«∆’ «·«œÊ«  »Ê«”ÿ… «œ«… «Œ—Ï maged algmal" ;
MAIN ;
BACKCOLOR {64,128,128} 

@ 78 ,59 LABEL lbl1 ;
VALUE " „‰ ÂÊ „»—„Ã  ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ" ;
WIDTH 417 ;
HEIGHT 73 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {64,128,128} ;
FONTCOLOR {0,0,0}
@ 293 ,136 LABEL lbl2 ;
VALUE "" ;
WIDTH 411 ;
HEIGHT 51 ;
FONT "Tahoma" SIZE 18  ;
BACKCOLOR {64,128,128} ;
FONTCOLOR {0,0,0}
@ 183 ,59 BUTTONEX btn1;
CAPTION "«÷€ÿ Â‰« ·„⁄—›… «·ÃÊ«»";
ON CLICK mycaption()  ;
WIDTH 383 HEIGHT 40 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

return
Proc mycaption
win1.lbl2.Value := ' „Â‰œ” „Õ„Êœ ›«Ìœ'
Return Nil


End Of Resistance

INIT PROCEDURE Init_M
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«· Õﬂ„ ›Ï Œ’«∆’ «·«œÊ«  »Ê«”ÿ… «œ«… «Œ—Ï maged algmal'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : ' „‰ ÂÊ „»—„Ã  ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ''",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«÷€ÿ Â‰« ·„⁄—›… «·ÃÊ«»'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mycaption",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl2.Value := ' „Â‰œ” „Õ„Êœ ›«Ìœ'",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",39,39)
Return
*-------------------------------------------------------------------*
