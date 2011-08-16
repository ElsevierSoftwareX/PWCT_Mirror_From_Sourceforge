*---------------------------------------------------------------------------*
* Time : 10:53:25    Date : 08/16/2011
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


Resistance R_COUNTER_APP_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_COUNTER_APP_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 427 ;
HEIGHT 377 ;
ICON "PWCTICON" ;
TITLE "⁄‹‹œ«œ" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,65,65} 

@ 20 ,338 LABEL lbl1 ;
VALUE "«·—ﬁ„ «·√Ê·" ;
WIDTH 89 ;
HEIGHT 41 ;
FONT "Arial" SIZE 16  ;
BOLD ;
BACKCOLOR {128,65,65} ;
FONTCOLOR {0,0,0}
@ 14 ,131 LABEL lbl2 ;
VALUE "«·—ﬁ„ «·À«‰Ì" ;
WIDTH 84 ;
HEIGHT 42 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {128,65,65} ;
FONTCOLOR {0,0,0}
@ 13 ,218 TEXTBOX text1;
HEIGHT 39 ;
WIDTH 111 ;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 11 ,14 TEXTBOX text2;
HEIGHT 39 ;
WIDTH 111 ;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 293 ,131 BUTTONEX btn1;
CAPTION "⁄œ «·¬‰";
ON CLICK cont()  ;
WIDTH 155 HEIGHT 36 ;
FONT "Arial" SIZE 16 ;
BOLD ;
TOOLTIP ""
@ 65 ,39 EDITBOX edit1;
WIDTH 338 ;
HEIGHT 211;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc cont
num1 := win1.text1.Value
num2 := win1.text2.Value
FOR x = Num1 TO Num2 STEP 1
x2 = STR ( x )
X2 = ALLTRIM ( x2 )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + x2
else
Win1.Edit1.VALUE := x2
endif
Next
Return Nil


End Of Resistance

INIT PROCEDURE Init_COUNTER_APP
START DOUBLES
Return
*-------------------------------------------------------------------*
