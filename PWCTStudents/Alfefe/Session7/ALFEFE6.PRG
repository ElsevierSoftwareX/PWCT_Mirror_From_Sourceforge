*---------------------------------------------------------------------------*
* Time : 20:50:25    Date : 08/14/2011
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


Resistance R_ALFEFE6_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ALFEFE6_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 289 ;
HEIGHT 366 ;
ICON "PWCTICON" ;
TITLE "«ŸÂ«— «·—”«·…" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 82 ,105 LABEL lbl1 ;
VALUE "‰’ «·—”«·…" ;
WIDTH 91 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 4 ,106 LABEL lbl2 ;
VALUE "⁄‰Ê«‰ «·—”«·…" ;
WIDTH 95 ;
HEIGHT 34 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 38 ,26 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 214 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 117 ,26 TEXTBOX text2;
HEIGHT 127 ;
WIDTH 214 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 276 ,142 BUTTONEX btn1;
CAPTION "«ŸÂ«—";
ON CLICK shwo()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 276 ,27 BUTTONEX btn2;
CAPTION "Œ—ÊÃ";
ON CLICK close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc shwo
a := win1.text1.Value
b := win1.text2.Value
MyOut := MSGBOX(b,a)
Return Nil
Proc close
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_ALFEFE6
START DOUBLES
Return
*-------------------------------------------------------------------*
