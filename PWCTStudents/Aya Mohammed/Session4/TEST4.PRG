*---------------------------------------------------------------------------*
* Time : 18:52:02    Date : 01/25/2012
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


Resistance R_TEST4_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST4_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 536 ;
HEIGHT 398 ;
ICON "PWCTICON" ;
TITLE "ﬂÌ›Ì… «· Õﬂ„ ›Ì Œ’«∆’ «·«œÊ«  „‰ √œ«Â √Œ—Ì" ;
MAIN ;
BACKCOLOR {250,216,247} 

@ 59 ,116 LABEL lbl1 ;
VALUE "„‰ ÂÌ «·„»—„ÃÂ » ﬁ‰Ì… «·»—„ÃÂ »œÊ‰ ﬂÊœ" ;
WIDTH 289 ;
HEIGHT 50 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {250,216,247} ;
FONTCOLOR {128,0,64}
@ 170 ,118 BUTTONEX btn1;
CAPTION "Click here for answer";
ON CLICK Mycaption()  ;
WIDTH 287 HEIGHT 43 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 258 ,118 LABEL lbl2 ;
VALUE "" ;
WIDTH 287 ;
HEIGHT 35 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {250,216,247} ;
FONTCOLOR {0,0,160}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Mycaption
win1.lbl2.Value := "She is Aya"
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST4
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'ﬂÌ›Ì… «· Õﬂ„ ›Ì Œ’«∆’ «·«œÊ«  „‰ √œ«Â √Œ—Ì'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '„‰ ÂÌ «·„»—„ÃÂ » ﬁ‰Ì… «·»—„ÃÂ »œÊ‰ ﬂÊœ'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Click here for answer'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Mycaption",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ''",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",26,30)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Mycaption",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl2.Value := 'She is Aya'",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",38,38)
Return
*-------------------------------------------------------------------*
