*---------------------------------------------------------------------------*
* Time : 11:09:14    Date : 07/08/2004
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


Resistance R_MAX_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAX_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 340 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE " ÕœÌœ √ﬂ»— ﬁÌ„…" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 10 ,254 LABEL lbl1 ;
VALUE "«·—ﬁ„" ;
WIDTH 58 ;
HEIGHT 34 ;
FONT "Arial" SIZE 16  ;
BOLD ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 11 ,110 TEXTBOX text1;
HEIGHT 37 ;
WIDTH 106 ;
FONT "arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 12 ,17 BUTTONEX btnadd;
CAPTION "≈÷«›…";
ON CLICK btnadd()  ;
WIDTH 82 HEIGHT 36 ;
FONT "Arial" SIZE 16 ;
BOLD ;
TOOLTIP ""
@ 292 ,19 BUTTONEX btnmax;
CAPTION "Õœœ √ﬂ»— ﬁÌ„… ";
ON CLICK btnmax()  ;
WIDTH 260 HEIGHT 35 ;
FONT "Arial" SIZE 16 ;
BOLD ;
TOOLTIP ""
@ 59 ,19 LISTBOX list1;
WIDTH 260 ;
HEIGHT 207 ;
FONT "Arial" SIZE 16 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc btnadd
mynum := win1.text1.Value
mynum = STR ( mynum )
win1.list1.AddItem ( mynum )
Return Nil
Proc btnmax
mycount := win1.list1.ItemCount
IF mycount=0
MyOut := MSGBOX("«·ﬁ«∆„…  Œ·Ê „‰ «·√⁄œ«œ ","⁄›Ê«")
Return 0
ENDIF
mymax := win1.list1.item(1)
IF mycount=1
MyOut := MSGBOX("√ﬂ»— ﬁÌ„… ÂÌ :" + " "+ mymax,"«·—ﬁ„")
Return 0
ENDIF
mymax = VAL ( mymax )
FOR x =2 TO mycount STEP 1
myitem := win1.list1.item(x)
myitem = VAL ( myitem )
IF myitem>mymax
mymax := myitem
ENDIF
Next
mymax = STR ( mymax )
MyOut := MSGBOX("√ﬂ»— ﬁÌ„… ÂÌ :" + " "+ mymax,"«·—ﬁ„")
Return Nil


End Of Resistance

INIT PROCEDURE Init_MAX
START DOUBLES
Return
*-------------------------------------------------------------------*
