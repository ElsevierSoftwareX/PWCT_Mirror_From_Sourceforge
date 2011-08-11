*---------------------------------------------------------------------------*
* Time : 20:27:25    Date : 08/11/2011
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


Resistance R_CONTROLS_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CONTROLS_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "«· ⁄«„· „⁄ «·«œÊ« " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 84 ,270 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
VALUE "«·›Ì›Ì" ;
FONT {0,0,0} SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 28 ,292 LABEL lbl1 ;
VALUE "«· ⁄«„· „⁄ «·«œÊ« " ;
WIDTH 177 ;
HEIGHT 39 ;
FONT "Arial" SIZE 20  ;
BOLD ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 320 ,128 BUTTONEX btn1;
CAPTION "«· ⁄·Ì„« ";
FONTCOLOR {0,0,160};
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 320 ,15 BUTTONEX btn2;
CAPTION "Œ—ÊÃ";
FONTCOLOR {255,0,0};
ON CLICK close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 272 ,269 COMBOBOX combo1;
WIDTH 200 ;
ITEMS {"1","2","3","4","5","6","7","8","9","10"} ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {0,255,0} ;
NOTABSTOP ;
FONTCOLOR {0,0,0}
@ 132 ,269 LISTBOX list1;
WIDTH 200 ;
HEIGHT 124 ;
ITEMS {"1","2","3","4","5","6","7","8","9","10"} ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {128,255,255} ;
NOTABSTOP ;
FONTCOLOR {0,0,0}
@ 43 ,19 IMAGE image1;
PICTURE "IMG11.JPG";
STRETCH ;
WIDTH 157 HEIGHT 214
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc close
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_CONTROLS
START DOUBLES
Return
*-------------------------------------------------------------------*
