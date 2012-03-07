*---------------------------------------------------------------------------*
* Time : 18:16:05    Date : 03/07/2012
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
 * (Noun) *
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


Resistance R_TEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE " Ã—»…" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Close System" Action closesystem()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ready"

KEYBOARD

CLOCK

END STATUSBAR

@ 65 ,225 LABEL lbl1 ;
VALUE "«·«Œ »«— «·√Ê·" ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {236,233,216} ;
BORDER ;
FONTCOLOR {0,0,0}
@ 108 ,225 LABEL lbl2 ;
VALUE "«·«Œ »«— «·À«‰Ì" ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {236,233,216} ;
BORDER ;
FONTCOLOR {0,0,0}
@ 155 ,225 LABEL lbl3 ;
VALUE "«·«Œ »«— «·À«·À" ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {236,233,216} ;
BORDER ;
FONTCOLOR {0,0,0}
@ 61 ,13 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 105 ,13 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 151 ,13 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 232 ,14 TEXTBOX text4;
HEIGHT 35 ;
WIDTH 285 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 284 ,14 TEXTBOX text5;
HEIGHT 35 ;
WIDTH 285 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 10 ,10 BUTTONEX btn1;
CAPTION "«Õ”» «·‰”»…";
ON CLICK calc()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

win1.Maximize ( )
ACTIVATE WINDOW win1
EndIF

Proc calc
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
num3 = VAL ( win1.text3.value )
num4 := (num1+num2+num3)/3
num5 := (num1+num2+num3)*100/30
num4 = STR ( num4 )
num5 = STR ( num5 )
num4 = ALLTRIM ( num4 )
num5 = ALLTRIM ( num5 )
win1.text4.Value := num4
win1.text5.Value := num5
Return Nil
Proc closesystem
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' Ã—»…'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·«Œ »«— «·√Ê·'",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",31,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·«Œ »«— «·À«‰Ì'",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",40,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·«Œ »«— «·À«·À'",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",49,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",57,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",64,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",71,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",78,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",85,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«Õ”» «·‰”»…'",91,92)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action calc()",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",94,96)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",97,98)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",100,102)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure calc",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","num3 = CONVERT win1.text3.value TO Numeric",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","num4 = (num1+num2+num3)/3",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","num5 = (num1+num2+num3)*100/30",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","num4 = CONVERT num4 TO STRING",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","num5 = CONVERT num5 TO STRING",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","num4 = All Trim num4",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","num5 = All Trim num5",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4.Value := num4",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5.Value := num5",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",118,118)
Return
*-------------------------------------------------------------------*
