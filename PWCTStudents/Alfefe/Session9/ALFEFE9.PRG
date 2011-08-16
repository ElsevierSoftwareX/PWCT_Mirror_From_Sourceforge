*---------------------------------------------------------------------------*
* Time : 18:21:53    Date : 08/16/2011
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


Resistance R_ALFEFE9_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ALFEFE9_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 337 ;
HEIGHT 271 ;
ICON "PWCTICON" ;
TITLE "User" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 124 ,23 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 18 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 169 ,178 BUTTONEX btn1;
CAPTION "œŒÊ·";
ON CLICK alfefe()  ;
WIDTH 127 HEIGHT 40 ;
FONT "arial" SIZE 18 ;
TOOLTIP ""
@ 169 ,24 BUTTONEX btn2;
CAPTION "Œ—ÊÃ";
ON CLICK close1()  ;
WIDTH 127 HEIGHT 40 ;
FONT "arial" SIZE 18 ;
TOOLTIP ""
@ 8 ,23 IMAGE image1;
PICTURE "Penguins.jpg";
STRETCH ;
WIDTH 279 HEIGHT 111
@ 125 ,227 LABEL lbl1 ;
VALUE "«”„ «·„” Œœ„" ;
WIDTH 87 ;
HEIGHT 39 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc alfefe
asd := win1.text1.Value
IF asd==""
MyOut := MSGINFO("·«ÌÊÃœ »Ì«‰«  „‰ ›÷·ﬂ «œŒ· «”„ «·„” Œœ„","Œÿ√")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 334 ;
HEIGHT 311 ;
ICON "" ;
TITLE "„—Õ»«"+asd ;
MODAL ;
BACKCOLOR {236,233,216} 

@ 172 ,15 LABEL lbl3 ;
VALUE "„—Õ»« »ﬂ ›Ì  ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ" ;
WIDTH 297 ;
HEIGHT 44 ;
FONT "Arial" SIZE 18  ;
BOLD ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 130 ,228 LABEL lbl2 ;
VALUE ":«·„” Œœ„" ;
WIDTH 80 ;
HEIGHT 29 ;
FONT "Arial" SIZE 18  ;
BOLD ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 133 ,18 LABEL lbl1 ;
VALUE asd ;
WIDTH 211 ;
HEIGHT 33 ;
FONT "Arial" SIZE 18  ;
BOLD ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 4 ,10 IMAGE image1;
PICTURE "Penguins.jpg";
STRETCH ;
WIDTH 296 HEIGHT 119
@ 220 ,105 BUTTONEX btn1;
CAPTION "Œ—ÊÃ";
ON CLICK close2()  ;
WIDTH 113 HEIGHT 36 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil
Proc close1
win1.Release ( )
Return Nil
Proc close2
win2.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_ALFEFE9
START DOUBLES
Return
*-------------------------------------------------------------------*
