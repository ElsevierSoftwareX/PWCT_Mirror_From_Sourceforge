*---------------------------------------------------------------------------*
* Time : 17:33:52    Date : 01/21/2012
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


Resistance R_TEXTMSG_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEXTMSG_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 483 ;
HEIGHT 370 ;
ICON "PWCTICON" ;
TITLE "≈ŸÂ«— «·—”«·…" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,255,255} 

@ 271 ,325 BUTTONEX btn1;
CAPTION "≈ŸÂ«—";
FONTCOLOR {255,0,0};
BACKCOLOR {128,255,128};
ON CLICK msgbox()  ;
WIDTH 121 HEIGHT 31 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 276 ,27 BUTTONEX btn2;
CAPTION "Œ—ÊÃ";
FONTCOLOR {255,0,0};
BACKCOLOR {128,255,128};
ON CLICK Muhammad()  ;
WIDTH 121 HEIGHT 31 ;
FONT "Arial" SIZE 16 ;
BOLD ;
TOOLTIP ""
@ 25 ,21 LABEL lbl1 ;
VALUE "⁄‰Ê«‰ «·—”«·…" ;
WIDTH 118 ;
HEIGHT 32 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,0}
@ 90 ,19 LABEL lbl2 ;
VALUE "‰’ «·—”«·…" ;
WIDTH 118 ;
HEIGHT 38 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,0}
@ 91 ,158 TEXTBOX text1;
HEIGHT 127 ;
WIDTH 292 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 22 ,158 TEXTBOX text2;
HEIGHT 29 ;
WIDTH 292 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Muhammad
win1.Release ( )
Return Nil
Proc msgbox
Alexandria := win1.text1.Value
Muhammad := win1.text2.Value
MyOut := MSGINFO(Muhammad,Alexandria)
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEXTMSG
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '≈ŸÂ«— «·—”«·…'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '≈ŸÂ«—'",14,17)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action msgbox()",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",19,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Œ—ÊÃ'",22,25)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Muhammad()",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",27,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '⁄‰Ê«‰ «·—”«·…'",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '‰’ «·—”«·…'",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",40,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",46,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",52,56)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Muhammad",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure msgbox",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Alexandria = win1.text1.Value",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Muhammad = win1.text2.Value",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message Muhammad Title Alexandria Type: Message Info",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",69,69)
Return
*-------------------------------------------------------------------*
