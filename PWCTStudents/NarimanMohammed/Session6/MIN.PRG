*---------------------------------------------------------------------------*
* Time : 14:53:26    Date : 07/22/2010
*---------------------------------------------------------------------------*
* Programming without coding technology 1.6 (Ready) [2006-2010]  
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


Resistance R_MIN_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MIN_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Define min number" ;
MAIN ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 51 ,52 LABEL lbl1 ;
VALUE "Number" ;
WIDTH 73 ;
HEIGHT 36 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255}
@ 92 ,125 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,128,192} ;
FONTCOLOR {0,0,0}
@ 48 ,333 BUTTONEX btnmyadd;
CAPTION "myadd";
ON CLICK myadd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 312 ,125 BUTTONEX btnmymin;
CAPTION "Define min";
ON CLICK mymin()  ;
WIDTH 200 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 48 ,125 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK "9999"
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myadd
mytext := win1.text1.Value
win1.list1.AddItem ( mytext )
Return Nil
Proc mymin
mycount := win1.list1.ItemCount
IF mycount=0
MyOut := MSGBOX("Please, enter the numbers","Sorry")
Return 0
ENDIF
mymin := win1.list1.item(1)
IF mycount=1
MyOut := MSGBOX(mymin,"min number")
Return 0
ENDIF
mymin = VAL ( mymin )
FOR x = 2 TO mycount STEP 1
myitem := win1.list1.item(x)
myitem = VAL ( myitem )
IF myitem< mymin
mymin := myitem
ENDIF
Next
mymin = STR ( mymin )
MyOut := MSGExclamation(mymin,"min number")
Return Nil


End Of Resistance

INIT PROCEDURE Init_MIN
START DOUBLES
Return
*-------------------------------------------------------------------*
