*---------------------------------------------------------------------------*
* Time : 20:27:29    Date : 12/06/2011
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


Resistance R_PWCT_TEST7_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PWCT_TEST7_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "—”«·Â" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
BACKCOLOR {0,128,255} 

@ 60 ,301 LABEL lbl1 ;
VALUE "⁄‰Ê‰ «·—”«·Â" ;
WIDTH 128 ;
HEIGHT 34 ;
FONT "Arial" SIZE 22  ;
BACKCOLOR {0,128,255} ;
FONTCOLOR {255,255,0}
@ 140 ,300 LABEL lbl2 ;
VALUE "‰’ «·—”«·Â" ;
WIDTH 131 ;
HEIGHT 39 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {0,128,255} ;
FONTCOLOR {255,255,0}
@ 284 ,248 BUTTONEX btn1;
CAPTION "≈ŸÂ«—";
ON CLICK msgbox()  ;
WIDTH 130 HEIGHT 50 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 281 ,8 BUTTONEX btn2;
CAPTION "Œ—ÊÃ";
ON CLICK myclose()  ;
WIDTH 107 HEIGHT 51 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 56 ,59 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 95 ,57 TEXTBOX text2;
HEIGHT 127 ;
WIDTH 202 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

procedure msgbox()
num1 := win1.text1.Value
num2 := win1.text2.Value
MyOut := MSGINFO(num2,num1)
return
procedure myclose()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_PWCT_TEST7
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '—”«·Â'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '⁄‰Ê‰ «·—”«·Â'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '‰’ «·—”«·Â'",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",22,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '≈ŸÂ«—'",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action msgbox",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",30,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Œ—ÊÃ'",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myclose",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",36,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",40,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",46,50)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",56,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure msgbox ( Event : CLICK )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = win1.text1.Value",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = win1.text2.Value",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message num2 Title num1 Type: Message Info",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myclose ( Event : CLICK )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",66,66)
Return
*-------------------------------------------------------------------*
