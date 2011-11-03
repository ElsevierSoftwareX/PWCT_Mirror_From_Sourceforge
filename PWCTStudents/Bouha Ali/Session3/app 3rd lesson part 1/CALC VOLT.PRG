*---------------------------------------------------------------------------*
* Time : 11:08:40    Date : 11/03/2011
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


Resistance R_CALC_VOLT_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CALC_VOLT_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 409 ;
HEIGHT 355 ;
ICON "PWCTICON" ;
TITLE "Claculate voltage" ;
MAIN ;
BACKCOLOR {255,128,0} 

@ 45 ,253 LABEL lbl1 ;
VALUE "ﬁÌ„… «·„ﬁ«Ê„…" ;
WIDTH 150 ;
HEIGHT 36 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 116 ,253 LABEL lbl2 ;
VALUE "ﬁÌ„… ‘œ… «· Ì«—" ;
WIDTH 151 ;
HEIGHT 27 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 184 ,253 LABEL lbl3 ;
VALUE "ﬁÌ„… «· Ê — «·ﬂÂ—»«∆Ì" ;
WIDTH 153 ;
HEIGHT 39 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {128,0,255}
@ 37 ,36 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Comic Sans MS" SIZE 14 ;
BACKCOLOR {255,128,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 111 ,36 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Comic Sans MS" SIZE 14 ;
BACKCOLOR {0,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 182 ,36 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
READONLY ;
FONT "Comic Sans MS" SIZE 14 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 253 ,13 BUTTONEX btn1;
CAPTION "Õ”«» ‘œ… «· Ê — «·ﬂÂ—»«∆Ì";
FONTCOLOR {255,0,255};
ON CLICK Calc()  ;
WIDTH 266 HEIGHT 36 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 262 ,291 BUTTONEX btn2;
CAPTION "≈€·«ﬁ «·»—‰«„Ã";
ON CLICK myclose()  ;
WIDTH 99 HEIGHT 45 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc ˆˆCalc
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
Volt := num1*num2
Volt = STR ( Volt )
Volt = ALLTRIM ( Volt )
Win1.text3.Value := Volt+" "+"Voltes"
Return Nil
Proc myclose
Win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_CALC_VOLT
START DOUBLES
Return
*-------------------------------------------------------------------*
