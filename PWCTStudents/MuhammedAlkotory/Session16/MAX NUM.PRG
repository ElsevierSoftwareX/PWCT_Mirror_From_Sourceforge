*---------------------------------------------------------------------------*
* Time : 10:28:58    Date : 10/19/2011
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


Resistance R_MAX_NUM_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAX_NUM_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 444 ;
HEIGHT 402 ;
ICON "PWCTICON" ;
TITLE "define max num" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 35 ,14 LABEL lbl1 ;
VALUE "the number" ;
WIDTH 109 ;
HEIGHT 34 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 32 ,129 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 77 ,129 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 31 ,344 BUTTONEX btnadd;
CAPTION "add";
ON CLICK myadd()  ;
WIDTH 80 HEIGHT 35 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 305 ,127 BUTTONEX btnmax;
CAPTION "get max";
ON CLICK mymax()  ;
WIDTH 214 HEIGHT 43 ;
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
MyOut := MSGBOX("no numbers","sorry")
Return 0
ENDIF
mymax := win1.list1.item(1)
IF mycount=1
MyOut := MSGBOX(mymax,"max number")
Return 0
ENDIF
mymax = VAL ( mymax )
FOR x = 2 TO mycount STEP 1
myitem := win1.list1.item(x)
myitem = VAL ( myitem )
IF myitem>mymax
mymax := myitem
ENDIF
Next
mymax = STR ( mymax )
MyOut := MSGBOX(mymax,"max number")
Return Nil


End Of Resistance

INIT PROCEDURE Init_MAX_NUM
START DOUBLES
Return
*-------------------------------------------------------------------*
