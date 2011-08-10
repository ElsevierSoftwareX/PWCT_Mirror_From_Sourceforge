*---------------------------------------------------------------------------*
* Time : 07:09:11    Date : 08/10/2011
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


Resistance R_MAXIMUM_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAXIMUM_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 599 ;
HEIGHT 514 ;
ICON "PWCTICON" ;
TITLE "maximum" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 5 ,79 IMAGE image1;
PICTURE "MAXI.JPG";
STRETCH ;
WIDTH 421 HEIGHT 118
@ 428 ,477 BUTTONEX btn1;
CAPTION "Max";
ON CLICK mymax()  ;
WIDTH 105 HEIGHT 37 ;
FONT "Ravie" SIZE 16 ;
TOOLTIP ""
@ 216 ,171 LISTBOX list1;
WIDTH 334 ;
HEIGHT 206 ;
FONT "Cooper Black" SIZE 18 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128}
@ 155 ,29 LABEL lbl1 ;
VALUE "the number" ;
WIDTH 151 ;
HEIGHT 38 ;
FONT "Jokerman" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,255}
@ 153 ,402 BUTTONEX btn2;
CAPTION "add number";
ON CLICK myadd()  ;
WIDTH 177 HEIGHT 35 ;
FONT "Ravie" SIZE 16 ;
TOOLTIP ""
@ 155 ,186 TEXTBOX text1;
HEIGHT 40 ;
WIDTH 211 ;
FONT "Cooper Black" SIZE 18 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128} ;
NUMERIC 

@ 209 ,2 IMAGE image2;
PICTURE "NOSA.JPG";
STRETCH ;
WIDTH 148 HEIGHT 236
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myadd()
mytext := win1.text1.Value
mytext = STR ( mytext )
win1.list1.AddItem ( mytext )
Return Nil
Proc mymax()
myreem := win1.list1.ItemCount
IF myreem=0
MyOut := MSGBOX("The listis empty","alert")
Return 0
ENDIF
mymax := win1.list1.item(1)
IF myreem=1
MyOut := MSGBOX(mymax,"the maximum")
Return 0
ENDIF
mymax = VAL ( mymax )
FOR x = 2 TO myreem STEP 1
myitem := win1.list1.item(x)
myitem = VAL ( myitem )
IF myitem > mymax
mymax := myitem
ENDIF
Next
mymax = STR ( mymax )
MyOut := MSGBOX(mymax,"maximum")
Return Nil


End Of Resistance

INIT PROCEDURE Init_MAXIMUM
START DOUBLES
Return
*-------------------------------------------------------------------*
