*---------------------------------------------------------------------------*
* Time : 20:59:12    Date : 01/31/2012
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
WIDTH 809 ;
HEIGHT 421 ;
ICON "PWCTICON" ;
TITLE "«· Õﬂ„ ›Ï «ŸÂ«— «·—”«·… (maged algmal)" ;
MAIN ;
BACKCOLOR {64,128,128} 

@ 272 ,278 BUTTONEX btn1;
CAPTION "«ŸÂ«—";
ON CLICK msgbox()  ;
WIDTH 119 HEIGHT 33 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 339 ,443 BUTTONEX btn2;
CAPTION "Œ—ÊÃ";
ON CLICK maged()  ;
WIDTH 110 HEIGHT 35 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 37 ,39 LABEL lbl1 ;
VALUE "⁄‰Ê«‰ «·—”«·…" ;
WIDTH 123 ;
HEIGHT 34 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {64,128,128} ;
FONTCOLOR {0,0,0}
@ 92 ,41 LABEL lbl2 ;
VALUE "‰’ «·—”«·…" ;
WIDTH 123 ;
HEIGHT 37 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {64,128,128} ;
FONTCOLOR {0,0,0}
@ 30 ,187 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 334 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,255} 

@ 87 ,186 TEXTBOX text2;
HEIGHT 167 ;
WIDTH 334 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,255} 

@ 2 ,548 IMAGE image1;
PICTURE "23633_422949808218_143789693218_5248884_3448108_N.JPG";
STRETCH ;
WIDTH 249 HEIGHT 305
@ 327 ,599 LABEL lbl3 ;
VALUE "by / maged algmal" ;
WIDTH 171 ;
HEIGHT 30 ;
FONT "Brush Script MT" SIZE 18  ;
BACKCOLOR {64,128,128} ;
FONTCOLOR {128,0,255}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure msgbox()
dido := win1.text1.Value
maged := win1.text2.Value
MyOut := MSGINFO(maged,dido)
return
procedure maged()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_M
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«· Õﬂ„ ›Ï «ŸÂ«— «·—”«·… (maged algmal)'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«ŸÂ«—'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action msgbox",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Œ—ÊÃ'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action maged",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '⁄‰Ê«‰ «·—”«·…'",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '‰’ «·—”«·…'",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",38,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",44,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : '23633_422949808218_143789693218_5248884_3448108_N.JPG'",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'by / maged algmal'",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",55,59)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",62,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure msgbox ( Event : CLICK )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","dido = win1.text1.Value",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","maged = win1.text2.Value",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message maged Title dido Type: Message Info",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure maged ( Event : CLICK )",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",72,72)
Return
*-------------------------------------------------------------------*
