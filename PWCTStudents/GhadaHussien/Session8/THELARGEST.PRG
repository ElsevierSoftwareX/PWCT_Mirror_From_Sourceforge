*---------------------------------------------------------------------------*
* Time : 23:21:41    Date : 09/05/2010
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


Resistance R_THELARGEST_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_THELARGEST_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "the largest number" ;
MAIN ;
BACKCOLOR {198,255,198} 

@ 30 ,5 LABEL lbl1 ;
VALUE "the number" ;
WIDTH 103 ;
HEIGHT 31 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,128} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 31 ,118 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 81 ,119 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 30 ,337 BUTTONEX btnadd;
CAPTION "Adding";
ON CLICK myadd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 302 ,142 BUTTONEX btnmax;
CAPTION "find the largest";
ON CLICK mymax()  ;
WIDTH 146 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myadd
mytext := win1.text1.Value
mytext = STR ( mytext )
win1.list1.AddItem ( mytext )
Return Nil
Proc mymax
mycount := win1.list1.ItemCount
IF mycount=0
MyOut := MSGBOX("there is no items found","items")
Return 0
ENDIF
mymax := win1.list1.item(1)
IF mycount=1
MyOut := MSGBOX(mymax,"the largest num")
Return 0
ENDIF
mymax = VAL ( mymax )
FOR x = 2 TO mycount STEP 1
myitem := win1.list1.item(x)
myitem = VAL ( myitem )
IF myitem > mymax
mymax := myitem
ENDIF
Next
mymax = STR ( mymax )
MyOut := MSGBOX(mymax,"the largest num")
Return Nil


End Of Resistance

INIT PROCEDURE Init_THELARGEST
START DOUBLES
Return
*-------------------------------------------------------------------*
