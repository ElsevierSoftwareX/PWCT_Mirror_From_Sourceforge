*---------------------------------------------------------------------------*
* Time : 16:29:30    Date : 03/12/2012
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


Resistance R_2_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_2_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 356 ;
HEIGHT 335 ;
ICON "PWCTICON" ;
TITLE "«·‰”»… «·„∆ÊÌÂ  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 42 ,261 LABEL lbl1 ;
VALUE "«·œ—ÃÂ" ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 108 ,253 LABEL lbl2 ;
VALUE "«·„Ã„Ê⁄ «·ﬂ·Ï" ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 163 ,255 LABEL lbl3 ;
VALUE "«·‰”»… «·„∆ÊÌÂ " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 31 ,10 TEXTBOX textdegree;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 103 ,10 TEXTBOX texttotal;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 160 ,10 TEXTBOX textpers;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 236 ,134 BUTTONEX btn1;
CAPTION "«Õ”» ";
ON CLICK pcalc()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pcalc()
nnum1 = VAL ( win1.textdegree.value )
nnum2 = VAL ( win1.texttotal.value )
nnum3 := (nnum1/nnum2)*100
nnum3 = STR ( nnum3 )
nnum3 = ALLTRIM ( nnum3 )
win1.textpers.Value := nnum3
return


End Of Resistance

INIT PROCEDURE Init_2
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·‰”»… «·„∆ÊÌÂ  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·œ—ÃÂ'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·„Ã„Ê⁄ «·ﬂ·Ï'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·‰”»… «·„∆ÊÌÂ '",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textdegree  )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",33,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( texttotal  )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",40,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textpers  )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",47,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«Õ”» '",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pcalc",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",56,58)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",61,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pcalc ( Event : CLICK )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","nnum1 = CONVERT win1.textdegree.value TO Numeric",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","nnum2 = CONVERT win1.texttotal.value TO Numeric",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","nnum3 = (nnum1/nnum2)*100",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","nnum3 = CONVERT nnum3 TO STRING",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","nnum3 = All Trim nnum3",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textpers.Value := nnum3",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",71,71)
Return
*-------------------------------------------------------------------*
