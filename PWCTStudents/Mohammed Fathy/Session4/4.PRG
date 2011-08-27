*---------------------------------------------------------------------------*
* Time : 16:36:23    Date : 08/27/2011
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


Resistance R_4_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_4_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 349 ;
ICON "PWCTICON" ;
TITLE "4th app by (M.F)" ;
MAIN ;
BACKCOLOR {255,255,255} 

@ 44 ,75 LABEL lbl1 ;
VALUE "Who programmed PWCT ?" ;
WIDTH 304 ;
HEIGHT 62 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 186 ,72 LABEL lbl2 ;
VALUE "" ;
WIDTH 355 ;
HEIGHT 90 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,160}
@ 109 ,141 BUTTONEX btn1;
CAPTION "Click here";
ON CLICK rslt()  ;
WIDTH 157 HEIGHT 42 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc rslt
win1.lbl2.Value := "He is eng/ Mahmoud Fayed"
Return Nil


End Of Resistance

INIT PROCEDURE Init_4
START DOUBLES
Return
*-------------------------------------------------------------------*
