*---------------------------------------------------------------------------*
* Time : 20:03:13    Date : 01/26/2011
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


Resistance R_SO4_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SO4_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {245,192,250} 

@ 50 ,182 LABEL lbl1 ;
VALUE "„‰ ÂÊ «Œ— „·ﬂ Õﬂ„ „’—ø" ;
WIDTH 281 ;
HEIGHT 40 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,0}
@ 199 ,28 LABEL lbl2 ;
VALUE "" ;
WIDTH 236 ;
HEIGHT 37 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {243,198,244} ;
FONTCOLOR {128,0,0}
@ 196 ,307 BUTTONEX btn1;
CAPTION "«·≈Ã«»… ÂÌ";
FONTCOLOR {128,0,0};
BACKCOLOR {255,255,255};
ON CLICK mycaption()  ;
WIDTH 138 HEIGHT 37 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mycaption
win1.lbl2.Value := "ÂÊ «·„·ﬂ ›«—Êﬁ"
Return Nil


End Of Resistance

INIT PROCEDURE Init_SO4
START DOUBLES
Return
*-------------------------------------------------------------------*
