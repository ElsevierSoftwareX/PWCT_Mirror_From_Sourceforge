*---------------------------------------------------------------------------*
* Time : 13:59:29    Date : 01/10/2012
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
WIDTH 396 ;
HEIGHT 323 ;
ICON "PWCTICON" ;
TITLE "You have Message..." ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,7 LABEL lbl1 ;
VALUE "Message Title" ;
WIDTH 110 ;
HEIGHT 29 ;
FONT "Arial Narrow" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 61 ,7 LABEL lbl2 ;
VALUE "Message Body" ;
WIDTH 110 ;
HEIGHT 31 ;
FONT "Arial Narrow" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 28 ,110 TEXTBOX text1;
HEIGHT 31 ;
WIDTH 249 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 84 ,110 TEXTBOX text2;
HEIGHT 130 ;
WIDTH 249 ;
STRIKEOUT ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 230 ,257 BUTTONEX btn1;
CAPTION "Show Message";
ON CLICK Show()  ;
WIDTH 104 HEIGHT 35 ;
FONT "Agency FB" SIZE 16 ;
TOOLTIP ""
@ 230 ,16 BUTTONEX btn2;
CAPTION "Exit";
ON CLICK Exit()  ;
WIDTH 50 HEIGHT 31 ;
FONT "Agency FB" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure Show()
Var1 := win1.text1.Value
Var2 := win1.text2.Value
MyOut := MSGBOX(Var1,Var2)
return
procedure Exit()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_7
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'You have Message...'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Message Title'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Message Body'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",26,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",32,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Show Message'",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Show",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Exit'",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Exit",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",47,49)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",52,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Show ( Event : CLICK )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Var1 = win1.text1.Value",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Var2 = win1.text2.Value",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message Var1 Title Var2 Type: Message Box",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Exit ( Event : CLICK )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",62,62)
Return
*-------------------------------------------------------------------*
