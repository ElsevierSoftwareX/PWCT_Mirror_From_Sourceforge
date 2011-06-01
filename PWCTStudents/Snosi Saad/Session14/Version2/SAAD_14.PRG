*---------------------------------------------------------------------------*
* Time : 23:13:26    Date : 05/30/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.7 (Sharp) [2006-2010]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
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


Resistance R_SAAD_14_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SAAD_14_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 306 ;
ICON "PWCTICON" ;
TITLE "⁄œ«œ" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {85,148,210} 

@ 43 ,345 LABEL lbl1 ;
VALUE "„‰" ;
WIDTH 120 ;
HEIGHT 30 ;
FONT "Tahoma" SIZE 12  ;
BACKCOLOR {85,148,210} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 133 ,345 LABEL lbl2 ;
VALUE "≈·Ï" ;
WIDTH 120 ;
HEIGHT 30 ;
FONT "Tahoma" SIZE 12  ;
BACKCOLOR {85,148,210} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 81 ,345 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 120 ;
FONT "Times New Roman" SIZE 16 ;
BACKCOLOR {215,217,176} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 167 ,345 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 120 ;
FONT "Times New Roman" SIZE 16 ;
BACKCOLOR {215,217,176} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 30 ,15 EDITBOX edit1;
WIDTH 200 ;
HEIGHT 200;
FONT "Times New Roman" SIZE 10 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 118 ,236 BUTTONEX btn1;
CAPTION "≈Õ”»";
FONTCOLOR {66,147,72};
ON CLICK mycount()  ;
WIDTH 100 HEIGHT 40 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 188 ,236 BUTTONEX btn2;
CAPTION " ›—€";
FONTCOLOR {255,0,0};
ON CLICK mydelete()  ;
WIDTH 100 HEIGHT 40 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

DO RightToLeftControl WITH "win1","edit1"
calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc mycount
num1 := win1.text1.Value
num2 := win1.text2.Value
FOR x = num1 TO num2 STEP 1
x2 = STR ( x )
x2 = ALLTRIM ( x2 )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + x2
else
Win1.Edit1.VALUE := x2
endif
Next
Return Nil
Proc RightToLeftControl( p1,p2 )
Local v1,myhandle
myhandle = GetControlHandle ( p2,p1 )
v1 = CALLDLL32("GetWindowLong","USER32.DLL",myhandle,-20)
myout = CALLDLL32("SetWindowLong","USER32.DLL",myhandle,-20,NUMOR(v1,0x400000,0x100000))
Return Nil
Proc mydelete
win1.edit1.Value := ""
Return Nil


End Of Resistance

INIT PROCEDURE Init_SAAD_14
START DOUBLES
Return
*-------------------------------------------------------------------*
