*---------------------------------------------------------------------------*
* Time : 19:13:37    Date : 07/28/2010
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


Resistance R_MYCOUNT_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MYCOUNT_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Nariman" ;
MAIN ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 271 ,159 TEXTBOX textadd;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {128,128,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 36 ,159 TEXTBOX textcount;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {128,128,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 35 ,44 BUTTONEX btnadd;
CAPTION "myadd";
ON CLICK myadd()  ;
WIDTH 106 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 303 ,158 BUTTONEX btncount;
CAPTION "mycount";
ON CLICK mycount()  ;
WIDTH 200 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 69 ,159 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,128,192} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myadd
mytext := win1.text1.Value
win1.list1.AddItem ( mytext )
Return Nil
Proc mycount
wordscount := win1.list1.ItemCount
IF wordscount=0
MyOut := MSGBOX("Please, Enter any word","Sorry")
Return 0
ENDIF
mycount := win1.list1.item(1)
IF wordscount=1
MyOut := MSGBOX(wordscount,"The number of repeated word")
Return 0
ENDIF
mycount = VAL ( mycount )
FOR x = 2 TO wordscount STEP 1
myword := win1.list1.item(x)
myword = VAL ( myword )
IF myword=mycount
myword := mycount
ENDIF
Next
mycount = STR ( mycount )
MyOut := MSGBOX(mycount,"The number of repeated word")
Return Nil


End Of Resistance

INIT PROCEDURE Init_MYCOUNT
START DOUBLES
Return
*-------------------------------------------------------------------*
