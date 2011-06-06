*---------------------------------------------------------------------------*
* Time : 14:13:00    Date : 06/03/2011
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


Resistance R_LESSON16_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON16_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 343 ;
HEIGHT 378 ;
ICON "PWCTICON" ;
TITLE " ÕœÌœ √ﬂ»— —ﬁ„" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 13 ,292 LABEL lbl1 ;
VALUE "«·—ﬁ„" ;
WIDTH 35 ;
HEIGHT 26 ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 8 ,82 TEXTBOX txt1;
HEIGHT 25 ;
WIDTH 200 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 8 ,16 BUTTONEX AddBtn;
CAPTION "≈÷«›…";
FONTCOLOR {0,0,0};
ON CLICK MyAdd()  ;
WIDTH 62 HEIGHT 26 ;
FONT "Arial" SIZE 12 ;
BOLD ;
TOOLTIP ""
@ 294 ,113 BUTTONEX BigNumBtn;
CAPTION " ÕœÌœ √ﬂ»— —ﬁ„";
FONTCOLOR {0,0,255};
ON CLICK MyBigNum()  ;
WIDTH 114 HEIGHT 28 ;
FONT "Arial" SIZE 12 ;
BOLD ;
TOOLTIP ""
@ 38 ,82 LISTBOX list1;
WIDTH 199 ;
HEIGHT 246 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc MyAdd
MyNum := win1.txt1.Value
MyNum = STR ( MyNum )
MyNum = ALLTRIM ( MyNum )
win1.list1.AddItem ( MyNum )
Return Nil
Proc MyBigNum
MyCount := win1.list1.ItemCount
IF MyCount == 0
MyOut := MSGBOX("⁄›Ê«° «·ﬁ«∆„… ›«—€…","⁄›Ê«")
Return 0
ENDIF
MyMax := win1.list1.item(1)
IF MyCount == 1
MyOut := MSGBOX("√ﬂ»— —ﬁ„ ›Ì «·ﬁ«∆„… ÂÊ: " + MyMax,"√ﬂ»— —ﬁ„")
Return 0
ENDIF
MyMax = VAL ( MyMax )
FOR x = 2 TO MyCount STEP 1
MyItem := win1.list1.item(x)
MyItem = VAL ( MyItem )
IF MyItem > MyMax
MyMax := MyItem
ENDIF
Next
MyMax = STR ( MyMax )
MyOut := MSGBOX("√ﬂ»— —ﬁ„ ›Ì «·ﬁ«∆„… ÂÊ: " + MyMax,"√ﬂ»— —ﬁ„")
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON16
START DOUBLES
Return
*-------------------------------------------------------------------*
