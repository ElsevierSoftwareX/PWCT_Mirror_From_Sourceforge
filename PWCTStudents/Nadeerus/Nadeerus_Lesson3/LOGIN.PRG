*---------------------------------------------------------------------------*
* Time : 00:39:22    Date : 03/23/2012
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


Resistance R_LOGIN_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LOGIN_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 510 ;
HEIGHT 382 ;
ICON "PWCTICON" ;
TITLE "œŒÊ·" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {218,214,182} 

@ 102 ,181 LABEL lbl1 ;
VALUE "√œŒ· «”„ﬂ " ;
WIDTH 100 ;
HEIGHT 30 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 131 ,47 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 176 ,92 BUTTONEX btn1;
CAPTION "œŒÊ· ";
ON CLICK login()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 44 ,280 IMAGE image1;
PICTURE "2.jpg";
STRETCH ;
WIDTH 150 HEIGHT 218
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure login()
user := win1.text1.Value
IF user==""
MyOut := MSGBOX("›÷·« «ﬂ » «”„ﬂ ","œŒÊ·")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 547 ;
HEIGHT 375 ;
ICON "PWCTICON" ;
TITLE "„—Õ»«"+user ;
MODAL ;
NOSIZE ;
BACKCOLOR {208,176,81} 

@ 145 ,44 LABEL lbl2 ;
VALUE user+" "+"Ì‘ﬂ—ﬂ ⁄·Ï Â–Â «· ﬁ‰Ì… «·Ã„Ì·… Ì« „Õ„Êœ" ;
WIDTH 510 ;
HEIGHT 66 ;
AUTOSIZE ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
return


End Of Resistance

INIT PROCEDURE Init_LOGIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'œŒÊ·'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '√œŒ· «”„ﬂ '",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",24,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'œŒÊ· '",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action login",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : '2.jpg'",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure login ( Event : CLICK )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '›÷·« «ﬂ » «”„ﬂ ' Title 'œŒÊ·' Type: Message Box",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '„—Õ»«'+user",50,54)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",55,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : user+' '+'Ì‘ﬂ—ﬂ ⁄·Ï Â–Â «· ﬁ‰Ì… «·Ã„Ì·… Ì« „Õ„Êœ'",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",63,69)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",70,71)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",72,74)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",76,76)
Return
*-------------------------------------------------------------------*
