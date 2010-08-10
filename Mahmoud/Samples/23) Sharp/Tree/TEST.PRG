*---------------------------------------------------------------------------*
* Time : 06:57:05    Date : 08/10/2010
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


Resistance R_TEST_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 525 ;
HEIGHT 309 ;
ON INIT mycheck()  ;
ICON "PWCTICON" ;
TITLE "Items Tree" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

DEFINE TREE tree1;
AT 8 ,123 ;
WIDTH 385 ;
HEIGHT 251 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
TOOLTIP "" 
END TREE

@ 9 ,9 BUTTONEX btn1;
CAPTION "Add Item (Root)";
ON CLICK myaddroot()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 55 ,10 BUTTONEX btn2;
CAPTION "Add Item (Child)";
ON CLICK myaddchild()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 134 ,9 BUTTONEX btn3;
CAPTION "Edit";
ON CLICK myedit()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 217 ,9 BUTTONEX btn4;
CAPTION "Delete";
ON CLICK mydelete()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myaddroot
myvalue = InputBox ( "Name :" , ;
"Add Item (Root)" , ;
,;
,;
.F.)
win1.tree1.AddItem ( myvalue,0 )
DO mycheck
Return Nil
Proc myaddchild
myvalue = InputBox ( "Name :" , ;
"Add Item (Child)" , ;
,;
,;
.F.)
win1.tree1.AddItem ( myvalue,win1.tree1.value )
IF .not. win1.tree1.value = 0
win1.tree1.Expand ( win1.tree1.value )
ENDIF
DO mycheck
Return Nil
Proc mydelete
IF win1.tree1.value = 0
MyOut := MSGBOX("Please select the item","Sorry")
Return 0
ENDIF
win1.tree1.DeleteItem ( win1.tree1.value )
DO mycheck
Return Nil
Proc myedit
IF win1.tree1.value = 0
MyOut := MSGBOX("Please select the item","Sorry")
Return 0
ENDIF
myvalue := win1.tree1.item(win1.tree1.value)
myvalue = InputBox ( win1.tree1.value , ;
"Edit Item Name" , ;
myvalue ,;
,;
.F.)
win1.tree1.item(win1.tree1.value) := myvalue
DO mycheck
Return Nil
Proc mycheck
mycount := win1.tree1.ItemCount
IF mycount = 0
win1.btn2.Enabled := false
win1.btn3.Enabled := false
win1.btn4.Enabled := false
ELSE
win1.btn2.Enabled := true
win1.btn3.Enabled := true
win1.btn4.Enabled := true
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
Return
*-------------------------------------------------------------------*
