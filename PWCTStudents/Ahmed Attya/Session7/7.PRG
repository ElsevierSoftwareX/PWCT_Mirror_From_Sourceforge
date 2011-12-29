*---------------------------------------------------------------------------*
* Time : 07:52:05    Date : 12/29/2011
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


Resistance R_7_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_7_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "«·œ—” «·”«»⁄" ;
MAIN ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 292 ,333 BUTTONEX btn1;
CAPTION "≈ŸÂ«—";
FONTCOLOR {0,0,255};
ON CLICK msgbox()  ;
WIDTH 110 HEIGHT 39 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 296 ,45 BUTTONEX btn2;
CAPTION "Œ—ÊÃ";
FONTCOLOR {255,0,0};
ON CLICK Ahmed()  ;
WIDTH 115 HEIGHT 40 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 22 ,19 LABEL lbl1 ;
VALUE "⁄‰Ê«‰ «·—”«·Â" ;
WIDTH 129 ;
HEIGHT 36 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 101 ,18 LABEL lbl2 ;
VALUE "‰’ «·—”«·Â" ;
WIDTH 123 ;
HEIGHT 41 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 88 ,189 TEXTBOX text1;
HEIGHT 136 ;
WIDTH 266 ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {0,0,0} 

@ 13 ,189 TEXTBOX text2;
HEIGHT 43 ;
WIDTH 263 ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Ahmed
win1.Release ( )
Return Nil
Proc msgbox
iyten := win1.text1.Value
eiad := win1.text2.Value
MyOut := MSGINFO(iyten,eiad)
Return Nil


End Of Resistance

INIT PROCEDURE Init_7
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·œ—” «·”«»⁄'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '≈ŸÂ«—'",15,17)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action msgbox()",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",19,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Œ—ÊÃ'",22,24)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Ahmed()",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",26,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '⁄‰Ê«‰ «·—”«·Â'",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",31,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '‰’ «·—”«·Â'",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",38,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",44,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",50,54)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",57,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Ahmed",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure msgbox",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","iyten = win1.text1.Value",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","eiad = win1.text2.Value",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message iyten Title eiad Type: Message Info",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",67,67)
Return
*-------------------------------------------------------------------*
