*---------------------------------------------------------------------------*
* Time : 22:38:18    Date : 05/20/2011
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


Resistance R_SAAD_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SAAD_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 594 ;
HEIGHT 294 ;
ICON "PWCTICON" ;
TITLE "«· Õﬂ„ »Œ’«∆’ «·√œÊ«  »Ê«”ÿ… √œ«… «Œ—Ï" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,128,0} 

@ 14 ,251 LABEL lbl1 ;
VALUE "Â·  ⁄·„ „‰ ÂÊ „Œ —⁄  ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ ø" ;
WIDTH 327 ;
HEIGHT 64 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {255,128,0} ;
FONTCOLOR {0,0,0}
@ 10 ,165 BUTTONEX btn1;
CAPTION "≈‰Âı";
ON CLICK Myiser()  ;
WIDTH 71 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 10 ,10 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 150 ;
READONLY ;
BOLD ;
BACKCOLOR {0,0,0} ;
RIGHTALIGN ;
FONTCOLOR {255,255,255} 

@ 40 ,9 IMAGE image1;
PICTURE "MAHMOUDFAYED.JPG";
WIDTH 150 HEIGHT 204
win1.image1.Hide ( )
@ 98 ,363 LABEL lbl2 ;
VALUE "«·„Â‰œ” : „Õ„Êœ ”„Ì— ≈»—«ÂÌ„ ›«Ìœ" ;
WIDTH 202 ;
HEIGHT 23 ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {255,128,0} ;
RIGHTALIGN ;
FONTCOLOR {255,255,255}
@ 126 ,403 LABEL lbl3 ;
VALUE " Œ—ÌÃ ﬂ·Ì… «·Â‰œ”… «·«·ﬂ —Ê‰Ì…" ;
WIDTH 162 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {255,128,0} ;
RIGHTALIGN ;
FONTCOLOR {255,255,255}
@ 154 ,347 LABEL lbl4 ;
VALUE " Ã«„⁄… «·„‰Ê›Ì… ñ Ã„ÂÊÌ… „’— «·⁄—»Ì…" ;
WIDTH 218 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {255,128,0} ;
RIGHTALIGN ;
FONTCOLOR {255,255,255}
@ 183 ,425 LABEL lbl5 ;
VALUE "ﬁ”„ Â‰œ”… Ê⁄·Ê„ «·Õ«”»" ;
WIDTH 140 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {255,128,0} ;
RIGHTALIGN ;
FONTCOLOR {255,255,255}
@ 211 ,439 LABEL lbl6 ;
VALUE " „Ê«·Ìœ 29-12-1986" ;
WIDTH 126 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {255,128,0} ;
RIGHTALIGN ;
FONTCOLOR {255,255,255}
END WINDOW

win1.lbl2.Hide ( )
win1.lbl3.Hide ( )
win1.lbl4.Hide ( )
win1.lbl5.Hide ( )
win1.lbl6.Hide ( )
ACTIVATE WINDOW win1
EndIF

Proc Myiser
win1.text1.Value := "«·„Â‰œ” „Õ„Êœ ›«Ìœ"
win1.image1.Show ( )
win1.lbl2.Show ( )
win1.lbl3.Show ( )
win1.lbl4.Show ( )
win1.lbl5.Show ( )
win1.lbl6.Show ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_SAAD
START DOUBLES
Return
*-------------------------------------------------------------------*
