*---------------------------------------------------------------------------*
* Time : 14:55:35    Date : 07/19/2010
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


Resistance R_COMBO_LIST_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_COMBO_LIST_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 501 ;
HEIGHT 434 ;
ICON "PWCTICON" ;
TITLE "Nariman" ;
MAIN ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 40 ,90 LABEL lbl1 ;
VALUE "computer's parts" ;
WIDTH 278 ;
HEIGHT 52 ;
FONT "Arial" SIZE 24  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,128}
@ 99 ,19 LISTBOX list1;
WIDTH 203 ;
ITEMS {"mouse","keyboard","printer","scanner","monitor","hard"} ;
FONT "Arial" SIZE 14 ;
BOLD ;
BACKCOLOR {255,128,192} ;
SORT ;
FONTCOLOR {255,255,255}
@ 252 ,19 COMBOBOX combo1;
WIDTH 204 ;
ITEMS {"mouse","keyboard","printer","scanner","monitor","hard"} ;
FONT "Arial" SIZE 14 ;
BOLD ;
BACKCOLOR {128,255,255} ;
SORT ;
FONTCOLOR {0,0,0}
@ 100 ,241 IMAGE image1;
PICTURE "COMPUTER.JPG";
WIDTH 235 HEIGHT 186
@ 350 ,187 BUTTONEX btn1;
CAPTION "Exit";
ON CLICK close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 305 ,290 BUTTONEX btn2;
CAPTION "list ";
ON CLICK List()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 307 ,83 BUTTONEX btn3;
CAPTION "combo";
ON CLICK Combo()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc close
win1.Release ( )
Return Nil
Proc List
part := win1.list1.Value
IF part=2
MyOut := MSGBOX("In Put","List Details")
ENDIF
IF part=3
MyOut := MSGBOX("Out Put","List Details")
ENDIF
IF part=4
MyOut := MSGBOX("In Put","List Details")
ENDIF
IF part=5
MyOut := MSGBOX("Out Put","List Details")
ENDIF
IF part=6
MyOut := MSGBOX("In Put","List Details")
ENDIF
Return Nil
Proc Combo
part := win1.combo1.Value
IF part=2
MyOut := MSGBOX("In Put","Combo Details")
ENDIF
IF part=3
MyOut := MSGBOX("Out Put","Combo Details")
ENDIF
IF part=4
MyOut := MSGBOX("In Put","Combo Details")
ENDIF
IF part=5
MyOut := MSGBOX("Out Put","Combo Details")
ENDIF
IF part=6
MyOut := MSGBOX("In Put","Combo Details")
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_COMBO_LIST
START DOUBLES
Return
*-------------------------------------------------------------------*
