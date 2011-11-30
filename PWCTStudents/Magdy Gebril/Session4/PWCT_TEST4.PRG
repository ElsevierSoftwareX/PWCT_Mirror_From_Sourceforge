*---------------------------------------------------------------------------*
* Time : 22:40:49    Date : 11/30/2011
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


Resistance R_PWCT_TEST4_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PWCT_TEST4_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 470 ;
ICON "PWCTICON" ;
TITLE "”ƒ«· ÊÃÊ«»" ;
MAIN ;
BACKCOLOR {128,0,0} 

@ 22 ,9 LABEL lbl1 ;
VALUE "„‰ ÂÊ „Œ —⁄   ﬁ‰ÌÂ  «·»—„ÃÂ »œÊ‰ ﬂÊœø" ;
WIDTH 470 ;
HEIGHT 83 ;
FONT "Arial" SIZE 26  ;
BACKCOLOR {128,0,0} ;
FONTCOLOR {255,255,128}
@ 233 ,37 LABEL lbl2 ;
VALUE " " ;
WIDTH 442 ;
HEIGHT 71 ;
FONT "Arial" SIZE 24  ;
BACKCOLOR {128,0,0} ;
FONTCOLOR {255,255,128}
@ 139 ,168 BUTTONEX btn1;
CAPTION "«·≈Ã«»Â";
ON CLICK myread()  ;
WIDTH 132 HEIGHT 42 ;
FONT "Arial" SIZE 26 ;
TOOLTIP ""
@ 358 ,13 BUTTONEX btn2;
CAPTION "≈€·«ﬁ";
FONTCOLOR {255,0,0};
ON CLICK myclose()  ;
WIDTH 106 HEIGHT 51 ;
FONT "Arial" SIZE 24 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure myread()
win1.lbl2.Value := "«·„Â‰œ” «·„’—Ï „Õ„Êœ ”„Ì— ›«Ìœ"
return
procedure myclose()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_PWCT_TEST4
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '”ƒ«· ÊÃÊ«»'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '„‰ ÂÊ „Œ —⁄   ﬁ‰ÌÂ  «·»—„ÃÂ »œÊ‰ ﬂÊœø'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ' '",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«·≈Ã«»Â'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myread",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '≈€·«ﬁ'",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myclose",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myread ( Event : CLICK )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl2.Value := '«·„Â‰œ” «·„’—Ï „Õ„Êœ ”„Ì— ›«Ìœ'",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myclose ( Event : CLICK )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",48,48)
Return
*-------------------------------------------------------------------*
