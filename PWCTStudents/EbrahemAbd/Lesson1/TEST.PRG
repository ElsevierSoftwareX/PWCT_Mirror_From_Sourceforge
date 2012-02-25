*---------------------------------------------------------------------------*
* Time : 09:31:56    Date : 02/25/2012
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
WIDTH 560 ;
HEIGHT 482 ;
ICON "PWCTICON" ;
TITLE "Õ”«» „”«Õ… Ê„ÕÌÿ „—»⁄  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "ICO\ABN.ANI" ;
BACKCOLOR {236,233,216} ;
NOTIFYICON "ICO\ACADMY.ICO" 

win1.Center ( )
@ 0 ,-7 IMAGE image1;
PICTURE "PIC.JPG";
STRETCH ;
WIDTH 559 HEIGHT 446
@ 179 ,243 LABEL lbl1 ;
VALUE "ÿÊ· ÷·⁄ «·„—»⁄ " ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 226 ,243 LABEL lbl2 ;
VALUE "„ÕÌÿ «·„—»⁄ " ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 282 ,243 LABEL lbl3 ;
VALUE "„”«Õ… «·„—»⁄ " ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 180 ,104 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 120 ;
FONT "Arial" SIZE 14 ;
BOLD ;
BACKCOLOR {255,255,255} ;
UPPERCASE ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 227 ,105 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 120 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BOLD ;
BACKCOLOR {255,255,255} ;
UPPERCASE ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 275 ,105 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 120 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BOLD ;
BACKCOLOR {255,255,255} ;
UPPERCASE ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 365 ,338 BUTTONEX btn1;
CAPTION "«Õ”» ";
BACKCOLOR {128,0,128};
ON CLICK calc()  ;
WIDTH 120 HEIGHT 54 ;
FONT "arial" SIZE 20 ;
BOLD ;
ITALIC ;
TOOLTIP ""
@ 365 ,76 BUTTONEX btn2;
CAPTION "Œ—ÊÃ ";
BACKCOLOR {128,0,128};
ON CLICK exit()  ;
WIDTH 105 HEIGHT 54 ;
FONT "arial" SIZE 20 ;
BOLD ;
ITALIC ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

procedure calc()
t := win1.text1.Value
IF t==""
MyOut := MSGExclamation("„‰ ›÷·ﬂ «œŒ· ÿÊ· ÷·⁄ «·„—»⁄ ","error ")
ENDIF
t = VAL ( t )
a := t*4
b := t*t
a = STR ( a )
b = STR ( b )
a = ALLTRIM ( a )
b = ALLTRIM ( b )
win1.text2.Value := a
win1.text3.Value := b
return
procedure exit()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Õ”«» „”«Õ… Ê„ÕÌÿ „—»⁄  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,15)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'PIC.JPG'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'ÿÊ· ÷·⁄ «·„—»⁄ '",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",23,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '„ÕÌÿ «·„—»⁄ '",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",30,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '„”«Õ… «·„—»⁄ '",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",37,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",43,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",53,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",64,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«Õ”» '",74,76)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action calc",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",78,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Œ—ÊÃ '",83,85)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action exit",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",87,91)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",92,93)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",94,96)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",97,99)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure calc ( Event : CLICK )",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","t = win1.text1.Value",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( t=='' )",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '„‰ ›÷·ﬂ «œŒ· ÿÊ· ÷·⁄ «·„—»⁄ ' Title 'error ' Type: Message Exclamation",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","t = CONVERT t TO Numeric",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","a = t*4",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","b = t*t",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","a = CONVERT a TO STRING",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","b = CONVERT b TO STRING",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","a = All Trim a",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","b = All Trim b",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := a",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := b",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exit ( Event : CLICK )",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",117,117)
Return
*-------------------------------------------------------------------*
