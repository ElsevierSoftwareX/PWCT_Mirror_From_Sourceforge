*---------------------------------------------------------------------------*
* Time : 18:54:20    Date : 06/16/2011
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


Resistance R_NOZA4_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_NOZA4_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 362 ;
HEIGHT 188 ;
ICON "PWCTICON" ;
TITLE "Q & A" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,16 LABEL lbl1 ;
VALUE "     Who is the founder of PWCT?" ;
WIDTH 300 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,128,192}
@ 103 ,16 LABEL lbl2 ;
VALUE "                                       " ;
WIDTH 300 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,128,192}
@ 50 ,16 BUTTONEX btn1;
CAPTION "Press here to know the answer";
FONTCOLOR {0,0,255};
BACKCOLOR {236,233,216};
ON CLICK mycaption()  ;
WIDTH 300 HEIGHT 27 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mycaption
win1.lbl2.Value := "   Eng: Mahmoud Samir Fayed"
Return Nil


End Of Resistance

INIT PROCEDURE Init_NOZA4
START DOUBLES
Return
*-------------------------------------------------------------------*
