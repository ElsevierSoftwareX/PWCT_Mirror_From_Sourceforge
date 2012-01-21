*---------------------------------------------------------------------------*
* Time : 09:19:23    Date : 01/20/2012
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


Resistance R_LESSON4_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON4_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 394 ;
HEIGHT 169 ;
ICON "" ;
TITLE "«· Õﬂ„ ›Ì Œ’«∆’ «·√œÊ« " ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,128,255} 

@ 29 ,140 LABEL lbl1 ;
VALUE "«·œ—” «·—«»⁄" ;
WIDTH 115 ;
HEIGHT 30 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {128,128,255} ;
FONTCOLOR {0,0,255}
@ 123 ,66 LABEL lbl2 ;
VALUE "" ;
WIDTH 241 ;
HEIGHT 34 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {128,128,255} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 167 ,67 LABEL lbl3 ;
VALUE "" ;
WIDTH 241 ;
HEIGHT 34 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {128,128,255} ;
CENTERALIGN ;
FONTCOLOR {255,0,0}
@ 78 ,133 BUTTONEX btn1;
CAPTION "OK";
ON CLICK mycaption()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Mycaption
win1.lbl2.Value := "Mahmoud Albadawey"
win1.lbl3.Value := "Senior Oracle Developer & Instructor"
win1.Height := 275
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON4
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«· Õﬂ„ ›Ì Œ’«∆’ «·√œÊ« '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·œ—” «·—«»⁄'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ''",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",22,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : ''",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",30,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'OK'",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mycaption",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",44,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Mycaption",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl2.Value := 'Mahmoud Albadawey'",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.Value := 'Senior Oracle Developer & Instructor'",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Height := 275",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",51,51)
Return
*-------------------------------------------------------------------*
